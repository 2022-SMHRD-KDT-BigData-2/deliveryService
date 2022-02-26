<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>심부릉:요청페이지</title>
</head>
<body>
	<body>
    <form class="tab1" action = "errand_action.jsp" method = "post" name = "errand_form">
    <header>
        <div data-role="page" id="page1">
            <div data-role="header">
              <h1 align="center">심부름 요청서</h1>
            </div>
    </header>

        <fieldset class = "fie1" align="center">
                <br>
                <label class = "legend"><b>심부름 항목 선택</b> </label>
                <select name="errand" style="text-align: left; width: 250px; height: 30px;">
                    <option value="none">카테고리 선택</option>
                    <option value="10">배달</option>
                    <option value="20">동행</option>
                    <option value="30">장학금</option>
                    <option value="40">역할대행</option>
                    <option value="50">용병구하기</option>
                    <option value="60">비대면</option>
                    <option value="70">벌레 잡아주기</option>
                    <option value="80">생활의 달인</option>
                    <option value="90">반려견</option>
                    <option value="100">물품대여</option>
                    <option value="110">기타</option>
                </select>
                <br>
                <br>
            
                <div data-role="content">
                    <label class = "legend"><b>심부름 제목</b> </label> <input type="text" name="title" placeholder="제목을 입력해주세요!"
                        style="text-align: left; width: 250px; height: 30px;"></p>
                    <label class = "legend"><b>등록 일자</b> </label> <input type="date" style="text-align: left; width: 250px; height: 30px;"></p>
                    <label class = "legend"><b>마감 일자</b> </label> <input type="date" style="text-align: left; width: 250px; height: 30px;"></p>
                      
                    <hr>
                    <label class = "legend"><b>선호 헬퍼 성별 : </b> </label>
                    남자 <input type="radio" name="gender" value="men"> 여자 <input type="radio" name="gender" value="women"> 없음 <input type="radio" name="gender" value="none">
                    <br>
                    <br>
                </div>
            
                <div data-role="content">
                    <label class = "legend"><b>헬퍼 제외 학과 선택</b> </label>
                    <select name="major" style="text-align: left; width: 250px; height: 30px;">
                        <option value="none">학과 선택</option>
                        <option value="10">간호대</option>
                        <option value="20">경영대</option>
                        <option value="30">공과대</option>
                        <option value="40">농업생명과학대</option>
                        <option value="50">법과대</option>
                        <option value="60">사범대</option>
                        <option value="70">사회과학대</option>
                        <option value="80">생활과학대</option>
                        <option value="90">수의과대</option>
                        <option value="100">약학대</option>
                        <option value="110">예술대</option>
                        <option value="120">의과대</option>
                        <option value="130">인문대</option>
                        <option value="140">자연과학대</option>
                        <option value="150">AI융합대</option>
                    </select>
                    <br>
                    <br>
                </div>
            
            <div data-role="content">
                <label class = "legend"><b>심부름 장소</b> </label> <input type="text" name="place" id="txt1" placeholder="심부름 도착 장소를 입력해주세요." style="text-align: left; width: 250px; height: 30px;"></p>     
                <label class = "legend"><b>심부름비</b> </label> <input type="text" name="money" placeholder="ex) 5000" style="text-align: left; width: 250px; height: 30px;"></p>
            </div>

            <hr>
            <div data-role="fieldcontain">
              <label class = "legend"><b>심부름 요청 내용</b> </label>
              <input type="file" value="사진첨부" align="right">
              
              <br>
              <input type="text" name="content" placeholder="요청 내용을 상세하게 입력해 주세요."
              style="text-align: left; width: 400px; height: 200px;">
            </div>
            <br>
           </div>
        </fieldset>
           <br>
           <div data-role="footer" data-position="fixed" align="center">
                <input type="submit" value="홈으로">
                <input type="submit" value="취소">
                <input type="submit" value="올리기">
           </div>
            
         </div>     
         
</body>
	
</body>
</html>