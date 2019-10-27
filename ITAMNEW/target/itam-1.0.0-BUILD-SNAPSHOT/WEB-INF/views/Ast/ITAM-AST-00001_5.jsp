<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
	$(document).ready(function () {	
		$(".btn-search").on("click", function(e){
			
			var area = $('#area').val();	
			
			$.ajax({
				type : 'POST',
				url : 'searchAreaInfoBtn',
				dataType: 'json',
				data:{"area" : area},
				error:function(xhr, status, error){
	                //alert("error1:"+error);
	            },
	            success : function(result){
	            	if(result.areaInfo[0] != null)
	            	{
		                $('#floor').val(result.areaInfo[0].FLOOR);
		                $('#areaCmpny').val(result.areaInfo[0].AREA_CMPNY);
		                $('#loc').val(result.areaInfo[0].LOC);
		                $('#buld').val(result.areaInfo[0].BULD);
	            	}
	            	else
	            	{
	            		alert("존재하지 않는 사번입니다.");
	            	}
	            },
			});
		});
	});
	
 	function register(){
 		
        document.areaInfoForm.action ="UserAuthPersonAdd8";
		
		document.areaInfoForm.submit();
 	}
</script>
</head>
	<body>
	  <% 
        // 한글 깨짐을 방지하기 위한 인코딩 처리
        request.setCharacterEncoding("euc-kr"); 
    
        // getParameter()를 이용해 넘겨진 파라미터 값을 얻어올 수 있다.
        // 파라미터 값을 얻을때 name= 에 지정해둔 값과 동일한 값을 인자로 지정해야 된다.
        String itAssetNo = request.getParameter("itAssetNo");
        String prodtSnNo = request.getParameter("prodtSnNo");
        String prodtNm = request.getParameter("prodtNm");
        String mnfCmpny = request.getParameter("mnfCmpny");       
        String jobFg = request.getParameter("jobFg");
        String prposFg = request.getParameter("prposFg");
        String lrgeFg = request.getParameter("lrgeFg");
        String middlFg = request.getParameter("middlFg");
        String smallFg = request.getParameter("smallFg");
        String dvyfgCmpny = request.getParameter("dvyfgCmpny");
        String techSupptCmpny = request.getParameter("techSupptCmpny");
        String mntCmpny = request.getParameter("mntCmpny");
        String modelNm = request.getParameter("modelNm");
        String mory = request.getParameter("mory");
        String os = request.getParameter("os");
        String diskCpctyCo = request.getParameter("diskCpctyCo");
        String cpu = request.getParameter("cpu");
        String montrInch = request.getParameter("montrInch");
        String grpicCard = request.getParameter("grpicCard");
        String indcDy = request.getParameter("indcDy");
        String mntDy = request.getParameter("mntDy");
        String pordtWrtin = request.getParameter("pordtWrtin");
        String pordtWrtin2 = request.getParameter("pordtWrtin2");
        String indcAmont = request.getParameter("indcAmont");
        String techSupptWrtin = request.getParameter("techSupptWrtin");
        String techSupptWrtin2 = request.getParameter("techSupptWrtin2");
        String mntTarif = request.getParameter("mntTarif");
        String mntNeedYn = request.getParameter("mntNeedYn");
        String mntNeedYn2 = request.getParameter("mntNeedYn2");
        String mntAmont = request.getParameter("mntAmont");
        String emplNo = request.getParameter("emplNo");
        String dept = request.getParameter("dept");
        String nm = request.getParameter("nm");
        String telNo = request.getParameter("telNo");
        String ofcps = request.getParameter("ofcps");
        %>
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
					       <td class="color2 td3"><li class="color2">STEP 01</li>기본 정보</th>
					       <td class="color2"><li class="color2">STEP 02</li>속성 정보</td>
					       <td class="color2"><li class="color2">STEP 03</li>비용 정보</td>
					       <td class="td2 color2"><li class="color2">STEP 04</li>사용자 정보</td>
					       <th><li class="color">STEP 05</li>위치 정보</td>
				      </tr>
				   </tbody>
			     </table>
		</div>

		    <div class="ast-div-simple">
			   <span class="black title-dot-navi">위치 정보 등록</span>
			</div>
			    
			<div class="mg-t2 mg-r50 ta-r">
			   <span class="red">*필수 값을 입력해주세요</span>
		    </div> 
    <form name="areaInfoForm">
        <div class="middle-cont">
	               <table class="ast-table-style05">
	                   <caption>위치 정보 관리 테이블</caption>
		                   <colgroup>
		                       <col class="wp20">
		                       <col class="wp30">
		                       <col class="wp20">
		                       <col class="wp30">
		                   </colgroup>
                		<tbody>
	                       <tr>
	                           <th>지역</th>
		                           <td>
		                               <input type="text" name="area" id="area" class="ast-select">
		                               <label for="" class="hide">지역</label>
		                               <button type="button" name="searchAreaInfoBtn" id="searchAreaInfoBtn" class="btn-search">자산번호 검색</button>
		                           </td>
	                           <th>층수</th>
		                           <td>
			                           <input type="text" name="floor" id="floor" class="ast-select">
			                           <label for="" class="hide">층수</label>
								   </td>
						   </tr>
						   <tr>
	                           <th>지사</th>
		                           <td>
			                           <input type="text" name="areaCmpny" id="areaCmpny" class="wp90">
			                           <label for="" class="hide">지사</label>
		                           </td>
	                           <th>위치/장소</th>
		                           <td>
			                           <input type="text" name="loc" id="loc" class="wp90">
			                           <label for="" class="hide">위치/장소</label>
		                           </td>
	                       </tr>
	                       <tr>
	                           <th>건물</th>
		                           <td>
		                                <input type="text" name="buld" id="buld" class="wp90">
		                                <label for="" class="hide">건물</label>
		                           </td>
	                           <th></th>
		                           <td>
		                           </td>
	                         </tr>
	                       <input type="hidden" name="itAssetNo" value="<%=itAssetNo%>" >
	                       <input type="hidden" name="prodtSnNo" value="<%=prodtSnNo%>" >
	                       <input type="hidden" name="prodtNm" value="<%=prodtNm%>">
	                       <input type="hidden" name="mnfCmpny" value="<%=mnfCmpny%>">                       
	                       <input type="hidden" name="jobFg" value="<%=jobFg%>">
	                       <input type="hidden" name="prposFg" value="<%=prposFg%>">
	                       <input type="hidden" name="lrgeFg" value="<%=lrgeFg%>" >
	                       <input type="hidden" name="middlFg" value="<%=middlFg%>">
	                       <input type="hidden" name="smallFg" value="<%=smallFg%>">
	                       <input type="hidden" name="dvyfgCmpny" value="<%=dvyfgCmpny%>" >
	                       <input type="hidden" name="techSupptCmpny" value="<%=techSupptCmpny%>">
	                       <input type="hidden" name="mntCmpny" value="<%=mntCmpny%>">
	                       <input type="hidden" name="modelNm" value="<%=modelNm%>">
	                       <input type="hidden" name="mory" value="<%=mory%>" >
	                       <input type="hidden" name="os" value="<%=os%>">
	                       <input type="hidden" name="diskCpctyCo" value="<%=diskCpctyCo%>">
	                       <input type="hidden" name="cpu" value="<%=cpu%>" >
	                       <input type="hidden" name="montrInch" value="<%=montrInch%>">
	                       <input type="hidden" name="grpicCard" value="<%=grpicCard%>">
	                       <input type="hidden" name="indcDy" value="<%=indcDy%>">
	                       <input type="hidden" name="mntDy" value="<%=mntDy%>" >
	                       <input type="hidden" name="pordtWrtin" value="<%=pordtWrtin%>">
	                       <input type="hidden" name="pordtWrtin2" value="<%=pordtWrtin2%>">
	                       <input type="hidden" name="indcAmont" value="<%=indcAmont%>">
	                       <input type="hidden" name="techSupptWrtin" value="<%=techSupptWrtin%>" >
	                       <input type="hidden" name="techSupptWrtin2" value="<%=techSupptWrtin2%>">
	                       <input type="hidden" name="mntTarif" value="<%=mntTarif%>">
	                       <input type="hidden" name="mntNeedYn" value="<%=mntNeedYn%>" >
	                       <input type="hidden" name="mntNeedYn2" value="<%=mntNeedYn2%>">
	                       <input type="hidden" name="mntAmont" value="<%=mntAmont%>">
	                       <input type="hidden" name="emplNo" value="<%=emplNo%>">
	                       <input type="hidden" name="dept" value="<%=dept%>">
	                       <input type="hidden" name="nm" value="<%=nm%>" >
	                       <input type="hidden" name="telNo" value="<%=telNo%>">
	                       <input type="hidden" name="ofcps" value="<%=ofcps%>">
                   		</tbody>
               		</table>
				</div>
		  </form>
				<div class="button-cont">
					<div class="btn-next ta-c">
		                <ul>
		                    <li>
			                    <a href="#" title="이전">이전</a>                   		                    
			                    <a href="#" title="저장">저장</a>
			                    <a href="javascript:register();" title="등록">등록</a>	        
		                    </li>
		                </ul>
	                </div>
				</div>
			</div>
		</div>
</body>
</html>