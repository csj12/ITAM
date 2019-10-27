<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<script type="text/javascript">
	$(document).ready(function () {	
		$(".btn-search").on("click", function(e){
			
			var itAssetNo = $('#itAssetNo').val();	
			
			$.ajax({
				type : 'POST',
				url : 'searchAssetInfoBtn',
				dataType: 'json',
				data:{"itAssetNo" : itAssetNo},
				error:function(xhr, status, error){
	                //alert("error1:"+error);
	            },
	            success : function(result){
	            	if(result.assetInfo[0] != null)
	            	{
		                $('#prodtSnNo').val(result.assetInfo[0].PRODT_SN_NO);
		                $('#prodtNm').val(result.assetInfo[0].PRODT_NM);
		                $('#mnfCmpny').val(result.assetInfo[0].MNF_CMPNY);
		                $('#jobFg').val(result.assetInfo[0].JOB_FG);
		                $('#prposFg').val(result.assetInfo[0].PRPOS_FG);
		                $('#lrgeFg').val(result.assetInfo[0].LRGE_FG);
		                $('#middlFg').val(result.assetInfo[0].MIDDL_FG);
		                $('#smallFg').val(result.assetInfo[0].SMALL_FG);
		                $('#dvyfgCmpny').val(result.assetInfo[0].DVYFG_CMPNY);
		                $('#techSupptCmpny').val(result.assetInfo[0].TECH_SUPPT_CMPNY);
		                $('#mntCmpny').val(result.assetInfo[0].MNT_CMPNY); 
	            	}
	            	else
	            	{
	            		alert("존재하지 않는 사번입니다.");
	            	}
	            },
			});
		});
	});
function Category(value, text) {
	this.value = value;
	this.text = text;
	this.length = 0;
	}

function addCategory(category, value, text) {
	category[category.length] = new Category(value, text);
	category.length++;
	}

	var category = new Category();
		 
	addCategory(category,"H/W", "H/W");
		  
	addCategory(category[0], "서버", "서버");
	addCategory(category[0], "저장장비", "저장장비");
	addCategory(category[0], "보안장비", "보안장비");
	addCategory(category[0], "OA장비", "OA장비");
	addCategory(category[0], "프린터", "프린터");
		  
	addCategory(category[0][0], "UNIX 장비", "UNIX 장비");
	addCategory(category[0][0], "리눅스 장비", "리눅스 장비");
	addCategory(category[0][0], "x86 장비", "x86 장비");
		  
	addCategory(category[0][1], "NAS 장비", "NAS 장비");
	addCategory(category[0][1], "SAN 장비", "SAN 장비");
	addCategory(category[0][1], "SAN 스위치", "SAN 스위치");
		  
	addCategory(category[0][2], "방화벽", "방화벽");
	addCategory(category[0][2], "침입탐지", "침입탐지");
	addCategory(category[0][2], "침입방지", "침입방지");
	addCategory(category[0][2], "VPN", "VPN");
	addCategory(category[0][2], "보안관제", "보안관제");
	addCategory(category[0][2], "출입보안", "출입보안");
		  
		  
	addCategory(category[0][3], "Workstation", "Workstation");
	addCategory(category[0][3], "Desktop PC", "Desktop PC");
	addCategory(category[0][3], "Monitor", "Monitor");
	addCategory(category[0][3], "Notebook", "Notebook");
	addCategory(category[0][3], "VDI 단말기", "VDI 단말기");
	addCategory(category[0][3], "PDA 장비", "PDA 장비");
	addCategory(category[0][3], "스캐너", "스캐너");
		  
	addCategory(category[0][4], "컬러프린터", "컬러프린터");
	addCategory(category[0][4], "모노프린터", "모노프린터");
	addCategory(category[0][4], "라벨프린트", "라벨프린트");
		 
	addCategory(category, "S/W", "S/W");
	addCategory(category[1], "시스템", "시스템");
	addCategory(category[1], "보안", "보안");
	addCategory(category[1], "해석","해석");
	addCategory(category[1], "사무용","사무용");
		  
	addCategory(category[1][0], "DBMS", "DBMS");
	addCategory(category[1][0], "Middleware", "Middleware");
	addCategory(category[1][0], "가상화", "가상화");
	addCategory(category[1][0], "망분리", "망분리");
	addCategory(category[1][0], "EAI", "EAI");
	addCategory(category[1][0], "개발툴", "개발툴");
	addCategory(category[1][0], "ERP", "ERP");
		  
	addCategory(category[1][1], "관제 모니터링", "관제 모니터링");
	addCategory(category[1][1], "암호화", "암호화");
	addCategory(category[1][1], "인증", "인증");
	addCategory(category[1][1], "원격제어", "원격제어");
	addCategory(category[1][1], "백신", "백신");
    addCategory(category[1][1], "통신", "통신");
	addCategory(category[1][1], "접근제어", "접근제어");
		  
	addCategory(category[1][2], "유동해석", "유동해석");
	addCategory(category[1][2], "압력", "압력");
		  
	addCategory(category[1][3], "업무용", "업무용");
		  
	addCategory(category, "통신장비", "통신장비");
		  
	addCategory(category[2], "스위치", "스위치");
	addCategory(category[2], "전송장비","전송장비");
	addCategory(category[2], "무선장비", "무선장비");
	addCategory(category[2], "속도제어","속도제어");

	addCategory(category[2][0], "백본", "백본");
	addCategory(category[2][0], "라우터", "라우터");
	addCategory(category[2][0], "L4", "L4");
	addCategory(category[2][0], "L3", "L3");
	addCategory(category[2][0], "L2", "L2");
	addCategory(category[2][0], "보안스위치", "보안스위치");
	addCategory(category[2][0], "Gateway장비", "Gateway장비");
		  
	addCategory(category[2][1], "WAN가속기", "WAN가속기");
		  
	addCategory(category[2][2], "무선AP", "무선AP");
	addCategory(category[2][2], "무선AP브릿지", "무선AP브릿지");
	addCategory(category[2][2], "무선랜컨트롤러", "무선랜컨트롤러");
		  
	addCategory(category[2][3], "QoS", "QoS");
		  
	addCategory(category, "기타기반시설", "기타기반시설");
	addCategory(category[3], "전원장비", "전원장비");
	addCategory(category[3], "공조장비","공조장비");
	addCategory(category[3], "소화설비", "소화설비");
	addCategory(category[3], "기타","기타");

	addCategory(category[3][0], "UPS", "UPS");
	addCategory(category[3][0], "내장UPS", "내장UPS");
	addCategory(category[3][0], "배터리", "배터리");
	addCategory(category[3][0], "정류기", "정류기");
		  
	addCategory(category[3][1], "항온항습기", "항온항습기");
	addCategory(category[3][1], "냉방기", "냉방기");
		  
	addCategory(category[3][2], "소화장비", "소화장비");
		  
	addCategory(category[3][3], "화상회의", "화상회의");
	addCategory(category[3][3], "영상장비", "영상장비");
	addCategory(category[3][3], "CCTV", "CCTV");
	addCategory(category[3][3], "카메라", "카메라");
	addCategory(category[3][3], "방송장비", "방송장비");
	addCategory(category[3][3], "빔프로젝트", "빔프로젝트");
	addCategory(category[3][3], "센서장비", "센서장비");

