<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript">
	$(document).ready(function () {	
		$(".btn-search").on("click", function(e){
			
			var modelNm = $('#modelNm').val();	
			
			$.ajax({
				type : 'POST',
				url : 'searchModelNmInfoBtn',
				dataType: 'json',
				data:{"modelNm" : modelNm},
				error:function(xhr, status, error){
	                //alert("error1:"+error);
	            },
	            success : function(result){
	            	if(result.modelInfo[0] != null)
	            	{
	            		/* alert("존재하는 사번입니다.") */
		                $('#mory').val(result.modelInfo[0].MORY);
		                $('#os').val(result.modelInfo[0].OS);
		                $('#diskCpctyCo').val(result.modelInfo[0].DISK_CPCTY_CO);
		                $('#cpu').val(result.modelInfo[0].CPU);
		                $('#montrInch').val(result.modelInfo[0].MONTR_INCH);
		                $('#grpicCard').val(result.modelInfo[0].GRPIC_CARD); 
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
 		
        document.attributeInfoForm.action ="./ITAM-AST-00001_3";
		
		document.attributeInfoForm.submit();
 	}
 	
 history.replaceState({}, null, location.pathname); 
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
				       <td class="td2 color2"><li class="color2">STEP 01</li>기본 정보</td>
				       <th><li class="color">STEP 02</li>속성 정보</td>
				       <td class="color2"><li class="color2">STEP 03</li>비용 정보</td>
				       <td class="color2"><li class="color2">STEP 04</li>사용자 정보</td>
				       <td class="color2"><li class="color2">STEP 05</li>위치 정보</td>
				     </tr>
				   </tbody>
			     </table>
		</div>

		    <div class="ast-div-simple">
			   <span class="black title-dot-navi">속성 정보 등록</span>
			</div>
			    
			<div class="mg-t2 mg-r50 ta-r">
			   <span class="red">*필수 값을 입력해주세요</span>
		    </div> 
      <form name="attributeInfoForm">
            <div class="middle-cont">
	               <table class="ast-table-style05">
	                   <caption>속성 정보 등록 테이블</caption>
		                   <colgroup>
		                       <col class="wp20">
		                       <col class="wp30">
		                       <col class="wp20">
		                       <col class="wp30">
		                   </colgroup>
                		<tbody>
	                       <tr>
	                           <th><span class="red">*</span>모델명</th>
	                           <td>
	                               <input type="text" name="modelNm" id="modelNm" class="ast-select">
	                               <label for="" class="hide">모델명</label>
	                               <button type="button" name="searchModelNmInfoBtn" id="searchModelNmInfoBtn" class="btn-search">자산번호 검색</button>
	                           </td>
	                           <th>MEMORY</th>
	                           <td>
		                           <input type="text" name="mory" id="mory" class="ast-select">
		                           <label for="" class="hide">MEMORY</label>
							   </td>
						   </tr>
						       <tr>
	                           <th>OS</th>
	                           <td>
	                           	   <input type="text" name="os" id="os" class="wp90">
	                           	   <label for="" class="hide">OS</label>
	                           </td>
	                           <th>DISK 용량 개수</th>
	                           <td>
	                           	   <input type="text" name="diskCpctyCo" id="diskCpctyCo" class="wp90">
	                           	   <label for="" class="hide">DISK 용량 개수</label>
	                           </td>
	                       </tr>
	                       <tr>
	                           <th>CPU</th>
	                           <td>
	                               <input type="text" name="cpu" id="cpu" class="wp90">
	                               <label for="" class="hide">CPU</label>
	                           </td>
	                           <th>모니터 인치</th>
	                           <td>
	                               <input type="text" name="montrInch" id="montrInch" class="wp90">
	                               <label for="" class="hide">모니터 인치</label>
	                           </td>
	                       </tr>
	                       <tr>
	                           <th>그래픽 카드</th>
	                           <td>
	                              <input type="text" name="grpicCard" id="grpicCard" class="wp90">
	                              <label for="" class="hide">그래픽 카드</label>
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