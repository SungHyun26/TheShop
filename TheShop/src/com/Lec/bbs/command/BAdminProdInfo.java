package com.Lec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Lec.bbs.dao.BDao;
import com.Lec.bbs.dto.BDto;

public class BAdminProdInfo implements BCommand {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {

		String pcode = request.getParameter("pcode");
		BDao dao = new BDao();
		BDto dto = dao.ProductInfo(pcode);
		request.setAttribute("PROD_INfO", dto);

	}

}
