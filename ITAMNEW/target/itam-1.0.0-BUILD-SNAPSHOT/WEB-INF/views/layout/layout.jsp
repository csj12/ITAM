<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<% 
	String last_name = (String) session.getAttribute("last_name");
	String user_name = (String) session.getAttribute("user_name");
	String email_address = (String) session.getAttribute("email_address");
	String u_phone_s = (String) session.getAttribute("u_phone_s");
	String logintime = (String) session.getAttribute("logintime");
	String menuid = (String) session.getAttribute("menuid");
	String user_key = (String) session.getAttribute("user_key");
	String cust = (String) session.getAttribute("cust");
%> 

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=11" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>무진전자 l Manufacturing Execution System</title>

	<style>
		 .ui-autocomplete {
			max-height: 100px;
			overflow-y: auto;
			/* prevent horizontal scrollbar */
			overflow-x: hidden;
		 }
		 /* IE 6 doesn't support max-height
		  * we use height instead, but this forces the menu to always be this tall
		  */
		 * html .ui-autocomplete {
		   	height: 100px;
		 }
		 .ui-jqgrid .ui-jqgrid-htable { 
		    table-layout:fixed;
		    margin:0em; 
		}
		.ui-jqgrid .ui-jqgrid-btable {
			table-layout:fixed; 
			margin:0em;
		}
	 </style>
    <link href="resources/Grid/jqGrid460/css/ui.jqgrid.css" rel="stylesheet" />
    <link href="resources/Grid/jqGrid460/themes/custom2/jquery-ui.css" rel="stylesheet" />
    

    <!-- <script src="resources/Common/JS/ajaxUtil.js"></script> -->
    <link href="resources/kendo/styles/kendo.common.min.css" rel="stylesheet" />
    <link href="resources/kendo/styles/kendo.default.min.css" rel="stylesheet" />
    <link href="resources/kendo/styles/kendo.default.mobile.min.css" rel="stylesheet" />
    
    
    
    
    <link href="resources/Common/CSS/base.css" rel="stylesheet" />
    <link href="resources/Common/CSS/common.css" rel="stylesheet" />
    <link href="resources/Common/CSS/content.css" rel="stylesheet" />
    <link href="resources/Common/CSS/layout.css" rel="stylesheet" />
    <link href="resources/Common/CSS/ui_style.css" rel="stylesheet" />
    <link href="resources/Grid/jqGrid460/css/ui.jqgrid.css" rel="stylesheet" />
    <link href="resources/Grid/jqGrid460/themes/custom2/jquery-ui.css" rel="stylesheet" />
    <link href="resources/Common/CSS/jquery.multiselect.css" rel="stylesheet" />
    <link href="resources/Common/CSS/jquery.multiselect.filter.css" rel="stylesheet" />
    

    <script src="resources/Grid/jqGrid460/js/jquery-1.11.0.min.js"></script>
    <script src="resources/Grid/jqGrid460/js/jquery.jqGrid.min.js"></script>
    <script src="resources/Grid/jqGrid460/js/i18n/grid.locale-en.js"></script>
    <script src="resources/Common/JS/ajaxUtil.js"></script>
    <script src="resources/Common/JS/Common.js"></script>
    <script src="resources/Common/JS/jqueryslidemenu.js"></script>
    <script src="resources/Common/JS/jquery.fileDownload.js"></script>
    <script src="resources/Common/JS/jquery.form.js"></script>
    <script src="resources/Common/JS/jquery.MultiFile.js"></script>
    <script src="resources/Grid/js/jquery-ui.js"></script>
    <script src="resources/Common/JS/jquery.multiselect.js"></script>
    <script src="resources/Common/JS/jquery.multiselect.filter.js"></script>
    
    <script src="resources/kendo/js/jquery.min.js"></script>
    <script src="resources/kendo/js/kendo.all.min.js"></script>

    <link href="resources/confirm/demo/libs/bundled.css" rel="stylesheet" />
    <link href="resources/confirm/dist/jquery-confirm.min.css" rel="stylesheet" />
    <script src="resources/confirm/dist/jquery-confirm.min.js"></script>
    
    <script type="text/javascript" src="resources/ITAM/js/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="resources/ITAM/js/script.js"></script>
    
    <link href="resources/ITAM/css/import.css" rel="stylesheet" />
    
    <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2019.3.917/styles/kendo.common.min.css"/>
    <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2019.3.917/styles/kendo.rtl.min.css"/>
    <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2019.3.917/styles/kendo.silver.min.css"/>
    <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2019.3.917/styles/kendo.mobile.all.min.css"/>

    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="https://kendo.cdn.telerik.com/2019.3.917/js/kendo.all.min.js"></script>	
    <script type="text/javascript">
    	login_check();
	
    	var _ROW = "";
    	var _COL = "";
    	var _LIST = "";
    	 // 달력 선언부 
        var clareCalendar = {
            dateFormat: 'yy-mm-dd',
            monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
            dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
            weekHeader: 'Wk',
            changeMonth: true, //월변경가능
            changeYear: true, //년변경가능
            yearRange: '2015:+1', // 연도 셀렉트 박스 범위(현재와 같으면 1988~현재년+10)
            showMonthAfterYear: true, //년 뒤에 월 표시
            autoSize: false, //오토리사이즈(body등 상위태그의 설정에 따른다)
            showOn: "focus", //엘리먼트와 이미지 동시 사용
            showAnim: 'slideDown', // slideDown/fadeIn/blind/bounce/clip/drop/fold/slide
            showButtonPanel: false
        };
        var clareCalendarRow = {
                dateFormat: 'yy-mm-dd',
                monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
                dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
                weekHeader: 'Wk',
                changeMonth: true, //월변경가능
                changeYear: true, //년변경가능
                yearRange: '2015:+1', // 연도 셀렉트 박스 범위(현재와 같으면 1988~현재년+10)
                showMonthAfterYear: true, //년 뒤에 월 표시
                autoSize: false, //오토리사이즈(body등 상위태그의 설정에 따른다)
                showOn: "focus", //엘리먼트와 이미지 동시 사용
                showAnim: 'slideDown', // slideDown/fadeIn/blind/bounce/clip/drop/fold/slide
                showButtonPanel: true,
                onClose: function (a, b) {
                	$("#" + _LIST).jqGrid("saveCell",_ROW,_COL);
                }
            };
    	 
        //confirm 함수
        function confirms(icons, titles, contents, confirmGubun) {
            $.confirm({
                title: titles,
                icon: icons,
                theme: 'material',
                content: contents,
                buttons: {
                    예: {
                        action: function () {
                            // 예 눌렀을때 실행 함수
                            if (typeof confirmYes != 'undefined' && $.isFunction(confirmYes)) {
                                confirmYes(confirmGubun);
                            } else {
                                alerts("fa fa-warning", "No Function", "함수가 없습니다.");
                            }
                        }
                    },
                    아니오: {
                        action: function () {
                            // 아니오 눌렀을때 실행 함수
                            if (typeof confirmNo != 'undefined' && $.isFunction(confirmNo)) {
                                confirmNo(confirmGubun);
                            } else {
                                alerts("fa fa-warning", "No Function", "함수가 없습니다.");
                            }
                        }
                    }
                }
            });
        }

        //alert 함수
        function alerts(icons, titles, contents) {

            $.alert({
                title: titles,
                icon: icons,
                theme: 'material',
                content: contents
            });
        }

        //로그인 체크
        function login_check() {
            var name = "<%=last_name%>";
            if (name == "" || name == "null") {
                document.location = "/ITAM";
            }
        }

        // 펑션키 적용
        window.document.onkeydown = fn_key;
        function fn_key() {
            switch (event.keyCode) {
                case 13: // Enter
                    if (document.activeElement.name != null) {
                    	if (document.activeElement.name.indexOf("Find2") > 0) {
                            if (typeof Search2 != 'undefined' && $.isFunction(Search2)) {
                                Search2();
                            } else {
                                alerts("fa fa-warning", "No Function", "조회 함수가 없습니다.");
                            }
                        }
                        else if (document.activeElement.name.indexOf("Find3") > 0) {
                            if (typeof Search3 != 'undefined' && $.isFunction(Search3)) {
                                Search3();
                            } else {
                                alerts("fa fa-warning", "No Function", "조회 함수가 없습니다.");
                            }
                        }
                    	else if (document.activeElement.name.indexOf("Find") > 0) {
                            if (typeof Search != 'undefined' && $.isFunction(Search)) {
                                Search();
                            } else {
                                alerts("fa fa-warning", "No Function", "조회 함수가 없습니다.");
                            }
                        }
                        else if (document.activeElement.name.indexOf("Search2") > 0) {
                            if (typeof Search2 != 'undefined' && $.isFunction(Search2)) {
                                Search2();
                            } else {
                                alerts("fa fa-warning", "No Function", "조회 함수가 없습니다.");
                            }
                        }
                        else if (document.activeElement.name.indexOf("Search3") > 0) {
                            if (typeof Search3 != 'undefined' && $.isFunction(Search3)) {
                                Search3();
                            } else {
                                alerts("fa fa-warning", "No Function", "조회 함수가 없습니다.");
                            }
                        }
                    }
                    break;
                case 112: // F1
                    break;
                case 113: // F2
                    break;
                case 114: // F3
                    event.keyCode = 0;
                    return false;
                    break;
                case 115: // F4
                    event.keyCode = 0;
                    return false;
                    break;
                case 116: // F5
                	document.location = $(location).attr('href');
                    event.keyCode = 0;
                    return false;
                    break;
                case 117: // F6
                    event.keyCode = 0;
                    return false;
                    break;
                case 118: // F7
                    event.keyCode = 0;
                    return false;
                    break;
                case 119: // F8
                    event.keyCode = 0;
                    return false;
                    break;
                case 120: // F9
                    event.keyCode = 0;
                    return false;
                    break;
                case 121: // F10
                    event.keyCode = 0;
                    return false;
                    break;
                case 122: // F11
                    break;
                case 123: // F12
                    break;
            }
        }

        $(document).ready(function () {
            $("#menu1").removeClass("on");
            $("#menu2").removeClass("on");
            $("#menu3").removeClass("on");
            $("#menu4").removeClass("on");
            $("#menu5").removeClass("on");
            $("#menu6").removeClass("on");
            $("#menu7").removeClass("on");
            var menuid = "<%=menuid%>";
            if (menuid != "menu") $("#" + menuid).addClass("on");
            
        /*    //신규 프로젝트 코드 Suggest
          $("#txtNewPjtNoFind").autocomplete({
                minLength: 2,
                source: function (request, response) {
                    $.ajax({
                        url: "autocomplete",
                        dataType: "json",
                        type : 'POST',
                        data: {
                            mode: "NEW_NO",
                            term: request.term
                        },
                        success: function (data) {
                            response(data.item);
                        }
                    });
                }
            }); */
       	  //신규 프로젝트 코드2 Suggest
         /*  $("#txtNewPjtNoSearch2").autocomplete({
                minLength: 2,
                source: function (request, response) {
                    $.ajax({
                        url: "autocomplete",
                        dataType: "json",
                        type : 'POST',
                        data: {
                            mode: "NEW_NO",
                            term: request.term
                        },
                        success: function (data) {
                            response(data.item);
                        }
                    });
                }
            }); */
	         //신규 프로젝트 코드3 Suggest
	        /*  $("#txtNewPjtNoSearch3").autocomplete({
	               minLength: 2,
	               source: function (request, response) {
	                   $.ajax({
	                       url: "autocomplete",
	                       dataType: "json",
	                       type : 'POST',
	                       data: {
	                           mode: "NEW_NO",
	                           term: request.term
	                       },
	                       success: function (data) {
	                           response(data.item);
	                       }
	                   });
	               }
	           }); */
            //프로젝트 코드 Suggest
            /* $("#txtPjtNoFind").autocomplete({
                minLength: 2,
                source: function (request, response) {
                    $.ajax({
                        url: "autocomplete",
                        dataType: "json",
                        type : 'POST',
                        data: {
                            mode: "NO",
                            term: request.term
                        },
                        success: function (data) {
                            response(data.item);
                        }
                    });
                }
            }); */
            
          //프로젝트 코드 Suggest
          /*   $("#txtPjtNoFind2").autocomplete({
                minLength: 2,
                source: function (request, response) {
                    $.ajax({
                        url: "autocomplete",
                        dataType: "json",
                        type : 'POST',
                        data: {
                            mode: "NO",
                            term: request.term
                        },
                        success: function (data) {
                            response(data.item);
                        }
                    });
                }
            }); */
          
           /*  $("#txtPjtNoFind3").autocomplete({
                minLength: 2,
                source: function (request, response) {
                    $.ajax({
                        url: "autocomplete",
                        dataType: "json",
                        type : 'POST',
                        data: {
                            mode: "NO",
                            term: request.term
                        },
                        success: function (data) {
                            response(data.item);
                        }
                    });
                }
            }); */
            
            
          
          //프로젝트 코드 Suggest
          /*   $("#txtPjtNoSearch2").autocomplete({
                minLength: 2,
                source: function (request, response) {
                    $.ajax({
                        url: "autocomplete",
                        dataType: "json",
                        type : 'POST',
                        data: {
                            mode: "NO",
                            term: request.term
                        },
                        success: function (data) {
                            response(data.item);
                        }
                    });
                }
            });
 */
            //프로젝트명 Suggest
         /*    $("#txtPjtNameFind").autocomplete({
                minLength: 2,
                source: function (request, response) {
                    $.ajax({
                        url: "autocomplete",
                        dataType: "json",
                        type : 'POST',
                        data: {
                            mode: "NAME",
                            term: request.term
                        },
                        success: function (data) {
                            response(data.item);
                        }
                    });
                }
            }); */

            
            //PR Suggest
           /*  $("#txtPrFind").autocomplete({
                minLength: 4,
                source: function (request, response) {
                    $.ajax({
                        url: "autocomplete",
                        dataType: "json",
                        type : 'POST',
                        data: {
                            mode: "PR",
                            term: request.term
                        },
                        success: function (data) {
                            response(data.item);
                        }
                    });
               }
            }); */
            
           /*  $("#txtPrSearch2").autocomplete({
                minLength: 2,
                source: function (request, response) {
                    $.ajax({
                        url: "autocomplete",
                        dataType: "json",
                        type : 'POST',
                        data: {
                            mode: "PR",
                            term: request.term
                        },
                        success: function (data) {
                            response(data.item);
                        }
                    });
                }
            }); */

            //PO Suggest
            /* $("#txtPoFind").autocomplete({
                minLength: 4,
               source: function (request, response) {
                    $.ajax({
                        url: "autocomplete",
                        dataType: "json",
                        type : 'POST',
                        data: {
                            mode: "PO",
                            term: request.term
                        },
                        success: function (data) {
                            response(data.item);
                        }
                    });
                }
            }); */

            //업체명 Suggest
           /*  $("#txtCustNameFind").autocomplete({
                minLength: 2,
                source: function (request, response) {
                    $.ajax({
                        url: "autocomplete",
                        dataType: "json",
                        type : 'POST',
                        data: {
                            mode: "CUST",
                            term: request.term
                        },
                        success: function (data) {
                            response(data.item);
                        }
                    });
                }
            }); */

            //모델코드 Suggest
           /*  $("#txtModelCodeFind").autocomplete({
                minLength: 2,
                source: function (request, response) {
                    $.ajax({
                        url: "autocomplete",
                        dataType: "json",
                        type : 'POST',
                        data: {
                            mode: "MC",
                            term: request.term
                        },
                        success: function (data) {
                            response(data.item);
                        }
                    });
                }
            }); */

            //모델명 Suggest
            /* $("#txtModelNameFind").autocomplete({
                minLength: 2,
                source: function (request, response) {
                    $.ajax({
                        url: "autocomplete",
                        dataType: "json",
                        type : 'POST',
                        data: {
                            mode: "MN",
                            term: request.term
                        },
                        success: function (data) {
                            response(data.item);
                        }
                    });
                }
            }); */

            //모듈 Suggest
           /*  $("#txtModuleFind").autocomplete({
                minLength: 2,
                source: function (request, response) {
                    $.ajax({
                        url: "autocomplete",
                        dataType: "json",
                        type : 'POST',
                        data: {
                            mode: "MOD",
                            term: request.term
                        },
                        success: function (data) {
                            response(data.item);
                        }
                    });
                }
            }); */

            //TYPE Suggest
            /* $("#txtTypeFind").autocomplete({
                minLength: 2,
                source: function (request, response) {
                    $.ajax({
                        url: "autocomplete",
                        dataType: "json",
                        type : 'POST',
                        data: {
                            mode: "TYPE",
                            term: request.term
                        },
                        success: function (data) {
                            response(data.item);
                        }
                    });
                }
            });

            //MAKER Suggest
            $("#txtMakerNameFind").autocomplete({
                minLength: 2,
                source: function (request, response) {
                    $.ajax({
                        url: "autocomplete",
                        dataType: "json",
                        type : 'POST',
                        data: {
                            mode: "MAKER",
                            term: request.term
                        },
                        success: function (data) {
                            response(data.item);
                        }
                    });
                }
            });

            //장비군 Suggest
            $("#txtEquipCodeFind").autocomplete({
                minLength: 1,
                source: function (request, response) {
                    $.ajax({
                        url: "autocomplete",
                        dataType: "json",
                        type : 'POST',
                        data: {
                            mode: "EQ",
                            term: request.term
                        },
                        success: function (data) {
                            response(data.item);
                        }
                    });
                }
            });
            
            //프로젝트 구분 Suggest
            $("#txtPjtGubunFind").autocomplete({
                minLength: 1,
                source: function (request, response) {
                    $.ajax({
                        url: "autocomplete",
                        dataType: "json",
                        type : 'POST',
                        data: {
                            mode: "PG",
                            term: request.term
                        },
                        success: function (data) {
                            response(data.item);
                        }
                    });
                }
            });
        }); */
 
        function infoUpdate() {
            $("#infoForm").dialog({
                autoOpen: true,
                title: "개인정보",
                width: 500,
                height: 455,
                modal: true,
                open: function (event, ui) {
                    $("#info_pwd").val("");
                    $("#info_new_pwd").val("");
                    $("#info_new_pwd_chk").val("");

                },
                close: function () {
                },
                buttons: {
                    "저장": function () {
                        login_check();
                        var param = "user_name=<%=user_name%>&email=" + $("#info_email").val() + "&phone=" + $("#info_phone").val() + "&pwd=" + $("#info_pwd").val() + "&pwd_new=" + $("#info_new_pwd").val();

                        if ($("#info_email").val() == "") {
                            alerts("fa fa-edit", "필수입력", "E-Mail을 입력하세요!");
                            return;
                        }
                        if ($("#info_phone").val() == "") {
                            alerts("fa fa-edit", "필수입력", "전화번호를 입력하세요!");
                            return;
                        }
                        if ($("#info_pwd").val() == "") {
                            alerts("fa fa-edit", "필수입력", "비밀번호를 입력하세요!");
                            return;
                        }
                        if ($("#info_new_pwd").val() != "" || $("#info_new_pwd_chk").val() != "") {
                            if ($("#info_new_pwd").val() != $("#info_new_pwd_chk").val()) {
                                alerts("fa fa-warning", "실패", "새 비밀번호가 틀립니다!");
                                return;
                            }
                            getAjaxJsonData("InfoSave2", param, "callBackUserInfoAjax");
                        } else {
                            getAjaxJsonData("InfoSave", param, "callBackUserInfoAjax");
                        }
                    },
                    "닫기": function () {
                        $(this).dialog("close");
                    }
                },
                focus: function (event, ui) {
                    //$("#event").focus();
                }
            }).css("z-index", 1000);
        }

        function callBackUserInfoAjax(resultParam) {

            var ajaxResult = resultParam.result;
            var ajaxResultContent = resultParam.content;

            if (ajaxResult == "OK") {
                alerts("fa fa-save", "수정완료", "수정되었습니다");
                $("#infoForm").dialog("close");
            } else {
                alerts("fa fa-warning", "실패", ajaxResultContent);
            }

        }
        
    	function beep() {
    		var amusic = document.createElement('audio');
    		   amusic.setAttribute('src', 'resources/mp3/WindowsExclamation.mp3');
    		   amusic.play();
    	}
    	
    </script>
</head>
<body>
    <div id="Wrapper">
			<tiles:insertAttribute name="header" />
			<tiles:insertAttribute name="body" />
			<tiles:insertAttribute name="footer" />
	</div>
    <div id="infoForm" style="display: none;">
        <table border="1" class="board_write">
            <colgroup>
                <col width="30%">
                <col width="70%">
            </colgroup>
            <tbody>
                <tr>
                    <th>ID</th>
                    <td id="itid"><%=user_name%></td>
                </tr>
                <tr>
                    <th>이름</th>
                    <td id="itname"><%=last_name%></td>
                </tr>
                <tr>
                    <th>전화번호</th>
                    <td><input type="text" id="info_phone" class="w100p" value="<%=u_phone_s%>"></td>
                </tr>
                <tr>
                    <th>E-Mail</th>
                    <td><input type="text" id="info_email" class="w100p" value="<%=email_address%>"></td>
                </tr>
                <tr>
                    <th>비밀번호</th>
                    <td><input type="password" id="info_pwd" class="w100p"></td>
                </tr>
                <tr>
                    <th>새비밀번호</th>
                    <td><input type="password" id="info_new_pwd" class="w100p"></td>
                </tr>
                <tr>
                    <th>새비밀번호 확인</th>
                    <td><input type="password" id="info_new_pwd_chk" class="w100p"></td>
                </tr>
            </tbody>
        </table>
    </div>
	
</body>
</html>