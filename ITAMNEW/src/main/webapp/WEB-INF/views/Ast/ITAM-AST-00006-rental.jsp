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
<!-- 상단 부분은 항상 넣어라 -->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

 
    
<title>임대 노트북 대여</title>
</head>
<body>

	<div class="sub-wrap">
		<div class="sub-container">
			<div class="top-cont clear">
	            <div class="navi">
	                <ul>
	                    <li><a href="#" title="HOME">HOME</a></li>
	                    <li><a href="#" title="임대노트북">임대노트북</a></li>
	                    <li><a href="#" title="임대노트북 대여">임대노트북 대여</a></li>
	                </ul>
	            </div>
	            <div class="title clear">
	                <div class=fl>
	                    <h2>임대노트북 대여</h2>
	                </div>
	                <div class="fr">
	                    <ul class="btn-wrap">
	                        <li><a href="" class="btn-print" title="출력">출력</a></li>
	                        <li><a href="" class="btn-down" title="다운로드">다운로드</a></li>
	                    </ul>
	                </div>
	            </div>
        	</div> <!-- .top-cont end-->
        	
        	<div class="middle-cont">
	        	<div class="section wp68">
	                <h3>노트북 정보</h3>
	                <table class="table-type02 bbc">
	                    <caption>노트북 정보 테이블</caption>
	                    <colgroup>
	                        <col class="wp20">
	                        <col class="wp30">
	                        <col class="wp20">
	                        <col class="wp30">
	                    </colgroup>
	                    <tbody>
	                        <tr>
	                            <th>자산번호</th>
	                            <td>
	                                <input type="text" name="" id="" class="wp70">
	                                <label for="" class="hide">자산번호 검색</label>
	                                <button type="button" name="" id="" class="btn-search">자산번호 검색</button>
	                            </td>
	                            <th>시리얼 번호</th>
	                            <td> </td>
	                        </tr>
	                        <tr>
	                            <th>모델명</th>
	                            <td></td>
	                            <th>CPU</th>
	                            <td></td>
	                        </tr>
	                        <tr>
	                            <th>O/S</th>
	                            <td></td>
	                            <th>그래픽 카드</th>
	                            <td></td>
	                        </tr>
	                        <tr>
	                            <th>Memory</th>
	                            <td></td>
	                            <th>DISK 용량/개수</th>
	                            <td></td>
	                        </tr>
	                        <tr>
	                            <th>모니터 인치</th>
	                            <td></td>
	                            <th>제조사</th>
	                            <td></td>
	                        </tr>
	                    </tbody>
	                </table>
	            </div>
	            
	           	<div class="section  wp35">
	                <h3 class="bg-gray">사용자 정보</h3>
	                <div class="section-box bbc">
	                    <table class="table-type04">
	                        <caption>사용자 정보 테이블</caption>
	                        <colgroup>
	                            <col class="w100">
	                            <col class="*">
	                            <col class="w100">
	                            <col class="wp30">
	                        </colgroup>
	                        <tbody>
	                            <tr>
	                                <th>사번</th>
	                                <td colspan="3">
	                                    <input type="text" name="" id="" class="wp80">
	                                    <label for="" class="hide">사번 검색</label>
	                                    <button type="button" name="" id="" class="btn-search">사번 검색</button>
	                                </td>
	                            </tr>
	                            <tr>
	                                <th>이름</th>
	                                <td>
	                                	<li></li>
	                                    <label for="" class="hide">이름</label>
	                                </td>
	                                <th>직위</th>
	                                <td>
	                                	<li></li>
	                                    <label for="" class="hide">직위</label>
	                                </td>
	                            </tr>
	                            <tr>
	                                <th>부서</th>
	                                <td>
	                                	<li></li>
	                                    <label for="" class="hide">부서</label>
	                                </td>
	                            </tr>
	                            <tr>    
	                                <th>연락처</th>
	                                <td colspan="2">
	                                	<li></li>
	                                    <label for="" class="hide">연락처</label>
	                                </td>
	                            </tr>
	                            <tr>
	                                <th>대여일</th>
	                                <td colspan="3">
	                                    <input type="date" name="" id="today" class="wp42">
	                                    <label for="" class="hide">대여 시작일</label>
	                                    <span>~</span> 
	                                    <input type="date" name="" id="today2" class="wp42">
	                                    <label for="" class="hide">대여 종료일</label>
	                                </td>
	                            </tr>
	                        </tbody>
	                    </table>
	                </div>
	            </div> <!-- .section end-->
        	</div><!-- .middle-cont end-->
        	
        	<div class="bottom-cont dis_bi ">
        		<div class="k-grid-style01">
	        		<div class="k-grid-title"><li>대여 현황</li></div>	
				    <div id="grid" class="bbc"></div>
			    </div>
        	</div><!-- .bottom-cont end-->
        	
        	<div class="button-cont mg-t20">
	            <div class="btn-box">
	                <ul>
	                    <li><a href="#" class="bg-gray" title="노트북 대여">대여</a></li>
	                </ul>
	            </div>
       	 	</div> <!-- .button-cont -->
       	 
		</div><!-- .sub-container end -->
	</div><!-- .sub-wrap end-->

	<script>
	  $("#grid").kendoGrid({
	    columns: [
	      { selectable: true, width:30, title:""},
	      { field: "자산번호", width:240, title:"" },
	      { field: "대여일", width:180, title:"" },
	      { field: "반납일", width:180, title:"" },
	      { field: "사원번호", width:220, title:"" },
	      { field: "이름", width:180, title:"" },
	      { field: "직위", width:160, title:"" },
	      { field: "부서", width:200, title:"" },
	      { field: "대여", width:120, title:"" }
	    ],
	    dataSource: {
	     data: [
	    	 {id:1, 자산번호:"NOTEBOOK_0102030", 대여일:"2019-10-08", 반납일:"2019-10-15", 사원번호:"HCNC_001WY", 이름:"최원영", 직위:"인턴", 부서:"연구실", 대여:"Y"  },
	    	 {id:2, 자산번호:"NOTEBOOK_0102030", 대여일:"2019-10-08", 반납일:"2019-10-15", 사원번호:"HCNC_001WY", 이름:"최원영", 직위:"인턴", 부서:"연구실", 대여:"Y"  },
	    	 {id:3, 자산번호:"NOTEBOOK_0102030", 대여일:"2019-10-08", 반납일:"2019-10-15", 사원번호:"HCNC_001WY", 이름:"최원영", 직위:"인턴", 부서:"연구실", 대여:"Y"  },
	    	 {id:4, 자산번호:"NOTEBOOK_0102030", 대여일:"2019-10-08", 반납일:"2019-10-15", 사원번호:"HCNC_001WY", 이름:"최원영", 직위:"인턴", 부서:"연구실", 대여:"Y"  },
	    	 {id:5, 자산번호:"NOTEBOOK_0102030", 대여일:"2019-10-08", 반납일:"2019-10-15", 사원번호:"HCNC_001WY", 이름:"최원영", 직위:"인턴", 부서:"연구실", 대여:"Y"  },
	     ],
	     schema:{
	      model: {
	       id: "id",
	       fields: {
	       }
	      }
	     }
	    },
	    editable: false
	  });
	</script>

</body>
</html>