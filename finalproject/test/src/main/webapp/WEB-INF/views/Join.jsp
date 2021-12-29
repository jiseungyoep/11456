<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join</title>
 <style>
        input {
                   width:300px;
                   height:40px;
                   font-size: 15px;
                   border : solid 1px #dadada;
                   background-color: #eaf0fe;

              } 
              
         div { 
                  width:100%;
                  height:100%;
                  position:relative;
                  margin : 0 auto;
                  
             }
          h3 { 
                  font-size: 15px;
                  margin: 19px 0 8px;
                  margin-block-start: 1em;
                  margin-block-end: 1em;
                  margin-inline-start: 0px;
                  margin-inline-end: 0px;
                  display: block;
                  display:tabel-cell;
                  vertical-align:middle;
     
             }
        body {
                 font-family: Dotum,'돋움',Helvetica,sans-serif;
                 padding: 60px 0 54px;
                 background: #f5f6f7;
                 
             }
       #submit { 
                margin-top : 20px;
       }
       .wrap {
                position : relative;
                padding:50px 20px; 
                margin : 0 auto;
                width: 420px;
                
       }
       input:read-only{background-color:#dedede}
       select{padding:7px; vertical-align:middle}
     
     </style>
     <script src="http://code.jquery.com/jquery-latest.js" ></script>
     <script>
       $(function(){
           $("#join_form").submit(function() {
            var getMail = RegExp(/^[A-Za-z0-9_\.\-]/); 
            var getCheck= RegExp(/^[a-zA-Z0-9]{4,12}$/); 
            var getName= RegExp(/^[가-힣]+$/);
            var getNumber = RegExp(/^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}/);
               if($("#user_id").val() == ""){
                   alert("아이디를 입력해주세요");
                   $("#user_id").focus();
                   return false;
               }

               if(!getCheck.test($("#user_id").val())){
                   alert("아이디를 형식에 맞게 입력해주세요.");
                   $("#user_id").val(" ");
                   $("#user_id").focus();
                   return false;
               }
               
               if($("#password").val() == ""){
                   alert("패스워드를 입력해주세요.");
                   $("#password").focus();
                   return false;
               }

               if(!getCheck.test($("#password").val())){
                   alert("비밀번호를 형식에 맞게 입력해주세요.");
                   $("#password").val("");
                   $("#password").focus();
                   return false;
               }

               if($("#password").val() != $("#passwordcheck").val()){
                   alert("비밀번호가 서로 다릅니다.");
                   $("#passwordcheck").val("");
                   $("#passwrodcheck").focus();
                   return false;
               }

               if($("#email").val() == ""){
                   alert("이메일을 입력해주세요");
                   $("#email").focus();
                   return false;
               }
               if(!getMail.test($("#email").val())){
                   alert("이메일형식에 맞게 입력해주세요.");
                   $("#email").val("");
                   $("#email").focus();
                   return false;
               }
               if($("#phone_number").val() == ""){
                   alert("휴대전화 번호를 입력해주세요");
                   $("#phone_number").focus();
                   return false
               }
               if(!getNumber.test($("#phone_number").val())){
                   alert("휴대전화 번호 형식에 맞게 입력해주세요.");
                   $("#phone_number").val("");
                   $("#phone_number").focus();
                   return false;
               }
               if(!getNmae.test($("#name").val())){
            	   alert("이름을 올바르게 입력해주세요.");
            	   $("#name").val("");
            	   $("#name").focus();
            	   return false;
               }
               if($("#user_id").val()== $("password").val()){
            	   alert("아이디랑 비밀번호를 서로 다르게 해주세요");
            	   $("password").val("");
            	   $("password").focus();
               }
         })
       })
     </script>
     </head> 
     <body>
     <div class="wrap">
      <form action="/user/join" id="join_form" method="post">
        <div>
            <h3><label for="user_id">아이디</label></h3>
            <input type="text" name="user_id" id="user_id">
            <h3><label for="password">비밀번호</label></h3>
            <input type="password" name="password" id="password">
            <h3><label for="passwordcheck">비밀번호 재확인</label></h3>
            <input type="password" name="passwordcheck" id="passwordcheck">
            <h3><label for="email">이메일</label></h3>
            <input type="text" name="email" id="email">
            <input name="email2" type="text">
            <select name="select_email" onchange="selectEmail(this)">
                <option value="" selected="selected">선택하세요.</option>
                <option value="@naver.com">naver.com</option>
                <option value="@gamil.com">gmail.com</option>
                <option value="1">직접입력</option>
            </select>
            <h3><label for="name">이름</label></h3>
            <input type="text" name="name" id="name">
            <h3><label for="birth_date">생년월일</label></h3>
            <input type="date" id="birth_date" name="birth_date" min="1950-01-01" max="2003-12-31">
            <h3><label for="phone_number">전화번호</label></h3>
            <input type="text" name="phone_number" id="phone_number" placeholder="000-0000-0000">
        </div>
             <input type="submit" value="회원가입" id="submit">
        </form>
        </div>
        
         <script>
         function selectEmail(ele) {
             var $ele = $(ele);
             var $email2 = $('input[name=email2]');
             
             if($ele.val() == "1"){
                 $email2.attr('readonly',false);
                 $email2.val('');
             }else{
                 $email2.attr('readonly', true);
                 $email2.val($ele.val());
             }
         }
         </script>
      
     
     </body>
</html>