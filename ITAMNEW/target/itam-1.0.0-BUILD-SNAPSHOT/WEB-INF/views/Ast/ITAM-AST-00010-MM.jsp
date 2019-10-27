<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<% 

%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	
<title>IT 자산 폐기 관리</title>
</head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- //<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-serialize-object/2.5.0/jquery.serialize-object.min.js"></script> -->
	<script>
		
		$(document).ready(function () {	
			//폐기 테이블 자산 번호 조회
			$("#btn_itAssetNoSch").on("click", function(e){
				var itAssetNo = $('#txt_itAssetNo').val();			
				$.ajax({
					type : 'POST',
					url : 'DsuseAssetSearch',
					dataType: 'json',
					data:{"itAssetNo" : itAssetNo},
					error:function(request, xhr, status, error){
						alert("code="+request.status+":::maessage="+request.responseText+":::error="+error+":::xhr="+xhr);
		            },
		            success : function(result){
		        
		            	if(result.AssetDisuse[0] != null)
		            	{ 		            		
			             	$('#txt_mnfCmpny').val(result.AssetDisuse[0].MNF_CMPNY);
			                $('#txt_prodtSnNo').val(result.AssetDisuse[0].PRODT_SN_NO);
			                $('#txt_dvyfgCmpny').val(result.AssetDisuse[0].DVYFG_CMPNY);
			                $('#txt_prodtNm').val(result.AssetDisuse[0].PRODT_NM);
			                $('#txt_techSupptCmpny').val(result.AssetDisuse[0].TECH_SUPPT_CMPNY);
			                $('#txt_jobFg').val(result.AssetDisuse[0].JOB_FG);
			                $('#txt_mntCmpny').val(result.AssetDisuse[0].MNT_CMPNY);
			                $('#txt_prposFg').val(result.AssetDisuse[0].PRPOS_FG);
			                $('#txt_indcDy').val(result.AssetDisuse[0].INDC_DY);
			                $('#txt_lrgeFg').val(result.AssetDisuse[0].LRGE_FG);
			                $('#txt_RedsuseDy').val(result.AssetDisuse[0].DsuseDate2);
			                $('#txt_middlFg').val(result.AssetDisuse[0].MIDDL_FG);
			                $('#txt_smallFg').val(result.AssetDisuse[0].SMALL_FG);
			                
			                $('#txt_emplNo').val(result.AssetDisuse[0].EMPL_NO);	
			                $('#txt_nm').val(result.AssetDisuse[0].NM);	
			                $('#txt_ofcps').val(result.AssetDisuse[0].OFCPS);	
			                $('#txt_dept').val(result.AssetDisuse[0].DEPT);	
			                $('#txt_telNo').val(result.AssetDisuse[0].TEL_NO);	
			                
			                $('#txt_area').val(result.AssetDisuse[0].AREA);	
			                $('#txt_areaCmpny').val(result.AssetDisuse[0].AREA_CMPNY);	
			                $('#txt_buld').val(result.AssetDisuse[0].BULD);	
			                $('#txt_floor').val(result.AssetDisuse[0].FLOOR);
			                $('#txt_loc').val(result.AssetDisuse[0].LOC);
			                
			                $('#txt_dsuseDy').val(result.AssetDisuse[0].DsuseDate1);
			                
		            	}
		            	else
		            	{
		            		alert("일치하는 폐기 자산번호가 없습니다.");
		            	}
		            },
				});
			});
			//사원 조회
			$("#btn_emplNoSch").on("click", function(){		
				var emplNo = $('#txt_emplNo').val();	
				$.ajax({
					type : 'POST',
					url : 'UserInfoSearchByEmplNo',
					dataType: 'json',
					data:{"emplNo" : emplNo},
					error:function(xhr, status, error){
						alert("code="+request.status+":::maessage="+request.responseText+":::error="+error+":::xhr="+xhr);
		            },
		            success : function(result){
		            	if(result.userInfo[0] != null)
		            	{
			                $('#txt_nm').val(result.userInfo[0].NM);
			                $('#txt_ofcps').val(result.userInfo[0].OFCPS);
			                $('#txt_edpt').val(result.userInfo[0].DEPT);
			                $('#txt_telNo ').val(result.userInfo[0].TEL_NO);
		            	}
		            	else
		            	{
		            		alert("일치하는 사용자가 없습니다.");
		            	}
		            },
				});
			});
		});


		//페기 테이블에서 창고 테이블로 전환
		function warehouse(){
			var itAssetNo = $('#txt_itAssetNo').val();	
			var dsuseDy = $('#txt_dsuseDy').val();	
			$.ajax({
				type : 'POST',
				url : 'DsuseToWrhusInsert',
				dataType: 'json',
				data :{
					"itAssetNo":itAssetNo,
					"dsuseDy":dsuseDy
				},
				error:function(request,status,error, xhr){
	                alert("code="+request.status+":::maessage="+request.responseText+":::error="+error+":::xhr="+xhr);
	            },
	            success : function(result){          	
	            	alert("창고 전환 완료");
	            },
			}); 
		};
				
		//폐기 테이블 수정
		function update(){
			const formdata=$("form[name=DsuseForm]").serializeObject();
			const jsondata=JSON.stringify(formdata);
			$.ajax({
				type : 'POST',
				url : 'DsuseAssetUpdate',
				contentType : 'application/json; charset=utf-8',
				dataType: 'json',
				data :jsondata,
				error:function(request,status,error, xhr){
	                alert("code="+request.status+":::maessage="+request.responseText+":::error="+error+":::xhr="+xhr);
	            },
	            success : function(result){          	
	            	alert("폐기 수정 완료");
	            },
			}); 
		};
		//json 형식 변환 object
	    jQuery.fn.serializeObject = function() { 
			var obj = null; 
		    try { 
		        if(this[0].tagName && this[0].tagName.toUpperCase() == "FORM" ) { 
		            var arr = this.serializeArray(); 
		            if(arr){ 
		            	obj = {}; 
		            	jQuery.each(arr, function() { 
		            		obj[this.name] = this.value; 
		            	}); 
		            } 
		        } 
		    }catch(e) { 
	        	alert(e.message); 
		    }finally {} 
	     	return obj; 
	     };
	     //select box


	
		
	</script>
