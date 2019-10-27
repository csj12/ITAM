<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<script>
	$(document).ready(function () {	
		$("#grid").kendoGrid({
			columns: [
				{ selectable: true, width:"20px"},
			    { field: "FG", title:"구분", width:80},
			    { field: "CODE", title:"코드", width:80},
			    { field: "DESC", title:"설명", width:380}
			  ],
			  dataSource: {
			   schema:{
			    model: {
			     id: "id",
			     fields: {
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
		
		$("#codeSearchBtn").on("click", function(e){
				var fgDescCode =  $("select[name=fgDescCode]").val();
				var fgDescSearch = $("#fgDescCode").val();
			$.ajax({
				type: 'POST',
		        url: 'CodeManageSearch',
		        dataType: 'json',
		        data: {
	         	   "gubun" : fgDescCode, "fgDescSearch" :  fgDescSearch, page:'1',rows:'10'
	            },
		        success: function (result) {
		        	//console.log(">>>>>>>>>>.1 "+result);
		        	
		        	// .rows 의미는  Controller ModelAndView 의 list map Key
		        	var _login_result = result.rows;
		        	
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
		});
	});
	
</script>
<body>
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
										<select class="wp95" name = "fgDescCode" >
											<option value="CODE">코드</option>
											<option value="DESC">분류</option>
										</select>
									</td>
									<td>
										<input type="text" name="fgDescCode" id="fgDescCode" class="wp80">
										<label for="" class="hide">코드 검색</label>
										<button type="button" name="codeSearchBtn" id="codeSearchBtn" class="btn-search ">코드 검색</button>							
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
										<button type="button" name="" id="" class="btn-search">코드검색</button> 
									</td>
								</tr>

								<tr>
									<th><label for="">분류</label></th>
									<td><input type="text" name="" id="" class="wp90">
										<label for="" class="hide">분류</label>
									</td>
								</tr>
								<tr>
									<th><label for="">설명</label></th>
									<td><input type="text" name="" id="" class="wp90"style="height: 400px"> 
										<label for="" class="hide">분류</label>
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
									<li><a href="#" title="수정">수정</a></li>
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
		<!-- .sub-container end -->
</body>
</html>