function initForm(form) {
	form.lrgeFg.length = category.length;

	for (i = 0; i < category.length; i++){
	form.lrgeFg[i].value = category[i].value;
	form.lrgeFg[i].text = category[i].text;
	form.lrgeFg.selectedIndex = 0;
	form.middlFg.selectedIndex = 0;
	}
		 
	change_lrgeFg(form);
	}
		 
		 function change_lrgeFg(form) {
		  var i = form.lrgeFg.selectedIndex;
		  form.middlFg.length = category[i].length;
		 
		  for (j = 0; j < form.middlFg.length; j++){
		   form.middlFg[j].value = category[i][j].value;
		   form.middlFg[j].text = category[i][j].text;
		   form.middlFg.selectedIndex = 0;
		  }
		  change_middlFg(form);
		 }
		 
 function change_middlFg(form) {
		  var i = form.lrgeFg.selectedIndex
		  var j = form.middlFg.selectedIndex;
		 
		  form.smallFg.length = category[i][j].length;
		 
		  for (k = 0; k < form.smallFg.length; k++){
		   form.smallFg[k].value = category[i][j][k].value;
		   form.smallFg[k].text = category[i][j][k].text;
		   form.smallFg.selectedIndex = 0;
		  }
		 }		 
 function change_compo(){
		  var l = document.form.smallFg.selectedIndex;
		  alert("value >>"+document.form.smallFg[l].value);
		  alert("text >>"+document.form.smallFg[l].text);
		 }
		 
 function register(){
		 		
 document.userInfoForm.action ="./ITAM-AST-00001_2";				
 document.userInfoForm.submit();
		 	}
