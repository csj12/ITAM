<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/2.4.0/jszip.js"></script>
<script src="https://kendo.cdn.telerik.com/2019.3.917/js/kendo.all.min.js"></script>    
<script type="text/javascript">
	function getResultFileView(){
		if(result_FileName ==""){
			alerts("fa fa-comments", "알림", "결과 파일이 존재하지 않습니다.");
			return;
		}
	}

	$(document).ready(function () {
		
	    $("#grid").kendoGrid({
		    //toolbar:["excel"],
	    	columns: [
		      { selectable: true, width:30, title:""},
		      { field: "자산번호", width:240, title:"" },
		      { field: "대여일", width:180, title:"" },
		      { field: "반납일", width:180, title:"" },
		      { field: "사원번호", width:220, title:"" },
		      { field: "이름", width:180, title:"" },
		      { field: "직위", width:160, title:"" },
		      { field: "부서", width:200, title:"" },
		      { field: "대여", width:120, title:"" }
		    ],
		    dataSource: {
		    	data: [
			    	 {id:1, 자산번호:"NOTEBOOK_0102030", 대여일:"2019-10-08", 반납일:"2019-10-15", 사원번호:"HCNC_001WY", 이름:"홍길동", 직위:"사원", 부서:"연구실", 대여:"Y"  },
			    	 {id:2, 자산번호:"NOTEBOOK_0102031", 대여일:"2019-10-08", 반납일:"2019-10-15", 사원번호:"HCNC_001WY", 이름:"이순신", 직위:"사원", 부서:"연구실", 대여:"Y"  },
			    	 {id:3, 자산번호:"NOTEBOOK_0102032", 대여일:"2019-10-08", 반납일:"2019-10-15", 사원번호:"HCNC_001WY", 이름:"김좌진", 직위:"사원", 부서:"연구실", 대여:"Y"  },
			    	 {id:4, 자산번호:"NOTEBOOK_0102033", 대여일:"2019-10-08", 반납일:"2019-10-15", 사원번호:"HCNC_001WY", 이름:"김수로", 직위:"사원", 부서:"연구실", 대여:"Y"  },
			    	 {id:5, 자산번호:"NOTEBOOK_0102034", 대여일:"2019-10-08", 반납일:"2019-10-15", 사원번호:"HCNC_001WY", 이름:"김유신", 직위:"사원", 부서:"연구실", 대여:"Y"  },
		     	],
		     	schema:{
		      		model: {
			   			id: "id",
		       			fields: {
		       			}
		      		}
		    	}
		    },
		    excelExport: function(e) {
		    	e.workbook.fileName = "Grid.xlsx";
		    },
		    editable: false
		});
	    
		$("#excelDownload").on("click", function(e){
			var grid = $("#grid").data("kendoGrid");
			grid.saveAsExcel();
		});	    
	});
	

</script>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="resources/ITAM/css/import.css" rel="stylesheet" />
<title>임대 노트북 현황</title>
</head>
<body>
	<div class="sub-wrap">
		<div class="sub-container">
			<div class="top-cont clear">
	            <div class="navi">
	                <ul>
	                    <li><a href="#" title="HOME">HOME</a></li>
	                    <li><a href="#" title="임대노트북">임대노트북</a></li>
	                    <li><a href="#" title="임대노트북 현황">임대노트북 현황</a></li>
	                </ul>
	            </div>
	            <div class="title clear">
	                <div class=fl>
	                    <h2>임대노트북 현황</h2>
	                </div>
	                <div class="fr">
	                    <ul class="btn-wrap">
	                        <li><a href="" class="btn-print" title="출력">출력</a></li>
	                        <li><a href="" class="btn-down" id="excelDownload" title="다운로드">다운로드</a></li>
	                    </ul>
	                </div>
	            </div>
        	</div> <!-- .top-cont end-->
        	
			<div class="middle-cont dis_bi ">
				<div class="mg-b10">	
					<select class="w200 nbsp40 dis_i">
	                    <option value=1 >전체</option>
	                    <option value=2 >test-1</option>
	                    <option value=3 >test-2</option>
					</select>
					<button type="button" name="" id="" class="btn-search">사번 검색</button>
				</div>
				<div class="k-grid-style01">
        			<div class="k-grid-title"><li>임대노트북 현황</li></div>	
				    <div id="grid" class="bbc"></div>
			 	</div>
			</div> <!-- .middle-cont end-->
		</div>

</body>
</html>