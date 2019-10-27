<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<% 
	String last_name = (String) session.getAttribute("last_name");
	String user_name = (String) session.getAttribute("user_name");
	String email_address = (String) session.getAttribute("email_address");
	String u_phone_s = (String) session.getAttribute("u_phone_s");
	String logintime = (String) session.getAttribute("logintime");
	String menuid = (String) session.getAttribute("menuid");
	String user_key = (String) session.getAttribute("user_key");
	String dept_code = (String) session.getAttribute("dept_code");
	//System.out.println(last_name+"::"+user_name+"::"+email_address+"::"+u_phone_s+"::"+user_key);
	//이종권::ljk::ljk@ljk.com::010-0000-0000::393486
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>assets_due_diligence_table</title>
</head>
<body>
	 <div class="sub-container">
        <div class="top-cont clear">
            <div class="navi">
                <ul>
                    <li><a href="#" title="HOME">HOME</a></li>
                    <li><a href="#" title="유지보수 계약">유지보수 계약</a></li>
                    <li><a href="#" title="유지보수 현황">유지보수 현황</a></li>
                </ul>
            </div>
            <div class="title clear">
                <div class=fl>
                    <h2>유지보수 현황</h2>
                </div>
                <div class="fr">
                    <ul class="btn-wrap">
                        <li><a href="" class="btn-print" title="출력">출력</a></li>
                        <li><a href="" class="btn-down" title="다운로드">다운로드</a></li>
                    </ul>
                </div>
            </div>
        </div> <!-- .top-cont end-->
        <div class="pd-l50 wp70">
   	        <select>
				<option>전체</option>
			</select>
            <button type="button" name="" id="" class="btn-search">자산번호 검색</button>
	    </div>
     <div class="middle-cont">
		<div class="section wp100 mg-t10">
		<h3>IT 자산 유지보수 현황</h3>
		<div id="Grid"></div>
	</div>
</div>
	</div>
	<div>
		<script>      
			$("#Grid").kendoGrid({
				columns: [
				    { field: "자산번호"},
				    { field: "제품명" },
				    { field: "도입일자" },
				    { field: "사원번호" },
				    { field: "이름" },
				    { field: "직위" },
				    { field: "위치" },
				    { field: "제조사" },
				  ],
				  dataSource: {
				   data: [
				    { id: 1, 자산번호: "NOTEBOOK_0102030", 제품명: "노트북", 도입일자: "2018-12-20", 사원번호: "HCNC_002MK", 이름: "홍길동", 직위: "사원", 위치: "본관 1층", 제조사: "신도리코" },
				  	 ],
				   schema:{
				    model: {
				     id: "id",
				     fields: {
				       age: { type: "number"}
				     }
				    }
				   }
				  },
				  editable: "popup"
			});
		</script>
	</div>

</body>
</html>