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

import com.njit.edu.biz.DownLoadBiz;
import com.njit.edu.biz.LinkinfoBiz;
import com.njit.edu.biz.MaterialsBiz;
import com.njit.edu.biz.UserBiz;
import com.njit.edu.form.UserActionForm;
import com.njit.edu.pojo.Materials;
import com.njit.edu.pojo.User;
import com.njit.edu.util.SendMail;

public class UserAction extends DispatchAction {

	// 注入
	private UserBiz userBiz;

	private LinkinfoBiz linkinfoBiz;

	private MaterialsBiz materBiz;

	private DownLoadBiz loadBiz;

	public void setLinkinfoBiz(LinkinfoBiz linkinfoBiz) {
		this.linkinfoBiz = linkinfoBiz;
	}

	public void setMaterBiz(MaterialsBiz materBiz) {
		this.materBiz = materBiz;
	}

	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}

	public void setLoadBiz(DownLoadBiz loadBiz) {
		this.loadBiz = loadBiz;
	}

	// 查看所有链接，这个链接必须是不能是视频链接
	public ActionForward userqueryAllLinkinfo(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		List linkinfolist = new ArrayList();
		linkinfolist = linkinfoBiz.queryLinkinfoByLinkjude(1);
		request.setAttribute("linkinfolist", linkinfolist);
		return mapping.findForward("userlink");
	}
	
	// 查看所有链接，这个链接必须是视频链接
	public ActionForward userqueryAllplay(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		List playlist = new ArrayList();
		playlist = linkinfoBiz.queryLinkinfoByLinkjude(0);
		request.setAttribute("playlist", playlist);
		return mapping.findForward("userqueryAllplay");
	}

	//验证用户是否登录	
	public ActionForward querysession(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		HttpSession session = request.getSession();
		if (session.getAttribute("user") == null) {
			request.setAttribute("message", "只有登录用户才能修改信息，请登录！");
			request.setAttribute("path", "index.jsp");
			return mapping.findForward("querysession_false");
		} else {
			return mapping.findForward("querysession_success");
		}
	}

	// 用户注册
	public ActionForward add(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		UserActionForm uaf = (UserActionForm) form;
		User user = new User();
		user.setUserName(uaf.getUserName());

		if ((userBiz.queryByName(uaf.getUserName()) != null)) {
			request.setAttribute("Message", "register_samename");
			return mapping.findForward("error");
		}
		user.setCellphone(uaf.getCellphone());
		user.setEmail(uaf.getEmail());
		user.setPassword(uaf.getPassword());
		user.setRegistertime(new Date());
		user.setPiclink("avatars/common/01.jpg");
		boolean flag = userBiz.save(user);
		if (flag) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			request.setAttribute("Message", "register_success");
			return mapping.findForward("MS_success");
		} else {
			request.setAttribute("Message", "register_fail");
			return mapping.findForward("error");
		}
	}

	// 用户登录
	public ActionForward querybyname(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		UserActionForm uaf = (UserActionForm) form;
		if (userBiz.queryByName(uaf.getUserName()) == null) {
			request.setAttribute("message", "用户名不存在，请重新登录");
			request.setAttribute("path", "index.jsp");
			return mapping.findForward("noUser");
		} else {
			User user = userBiz.queryByName(uaf.getUserName());
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			if (user.getPassword().equals(uaf.getPassword())) {
				return mapping.findForward("login_success");
			} else {
				PrintWriter out = response.getWriter();
				out
						.print("<script>alert('Login error!');window.history.back();</script>");
				out.close();
				return null;
				// return mapping.findForward("login_error");
			}
		}
	}

	// 修改用户信息
	public ActionForward modify(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		UserActionForm uaf = (UserActionForm) form;
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		user.setCellphone(uaf.getCellphone());
		user.setPiclink(uaf.getPiclink());
		user.setEmail(uaf.getEmail());
		userBiz.modify(user);
		request.setAttribute("message", "修改头像成功！");
		request.setAttribute("path", "fg-mydownload.jsp");
		return mapping.findForward("modify_success");
	}

	// 用户修改个人密码
	public ActionForward modifypassword(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		UserActionForm uaf = (UserActionForm) form;
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		if (user.getPassword().equals(uaf.getPassword())) {
			user.setPassword(uaf.getConfirmpassword());
			userBiz.modify(user);
			request.setAttribute("message", "密码修改成功！请用您的新密码重新登录！");
			request.setAttribute("path", "index.jsp");
			return mapping.findForward("modifypassword");
		} else {
			request.setAttribute("message", "原密码输入错误，请重新输入！");
			request.setAttribute("path", "fg-information.jsp");
			return mapping.findForward("modifypassworderror");
		}
	}

	// 用户通过邮箱获得个人密码
	public ActionForward getPassword(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		UserActionForm uaf = (UserActionForm) form;
		String mailname = uaf.getEmail();
		String username = uaf.getUserName();
		User user = userBiz.queryByName(username);
		if (user == null || !user.getEmail().equals(mailname)) {
			request.setAttribute("Message", "wrongemail_error");
			return mapping.findForward("error");
		} else {
			String password = user.getPassword();
			SendMail send = new SendMail();
			boolean flag = send.sendMail(mailname, username, password);
			if (flag) {
				request.setAttribute("Message", "sendmail_success");
				return mapping.findForward("MS_success");
			} else {
				request.setAttribute("Message", "sendmail_error");
				return mapping.findForward("error");
			}
		}

	}

	//用户查看个人下载信息
	public ActionForward mydownload(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		List downloadlist = new ArrayList();
		HttpSession session = request.getSession();
		if (session.getAttribute("user") == null) {
			request.setAttribute("message", "只有登录用户才能查看下载信息，请登录！");
			request.setAttribute("path", "index.jsp");
			return mapping.findForward("viewload_false");
		} else {
			User user = (User) session.getAttribute("user");
			System.out.println("============" + user.getUserName());
			downloadlist = loadBiz.queryDownLoadByUserId(user.getUserId());
			request.setAttribute("downloadlist", downloadlist);
			return mapping.findForward("mydownload");
		}
	}

	// 显示每章导航
	public ActionForward mater(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String chapter = new String(request.getParameter("MaterChapter")
				.getBytes("ISO-8859-1"), "utf-8");
		List materlist = new ArrayList();
		materlist = materBiz.queryMaterialsinfoByMaterChapter(chapter);
		request.setAttribute("materlist", materlist);
		return mapping.findForward("mater");

	}

	// 显示每章内容
	public ActionForward materChapter(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		int materId = Integer.parseInt(request.getParameter("materId"));
		Materials mater = materBiz.queryMaterialsinfoById(materId);
		request.setAttribute("mater", mater);
		return mapping.findForward("materChapter");
	}
	//显示最新文档
	public ActionForward maternew(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		List maternewList=new ArrayList();
		maternewList=materBiz.queryTop();
		request.setAttribute("maternewList", maternewList);
		return mapping.findForward("maternew");
	}
	public ActionForward exit(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		HttpSession session = request.getSession();
		session.invalidate();
		return mapping.findForward("exit");
	}
	//play
	public ActionForward play(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String linkURL=request.getParameter("linkURL");
		request.setAttribute("linkURL", linkURL);
		return null;
	}

}
