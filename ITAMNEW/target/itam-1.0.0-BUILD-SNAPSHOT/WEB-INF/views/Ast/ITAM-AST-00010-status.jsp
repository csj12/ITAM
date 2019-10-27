<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="resources/ITAM/css/import.css" rel="stylesheet" />
<title>IT 자산 폐기 현황</title>
</head>
<body>
	<div class="sub-wrap">
		<div class="sub-container">
			<div class="top-cont clear">
	            <div class="navi">
	                <ul>
	                    <li><a href="#" title="HOME">HOME</a></li>
	                    <li><a href="#" title="IT자산 실사">IT 자산 실사</a></li>
	                    <li><a href="#" title="IT자산 폐기 현황">IT 자산 폐기 현황</a></li>
	                </ul>
	            </div>
	            <div class="title clear">
	                <div class=fl>
	                    <h2>IT 자산 폐기 현황</h2>
	                </div>
	                <div class="fr">
	                    <ul class="btn-wrap">
	                        <li><a href="" class="btn-print" title="출력">출력</a></li>
	                        <li><a href="" class="btn-down" title="다운로드">다운로드</a></li>
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
				<div class="k-grid-style02">
	        		<div class="k-grid-title"><li>IT자산 폐기 현황</li></div>	
				    <div id="grid" class="bbc"></div>
			    </div>
			</div> <!-- .middle-cont end-->
		</div>
		<script>
	  $("#grid").kendoGrid({
	    columns: [

	      { field: "자산번호", width:240, title:"" },
	      { field: "제품명", width:180, title:"" },
	      { field: "도입일자", width:180, title:"" },
	      { field: "사원번호", width:220, title:"" },
	      { field: "이름", width:180, title:"" },
	      { field: "직위", width:160, title:"" },
	      { field: "위치", width:200, title:"" },
	      { field: "폐기일", width:180, title:"" }
	    ],
	    dataSource: {
	     data: [
	    	 {id:1, 자산번호:"NOTEBOOK_0102030", 제품명:"2019-10-08", 도입일자:"2019-10-15", 사원번호:"HCNC_001WY", 이름:"홍길동", 직위:"사원", 위치:"연구실", 폐기일:"Y"  },
	    	 {id:2, 자산번호:"NOTEBOOK_0102031", 제품명:"2019-10-08", 도입일자:"2019-10-15", 사원번호:"HCNC_001WY", 이름:"이순신", 직위:"사원", 위치:"연구실", 폐기일:"Y"  },
	    	 {id:3, 자산번호:"NOTEBOOK_0102032", 제품명:"2019-10-08", 도입일자:"2019-10-15", 사원번호:"HCNC_001WY", 이름:"고주몽", 직위:"사원", 위치:"연구실", 폐기일:"Y"  },
	    	 {id:4, 자산번호:"NOTEBOOK_0102033", 제품명:"2019-10-08", 도입일자:"2019-10-15", 사원번호:"HCNC_001WY", 이름:"강감찬", 직위:"사원", 위치:"연구실", 폐기일:"Y"  },
	    	 {id:5, 자산번호:"NOTEBOOK_0102034", 제품명:"2019-10-08", 도입일자:"2019-10-15", 사원번호:"HCNC_001WY", 이름:"김좌진", 직위:"사원", 위치:"연구실", 폐기일:"Y"  },
	     ],
	     schema:{
	      model: {
		   id: "id",
	       fields: {
	       }
	      }
	     }
	    },
	    editable: false
	  });
	</script>
</body>
</html>