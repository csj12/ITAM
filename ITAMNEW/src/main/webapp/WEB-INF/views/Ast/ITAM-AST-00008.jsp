<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="resources/ITAM/css/import.css" rel="stylesheet" />



</head>
<body>
	<div class="sub-container">
		<div class="top-cont clear">
			<div class="navi">
				<ul>
					<li><a href="#" title="HOME">HOME</a></li>
					<li><a href="#" title="기타">기타</a></li>
					<li><a href="#" title="로그 상세 내역">로그 상세 내역</a></li>
				</ul>
			</div>
			<div class="title clear">
				<div class=fl>
					<h2>로그 상세 내역</h2>
				</div>
				<div class="fr">
					<ul class="btn-wrap">
						<li><a href="" class="btn-print" title="출력">출력</a></li>
						<li><a href="" class="btn-down" title="다운로드">다운로드</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- .top-cont end-->
		<div class="middle-cont pd-b0">
			<div class="section wp50 bbc">
				<h3>자산 정보</h3>
				<table class="table-type02">
					<caption>자산정보테이블</caption>
					<colgroup>
						<col width="15%">
						<col width="*">
						<col width="15%">
						<col width="35%">
					</colgroup>
					<tbody>
						<tr>
							<th>자산번호</th>
							<td><input class="wp70" type="text">
								<button type="button" name="" id="" class="btn-search">자산번호검색</button>
								<label for="" class="hide">자산번호</label>
							</td>
							<th>시리얼 번호</th>
							<td><input type="text" name="" id="" class="wp90">
							 <label for="" class="hide">시리얼 번호</label>
							</td>
						</tr>
						<tr>
							<th>제품명</th>
							<td><input type="text" name="" id="" class="wp90"> 
							<label for="" class="hide">제품명</label></td>
							</td>
							<th>제조사</th>
							<td><input type="text" name="" id="" class="wp90">
							<label for="" class="hide">제조사</label></td>
							</td>
						</tr>
						<tr>
							<th>업무구분</th>
							<label for="" class="hide">업무구분</label>
							<td><select class="wp70">
									<option></option>
							</select>
							
							</td>
							<th>납품사</th>
							<td><input type="text" name="" id="" class="wp90">
							<label for="" class="hide">납품사</label></td>
							</td>
						</tr>
						<tr>
							<th>용도구분</th>
							<label for="" class="hide">용도구분</label></td>
							<td><select class="wp70">
									<option></option>
								</select>
								
							</td>
							<th>기술자원사</th>
							<td><input type="text" name="" id="" class="wp90"> 
							<label for="" class="hide">기술지원사</label></td>
							</td>
						</tr>
						<tr>
							<th>대구분</th>
							<label for="" class="hide">대구분</label>
							<td><select class="wp70">
									<option></option>
								</select>
							</td>
							<th>유지보수사</th>
							<td><input type="text" name="" id="" class="wp90">
						    <label for="" class="hide">유지보수사</label></td>
							</td>
						</tr>

						<tr>
							<th>중구분</th>
							<label for="" class="hide">중구분</label>
							<td><select class="wp70">
									<option></option>
								</select>
							</td>
							
							<th></th>
							<td></td>

						</tr>

						<tr>
							<th>소구분</th>
							<label for="" class="hide">소구분</label>
							<td><select class="wp70">
									<option></option>
								</select>
							</td>
							<th></th>
							<td></td>
						</tr>

					</tbody>
				</table>
			</div>

			<div class="section wp23">
				<h3>사용자</h3>
				<div class="section-box bbc">
					<table class="table-type03">
						<caption>사용자 테이블</caption>
						<colgroup>
							<col width="30%">
							<col width="*">
						</colgroup>
						<tbody class="mg-b150">
							<tr>
								<th>사번</th>
								<td><input class="wp70" type="text">
									<button type="button" name="" id="" class="btn-search">사번검색</button>
								    <label for="" class="hide">사번</label>
								</td>
								
							</tr>
							<tr>
								<th>이름</th>
								<td><input type="text" name="" id="" class="wp90"> 
								<label for="" class="hide">이름</label>
								</td>
								
							</tr>
							<tr>
								<th>직위</th>
								<td><input type="text" name="" id="" class="wp90"> 
								<label for="" class="hide">직위</label>
								</td>
							</tr>
							<tr>
								<th>부서</th>
								<td><input type="text" name="" id="" class="wp90"> 
								<label for="" class="hide">부서</label>
								</td>
							</tr>
							<tr>
								<th>전화번호</th>
								<td><input type="text" name="" id="" class="wp90"> 
								<label for="" class="hide">전화번호</label>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div class="section wp23">
				<h3>로그 정보</h3>
				<div class="section-box bbc">
					<table class="table-type03">
						<caption>로그 정보 테이블</caption>
						<colgroup>
							<col width="30%">
							<col width="*">
						</colgroup>
						<tbody class="mg-b150">
							<tr>
								<th>발생 일시</th>
								<td><input type="text" name="" id="" class="wp90"> 
								<label for="" class="hide">발생 일시</label>
								</td>
							</tr>
							<tr>
								<th>로그 내역</th>
								<td><input type="text" name="" id="" class="wp90"> 
								<label for="" class="hide">로그 내역</label>
								</td>
							</tr>

						</tbody>
					</table>
				</div>
			</div>

		</div>

		<div class="search-cont pd-t0">
			<div class="ta-r">
				<tr>
					<td class="pd10">
						<input type="date" name="" id="today" class="wp42 hp32">
						<label for="" class="hide">대여일</label>
						<span class="pd10">~</span>
						<input type="date" name="" id="today2" class="wp42 hp32">
						<label for="" class="hide">대여종료일</label>
					</td>

					<td>
						<input type="text" name="" id="" class="wp15 mg-l10" value="자산 번호"> 
						<label for="" class="hide">자산번호 검색</label>
						<button type="button" name="" id="" class="btn-search">자산번호검색</button>
					</td>
				 </tr>
			</div>
		 </div>
		
		
		<div class="bottom-cont ">	
			<div class="k-grid-style02 bbc">	
				<div id="grid"></div>
			</div>
		</div>
