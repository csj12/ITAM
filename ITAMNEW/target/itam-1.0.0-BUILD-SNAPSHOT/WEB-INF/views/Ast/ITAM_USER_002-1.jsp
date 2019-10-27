<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="resources/ITAM/css/import.css" rel="stylesheet" />
<script type="text/javascript">
	$(document).ready(function () {
		$("#grid").kendoGrid({
			  dataSource: {
		  		pageSize:10,
		    	schema:{
		      		model: {
		       			id: "id",
		       			fields: {
		       			}
		    	 	}
		   		}
			  },
			  height: 550,
			  //sortable: true,
			  editable: "popup",
			  columns: [
			    { field: "EMPL_NO", title: "사번"},
			    { field: "NM", title: "이름" },
			    { field: "OFCPS", title: "직위" },
			    { field: "DEPT", title: "부서" },
			    { field: "TEL_NO", title: "전화번호" },
			    { field: "EMAIL_ADDR", title: "EMAIL주소"},
			  ]
		});
		
		Search();
	});

	function Search(){
	   $.ajax({
	        type: 'POST',
	        url: 'UserAuthPersonSearch',
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
	    
</script>
</head>
<body>
	<div class="sub-wrap">

    <div class="sub-container">
        <div class="top-cont clear">
            <div class="navi">
                <ul>
                    <li><a href="#" title="HOME">HOME</a></li>
                    <li><a href="#" title="기타">기타</a></li>
                    <li><a href="#" title="사용자 등록 현황">사용자 등록 현황</a></li>
                </ul>
            </div>
            <div class="title clear">
                <div class=fl>
                    <h2>사용자 등록 현황</h2>
                </div>
                <div class="fr">
                    <ul class="btn-wrap">
                        <li><a href="" class="btn-print" title="출력">출력</a></li>
                        <li><a href="" class="btn-down" title="다운로드">다운로드</a></li>
                    </ul>
                </div>
            </div>
        </div> <!-- .top-cont end-->
        
        <div class="middle-cont hp75">
            <div class="section wp100 bbc">
                 <h3>사용자 등록 현황</h3>
                 <div id="grid"></div>
               
        <!--        <script>      
			$("#grid").kendoGrid({
				columns: [
				    { field: "사번" , title:""},
				    { field: "이름"  , title:""},
				    { field: "직위"  , title:""},
				    { field: "부서" , title:"" },
				    { field: "전화번호" , title:"" },
				    { field: "위치" ,width:400, title:"" },
	
				  ],
				  dataSource: {
				   data: [
				    { id: 1, 사번: "test-1234", 이름: "test-1234", 직위: "19.09.30", 부서: "19.09.30", 전화번호: "1234", 위치: "최원영"},
				    { id: 1, 사번: "test-1234", 이름: "test-1234", 직위: "19.09.30", 부서: "19.09.30", 전화번호: "1234", 위치: "최원영"},
				    { id: 1, 사번: "test-1234", 이름: "test-1234", 직위: "19.09.30", 부서: "19.09.30", 전화번호: "1234", 위치: "최원영"}
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
				  editable: "popup"
				 
			});
		</script> -->
            </div>
        </div> <!-- .middle-cont end-->
    </div> <!-- .sub-container end -->
   <!--  <div class="sub-footer">
        <div class="fl">
            <img src="img/common/icon-phone.png" alt="문의사항 아이콘">
            <ul>
                <li class="fl">문의사항</li>
                <li class="fl">[HCNC] 052-258-7071</li>
                <li class="fl">김태완 부장</li>
                <li class="fl">twkim@hcnc.co.kr</li>
            </ul>
        </div>
        <div class="fr">
            Copyright © 근로복지공단. All rights Reserved.
        </div>
    </div> .sub-footer end -->	
</div> <!-- .sub-wrap end-->

</body>
</html>