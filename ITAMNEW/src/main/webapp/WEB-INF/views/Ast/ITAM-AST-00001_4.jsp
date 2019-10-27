<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<script type="text/javascript">
	$(document).ready(function () {	
		$(".btn-search").on("click", function(e){
			
			var emplNo = $('#emplNo').val();	
			
			$.ajax({
				type : 'POST',
				url : 'searchUserInfoBtn',
				dataType: 'json',
				data:{"emplNo" : emplNo},
				error:function(xhr, status, error){
	                //alert("error1:"+error);
	            },
	            success : function(result){
	            	if(result.userInfo[0] != null)
	            	{
		                $('#dept').val(result.userInfo[0].DEPT);
		                $('#nm').val(result.userInfo[0].NM);
		                $('#telNo').val(result.userInfo[0].TEL_NO);
		                $('#ofcps').val(result.userInfo[0].OFCPS);
	            	}
	            	else
	            	{
	            		alert("존재하는 사번입니다.");
	            	}
	            },
			});
		});
	});
	
	function register(){
 	
        document.userInfoForm.action ="UserAuthPersonAdd6";
		
		document.userInfoForm.submit();
 	}
</script>
<head>
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
        String mntAmont = request.getParameter("mntAmont");
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
				       <td class="td2 color2"><li class="color2">STEP 03</li>비용 정보</td>
				       <th><li class="color">STEP 04</li>사용자 정보</td>
				       <td class="color2"><li class="color2">STEP 05</li>위치 정보</td>
				     </tr>
				     
				   </tbody>
			     </table>
		</div>
		

		    <div class="ast-div-simple">
			   <span class="black title-dot-navi">사용자 정보 등록</span>
			</div>
			    
			<div class="mg-t2 mg-r50 ta-r">
			   <span class="red">*필수 값을 입력해주세요</span>
		    </div> 
		    
  <form id="userInfoForm" name="userInfoForm">
        <div class="middle-cont">
	               <table class="ast-table-style05">
	                   <caption>사용자 정보 관리 테이블</caption>
		                   <colgroup>
		                       <col class="wp20">
		                       <col class="wp30">
		                       <col class="wp20">
		                       <col class="wp30">
		                   </colgroup>
                		<tbody>
	                       <tr>
	                           <th><span class="red">*</span>사번</th>
		                           <td>
		                               <input type="text" name="emplNo" id="emplNo" class="ast-select">
		                               <label for="" class="hide">사번</label>
		                               <button type="button" name="searchUserInfoBtn" id="searchUserInfoBtn" class="btn-search">사번</button>
		                           </td>
	                           <th>부서</th>
		                           <td>
			                           <input type="text" name="dept" id="dept" class="ast-select">
			                           <label for="" class="hide">부서</label>
								   </td>
						   </tr>
						   <tr>
	                           <th>이름</th>
		                           <td>
			                           <input type="text" name="nm" id="nm" class="wp90">
			                           <label for="" class="hide">이름</label>
		                           </td>
	                           <th>전화번호</th>
		                           <td>
			                           <input type="text" name="telNo" id="telNo" class="wp90">
			                           <label for="" class="hide">전화번호</label>
		                           </td>
	                       </tr>
	                       <tr>
	                           <th>직위</th>
		                           <td>
		                                <input type="text" name="ofcps" id="ofcps" class="wp90">
		                                <label for="" class="hide">직위</label>
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
	                       <input type="hidden" name="mntAmont" value="<%=mntAmont%>">
                   		</tbody>
               		 </table>
				</div>
		</form>
				
				<div class="button-cont">
					<div class="btn-next ta-c">
		                <ul>
		                    <li>
			                    <a href="#" title="이전">이전</a> 
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