</script>
<head>
</head>
	<body>
	<div class="sub-wrap">
	  <div class="sub-container">
	      <div class="sub-header">
	          <div class="ast-div-headline">
	             <label class="AST-label">H/W 자산관리 장비 등록</label>
	          </div>
	          <div class="btn-exit">
			     <ul>
				    <li><a href="#" title="닫기">X</a></li>
				 </ul>
			  </div>
	      </div>
      
       <div class="ast-title">
		   <table class= "ast-table-style04"> 
			   <colgroup>
					<col width="20%">
					<col width="20%">
					<col width="20%">
					<col width="20%">
		       </colgroup>
			   <tbody>
				  <tr>
				     <th><li class="color">STEP 01</li>기본 정보</th>
				       <td class="color2"><li class="color2">STEP 02</li>속성 정보</td>
				       <td class="color2"><li class="color2">STEP 03</li>비용 정보</td>
				       <td class="color2"><li class="color2">STEP 04</li>사용자 정보</td>
				       <td class="color2"><li class="color2">STEP 05</li>위치 정보</td>
				  </tr>
			   </tbody>
	        </table>
		</div>

	    <div class="ast-div-simple">
			<span class="black title-dot-navi">기본 정보 등록</span>
		</div>
			    
		<div class="mg-t2 mg-r50 ta-r">
		    <span class="red">*필수 값을 입력해주세요</span>
	    </div> 
      
     <form name="userInfoForm">
        <div class="middle-cont">
	          <table class="ast-table-style05">
	                <caption>H/W 자산관리 테이블</caption>
	                     <colgroup>
	                         <col class="wp20">
	                         <col class="wp30">
	                         <col class="wp20">
	                         <col class="wp30">
	                     </colgroup>
                    <tbody>
	                       <tr>
	                           <th><span class="red">*</span>자산번호</th>
	                           <td>
	                               <input type="text" name="itAssetNo" id="itAssetNo" class="ast-select" value="1">
	                               <label for="" class="hide">자산번호</label>
	                               <button type="button" name="searchAssetInfoBtn" id="searchAssetInfoBtn" class="btn-search">자산번호검색</button>
	                           </td>
	                           <th><span class="red">*</span>시리얼 번호</th>
	                           <td>
		                           	<input type="text" name="prodtSnNo" id="prodtSnNo" class="ast-select" value="1">
		                           	<label for="" class="hide">시리얼 번호</label>
							   </td>
						    </tr>
						    <tr>
	                           <th><span class="red">*</span>제품명</th>
	                           <td>
		                           <input type="text" name="prodtNm" id="prodtNm" class="wp90" value="1">
		                           <label for="" class="hide">제품명</label>
	                           </td>
	                           <th>제조사</th>
	                           <td>
		                           <input type="text" name="mnfCmpny" id="mnfCmpny" class="ast-select" value="1">
		                           <label for="" class="hide">제조사</label>
	                           </td>
	                         </tr>
	                         <tr>
	                           <th>업무구분</th>
	                           <td>
	                               <label for="" class="hide">업무구분</label>
		                               <select name="jobFg" id="jobFg" class="ast-select" value="1">
		                                   <option value="2">고객지원</option>
		                                   <option value="3">퇴직연금</option>
		                                   <option value="4">질병판정위원회</option>
		                                   <option value="5">인터넷</option>
		                               </select>
	                           </td>
	                           <th>용도구분</th>
	                           <td>
	                               <label for="" class="hide">용도구분</label>
		                               <select name="prposFg" id="prposFg" class="ast-select" value="1">
		                                   <option value="2">외부가상화</option>
		                                   <option value="3">L2스위치</option>
		                                   <option value="4">QoS</option>
		                                   <option value="5">백본스위치</option>
		                               </select>
	                           </td>
	                         </tr>
	                     <form name="form" method="GET" action="#">    
	                         <tr>
	                           <th>대구분</th>
	                           <td>
	                               <label for="" class="hide">대구분</label>
		                               <select onchange="change_lrgeFg(this.form)" name="lrgeFg" id="lrgeFg" class="ast-select">
	                                       <option>H/W</option>
		                                   <option>S/W</option>
		                                   <option>통신장비</option>
		                                   <option>기타기반설비</option> 
		                               </select>
	                           </td>
	                           <th>중구분</th>
	                           <td>
	                               <label for="" class="hide">중구분</label>
		                                <select onchange="change_middlFg(this.form)" name="middlFg" id="middlFg" class="ast-select">
			                                <option>서버</option>
			                                <option>저장장비</option>	
			                                <option>보안정비</option>	
			                                <option>OA장비</option>	
			                                <option>프린터</option>		
		                                </select>
	                           </td>
	                         </tr>
	                         <tr>
	                           <th>소구분</th>
		                           <td>
		                               <label for="" class="hide">소구분</label>
			                               <select name="smallFg" onchange="change_smallFg(this.form)" id="smallFg" class="ast-select">
			                               		<option>UNIX 장비</option>
				                                <option>리눅스 장비</option>	
				                                <option>x86 장비</option>			
			                               </select>
		                           </td>
	                         </form>
	                           <th>납품사</th>
	                           <td>
	                               <input type="text" name="dvyfgCmpny" id="dvyfgCmpny" class="wp90" value="1">
	                               <label for="" class="hide">납품사</label>
	                           </td>
	                          </tr>
	                          <tr>
	                           <th>기술지원사</th>
	                           <td>
	                               <input type="text" name="techSupptCmpny" id="techSupptCmpny" class="wp90" value="1">
	                               <label for="" class="hide">지술지원사</label>
	                           </td>
	                           <th>유지보수사</th>
	                           <td>
	                               <input type="text" name="mntCmpny" id="mntCmpny" class="wp90" value="1">
	                               <label for="" class="hide">유지보수사</label>
	                           </td>
	                         </tr>
                   		</tbody>
               		</table>
			    </div>
			 </form>
		
				<div class="button-cont">
					<div class="btn-next ta-c">
		                <ul>
		                    <li>
			                    <a href="javascript:register();" title="다음">다음</a>                    		                    
				                <a href="#" title="저장">저장</a>
		                    </li>
		                </ul>
	                </div>
				</div>
			</div>
		</div>
</body>
</html>