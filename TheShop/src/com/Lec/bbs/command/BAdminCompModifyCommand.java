package com.Lec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Lec.bbs.dao.BDao;

public class BAdminCompModifyCommand implements BCommand {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		
		String compcode = request.getParameter("compcode");
		String compname = request.getParameter("compname");
		String comppw = request.getParameter("comppw");
		String compadd = request.getParameter("compadd");
		String comptel = request.getParameter("comptel");

		BDao dao = new BDao();
		int ok = dao.CompModify(compcode, compname, comppw, compadd, comptel);
		if(ok == 1){
			request.setAttribute("ADMIN_COMP_MODIFY_RESULT", "SUCCESS");
		}else{
			request.setAttribute("ADMIN_COMP_MODIFY_RESULT", "FAIL");
		}
	}

}
