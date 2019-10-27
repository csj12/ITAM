<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript">
	
 	function register(){
 		
        document.costInfoForm.action ="UserAuthPersonAdd5";
		document.costInfoForm.submit();
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
				       <td class="td2 color2"><li class="color2">STEP 02</li>속성 정보</td>
				       <th><li class="color">STEP 03</li>비용 정보</td>
				       <td class="color2"><li class="color2">STEP 04</li>사용자 정보</td>
				       <td class="color2"><li class="color2">STEP 05</li>위치 정보</td>
				     </tr>
				   </tbody>
			     </table>
		</div>

		    <div class="ast-div-simple">
			   <span class="black title-dot-navi">비용 정보 등록</span>
			</div>
			    
			<div class="mg-t2 mg-r50 ta-r">
			   <span class="red">*필수 값을 입력해주세요</span>
		    </div> 
     <form name="costInfoForm">
        <div class="middle-cont">
<%--         	<c:forEach var="Mdata" items="${common}">
        		<input type="hidden" name=""
        	</c:forEach> --%>
	               <table class="ast-table-style05">
	                   <caption>비용 정보 등록 테이블</caption>
		                   <colgroup>
		                       <col class="wp20">
		                       <col class="wp30">
		                       <col class="wp20">
		                       <col class="wp30">
		                   </colgroup>
                		<tbody>
	                       <tr>
	                           <th><span class="red">*</span>도입일자</th>
	                               <td>
	                                  <input type="text" name="indcDy" id="indcDy" class="ast-select">
	                                  <label for="" class="hide">도입일자</label>
	                               </td>
	                           <th>유지보수 발생일</th>
	                               <td>
	                                  <input type="text" name="mntDy" id="mntDy" class="ast-select">
	                                  <label for="" class="hide">유지보수 발생일</label>
							       </td>
						   </tr>
						   <tr>
	                           <th>제품  W/I 기간</th>
	                               <td>
		                              <input class="tboxsty04" name="pordtWrtin" id="pordtWrtin">
		                              <label for="" class="hide">제품 W/I 기간</label>
						             	<span>~</span>
						              <input class="tboxsty04" name="pordtWrtin" id="pordtWrtin">
						              <label for="" class="hide">제품 W/I 기간</label>
						           </td>
	                           <th>도입금액</th>
		                           <td>
		                           	  <input type="text" name="indcAmont" id="indcAmont" class="wp60">
		                           	  <label for="" class="hide">도입금액</label>
		                           </td>
	                       </tr>
	                       <tr>
	                           <th>기술지원  W/I 기간</th>
		                           <td>
		                              <input class="tboxsty04" name="techSupptWrtin" id="techSupptWrtin">
		                              <label for="" class="hide">기술지원 W/I 기간</label>
						             	<span>~</span>
						              <input class="tboxsty04" name="techSupptWrtin" id="techSupptWrtin">
						              <label for="" class="hide">기술지원 W/I 기간</label>
		                           </td>
	                           <th>유지보수 요율</th>
		                           <td>
		                              <input type="text" name="mntTarif" id="mntTarif" class="wp90">
		                              <label for="" class="hide">유지보수 요율</label>
		                           </td>
	                       </tr>
	                       <tr>
	                           <th>유지보수 필요 유무</th>
		                           <td>
		                              <input type="radio" name="mntNeedYn" id="mntNeedYn" value="YES">YES
		                              <label for="" class="hide">유지보수 필요 유무</label>
								      <input class="mg-l160" type="radio" name="mntNeedYn" id="mntNeedYn" value="NO">NO
								      <label for="" class="hide">유지보수 필요 유무</label>
		                           </td>
	                           <th>유지보수 금액</th>
		                           <td>
		                          	  <input type="text" name="mntAmont" id="mntAmont" class="wp90">
		                          	  <label for="" class="hide">유지보수 금액</label>
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
		<!-- 	<div id= "itAssetNo" ></div>
			<div id= "prodtSnNo" ></div>
			<div id= "prodtNm" ></div>
			<div id= "mnfCmpny" ></div>
			<div id= "jobFg" ></div>
			<div id= "prposFg" ></div>
			<div id= "lrgeFg" ></div>
			<div id= "middlFg" ></div>
			<div id= "smallFg" ></div>
			<div id= "dvyfgCmpny" ></div>
			<div id= "techSupptCmpny" ></div>		
			<div id= "mntCmpny" ></div> -->
			</div>
				</div>
			</div>
		</div>
</body>
</html>