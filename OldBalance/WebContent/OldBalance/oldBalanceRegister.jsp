<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String pjName="/TeamProject"; %>
<jsp:include page="header.jsp"></jsp:include> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> OldBalance </title>

<link rel="stylesheet" href="<%=pjName%>/OldBalance/css/register/base.css" type="text/css" media="screen" charset="utf-8" />
<link rel="stylesheet" href="<%=pjName%>/OldBalance/css/register/form.css" type="text/css" media="screen" charset="utf-8" />
<link rel="stylesheet" href="<%=pjName%>/OldBalance/css/bootstrap/bootstrap.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="<%=pjName%>/OldBalance/js/register/jquery.validate.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="<%=pjName%>/OldBalance/js/bootstrap/bootstrap.js"></script>
<script src="<%=pjName%>/OldBalance/js/register/scripts.js" type="text/javascript"></script>

</head>
<body>

	<div id="container">
		<div id="content">
			<div id="signup" class="form-inline">
			<br/><br/>
				<h2>회원 가입</h2>
				<form action="<%= pjName %>/Register?cmd=input-member" method='post'>
					<div>
						<label for="id">ID :</label> <input name="id" id="id"
						placeholder="Click Button" type="text" class="form-control" readonly/>
						<input name="idCheck" id="idCheck" value="중복확인" class="form-control" type="button"/>
					</div>
					<div>
						<label for="password">Password :</label> <input class="form-control"
						placeholder="Password" name="password" id="password" type="password" />
					</div>
					<div>
						<label for="passconf">Check Password :</label> <input class="form-control"
						placeholder="Check Password" name="passconf" id="passconf" type="password" />
					</div>
					<div>
						<label for="telnum">TEL:</label> <input class="form-control"
						placeholder="Phone Number" name="telnum" id="telnum" type="text" />
					</div>
					<div>
						<label for="post">Post :</label> <input class="form-control"  name="post"
						placeholder="Click Button" id="post" type="text" readonly/>
						<input name="findPost" id="findPost" class="form-control" type="button" value="우편번호"/>
					</div>
					<div>
						<label for="addr">Address :</label> <input class="form-control" name="addr" id="addr" type="text" readonly/>
						<input name="detailAddr" class="form-control" id="detailAddr"
						placeholder="detail Address" type="text" />
					</div>

					<div class="stats">
					<br/><br/>
						<h2 class="title">모든 항목에 동의해야 합니다.</h2>
						<h3>OldBalance 이용 약관 동의안내 (필수)</h3>
						<textarea name="content" cols="94" rows="8">정보통신망법 규정에 따라 OldBalance에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다. 1. 수집하는 개인정보 이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 OldBalance 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, OldBalance는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.회원가입 시점에 OldBalance가 이용자로부터 수집하는 개인정보는 아래와 같습니다. - 회원 가입 시에 ‘아이디, 비밀번호, 이름, 생년월일, 성별, 가입인증 휴대폰번호’를 필수항목으로 수집합니다. 만약 이용자가 입력하는 생년월일이 만14세 미만 아동일 경우에는 법정대리인 정보(법정대리인의 이름, 생년월일, 성별, 중복가입확인정보(DI), 휴대폰번호)를 추가로 수집합니다. 그리고 선택항목으로 이메일 주소를 수집합니다.- 단체아이디로 회원가입 시 단체아이디, 비밀번호, 단체이름, 이메일주소, 가입인증 휴대폰번호를 필수항목으로 수집합니다. 그리고 단체 대표자명, 비밀번호 발급용 멤버 이름 및 이메일주소를 선택항목으로 수집합니다. 서비스 이용 과정에서 이용자로부터 수집하는 개인정보는 아래와 같습니다. NAVER 내의 개별 서비스 이용, 이벤트 응모 및 경품 신청 과정에서 해당 서비스의 이용자에 한해 추가 개인정보 수집이 발생할 수 있습니다. 추가로 개인정보를 수집할 경우에는 해당 개인정보 수집 시점에서 이용자에게 ‘수집하는 개인정보 항목, 개인정보의 수집 및 이용목적, 개인정보의 보관기간’에 대해 안내 드리고 동의를 받습니다. 서비스 이용 과정에서 IP 주소, 쿠키, 서비스 이용 기록, 기기정보, 위치정보가 생성되어 수집될 수 있습니다.1) 서비스 이용 과정에서 이용자에 관한 정보를 정보통신서비스 제공자가 자동화된 방법으로 생성하여 이를 저장(수집)하거나,2) 이용자 기기의 고유한 정보를 원래의 값을 확인하지 못 하도록 안전하게 변환한 후에 수집하는 경우를 의미합니다.</textarea><br/>
						<input class='agree' name="agree" type="checkbox" value="ga" />동의합니다.<br />
						<h3>OldBalance 개인정보 수집 및 이용에 대한 안내 (필수)</h3>
						<textarea name="content" cols="94" rows="8">제 1 조 (목적) 이 약관은 네이버 주식회사 (이하 “회사”)가 제공하는 위치정보사업 또는 위치기반서비스사업과 관련하여 회사와 개인위치정보주체와의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다. 제 2 조 (약관 외 준칙) 이 약관에 명시되지 않은 사항은 위치정보의 보호 및 이용 등에 관한 법률, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 전기통신기본법, 전기통신사업법 등 관계법령과 회사의 이용약관 및 개인정보처리방침, 회사가 별도로 정한 지침 등에 의합니다. 제 3 조 (서비스 내용 및 요금) ①회사는 직접 위치정보를 수집하거나 위치정보사업자인 이동통신사로부터 위치정보를 전달받아 아래와 같은 위치기반서비스를 제공합니다. 1.Geo Tagging 서비스: 게시글 등록 시점의 개인위치정보주체의 위치정보를 게시글과 함께 저장합니다. 2.위치정보를 활용한 검색결과 제공 서비스: 정보 검색을 요청하거나 개인위치정보주체 또는 이동성 있는 기기의 위치정보를 제공 시 본 위치정보를 이용한 검색결과 및 주변결과(맛집, 주변업체, 교통수단 등)를 제시합니다. 3.위치정보를 활용한 친구찾기 및 친구맺기: 현재 위치를 활용하여 친구를 찾아주거나 친구를 추천하여 줍니다. 4.연락처 교환하기: 위치정보를 활용하여 친구와 연락처를 교환할 수 있습니다.</textarea><br/>
						<input class='agree' name="agree" type="checkbox" value="na" />동의합니다.<br />
						<h3><input class='agree' name="agree" type="checkbox" value="na" />이벤트 등 프로모션 알림 메일 수신</h3>
						<h2 class="title"></h2>
						<input class="check-all" name="agree" type="checkbox" /><span>위 조항 모두 동의합니다.</span> <br />
					</div>
					
					<div><br/><br/><br/></div>
					
					<br/><br/> <p class="text-center">
						<input type="reset" value="가입취소" class="btn btn-danger"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input id='join' type="button" value="가입하기" class="form-control"/>
					</p>

				</form>
			</div>
		</div>
	</div>
	
</body>
</html>