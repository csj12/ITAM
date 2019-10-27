<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Header -->
<%
	String user_name = (String) session.getAttribute("user_name");
	String last_name = (String) session.getAttribute("last_name");
	String logintime = (String) session.getAttribute("logintime");
%>
<%-- <script type="text/javascript">

	$(document).ready(function() {
		/* if (window.sessionStorage) {
	        var position = sessionStorage.getItem('menu');
			$("#" + position).css("color","#eb6906")
        } */
		
        var param = "mode=MENU&para=<%=user_name%>";

       // getAjaxJsonData("UserMenu", param, "callBackUserMenuAjax");
	});

    function callBackUserMenuAjax(resultParam) {

		var urls = $(location).attr('href');
        var ajaxResult = resultParam.result;

        var menuid1 = "";
        var menuid2 = "";
        var menuid3 = "";
        var menuid4 = "";
        var menuid5 = "";
        var menuid6 = "";
        var menuid7 = "";
        
        /* for(var i = 0; i < ajaxResult.length; i++){
        	switch(ajaxResult[i].root_menu_id){
        		case "1":
        			menuid1 += '<li><a href="javascript:url(\'menu' + ajaxResult[i].root_menu_id + '\',\'' + ajaxResult[i].menu_id + '\')">' + ajaxResult[i].menu_nm + '</a></li>';
        			break;
        		case "2":
        			menuid2 += '<li><a href="javascript:url(\'menu' + ajaxResult[i].root_menu_id + '\',\'' + ajaxResult[i].menu_id + '\')">' + ajaxResult[i].menu_nm + '</a></li>';
        			break;
        		case "3":
        			menuid3 += '<li><a href="javascript:url(\'menu' + ajaxResult[i].root_menu_id + '\',\'' + ajaxResult[i].menu_id + '\')">' + ajaxResult[i].menu_nm + '</a></li>';
        			break;
        		case "4":
        			menuid4 += '<li><a href="javascript:url(\'menu' + ajaxResult[i].root_menu_id + '\',\'' + ajaxResult[i].menu_id + '\')">' + ajaxResult[i].menu_nm + '</a></li>';
        			break;
        		case "5":
        			menuid5 += '<li><a href="javascript:url(\'menu' + ajaxResult[i].root_menu_id + '\',\'' + ajaxResult[i].menu_id + '\')">' + ajaxResult[i].menu_nm + '</a></li>';
        			break;
        		case "6":
        			menuid6 += '<li><a href="javascript:url(\'menu' + ajaxResult[i].root_menu_id + '\',\'' + ajaxResult[i].menu_id + '\')">' + ajaxResult[i].menu_nm + '</a></li>';
        			break;
        		case "7":
        			menuid7 += '<li><a href="javascript:url(\'menu' + ajaxResult[i].root_menu_id + '\',\'' + ajaxResult[i].menu_id + '\')">' + ajaxResult[i].menu_nm + '</a></li>';
        			break;
        	}
        } */

		$("#menu1").css("color","#333333");
		$("#menu2").css("color","#333333");
		$("#menu3").css("color","#333333");
		$("#menu4").css("color","#333333");
		$("#menu5").css("color","#333333");
		$("#menu6").css("color","#333333");
		$("#menu7").css("color","#333333");
    	var urlss = urls.split("/");
        for(var i = 0; i < ajaxResult.length; i++){
        	if(urlss[urlss.length - 1] == ajaxResult[i].menu_id){
    			$("#menu" + ajaxResult[i].root_menu_id).css("color","#eb6906");
				var mm = "";
            	switch(ajaxResult[i].root_menu_id){
            		case "1":
            			mm = "자산관리";
            			break;
            		case "2":
            			mm = "자재";
            			break;
            		case "3":
            			mm = "생산";
            			break;
            		case "4":
            			mm = "품질";
            			break;
            		case "5":
            			mm = "공통";
            			break;
            		case "6":
            			mm = "기준정보";
            			break;
            		case "7":
            			mm = "출하";
            			break;
            	}

    			$("#menu_loc").html("<img src='resources/images/ico_home.gif' /> > " + mm + " > " +ajaxResult[i].menu_nm );
        	}
        	
        	switch(ajaxResult[i].root_menu_id){
        		case "1":
        			//menuid1 += '<li><a href=' + ajaxResult[i].menu_id + ' onclick="url(\'menu' + ajaxResult[i].root_menu_id + '\')"  onmouseover="mouseover(\'menu_ico' + i + '\')" onmouseout="mouseout(\'menu_ico' + i + '\')"><span class="menu_ico"><img id="menu_ico'+i+'" src="resources/images/menu/ico_m1.png" /></span>' + ajaxResult[i].menu_nm + '</a></li>';
        			menuid1 += '<li><a href=' + ajaxResult[i].menu_id + '>' + ajaxResult[i].menu_nm + '</a></li>';
        			break;
        		case "2":
        			menuid2 += '<li><a href=' + ajaxResult[i].menu_id + '>' + ajaxResult[i].menu_nm + '</a></li>';
        			break;
        		case "3":
        			menuid3 += '<li><a href=' + ajaxResult[i].menu_id + '>' + ajaxResult[i].menu_nm + '</a></li>';
        			break;
        		case "4":
        			menuid4 += '<li><a href=' + ajaxResult[i].menu_id + '>' + ajaxResult[i].menu_nm + '</a></li>';
        			break;
        		case "5":
        			menuid5 += '<li><a href=' + ajaxResult[i].menu_id + '>' + ajaxResult[i].menu_nm + '</a></li>';
        			break;
        		case "6":
        			menuid6 += '<li><a href=' + ajaxResult[i].menu_id + '>' + ajaxResult[i].menu_nm + '</a></li>';
        			break;
        		case "7":
        			menuid7 += '<li><a href=' + ajaxResult[i].menu_id + '>' + ajaxResult[i].menu_nm + '</a></li>';
        			break;
        	}
        }

        $("#menuid1").html(menuid1);
        $("#menuid2").html(menuid2);
        $("#menuid3").html(menuid3);
        $("#menuid4").html(menuid4);
        $("#menuid5").html(menuid5);
        $("#menuid6").html(menuid6);
        $("#menuid7").html(menuid7);
        
        jqueryslidemenu.buildmenu("myslidemenu", arrowimages);
    }

    function mouseover(gubun){
    	var src_str = $("#" + gubun).attr('src').replace(".png", "_on.png");
    	$("#" + gubun).attr('src',src_str);
    }
    
    function mouseout(gubun){
    	var src_str = $("#" + gubun).attr('src').replace("_on.png", ".png");
    	$("#" + gubun).attr('src',src_str);
    }
