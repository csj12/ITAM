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
<title>assets_maintenance</title>
</head>
<body>
	<div class="sub-container">
		<div class="top-cont clear">
		            <div class="navi">
		                <ul>
		                    <li><a href="#" title="HOME">HOME</a></li>
		                    <li><a href="#" title="유지보수 계약">유지보수 계약</a></li>
		                    <li><a href="#" title="유지보수 관리">유지보수 관리</a></li>
		                </ul>
		            </div>
		            <div class="title clear">
		                <div class=fl>
		                    <h2>유지보수 관리</h2>
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
			<div class="section bbc wp100">
				<h3>자산 정보</h3>
				<table class="table-type02">
				<caption>자산 정보 테이블</caption>
		 		<colgroup>
						<col width="10%">
						<col width="22.5%">
						<col width="10%">
						<col width="22.5%">
						<col width="10%">
						<col width="*%">
				</colgroup>
				<tbody>
					<tr>
						<th>자산번호</th>
						<td>
							<input class="wp70" type="text"> <a href ="#"><button type="button" name="" id="" class="btn-search">자산번호 검색</button>
							<label for="" class="hide">자산번호</label>
						</td>
						<th>시리얼 번호</th>
						<td></td>
						<th>제품명</th>
						<td></td>
					</tr>
					<tr>
						<th>업무구분</th>
						<td>
							<label for="" class="hide">업무구분</label>
							<select class="wp70">
							<option>업무용</option>
							</select>
						</td>
						<th>용도구분</th>
						<td>
							<label for="" class="hide">용도구분</label>
							<select class="wp70">
							<option>업무용</option>
							</select>
						</td>
						<th>제조사</th>
						<td></td>
					</tr>		
					<tr>
						<th>대구분</th>
						<td>
							<label for="" class="hide">대구분</label>
							<select class="wp70">
							<option>H/W</option>
							</select>
						</td>
						<th>중구분</th>
						<td>
							<label for="" class="hide">중구분</label>
							<select class="wp70">
							<option>PC</option>
							</select>
						</td>
						<th>소구분</th>
						<td>
							<label for="" class="hide">소구분</label>
							<select class="wp70">
							<option>DESKTOP PC</option>
							</select>
						</td>
					</tr>		
					<tr>
						<th>납품사</th>
						<td></td>
						<th>기술지원사</th>
						<td></td>
						<th>유지보수사</th>
						<td></td>
					</tr>		
					<tr>
						<th>년도</th>
						<td></td>
						<th></th>
						<td></td>
						<th></th>
						<td></td>
					</tr>				
				</tbody>
			</table>
		</div>
	</div>
	
	<div class="bottom-cont">
		<div class="section wp50">
			<h3>일장/비용 정보</h3>
			<div class="section-box bbc">
				<table class="table-type03">
				<caption>일정/비용 정보 테이블</caption>
					<colgroup>
							<col width="20%">
							<col width="*">
							<col width="20%">
							<col width="30%">
						</colgroup>
						<tbody>
							<tr>
								<th>도입일자</th>
								<td>
									<input class="wp90" type="text" name="" id="">
									<label for="" class="hide">도입일자</label>
								</td>
								<th>유지보수 발생일</th>
								<td>
									<input class="wp90" type="text" name="" id="">
									<label for="" class="hide">유지보수 발생일</label>
								</td>
							</tr>
							<tr>
								<th>제품 W/I기간</th>
								<td>
									<input class="wp90" type="text" name="" id="">
									<label for="" class="hide">제품 W/I기간</label>
								</td>
								<th>도입금액</th>
								<td>
									<input class="wp90" type="text" name="" id="">
									<label for="" class="hide">도입금액</label>
								</td>
							</tr>
							<tr>
								<th>기술지원 W/I기간</th>
								<td>
									<input class="wp90" type="text" name="" id="">
									<label for="" class="hide">기술지원 W/I기간</label>
								</td>
								<th>유지보수 요율</th>
								<td>
									<input class="wp90" type="text" name="" id="">
									<label for="" class="hide">유지보수 요율</label>
								</td>
							</tr>
							<tr>
								<th>유지보수 필요 유무</th>
								<td>
									<input class="wp90" type="text" name="" id="">
									<label for="" class="hide">유지보수 필요 유무</label>
								</td>
								<th>유지보수 금액</th>
								<td>
									<input class="wp90" type="text" name="" id="">
									<label for="" class="hide">유지보수 금액</label>
								</td>
							</tr>
						</tbody>
				</table>
			</div>
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
					<tbody>
						<tr>
							<th>사번</th>
							<td>
								<input class="wp70" type="text"> <a href ="#"><button type="button" name="" id="" class="btn-search">자산번호 검색</button>
								<label for="" class="hide">사번</label>
							</td>
						</tr>
						<tr>
							<th>이름</th>
							<td>
								<input class="wp90" type="text" name="" id="">
								<label for="" class="hide">이름</label>
							</td>
						</tr>
						<tr>
							<th>직위</th>
							<td>
								<input class="wp90" type="text" name="" id="">
								<label for="" class="hide">직위</label>
							</td>
						</tr>
						<tr>
							<th>부서</th>
							<td>
								<input class="wp90" type="text" name="" id="">
								<label for="" class="hide">부서</label>
							</td>
						</tr>
						<tr>
							<th>전화번호</th>
							<td>
								<input class="wp90" type="text" name="" id="">
								<label for="" class="hide">전화번호</label>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
			
		<div class="section wp23">
			<h3>위치 정보</h3>
			<div class="section-box bbc">
				<table class="table-type03">
				<caption>위치 정보 테이블</caption>
					<colgroup>
						<col width="30%">
						<col width="*">
					</colgroup>
					<tbody>
						<tr>
							<th>지역</th>
							<td>
								<input class="wp90" type="text" name="" id="">
								<label for="" class="hide">지역</label>
							</td>
						</tr>
						<tr>
							<th>지사</th>
							<td>
								<input class="wp90" type="text" name="" id="">
								<label for="" class="hide">지사</label>
							</td>
						</tr>
						<tr>
							<th>건물</th>
							<td>
								<input class="wp90" type="text" name="" id="">
								<label for="" class="hide">건물</label>
							</td>
						</tr>
						<tr>
							<th>층수</th>
							<td>
								<input class="wp90" type="text" name="" id="">
								<label for="" class="hide">층수</label>
							</td>
						</tr>
						<tr>
							<th>위치/장소</th>
							<td>
								<input class="wp90" type="text" name="" id="">
								<label for="" class="hide">위치/장소</label>
							</td>
						</tr>
					</tbody>
				</table>
			</div>			
		</div>
	</div>
	 <div class="button-cont mg-t10">
            <div class="btn-box">
                <ul>
                    <li><a href="#" title="수정">수정</a></li>
                </ul>
            </div>
     </div> <!-- .button-cont -->
</div>
</body>
</html>