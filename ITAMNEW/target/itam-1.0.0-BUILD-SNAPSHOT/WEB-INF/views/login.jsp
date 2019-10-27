<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%
	session = request.getSession(false);
	if (session != null) {
		session.invalidate();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>근로복지공단 ITAM</title>
<link rel="stylesheet" type="text/css" href="resources/ITAM/css/import.css" />
<script type="text/javascript" src="resources/ITAM/js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="resources/ITAM/js/script.js"></script>

<script type="text/javascript">
	var _UserId = "";
	var _UserName = "";
	var _Phone = "";
	var _Email = "";
	$(document).ready(function() {
		if (browserRedirect() == "phone") {
			document.location = "Account/MobileLogin";
		}

		//Id 쿠키 저장
		var userInputId = getCookie("userInputId");
		$("input[name='user_name']").val(userInputId);

		if (userInputId != "") {
			$("#idSaveCheck").attr("checked", true);
		}

		$("#idSaveCheck").change(function() {
			if ($("#idSaveCheck").is(":checked")) {
				setCookie("userInputId", $("#user_name").val(), 365);
			} else {
				deleteCookie("userInputId");
			}
		});

		$("#user_name").keyup(function() {
			if ($("#idSaveCheck").is(":checked")) {
				setCookie("userInputId", $("#user_name").val(), 365);
			}
		});

		$("#user_name").change(function() {
			if ($("#idSaveCheck").is(":checked")) {
				setCookie("userInputId", $("#user_name").val(), 365);
			}
		});
		
		$("#password").keydown(function(key) {

			if (key.keyCode == 13) {

				document.getElementById('frm').submit();

			}

			});

	});

	function browserRedirect() {
		var deviceType;
		var sUserAgent = navigator.userAgent.toLowerCase();
		var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";
		var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";
		var bIsMidp = sUserAgent.match(/midp/i) == "midp";
		var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";
		var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";
		var bIsAndroid = sUserAgent.match(/android/i) == "android";
		var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";
		var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";
		if (bIsIpad || bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) {
			deviceType = 'phone';
		} else {
			deviceType = 'pc';
		}
		return deviceType;
	}

	function setCookie(cookieName, value, exdays) {
		var exdate = new Date();
		exdate.setDate(exdate.getDate() + exdays);
		var cookieValue = escape(value) + ((exdays == null) ? "" : "; expires=" + exdate.toGMTString());
		document.cookie = cookieName + "=" + cookieValue;
	}

	function deleteCookie(cookieName) {
		var expireDate = new Date();
		expireDate.setDate(expireDate.getDate() - 1); //어제날짜를 쿠키 소멸날짜로 설정
		document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
	}

	function getCookie(cookieName) {
		cookieName = cookieName + '=';
		var cookieData = document.cookie;
		var start = cookieData.indexOf(cookieName);
		var cookieValue = '';
		if (start != -1) {
			start += cookieName.length;
			var end = cookieData.indexOf(';', start);
			if (end == -1)
				end = cookieData.length;
			cookieValue = cookieData.substring(start, end);
		}
		return unescape(cookieValue);
	}

	function macInsert() {
		$("#macForm").dialog({
			autoOpen : true,
			title : "MAC Address 등록",
			width : 500,
			height : 200,
			modal : true,
			open : function(event, ui) {
			},
			close : function() {
			},
			buttons : {
				"신청" : function() {
					var param = "mode=MAC&para=" + $("#mac_address_p").val() + "⌒" + $("#user_id_p").val() + "⌒" + $("#bigo_p").val();

					if ($("#user_id_p").val() == "") {
						alert("ID를 입력하세요!");
						return;
					}

					if ($("#bigo_p").val() == "") {
						alert("사용목적을 입력하세요!");
						return;
					}

					getAjaxJsonData("MacInsert", param, "callBackMacAjax");
				},
				"닫기" : function() {
					$(this).dialog("close");
				}
			},
			focus : function(event, ui) {
				//$("#event").focus();
			}
		}).css("z-index", 1000);
	}

	function callBackMacAjax(resultParam) {
		var result = resultParam.result
		if (result == "0") {
			alert("사용자 ID가 존재하지 않습니다.");
		} else if (result == "1") {
			alert("MAC Address 인증 신청 하였습니다.\n관리자 승인 후 이용 할 수 있습니다.");
		} else if (result == "2") {
			alert("MAC Address가 인증 중입니다.\n자세한 사항은 관리자에게 연락 바랍니다.");
		} else if (result == "3") {
			alert("인증된 MAC Address 입니다..");
		} else {
			alert(result);
		}
	}
	
</script>
</head>

<body style="background-color: #f1eff0;">
<ul id="go-main">
    <li><a href="#a" title="본문 바로가기" >본문 바로가기</a></li>
</ul>

<div class="main-wrap">
    <header>
        <div class="main-header">
            <img src="resources/ITAM/img/main/main-logo.png" alt="" title="근로복지 공단">
        </div>
    </header>

    <div class="main-center ">
        <div class="login-box">
            <div class="left-login">
                    <h2 class="pd-b20"><b>근로복지공단 <div class="pd-b5"></div> IT 자산관리 시스템</b></h2>
                    <div class="login-lams pd-b20 pd-l40">
                        <p>IT ASSET MANAGEMENT SYSTEM</p>
                    </div>

                    <div class="image-login pd-l40">
                        <img src="resources/ITAM/img/main/bg-login.png" alt="" title="근로복지공단 IT 자산관리 시스템">
                    </div>
            </div>
            
            <div class="right-login">   
                <div class="align-login">
                    <h3 class="login-title">로그인</h3>
                    <c:url value="UserSession.do" var="loginUrl" />
					<form:form action="ITAM-AST-00001" method="post" name="frm" id="frm">
					    <input type="hidden" id="mac_address" name="mac_address" value="">
                        <input name="user_id" type="text" class="login-id">
                        <input name="password" type="password" class="login-id">
                        
                        <ul>
                            <li><input type="checkbox" name="saveId" /> <label for="saveId">Save</lavel></li>
                            <li><a href="#" title="회원가입" class="li-su">회원가입</a></li>
                            <li><a href="#" title="ID/PW 찾기">ID/PW 찾기</a></li>
                        </ul>

                        <div class="login-button">
                           <a href="javascript:document.getElementById('frm').submit();" title="LOGIN">LOGIN</a>
                        </div>
                    </form:form> 

                    <!-- <div class="login-text pd-b10 ">
                        <p>* 로그인 프로그램 다운로드</p>
                    </div>

                    <div class="login-program">
                        <a href="#" totle="64bit" class="download-image">64 bit</a>
                        <a href="#" totle="32bit" class="download-image">32 bit</a>
                        <a href="#" totle="Mac Address 인증">Mac Address 인증</a>
                    </div> -->
                    
                    <div class="login-text pd-b10 ">
	                    <p>* 로그인 프로그램 다운로드</p>
	                </div>

                    <div class="login-program">
                        <a href="#" totle="64bit" class="download-image">64 bit</a>
                        <a href="#" totle="32bit" class="download-image">32 bit</a>
                        <a href="#" totle="Mac Address 인증">Mac Address 인증</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <footer>
        <div class="main-footer">
            <p>Copyright © 근로복지공단. All rights Reserved.</p>
        </div>
    </footer>
</div>


</body>
</html>
