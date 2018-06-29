package com.njit.edu.action;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.njit.edu.biz.AdminBiz;
import com.njit.edu.biz.LinkinfoBiz;
import com.njit.edu.biz.MaterialsBiz;
import com.njit.edu.biz.UserBiz;
import com.njit.edu.form.AdminActionForm;
import com.njit.edu.form.LinkinfoActionForm;
import com.njit.edu.form.MaterialsActionForm;
import com.njit.edu.pojo.Admin;
import com.njit.edu.pojo.Linkinfo;
import com.njit.edu.pojo.Materials;
import com.njit.edu.pojo.User;

public class AdminAction extends DispatchAction {

	//注入
	private AdminBiz adminBiz;
	private LinkinfoBiz linkinfoBiz;
	private UserBiz userBiz;
	private MaterialsBiz materBiz;
	

	public void setMaterBiz(MaterialsBiz materBiz) {
		this.materBiz = materBiz;
	}

	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}

	public void setAdminBiz(AdminBiz adminBiz) {
		this.adminBiz = adminBiz;
	}

	public void setLinkinfoBiz(LinkinfoBiz linkinfoBiz) {
		this.linkinfoBiz = linkinfoBiz;
	}



	//管理员添加
	public ActionForward add(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		AdminActionForm aaf = (AdminActionForm) form;
		Admin admin = new Admin();
		admin.setManagerName(aaf.getManagerName());

		if ((adminBiz.queryByName(aaf.getManagerName()) != null)) {
			return mapping.findForward("register_samename");
		}
		admin.setManagerName(aaf.getManagerName());
		admin.setPassword(aaf.getPassword());
		admin.setRole(false);
		boolean flag = adminBiz.save(admin);
		if (flag) {
			HttpSession session = request.getSession();
			session.setAttribute("admin", admin);
			return mapping.findForward("register_success");
		} else {
			return mapping.findForward("register_fail");
		}
	}

	//管理员登录
	public ActionForward querybyname(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		AdminActionForm aaf = (AdminActionForm) form;
		Admin admin = adminBiz.queryByName(aaf.getManagerName());
		HttpSession session = request.getSession();
		session.setAttribute("admin", admin);
		if (admin.getPassword().equals(aaf.getPassword())) {
			return mapping.findForward("login_success");
		} else {
			PrintWriter out = response.getWriter();
			out
					.print("<script>alert('login error!');window.history.back();</script>");
			out.close();
			return null;
		}

	}

	//修改管理员信息
	public ActionForward modify(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		AdminActionForm aaf=(AdminActionForm) form;
		HttpSession session = request.getSession();
		Admin admin = (Admin) session.getAttribute("admin");
		//Admin admin = (Admin) request.getAttribute("admin");
		if (admin.getPassword().equals(aaf.getOld())) {
			admin.setPassword(aaf.getPassword());
			admin.setRole(false);
			adminBiz.modify(admin);
			request.setAttribute("message", "修改密码成功，请用新密码重新登陆！");
			request.setAttribute("path", "bg-land.jsp");
			return mapping.findForward("modify_success");
		} else {
			PrintWriter out = response.getWriter();
			out
					.print("<script>alert('login error!');window.history.back();</script>");
			out.close();
			return null;
		}
	}
	
	
	//查看所有链接
	public ActionForward queryAllLinkinfo(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		List linkinfolist=linkinfoBiz.queryAllLinkinfo();
		request.setAttribute("linkinfolist", linkinfolist);
		return mapping.findForward("sss");
	}
	
	//根据ID查询链接
	public ActionForward queryLinkinfoById(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		int LinkId=Integer.parseInt(request.getParameter("LinkId"));
		Linkinfo linkinfo=linkinfoBiz.queryLinkinfoById(LinkId);
		request.setAttribute("linkinfo", linkinfo);
		return mapping.findForward("queryLinkinfoById_success");
	}
	
	//添加链接
	public ActionForward addLinkinfo(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		LinkinfoActionForm lif=(LinkinfoActionForm) form;
		Linkinfo linkinfo=new Linkinfo();
		linkinfo.setLinkName(lif.getLinkName());
		linkinfo.setLinkURL(lif.getLinkURL());
		linkinfo.setLinkjude(lif.getLinkjude());
		linkinfo.setUpdateTime(new Date());
		linkinfoBiz.saveLink(linkinfo);
		return mapping.findForward("addLinkinfo_success");
	}
	
	//修改链接
	public ActionForward modifyLinkinfo(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		LinkinfoActionForm lif=(LinkinfoActionForm) form;
		int linkId=lif.getLinkId();
		Linkinfo linkinfo=linkinfoBiz.queryLinkinfoById(linkId);
		linkinfo.setLinkName(lif.getLinkName());
		linkinfo.setLinkjude(lif.getLinkjude());
		linkinfo.setLinkURL(lif.getLinkURL());
		linkinfo.setUpdateTime(new Date());
		linkinfoBiz.modifyLink(linkinfo);
		return mapping.findForward("modifyLinkinfo");
	}
	
	//批量删除链接
	public ActionForward delLinkinfo(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		LinkinfoActionForm lif=(LinkinfoActionForm) form;
		String[] LinkIdList=lif.getSelectFlag();
		linkinfoBiz.deleteLinkinfos(LinkIdList);
		return mapping.findForward("delLinkinfo_sucess");
	}
	
	
	
	//查看所有用户信息
	public ActionForward queryUsers(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		List list=new ArrayList();
		list=userBiz.queryAll();
		request.setAttribute("list", list);
		return mapping.findForward("suc");
	}
	
	//查看用户详细信息
	public ActionForward queryUserDetails(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		int userId=Integer.parseInt(request.getParameter("userId"));
		User user=userBiz.queryById(userId);
		request.setAttribute("user", user);
		return mapping.findForward("queryUserDetails");
	}
	
	//删除用户
	public ActionForward del(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		int userId=Integer.parseInt(request.getParameter("userId"));
		User user=userBiz.queryById(userId);
		userBiz.delete(user);
		return mapping.findForward("del");
	}
	
	//查看所有资料
	public ActionForward queryMaters(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		List list=new ArrayList();
		list=materBiz.queryAllMaterialsinfo();
		request.setAttribute("materlist", list);
		return mapping.findForward("queryMaters");
	}
	
	//批量删除资料
	public ActionForward delMaters(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		MaterialsActionForm maf=(MaterialsActionForm) form;
		String[] materIdList=maf.getSelectFlag() ;
		materBiz.deleteMaters(materIdList);
		return mapping.findForward("delMaters");
	}
	
	// 添加资料
	public ActionForward addMaters(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		MaterialsActionForm maf = (MaterialsActionForm) form;
		Materials mater = new Materials();
		mater.setMaterName(maf.getMaterName());
		mater.setMaterContent(maf.getMaterContent());
		mater.setMaterChapter(maf.getMaterChapter());
		// mater.setMaterUPload(maf.isMaterUPload());
		mater.setUpdatetime(new Date());
		String way = maf.getWay();
		if (way == null || way.trim().equals("")) {
			mater.setWay("没有上传资料");
		} else {
			mater.setWay("/upload/"+way);
			request.setAttribute("way", way);
		}
		if (way == null || way.trim().equals("")) {
			mater.setMaterUPload(false);
		} else {
			mater.setMaterUPload(true);
		}
		materBiz.saveMater(mater);
		return mapping.findForward("addMaters");
	}
	
	//根据ID查询资料
	public ActionForward queryMaterById(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		int MaterId=Integer.parseInt(request.getParameter("MaterId"));
		Materials mater=materBiz.queryMaterialsinfoById(MaterId);
		request.setAttribute("mater", mater);
		return mapping.findForward("queryMaterById");
	}
	
	//修改资料
	public ActionForward modifyMater(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		MaterialsActionForm maf = (MaterialsActionForm) form;
		int materId = maf.getMaterId();
		Materials mater = materBiz.queryMaterialsinfoById(materId);
		mater.setMaterName(maf.getMaterName());
		mater.setMaterChapter(maf.getMaterChapter());
		mater.setMaterContent(maf.getMaterContent());
		String way = maf.getWay();
		if (way == null || way.trim().equals("")) {
			mater.setWay("没有上传资料");
		} else {
			mater.setWay("/upload/"+way);
		}
		if (way == null || way.trim().equals("")) {
			mater.setMaterUPload(false);
		} else {
			mater.setMaterUPload(true);
		}
		mater.setUpdatetime(new Date());
		materBiz.modifyMater(mater);
		return mapping.findForward("modifyMater");
	}
}