<body>
<div class="sub-wrap">
	<div class="sub-container">
		<div class="top-cont clear">
            <div class="navi">
                <ul>
                    <li><a href="#" title="HOME">HOME</a></li>
                    <li><a href="#" title="반납/폐기">반납/폐기</a></li>
                    <li><a href="#" title="IT 자산 폐기 관리">IT 자산 폐기 관리</a></li>
                </ul>
            </div>
            <div class="title clear">
                <div class=fl>
                    <h2>IT 자산 폐기 관리</h2>
                </div>
                <div class="fr">
                    <ul class="btn-wrap">
                        <li><a href="" class="btn-print" title="출력">출력</a></li>
                        <li><a href="" class="btn-down" title="다운로드">다운로드</a></li>
                    </ul>
                </div>
            </div>
       	</div> <!-- .top-cont end-->
       	
       	<form name="DsuseForm">     	
			<div class="middle-cont">
				<div class="section wp50">
					<h3>자산 정보</h3>
						<table class="table-type02 bbc">
							<caption>자산 정보 테이블</caption>
							<colgroup>
								<col width="15%">
								<col width="*">
								<col width="15%">
								<col width="35%">
							</colgroup>
							<tbody>
								<tr>
									<th>자산번호</th>
									<td>
										<input  type="text" class="wp70" name="itAssetNo" id="txt_itAssetNo">
										<label for="" class="hide">자산번호 검색</label>
										<button type="button" name="" id="btn_itAssetNoSch" class="btn-search">자산번호 검색</button>
									<th>제조사</th>
									<td><input type="text" class="wp90" name="mnfCmpny" id="txt_mnfCmpny" ></td>
								</tr>
								<tr>
									<th>시리얼 번호</th>
									<td>
									<input type="text" class="wp90" name="prodtSnNo" id="txt_prodtSnNo">
									
									</td>
									<th>납품사</th>
									<td>
										<input type="text" class="wp90" name="dvyfgCmpny" id="txt_dvyfgCmpny">
										<label for="" class="hide">납품사</label>
									</td>
								</tr>
								<tr>
									<th>제품명</th>
									<td>
										<input type="text" class="wp90" name="prodtNm" id="txt_prodtNm">
										<label for="" class="hide">제품명</label>
									</td>
									<th>기술지원사</th>
									<td>
										<input type="text" class="wp90" name="techSupptCmpny" id="txt_techSupptCmpny">
										<label for="" class="hide">기술지원사</label>
									</td>
								</tr>
								<tr>
									<th>업무구분</th>
									<td>
										<label for="" class="hide">업무구분</label>
										<select name="jobFg" id="cob_jobFg">
											<option value="1">업무구분</option>
										</select>
									</td>
									<th>유지보수사</th>
									<td>
										<input type="text" class="wp90" name="mntCmpny" id="txt_mntCmpny">
										<label for="" class="hide">유지보수사</label>
									</td>
								</tr>
								<tr>
									<th>용도구분</th>
									<td>
										<label for="" class="hide">용도구분</label>
										<select name="prposFg" id="cob_prposFg">
											<option value="1">용도구분</option>
										</select>
									</td>
									<th>도입일자</th>
									<td>
										<input type="text" class="wp90" name="indcDy" id="txt_indcDy">
										<label for="" class="hide">도입일자</label>
									</td>
								</tr>
								<tr>
									<th>대구분</th>
									<td>
										<label for="" class="hide">대구분</label>
										<select name="lrgeFg" id="cob_lrgeFg">
											<option value="1">대구분</option>
										</select>
									</td>
									<th>폐기일자</th>
									<td>
									<input type="hidden" name="dsuseDy" id="txt_dsuseDy">
									<input type="text" class="wp90" name="RedsuseDy" id="txt_RedsuseDy">
									<label for="" class="hide">폐기일자</label>
									</td>
								</tr>
								<tr>
									<th>중구분</th>
									<td>
										<label for="" class="hide">중구분</label>
										<select name="middlFg" id="cob_middlFg">
											<option value="1">중구분</option>
										</select>
									</td>
									<th></th>
									<td></td>
								</tr>
								<tr>
									<th>소구분</th>
									<td>
										<label for="" class="hide">소구분</label>
										<select name="smallFg" id="cob_smallFg">
											<option value="1">소구분</option>
										</select>
									</td>
									<th></th>
									<td></td>
								</tr>
							</tbody>
						</table>
	
				</div><!-- .section end-->	
				
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
										 <input class="wp70" type="text" name="emplNo" id="txt_emplNo">
										 <label for="" class="hide">사번검색</label>
										 <button type="button" id="btn_emplNoSch" class="btn-search">사번 검색</button>
									</td>
								</tr>
								<tr>
									<th>이름</th>
									<td>
										<input type="text"  class="wp90" name="nm" id="txt_nm">
										<label for="" class="hide">이름</label>
									</td>
								</tr>
								<tr>
									<th>직위</th>
									<td>
										<input type="text" class="wp90" name="ofcps" id="txt_ofcps">
										 <label for="" class="hide">직위</label>
									</td>
								</tr>
								<tr>
									<th>부서</th>
									<td>
										<input type="text" class="wp90" name="dept" id="txt_dept">
										<label for="" class="hide">부서</label>
									</td>
								</tr>
								<tr>
									<th >전화번호</th>
									<td >
										<input type="text" class="wp90" name="telNo" id="txt_telNo">
										<label for="" class="hide">전화번호</label>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div><!-- .section end-->	
				
				<div class="section wp23">
					<h3>위치정보</h3>
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
										<input type="text" class="wp90" name="area" id="txt_area">
										<label for="" class="hide">지역</label>
									</td>
								</tr>
								<tr>
									<th>지사</th>
									<td>
										<input type="text" class="wp90" name="areaCmpny" id="txt_areaCmpny">
										<label for="" class="hide">지사</label>
									</td>
								</tr>
								<tr>
									<th>건물</th>
									<td>
										<input type="text" class="wp90" name="buld" id="txt_buld">
										<label for="" class="hide">건물</label>
									</td>
								</tr>
								<tr>
									<th>층수</th>
									<td>
										<input type="text" class="wp90" name="floor" id="txt_floor">
										<label for="" class="hide">층수</label>
									</td>
								</tr>
								<tr>
									<th>위치/장소</th>
									<td>
										<input type="text" class="wp90" name="loc" id="txt_loc">
										<label for="" class="hide">위치와 장소</label>
									</td>
								</tr>
							</tbody>
						</table>	
					</div>		
				</div><!-- .section end-->	
			</div><!-- .middle-cont end-->	
     	</form>
       	<div class="button-cont">
            <div class="btn-box">
                <ul>
                    <li><a href="javascript:warehouse();" class="bg-gray" title="창고">창고</a></li>
                    <li><a href="javascript:update();" class="bg-navy" title="수정">수정</a></li>
                </ul>
            </div>
      	</div> <!-- .button-cont -->
	</div>
</div>
</body>
</html>