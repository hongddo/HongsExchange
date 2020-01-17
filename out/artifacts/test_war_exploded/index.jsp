<%--
  Created by IntelliJ IDEA.
  User: 82797
  Date: 2020-01-07
  Time: 오후 2:53
  To change this template use File | Settings | File Templates.
  http://localhost:8080/test/web/index.jsp
  http://localhost:8080/test_war_exploded/index.jsp
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Hongs exchange</title>

      <link rel="stylesheet" href="./web/css/cssReset.css" />
      <link rel="stylesheet" href="./web/css/header.css" />
      <link rel="stylesheet" href="./web/css/index.css" />
      <link rel="stylesheet" href="./web/css/footer.css" />
  </head>
  <body>
 <!--로그인 후 -->
  <div id = "viewType">
      <a href="/myservice/me.html" id = "meLink">me</a>
      <a href="/myservice/all.html" id= "allLink">all</a>
  </div>
  <header>
      <div id ="myService"> Hongs exchange </div>
      <!--로그인 후 -->
      <div id="myName">
         <p>안녕하세요 최홍서님~!!!!!</p>
      <div id ="logoutBox">
       <input type="button" id = "logoutBtn" value="로그아웃"/>
      </div>
      </div>
      <!-- 로그인 전 -->
      <div id="loginForm">
          <form name="loginForm" method="post" action="./login.php">
              <div id="loginEmailArea">
                  <label for="loginEmail">E-mails</label>
              <div class="loginInputBox">
                  <input type="email" id="loginEmail"  name="email" placeholder="이메일" />
              </div>
              </div>
              <div id="loginPwArea">
                  <label for="loginPw">Password</label>
                <div class="loginInputBox">
                    <input type="password" name="userPw" id ="loginPw" placeholder="비밀번호 8자리이상 입력" />
               </div>
              </div>
              <div class="loginSubmitBox">
                  <input type="submit" id ="loginSubmit" value = "로그인">
                         </div>
          </form>
      </div>
  </header>

  <!-- container -->
<div id="container">
    <section id="introSite">
      <div id="siteComment">
          Hongs Exchange에<br />
          오신걸 환영합니다
      </div>

        <div id="signUpBtn">
            <p>가입하기</p>
        </div>
    </section>

    <section id="signup">
        <div id="signupCenter">
            <form id="signUpForm" method="post" action="./database/myMember.php">
                <div class="row">
                    <div class="inputBox">
                        <input type="text" name="userName" id="userName" placeholder="이름" />
                    </div>
                </div>
                <div class="row">
                    <div class="inputBox">
                        <input type="email" name="userEmail" id="userEmail" placeholder="이메일" />
                    </div>
                </div>
                <div class="row">
                    <div class="inputBox">
                        <input type="password" name="userPw" id="userPw" placeholder="비밀번호" />
                    </div>
                </div>

                <div class="row">
                    <label>생일</label>
                   <div class="selectBox">
                       <select name="birthYear" id="birthYear">
                           <option value="">년</option>
                           <option value="2015">2015</option>
                           <option value="2014">2014</option>
                           <option value="2013">2013</option>
                       </select>
                       <select name="birthYear" id="birthMonth">
                           <option value="">월</option>
                           <option value="02">02</option>
                           <option value="03">03</option>
                           <option value="04">04</option>
                       </select>

                       <select name="birthYear" id="birthDay">
                           <option value="">일</option>
                           <option value="02">02</option>
                           <option value="03">03</option>
                           <option value="04">04</option>
                       </select>

                   </div>
                </div>
                <div class="row genderRow">
                    <div id="genderLabel">
                        <label for="gW" id="gMW">여성</label>
                        <label for="gM" id="gMM">남성</label>
                    </div>
                       <input type="radio" name="gender" class="gender" id="gW" value="w" />
                       <input type="radio" name="gender" class="gender" id="gM" value="m" />
                </div>

                <div class="row">
                    <p id="valueError"></p>
                </div>
                <div class="row">
                    <div class="submitBox">
                        <input type="submit" id="signUpSubmit" value="가입하기" />
                    </div>
                </div>
                <input type="hidden" name="mode" vakye="save" />
            </form>

            <div id="goToLoginBtn">
                <p>로그인하기</p>
            </div>

        </div>
    </section>
</div>

  <footer>
      <p>hongs exchange 대표:최홍서   phone:010-4155-0637</p>
  </footer>

  </body>
</html>
