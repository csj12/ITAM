<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="resources/ITAM/css/import.css" rel="stylesheet" />
<title>임대 노트북 관리</title>
</head>
<body>
	<div class="sub-wrap">
		<div class="sub-container">
			<div class="top-cont clear">
	            <div class="navi">
	                <ul>
	                    <li><a href="#" title="HOME">HOME</a></li>
	                    <li><a href="#" title="임대노트북">임대노트북</a></li>
	                    <li><a href="#" title="임대노트북 관리">임대노트북 관리</a></li>
	                </ul>
	            </div>
	            <div class="title clear">
	                <div class=fl>
	                    <h2>임대노트북 관리</h2>
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
	                <h3>임대노트북 등록</h3>
	                <table class="table-type02 bbc">
	                    <caption>임대 노트북 등록 테이블</caption>
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
	                            <th>CPU</th>
	                            <td>
	                            	<input type="text" name="" id="" class="wp90">
	                            	<label for="" class="hide">CPU</label>
	                            </td>
	                        </tr>
	                        <tr>
	                            <th>모델명</th>
	                            <td>
	                            	<input type="text" name="" id="" class="wp90">
	                            	<label for="" class="hide">모델 이름</label>
	                            </td>
	                            <th>그패픽카드</th>
	                            <td>
	                            	<input type="text" name="" id="" class="wp90">
	                            	<label for="" class="hide">그래픽 카드</label>      
	                            </td>
	                        </tr>
	                        <tr>
	                            <th>O/S</th>
	                            <td>
	                            	<input type="text" name="" id="" class="wp90">
	                            	<label for="" class="hide">운영체제</label>    
	                            </td>
	                            <th>DISK 용량/개수</th>
	                            <td>
	                            	<input type="text" name="" id="" class="wp90">
	                            	<label for="" class="hide">디스크 용량과 개수</label>    
	                            </td>
	                        </tr>
	                        <tr>
	                            <th>Memory</th>
	                            <td>
	                                <input type="text" name="" id="" class="wp90">
	                                <label for="" class="hide">메모리</label>    
	                            </td>
	                            <th></th>
	                            <td></td>
	                        </tr>
	                        <tr>
	                            <th>모니터 인치</th>
		                        <td>
		                            <input type="text" name="" id="" class="wp90"> 
		                            <label for="" class="hide">모니터 인치</label>    
	                            </td>
	                            <th></th>
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
	                            <col class="w120">
	                            <col class="wp30">
	                            <col class="w120">
	                            <col class="wp30">
	                        </colgroup>
	                        <tbody>
	                            <tr>
	                                <th>사번</th>
	                                <td colspan="3">
	                                    <input type="text" name="" id="" class="wp85">
	                                    <label for="" class="hide">사번 검색</label>
	                                    <button type="button" name="" id="" class="btn-search">사번 검색</button>
	                                </td>
	                            </tr>
	                            <tr>
	                                <th>이름</th>
	                                <td>
	                                    <input type="text" name="" id="">
	                                    <label for="" class="hide">이름</label>
	                                </td>
	                                <th>직위</th>
	                                <td>
	                                    <input type="text" name="" id="">
	                                    <label for="" class="hide">직위</label>
	                                </td>
	                            </tr>
	                            <tr>
	                                <th>부서</th>
	                                <td colspan="3">
	                                    <input type="text" name="" id="">
	                                    <label for="" class="hide">부서</label>
	                                </td>
	                            </tr>
	                            <tr>
	                                <th>연락처</th>
	                                <td>
	                                    <input type="text" name="" id="">
	                                    <label for="" class="hide">연락처</label>
	                                </td>
	                            </tr>
								<tr>
	                                <th><label for="">대여일</label></th>
	                                <td colspan="3">
	                                    <input type="date" name="" id="today" class="wp42">
	                                    <label for="" class="hide">대여 시작일</label>
	                                    <span class="pd5">~</span>  
	                                    <input type="date" name="" id="today2" class="wp42">
	                                    <label for="" class="hide">대여 종료일</label>
	                                </td>
                            	</tr>
	                        </tbody>
	                    </table>
	                </div>
	            </div> <!-- .section end-->
        	</div><!-- .middle-cont end-->
        	
        	<div class="button-cont">
	            <div class="btn-box">
	                <ul>
	                    <li><a href="#" title="임대노트북으로 전환">임대노트북으로 전환</a></li>
	                    <li><a href="#" title="일반노트북으로 전환" class="bg-navy">일반노트북으로 전환</a></li>
	                </ul>
	            </div>
       	 	</div> <!-- .button-cont -->
       	 
		</div><!-- .sub-container end -->
	</div><!-- .sub-wrap end-->
</body>
</html>