/* 
	function url(a, b) {
		if (window.sessionStorage) {
            sessionStorage.setItem('menu', a);
        }
		document.location = b;
	}
	 */
	function copyWindow(){
		window.open($(location).attr('href'),'_blank');
	}
</script> --%>
    <div class="sub-header">
        <div class="logo">
            <a href="#" title="근로복지공단 ITAM">
                <img src="resources/ITAM/img/common/sub-logo.png" alt="logo" class="logo">
            </a>
        </div>
        <nav>
            <div class="nav-wrap">
                <ul>
                    <li><a href="ITAM-AST-00001" title="IT자산관리">IT자산관리</a></li>
                    <li><a href="ITAM-AST-00006-MM" title="임대노트북">임대노트북</a></li>
                    <li><a href="ITAM-AST-00007" title="IT자산실사">IT자산실사</a></li>
                    <li><a href="ITAM-AST-00010-MM" title="반납/폐기">반납/폐기</a></li>
                    <li><a href="ITAM-AST-00011" title="유지보수계약">유지보수계약</a></li>
                    <li><a href="ITAM-COM-00002" title="기타">기타</a></li>
                </ul>
            </div>
            <div class="hover-wrap">
                <div>
                    <ul>
                        <li>IT자산관리</li>
                        <li><a href="ITAM-AST-00001" title="H/W자산관리">H/W자산관리</a></li>
                        <li><a href="ITAM-AST-00002" title="S/W자산관리">S/W자산관리</a></li>
                        <li><a href="ITAM-AST-00003" title="통신장비 자산관리">통신장비 자산관리</a></li>
                        <li><a href="ITAM-AST-00004" title="부대설비 자산관리">부대설비 자산관리</a></li>
                    </ul>
                    <ul>
                        <li>임대노트북</li>
                        <li><a href="ITAM-AST-00006-MM" title="임대노트북 관리">임대노트북 관리</a></li>
                        <li><a href="ITAM-AST-00006-status" title="임대노트북 현황">임대노트북 현황</a></li>
                        <li><a href="ITAM-AST-00006-rental" title="임대노트북 대여">임대노트북 대여</a></li>
                        <li><a href="ITAM-AST-00006-return" title="임대노트북 반납">임대노트북 반납</a></li>
                    </ul>
                    <ul>
                        <li>IT자산실사</li>
                        <li><a href="ITAM-AST-00007" title="IT 자산실사">IT자산실사</a></li>
                        <li><a href="ITAM-AST-000070" title="IT 자산현황">IT자산현황</a></li>
                    </ul>
                    <ul>
                        <li>반납/폐기</li>
                        <li><a href="ITAM-AST-00009-MM" title="IT자산 반납관리">IT자산 반납관리</a></li>
                        <li><a href="ITAM-AST-00009-status" title="IT자산 반납현황">IT자산 반납현황</a></li>
                        <li><a href="ITAM-AST-00010-MM" title="IT자산 폐기관리">IT자산 폐기관리</a></li>
                        <li><a href="ITAM-AST-00010-status" title="IT자산 폐기현황">IT자산 폐기현황</a></li>
                    </ul>
                    <ul>
                        <li>유지보수계약</li>
                        <li><a href="ITAM-AST-00011" title="유지보수 계약">유지보수 계약</a></li>
                        <li><a href="ITAM-AST-00012" title="유지보수 현황">유지보수 현황</a></li>
                    </ul>
                    <ul>
                        <li>기타</li>
                        <li><a href="ITAM-COM-00002" title="사용자 권한 관리">사용자 권한 관리</a></li>
                        <li><a href="ITAM_USER_002-1" title="사용자 등록 현황">사용자 등록 현황</a></li>
                        <li><a href="ITAM-CODE-001" title="코드 관리">코드 관리</a></li>
                        <li><a href="ITAM-AST-00008" title="로그 현황">로그 현황</a></li>
                    </ul>
                </div>
            </div>
            <div class="gnb-bg"></div>
        </nav>
        <div class="welcome">
            <div class="user">
                <img src="resources/ITAM/img/common/icon-user.png" alt="로그인 이미지">
                <span><em>홍길동</em> 님 환영합니다.</span>
            </div>
            <a href="#" title="로그아웃" class="btn-logout">로그아웃</a>
        </div>
    </div> <!-- .sub-header end-->
<!--// Header -->

