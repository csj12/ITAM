<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	
	$(document).ready(function () {	

		var list = ${jsonResult};
		$('#jobFg').find('option').remove();
		
		$('#jobFg').append("<option value =" +list[0].CODE + ">" + list[0].DESC +"</option>");
	});

</script>

</head>
<body>
	<div class="sub-wrap">
	 <div class="sub-container">
        <div class="top-cont clear">
            <div class="navi">
                <ul>
                    <li><a href="#" title="HOME">HOME</a></li>
                    <li><a href="#" title="IT자산관리">IT자산관리</a></li>
                    <li><a href="#" title="H/W자산관리">H/W자산관리</a></li>
                </ul>
            </div>
          <div class="title clear">
                <div class=fl>
                    <h2>IT 자산관리</h2>
                </div>
                <div class="fr">
                    <ul class="btn-wrap">
                        <li><a href="" class="btn-print" title="출력">출력</a></li>
                        <li><a href="" class="btn-down" title="다운로드">다운로드</a></li>
                    </ul>
                </div>
            </div>
        </div> <!-- .top-cont end-->
        <div class="tab-cont">
            <ul>
                <li class="on"><a href="#" title="H/W 자산관리">H/W 자산관리</a></li>
                <li><a href="#" title="S/W 자산관리">S/W 자산관리</a></li>
                <li><a href="#" title="통신설비">통신설비</a></li>
                <li><a href="#" title="부대설비">부대설비</a></li>
            </ul>
        </div> <!-- .tab-cont end -->
        
        <div class="middle-cont">
            <div class="section wp100 bbc">
                <table class="table-type02">
                    <caption>H/W 자산관리 테이블</caption>
	                    <colgroup>
	                        <col class="wp10">
	                        <col class="wp20">
	                        <col class="wp10">
	                        <col class="wp20">
	                        <col class="wp10">
	                        <col class="wp20">
	                    </colgroup>
                    <tbody>
                        <tr>
                            <th>자산번호</th>
                            <td>
                                <input type="text" name="itAssetNo" id="itAssetNo" class="wp80"> 
                                <label for="" class="hide">자산번호</label>
                                <button type="button" name="" id="" class="btn-search">자산번호 검색</button>
                            </td>
                            <th>시리얼 번호</th>
                            <td>A12345678</td>
                            <th>제품명</th>
                            <td>DELL OPIRIPLEX 9020</td>
                        </tr>
                        <tr>
                            <th>업무구분</th>
                            <td>
                                <label for="" class="hide">업무구분</label>
                                <select id="jobFg" class="readOnly">
                                </select>
                            </td>
                            <th>용도구분</th>
                            <td>
                                <label for="" class="hide">용도구분</label>
                                <select id="prposFg" class="">
                                    <option value="">업무용</option>
                                    <option value="">출장용</option>
                                    <option value="">등등</option>
                                </select>
                            </td>
                            <th>제조사</th>
                            <td>
                                Dell
                            </td>
                        </tr>
                        <tr>
                            <th>대구분</th>
                            <td>
                                <label for="" class="hide">대구분</label>
                                <select id="lrgeFg" class="">
                                    <option value="">H/W</option>
                                </select>
                            </td>
                            <th>중구분</th>
                            <td>
                                <label for="" class="hide">중구분</label>
                                <select id="middlFg" class="">
                                    <option value="">PC</option>
                                    <option value="">Monitor</option>
                                    <option value="">Print</option>
                                </select>
                            </td>
                            <th>소구분</th>
                            <td>
                                <label for="" class="hide">소구분</label>
                                <select id="smallFg" class="">
                                    <option value="">Desktop PC</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>납품사</th>
                            <td>
                                (주)에이치씨엔씨
                            </td>
                            <th>기술지원사</th>
                            <td>
                                (주)에이치씨엔씨
                            </td>
                            <th>유지보수사</th>
                            <td>
                                (주)에이치씨엔씨
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div> <!-- .middle-cont end-->
      
        <div class="bottom-cont">
            <div class="section  wp25">
                <h3>제품속성</h3>
                <div class="section-box">
                    <table class="table-type03">
                        <caption>제품속성 테이블</caption>
                        <colgroup>
                            <col class="wp40">
                            <col class="wp60">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th><label for="">모델명</label></th>
                                <td>
                                    <input type="text" name="modelNm" id="modelNm">
                                    <label for="" class="hide">모델명</label>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="">O/S</label></th>
                                <td>
                                    <input type="text" name="os" id="os">
                                    <label for="" class="hide">O/S</label>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="">CPU</label></th>
                                <td>
                                    <input type="text" name="cpu" id="cpu">
                                    <label for="" class="hide">CPU</label>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="">그래픽 카드</label></th>
                                <td>
                                    <input type="text" name="grpicCard" id="grpicCard">
                                    <label for="" class="hide">그래픽 카드</label>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="">MEMORY</label></th>
                                <td>
                                    <input type="text" name="mory" id="mory">
                                    <label for="" class="hide">MEMORY</label>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="">DISK 용량개수</label></th>
                                <td>
                                    <input type="text" name="diskCpctyCo" id="diskCpctyCo">
                                    <label for="" class="hide">DISK 용량개수</label>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="">모니터인치</label></th>
                                <td>
                                    <input type="text" name="montrInch" id="montrInch">
                                    <label for="" class="hide">모니터인치</label>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div> <!-- .section end-->
            <div class="section  wp25">
                <h3>일정/비용 정보</h3>
                <div class="section-box">
                    <table class="table-type03">
                        <caption>일정/비용 정보 테이블</caption>
                        <colgroup>
                            <col class="wp40">
                            <col class="wp60">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th><label for="">도입일자</label></th>
                                <td>
                                    <input type="text" name="indcDy" id="indcDy">
                                    <label for="" class="hide">도입일자</label>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="">제품  W/I 기간</label></th>
                                <td>
                                    <input type="text" name="pordtWrtin" id="pordtWrtin">
                                    <label for="" class="hide">제품 W/I 기간</label>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="">기술지원 W/I 기간</label></th>
                                <td>
                                    <input type="text" name="techSupptWrtin" id="techSupptWrtin">
                                    <label for="" class="hide">기술지원 W/I 기간</label>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="">유지보수 필요 유무</label></th>
                                <td>
                                    <input type="text" name="mntNeedYn" id="mntNeedYn">
                                    <label for="" class="hide">유지보수 필요 유무</label>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="">유지보수 발생일</label></th>
                                <td>
                                    <input type="text" name="mntDy" id="mntDy">
                                    <label for="" class="hide">유지보수 발생일</label>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="">도입금액</label></th>
                                <td>
                                    <input type="text" name="indcAmont" id="indcAmont">
                                    <label for="" class="hide">도입금액</label>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="">유지보수 요율</label></th>
                                <td>
                                    <input type="text" name="mntTarif" id="mntTarif">
                                    <label for="" class="hide">유지보수 요율</label>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="">유지보수 금액</label></th>
                                <td>
                                    <input type="text" name="mntAmont" id="mntAmont">
                                    <label for="" class="hide">유지보수 금액</label>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div> <!-- .section end-->
            <div class="section  wp25">
                <h3>사용자</h3>
                <div class="section-box">
                    <table class="table-type03">
                        <caption>사용자 테이블</caption>
                        <colgroup>
                            <col class="wp40">
                            <col class="wp60">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th><label for="">사번</label></th>
                                <td>
                                   <input type="text" name="emplNo" id="emplNo" class="ast-select">
	                               <label for="" class="hide">사번</label>
	                               <button type="button" name="searchUserInfoBtn" id="searchUserInfoBtn" class="btn-search">사번 검색</button>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="">이름</label></th>
                                <td>
                                    <input type="text" name="nm" id="nm">
                                    <label for="" class="hide">이름</label>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="">직위</label></th>
                                <td>
                                    <input type="text" name="ofcps" id="ofcps">
                                    <label for="" class="hide">직위</label>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="">부서</label></th>
                                <td>
                                    <input type="text" name="dept" id="dept">
                                    <label for="" class="hide">부서</label>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="">전화번호</label></th>
                                <td>
                                    <input type="text" name="telNo" id="telNo">
                                    <label for="" class="hide">전화번호</label>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div> <!-- .section end-->
            <div class="section  wp25">
                <h3>위치 정보</h3>
                <div class="section-box">
                    <table class="table-type03">
                        <caption>위치 정보 테이블</caption>
                        <colgroup>
                            <col class="wp40">
                            <col class="wp60">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th><label for="">지역</label></th>
                                <td>
                                    <input type="text" name="area" id="area">
                                    <label for="" class="hide">지역</label>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="">지사</label></th>
                                <td>
                                    <input type="text" name="areaCmpny" id="areaCmpny">
                                    <label for="" class="hide">지사</label>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="">건물</label></th>
                                <td>
                                    <input type="text" name="buld" id="buld">
                                    <label for="" class="hide">건물</label>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="">층수</label></th>
                                <td>
                                    <input type="text" name="floor" id="floor">
                                    <label for="" class="hide">층수</label>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="">위치/장소</label></th>
                                <td>
                                    <input type="text" name="loc" id="loc">
                                    <label for="" class="hide">위치/장소</label>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div> <!-- .section end-->
        </div>
        <div class="button-cont mg-t20">
            <div class="btn-box">
                <ul>
                    <li><a href="#" title="수정">수정</a></li>
                    <li><a href="#" title="삭제">삭제</a></li>
                    <li><a href="#" title="창고" class="bg-gray">창고</a></li>
                    <li><a href="#" title="폐기" class="bg-gray">폐기</a></li>
                    <li><a href="#" title="등록" class="bg-navy">등록</a></li>
                </ul>
            </div>
        </div> <!-- .button-cont -->
     </div>
     </div>
</body>
</html>