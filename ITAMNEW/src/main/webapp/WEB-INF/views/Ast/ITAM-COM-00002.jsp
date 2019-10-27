<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<script type="text/javascript">
	$(document).ready(function () {	
		$(".btn-search").on("click", function(e){
			
			var emplNo = $('#emplNo').val();
			
			$.ajax({
				type : 'POST',
				url : 'UserInfoSearchByEmplNo',
				dataType: 'json',
				data:{"emplNo" : emplNo},
				error:function(xhr, status, error){
	                //alert("error1:"+error);
	            },
	            success : function(result){
	            	if(result.userInfo[0] != null)
	            	{
		                $('#dept').val(result.userInfo[0].DEPT);
		                $('#nm').val(result.userInfo[0].NM);
		                $('#telNo').val(result.userInfo[0].TEL_NO);
		                $('#ofcps').val(result.userInfo[0].OFCPS);
		                $('#emailAddr').val(result.userInfo[0].EMAIL_ADDR);
	            	}
	            	else
	            	{
	            		alert("일치하는 사용자가 없습니다.");
	            	}
	            },
			});
		});
	});
	
	function register(){
		var queryString = $("form[name=userInfoForm]").serialize();
		$.ajax({
			type : 'POST',
			url : 'UserAuthPersonAdd',
			dataType: 'json',
			data:queryString,
			error:function(xhr, status, error){
                alert("이미 존재하는 사번입니다.");
            },
            success : function(result){
            	alert('등록되었습니다.');
            },
		});
	}
	
	function modify(){
		var queryString = $("form[name=userInfoForm]").serialize();
		alert("queryString:"+queryString);
		$.ajax({
			type : 'POST',
			url : 'UserAuthPersonModify',
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
	
	function remove(){
		var queryString = $("form[name=userInfoForm]").serialize();
		$.ajax({
			type : 'POST',
			url : 'UserAuthPersonRemove',
			dataType: 'json',
			data:queryString,
			error:function(xhr, status, error){
                alert("error:"+error);
            },
            success : function(result){
            	$('#emplNo').val("");
                $('#dept').val("");
                $('#nm').val("");
                $('#telNo').val("");
                $('#ofcps').val("");
                $('#emailAddr').val("");            	
            	alert("삭제되었습니다.");
            },
		});
	}
</script>

<body>
<div class="sub-wrap">
<div class="sub-container">
        <div class="top-cont clear">
            <div class="navi">
                <ul>
                    <li><a href="#" title="HOME">HOME</a></li>
                    <li><a href="#" title="기타">기타</a></li>
                    <li><a href="#" title="사용자 권한 관리">사용자 권한 관리</a></li>
                </ul>
            </div>
            <div class="title clear">
                <div class=fl>
                    <h2>사용자 권한 관리</h2>
                </div>
                <div class="fr">
                    <ul class="btn-wrap">
                        <li><a href="" class="btn-print" title="출력">출력</a></li>
                        <li><a href="" class="btn-down" title="다운로드">다운로드</a></li>
                    </ul>
                </div>
            </div>
        </div> <!-- .top-cont end-->
        <div class="middle-cont">
            <div class="section wp68">
                <h3>사용자 정보</h3>
                <div class="section-box bbc">
                	<form name="userInfoForm" id ="userInfoForm">
		                <table class="table-type03">
		                    <caption>사용자 권한 관리 테이블</caption>
		                    <colgroup>
		                        <col class="wp20">
		                        <col class="wp30">
		                        <col class="wp20">
		                        <col class="wp30">
		                    </colgroup>
		                    <tbody>
		                        <tr>
		                            <th>사번</th>
		                            <td>
		                                <input type="text" name="emplNo"  id="emplNo" class="wp70">
		                                <label for="" class="hide">사번</label>
		                                <button type="button" name="searchUserInfoBtn" id="searchUserInfoBtn" class="btn-search">사번 검색</button>
		                            </td>
		                            <th>부서</th>
		                            <td><input type="text" name="dept" id="dept" class="wp80">
		                                 <label for="" class="hide">부서</label>
		                            </td>
		                        </tr>
		                        <tr>
		                            <th>이름</th>
		                           <td><input type="text" name="nm" id="nm" class="wp80">
		                                <label for="" class="hide">이름</label>
		                           </td>
		                            <th>연락처</th>
		                            <td><input type="text" name="telNo" id="telNo" class="wp80">
		                                <label for="" class="hide">연락처</label>
		                            </td>
		                        </tr>
		                       <tr>
		                            <th>직위</th>
		                           <td><input type="text" name="ofcps" id="ofcps" class="wp80">
		                               <label for="" class="hide">직위</label>
		                           </td>
		                            <th>이메일</th>
		                            <td><input type="text" name="emailAddr" id="emailAddr" class="wp80">
		                                <label for="" class="hide">이메일</label>
		                            </td>
		                        </tr>
		                        
		                    </tbody>
		                </table>
	                </form>
                </div>
            </div>
           <div class="section  wp35">
	                <h3 class="bg-gray">권한 정보</h3>
	                <div class="section-box bbc">
	                    <table class="table-type04">
	                        <caption>권한정보 테이블</caption>
	                        <colgroup>
	                            <col class="w120">
	                            <col class="wp30">
	                            <col class="w120">
	                            <col class="wp30">
	                         
	                        </colgroup>
	                        <tbody>
	                            <tr>
	                                 <th>메뉴</th>
                                <td>
                                <label for="" class="hide">메뉴</label>
                                <select id="" class="readOnly">
                                    <option value=""></option>
                                    <option value=""></option>
                                    <option value=""></option>
                                </select>
                            </td>
	                            </tr>
	                            
	                    
	                            
	                            <tr>
	                                <th><label for="" class="hide">권한</label></th>
	                                <td class="pd-t20"><input  type="checkbox" name="" id="" class="mg-r5"  value="" />관리자</td>
                            	    <td class="pd-t20"><input  type="checkbox" name="" id="" class="mg-r5"  value="" />중간 담당자</td>
	                            </tr>
	                            <tr>
	                                <th><label for="" class="hide"></label></th>
	                                <td class="pd-t20"><input  type="checkbox" name="" id="" class="mg-r5"  value="" />담당자</td>
                            	    <td class="pd-t20"><input  type="checkbox" name="" id="" class="mg-r5"  value="" />비공개</td>
	                            </tr>
	                            
	                        </tbody>
	                    </table>
	                </div>
	            </div> <!-- .section end-->
        </div> <!-- .middle-cont end-->
        <div class="button-cont">
            <div class="btn-box">
                <ul>
                    <li><a href="javascript:modify();" title="수정">수정</a></li>
                    <li><a href="javascript:remove();" title="삭제">삭제</a></li>
                    <li><a href="javascript:register();" title="등록" class="bg-navy">등록</a></li>
                </ul>
            </div>
        </div> <!-- .button-cont -->
    </div> <!-- .sub-container end --> 
</div>


</body>
</html>