<script>      
			$("#grid").kendoGrid({
				columns: [
				    { field: "번호"},
				    { field: "발생일시" },
				    { field: "제품명" },
				    { field: "로그내역", width:400 },
				    { field: "사용자" },
	
				  ],
				  dataSource: {
				   data: [
				    { id: 1, 번호: "test-1234", 발생일시: "19.09.30", 제품명: "19.09.30", 로그내역: "1234", 사용자: "최원영"},
				    { id: 2, 번호: "test-1234", 발생일시: "19.09.30", 제품명: "19.09.30", 로그내역: "1234", 사용자: "최원영"},
				    { id: 3, 번호: "test-1234", 발생일시: "19.09.30", 제품명: "19.09.30", 로그내역: "1234", 사용자: "최원영"}
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
				  
				  pageable: {
	                    refresh: false,
	                    pageSizes: true,
	                    buttonCount: 5,
	                    pageSize: 10
	                    
	              },
				  editable: "popup"
			});
		</script>
	</div>
</body>
</html>





























<!-- <style>
	.div_Due{
		padding-top:100px;
		padding-bottom:30px;
	}
	.div_Cost, .div_User {
		padding-bottom:30px;
	}
	td{
		border:1px solid #333 !important;
		text-align:center;
	}
	input, .txt_Date{
		width:100%;
	}
	.btn_Duenum, .btn_Date{
		width:20px;
		margin:center;
	}
	.txt_Duenum{
		width:90%;
		float:left;
	}
	.div_function{
		text-align:right;
	}
</style>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="div_contain">
		<div class="div_Due" id="Due">
			<table  class="tb_Due">
					<tr>	
						<td colspan="8">자산</td>
					</tr>
					<tr>
						<td>자산 번호</td>
						<td colspan="2"><input class="txt_Duenum" type="text"><input class="btn_Duenum" type="button" img=""></td>
						<td>시리얼 번호</td>
						<td colspan="2"><input type="text" readonly></td>
						<td>년도</td>
						<td><input type="text" readonly></td>
					</tr>
					<tr>
						<td>제품명</td>
						<td colspan="3"><input type="text" readonly></td>
						<td>업무구분</td>
						<td colspan="3"><input type="text" readonly></td>
					</tr>
					<tr>
						<td>용도구분</td>
						<td><input type="text" readonly></td>
						<td>대구분</td>
						<td><input type="text" readonly></td>
						<td>중구분</td>
						<td><input type="text" readonly></td>
						<td>소구분</td>
						<td><input type="text" readonly></td>
					</tr>
					<tr>
						<td>제조사</td>
						<td colspan="3"><input type="text" readonly></td>
						<td>납품사</td>
						<td colspan="3"><input type="text" readonly></td>
					</tr>
					<tr>
						<td>기술지원사</td>
						<td colspan="3"><input type="text" readonly></td>
						<td>유지보수사</td>
						<td colspan="3"><input type="text" readonly></td>
					</tr>
			</table>
		</div>
		<div class="div_Cost">
			<table class="tb_Cost">
				<tr>
					<td colspan="9">일정/비용 정보</td>
				</tr>
				<tr>
					<td>도입일자</td>
					<td colspan="2"><input class="txt_Date" id="txt_Date" value="" title="Start_introduction" /></td>
					<td>제품 W/I기간</td>
					<td><input type="text" readonly></td>
					<td>기술지운 W/I기간</td>
					<td><input type="text" readonly></td>
					<td>유지보수 필요유무</td>
					<td><input type="text" readonly></td>
				</tr>
				<tr>
					<td>유지보수 발생일</td>
					<td colspan="2"><input type="text" readonly></td>
					<td>도입금액</td>
					<td><input type="text" readonly></td>
					<td>유지보수 요율</td>
					<td><input type="text" readonly></td>
					<td>유지보수 금액</td>
					<td><input type="text" readonly></td>
				</tr>
			</table>
		</div>
		
		<div class="div_User">
			<table class="tb_User">	
				<tr>
					<td colspan="6">사용자</td>
				</tr>
				<tr>
					<td>사번</td>
					<td><input type="text" readonly></td>
					<td>이름</td>
					<td><input type="text" readonly></td>
					<td>직위</td>
					<td><input type="text" readonly></td>
				</tr>
				<tr>
					<td>부서</td>
					<td colspan="3"><input type="text" readonly></td>
					<td>전화번호</td>
					<td><input type="text" readonly></td>
				</tr>
			</table>
		</div>
		
		<div class="div_Location">
			<table class="tb_Location">
				<tr>
					<td colspan="10">위치 정보</td>
				</tr>
				<tr>
					<td>지역</td>
					<td><input type="text" readonly></td>
					<td>지사</td>
					<td><input type="text" readonly></td>
					<td>층수</td>
					<td><input type="text" readonly></td>
					<td>서버룸</td>
					<td><input type="text" readonly></td>
				</tr>
			</table>
		</div>
		<div class="div_function" id="div_function">
			<a href="javascript:Insert();" class="btn-search " id ="btn-search">등록</a> 
		</div>
	</div>
			
	<script>
		$(document).ready(function (){
			$("#txt_Date").kendoDatePicker({
				 format: "yyyy-MM-dd"
			});
			function Insert(){
				
			}
		});
				
	</script>
</body>

</html>
 -->

