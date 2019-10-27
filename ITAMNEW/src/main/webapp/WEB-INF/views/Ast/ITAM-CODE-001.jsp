<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>

	  <div class="sub-wrap">
		<div class="sub-container">

			<div class="top-cont clear">
				<div class="navi">
					<ul>
						<li><a href="#" title="HOME">HOME</a></li>
						<li><a href="#" title="기타">기타</a></li>
						<li><a href="#" title="코드 관리">코드 관리</a></li>
					</ul>
				</div>
				<div class="title clear">
					<div class=fl>
						<h2>코드 관리</h2>
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

			<div class="middle-cont">
				<div class="section wp68">
					<h3>코드</h3>
					<div class="section-box bbc">
						<table class="table-type04">
							<caption>코드관리 테이블</caption>
							<colgroup>
								<col class="w120">
								<col class="wp20">
								<col class="w120">
								<col class="wp40">
							</colgroup>
							<tbody>
								<tr>
									<td></td>
									<td></td>
									<td>
										<label for="" class="hide">코드</label>
										<select class="wp95" >
											<option>코드</option>
										</select>
									</td>
									<td>
										<input type="text" name="" id="" class="wp80">
										<label for="" class="hide">코드 검색</label>
										<button type="button" name="Codesearch" id="Codesearch" class="btn-search ">코드 검색</button>							
									</td>
								</tr>
								<tr>
									<td colspan="4">
										<div class="k-grid-style01">
											<div id="grid"></div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					
					
					
					
					
					
				</div>
				<div class="section  wp35">
					<h3 class="bg-gray">코드 수정</h3>
					<div class="section-box bbc">
						<table class="table-type04">
							<caption>코드수정 테이블</caption>
							<colgroup>
								<col class="wp15">
								<col class="wp85">

							</colgroup>
							<tbody>
								<tr>
									<th>코드</th>
									<td><input class="wp75" type="text" value="HCNC_01234567">
									<label for="" class="hide">코드</label>
										<button type="button" name="code" id="txtcode" class="btn-search">코드검색</button> 
									</td>
								</tr>



								<tr>
									<th><label for="">분류</label></th>
									<td><input type="text" name="fg" id="txtfg" class="wp90">
										<label for="" class="hide">분류</label></td>
									</td>
								</tr>
								<tr>
									<th><label for="">설명</label></th>
									<td><input type="text" name="desc" id="txtdesc" class="wp90"style="height: 400px"> 
										<label for="" class="hide">설명</label>
									</td>
								</tr>
								<tr>
									<td>
									</td>
								</tr>

							</tbody>
						</table>
						<div class="button-cont">
							<div class="btn-box">
								<ul>
									<li><a href="javascript:modify();" title="수정">수정</a></li>
									<li><a href="#" title="삭제">삭제</a></li>
									<li><a href="#" title="등록" class="bg-navy">등록</a></li>
								</ul>
							</div>
						</div>
						<!-- .button-cont -->
					</div>
				</div>
				<!-- .section end-->
			</div>
			<!-- .middle-cont end-->


		</div>
		</div>
		
		<!-- .sub-container end -->
<script>      
			$("#grid").kendoGrid({
				columns: [
					{ selectable: true, width:"20px"},
				    { field: "코드", title:"", width:80},
				    { field: "분류", title:"", width:80},
				    { field: "설명", title:"", width:380}
				  ],
				  dataSource: {
				   data: [
				    { id: 1, 코드: "test-1234", 분류: "전자", 설명: "비공개"},
				    { id: 2, 코드: "test-1234", 분류: "아날로그", 설명: "비공개"},
				    { id: 3, 코드: "test-1234", 분류: "AI", 설명: "비공개"},
				    { id: 1, 코드: "test-1234", 분류: "전자", 설명: "비공개"},
				    { id: 2, 코드: "test-1234", 분류: "아날로그", 설명: "비공개"},
				    { id: 3, 코드: "test-1234", 분류: "AI", 설명: "비공개"},
				    { id: 1, 코드: "test-1234", 분류: "전자", 설명: "비공개"},
				    { id: 2, 코드: "test-1234", 분류: "아날로그", 설명: "비공개"},
				    { id: 3, 코드: "test-1234", 분류: "AI", 설명: "비공개"},
				    { id: 1, 코드: "test-1234", 분류: "전자", 설명: "비공개"},
				    { id: 2, 코드: "test-1234", 분류: "아날로그", 설명: "비공개"},
				    { id: 3, 코드: "test-1234", 분류: "AI", 설명: "비공개"},
				    { id: 1, 코드: "test-1234", 분류: "전자", 설명: "비공개"},
				    { id: 2, 코드: "test-1234", 분류: "아날로그", 설명: "비공개"},
				    { id: 3, 코드: "test-1234", 분류: "AI", 설명: "비공개"},
				    { id: 1, 코드: "test-1234", 분류: "전자", 설명: "비공개"},
				    { id: 2, 코드: "test-1234", 분류: "아날로그", 설명: "비공개"},
				    { id: 3, 코드: "test-1234", 분류: "AI", 설명: "비공개"}, 
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
			
			function Search(){
				   $.ajax({
				        type: 'POST',
				        url: 'CodeSearch',
				        dataType: 'json',
				        data: {
			         	   mode: "PJTNM",GUBUN:"",param:"222",page:'1',rows:'10',sidx:'1',IT_ASSET_NO:''
			          },
				        success: function (result) {
				        	//console.log(">>>>>>>>>>.1 "+result);
				        	
				        	// .rows 의미는  Controller ModelAndView 의 list map Key
				        	var _login_result = result.rows;
				        	console.log(">>>>>>>>>>.2 "+_login_result);
				        	
				           // $("#grid").data("kendoGrid").dataSource.fetch();
				            
				          // var json = kendo.stringify(_login_result);
			           // console.log(">>>>>>>>>>.3 "+json);
			            
				          //  var d1 = $("#grid").data("kendoGrid");
				 		   //d1.dataSource.data([]);
				 		 //  d1.setDataSource(result );
				 		 
				 		  // 그리드에 Data Binding
				 		  var jsps = JSON.stringify(_login_result);
				 		  $("#grid").data("kendoGrid").dataSource.data(_login_result);
				        }
				    })
				}
			
			function modify(){
				var queryString = $("form[name=codeInfoForm]").serialize();
				alert("queryString:"+queryString);
				$.ajax({
					type : 'POST',
					url : 'CodeManageModify',
					dataType: 'json',
					data:queryString,
					error:function(xhr, status, error){
		                alert("error:"+error);
		            },
		            success : function(result){
		                alert("수정되었습니다.");
		            },
				});
			}
			
		</script>

	

</body>
</html>