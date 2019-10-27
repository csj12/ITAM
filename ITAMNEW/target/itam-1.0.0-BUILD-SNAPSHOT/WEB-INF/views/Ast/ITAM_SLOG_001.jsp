<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String last_name = (String) session.getAttribute("last_name");
	String user_name = (String) session.getAttribute("user_name");
	String email_address = (String) session.getAttribute("email_address");
	String u_phone_s = (String) session.getAttribute("u_phone_s");
	String logintime = (String) session.getAttribute("logintime");
	String menuid = (String) session.getAttribute("menuid");
	String user_key = (String) session.getAttribute("user_key");
	String dept_code = (String) session.getAttribute("dept_code");
	//System.out.println(last_name+"::"+user_name+"::"+email_address+"::"+u_phone_s+"::"+user_key);
	//이종권::ljk::ljk@ljk.com::010-0000-0000::393486
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<style>
.ta {
	width: 95%;
	border: 1px solid #333333;
	margin: auto;
	text-align: center;
}

.tb {
	width: 95%;
	border: 1px solid #333333;
	margin: auto;
	margin-bottom: 15px;
	text-align: center;
}

td {
	border: 1px solid #333333;
	text-align: center;
}

.td1 {
	background-color: #00A2B1;
	text-align: center;
	margin: auto;
}

input {
	width: 100%;
}

tr {
	border: 1px solid #333333;
	height: 30px;
}

.a {
	padding-top: 60px;
}

.t1 {
	width: 94%;
	border: 1px solid #333333;
	margin: auto;
}

.aa {
	matgin: auto;
	padding: auto;
}

.btn {
	width: 6%;
	height: 100%;
}

.datepicker {
	text-align: right;
	padding-left: 1200px;
	width: 10%;
}

.btn3 {
	position: absolute;
	right: 50px;
	top: 365px;
}
</style>


</head>
<body>
	<div class="a">
		<table class="ta">




			<tr>
				<td class="td1">자산번호</td>
				<td colspan="3"><input class="t1" type="text"><input
					class="btn" type="button"></td>
				<td class="td1">시리얼 번호</td>
				<td colspan="3"><input type="text" readonly></td>
			</tr>

			<tr>
				<td class="td1">제품명</td>
				<td colspan="5"><input type="text">
				<td class="td1">업무구분</td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td class="td1">용도구분</td>
				<td><input type="text"></td>
				<td class="td1" width="90">대구분</td>
				<td><input type="text"></td>
				<td class="td1" width="90">중구분</td>
				<td><input type="text"></td>
				<td class="td1" width="90">소구분</td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td class="td1">제조사</td>
				<td colspan="3"><input type="text"></td>
				<td class="td1">납품사</td>
				<td colspan="3"><input type="text"></td>
			</tr>
			<tr>
				<td class="td1">기술지원사</td>
				<td colspan="3"><input type="text"></td>
				<td class="td1">유지보수사</td>
				<td colspan="3"><input type="text"></td>
			</tr>

			<tr>
				<td colspan="8">로그 정보</td>
			</tr>

			<tr>
				<td class="td1">발생 일시</td>
				<td colspan="3"><input type="text"></td>
				<td class="td1">로그 내역</td>
				<td colspan="3"><input type="text"></td>
			</tr>

			<tr>
				<td colspan="8">사용자</td>
			</tr>

			<tr>
				<td class="td1">사번</td>
				<td colspan="2"><input type="text"></td>
				<td class="td1">부서</td>
				<td colspan="2"><input type="text"></td>
				<td class="td1">직위</td>
				<td><input type="text"></td>
			</tr>

			<tr>
				<td class="td1">이름</td>
				<td colspan="3"><input type="text"></td>
				<td class="td1">전화번호</td>
				<td colspan="3"><input type="text"></td>
			</tr>

		</table>
		<input class="datepicker" id="datepicker" value="">
		<div style="width: 100%; height: 200px; overflow: auto">

			<table class="tb">

				<thead>
					<tr>
						<td class="td1">이름</td>
						<td colspan="3"><input type="text"></td>
						<td class="td1">전화번호</td>
						<td colspan="3"><input type="text"></td>
					</tr>

					<tr>
						<td class="td1">번호</td>
						<td class="td1">발생일시</td>
						<td class="td1" colspan="2">제품명</td>
						<td class="td1" colspan="3">로그 내역</td>
						<td class="td1">사용자</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>103134</td>
						<td>2019-02-26</td>
						<td colspan="2">ASUS 노트북</td>
						<td colspan="3">사용이동</td>
						<td>강태우</td>
					</tr>

					<tr>
						<td></td>
						<td></td>
						<td colspan="2"></td>
						<td colspan="3"></td>
						<td></td>
					</tr>

					<tr>
						<td></td>
						<td></td>
						<td colspan="2"></td>
						<td colspan="3"></td>
						<td></td>
					</tr>

					<tr>
						<td></td>
						<td></td>
						<td colspan="2"></td>
						<td colspan="3"></td>
						<td></td>
					</tr>

					<tr>
						<td></td>
						<td></td>
						<td colspan="2"></td>
						<td colspan="3"></td>
						<td></td>
					</tr>

					<tr>
						<td></td>
						<td></td>
						<td colspan="2"></td>
						<td colspan="3"></td>
						<td></td>
					</tr>

					<tr>
						<td></td>
						<td></td>
						<td colspan="2"></td>
						<td colspan="3"></td>
						<td></td>
					</tr>

				</tbody>

				<tr>

					<td colspan="8"></td>

				</tr>


			</table>

		</div>


		<script>
			$("#datepicker").kendoDatePicker({
				change : function() {
					var value = this.value();
					console.log(value);
				}
			});
		</script>

		<div class="b" id="grid"></div>

		<div class="btn3">
			<button id="button" type="button">버튼</button>


			<script>
				$("#button").kendoButton({
					click : function(e) {
						alert(e.event.target.tagName);
					}
				});
			</script>
		</div>



		<div id="pager"></div>

		<script>
			var dataSource = new kendo.data.DataSource({
				data : [ {
					productName : "Tea",
					category : "Beverages"
				}, {
					productName : "Coffee",
					category : "Beverages"
				}, {
					productName : "Ham",
					category : "Food"
				}, {
					productName : "Bread",
					category : "Food"
				}

				],
				pageSize : 2
			});

			dataSource.read();

			$("#pager").kendoPager({
				dataSource : dataSource,
				change : function() {
					console.log("pager change event");
				}
			});
		</script>
		<style>
#pager {
	margin-top: 250px;
}
</style>

	</div>



</body>
</html>