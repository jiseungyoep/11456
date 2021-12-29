<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>login</title>
    <style>
        input {
                    width:300px;
                    height:50px;
                    font-size: 15px;
                    border : solid 1px #dadada;
                    background-color: #eaf0fe;
                    margin-bottom: 20px;
              } 
          div { 
                  width:100%;
                  height:100%;
                  position:relative;
                  margin : 0 auto;
                  text-align: center;
                  
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
     
             }
        body {
                 font-family: Dotum,'돋움',Helvetica,sans-serif;
                 padding: 60px 0 54px;
                 background: #f5f6f7;
                 
             }
       .wrap {
                position : relative;
                padding:50px 20px; 
                margin : 0 auto;
                width: 420px;
       }
       label ,.saveid{
           font-size: 12px;
           width: 12px;
           height: 12px;
           margin-top: 5px;
       }
       .submit{
           background-color: #17191d;
           font-size: 18px;
           color: #fff;
       }
       a {
           font-size: 12px;
           font-weight: 700;
           color: #737881;
           text-decoration: none;
           margin-right: 8px;
           letter-spacing: -.6px;
       }
    </style>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script>
        $(document).ready(function(){

            var key = getCookie("key");
            $("#user_id").val(key);

            if($("#user_id").val() != ""){
                $("#saveid").attr("cheked", true);
            }

            $("#saveid").change(function(){
                if($("#saveid").is(":checked")){
                    setCookie("key", $("user_id").val(), 7);

                }else{
                    deleteCookie("key");
                }
            })
        })

        $("#user_id").keyup(function(){
            if($("#saveid").is(":checked")){
                setCookie("key", $("#user_id").val(), 7);
            }
        })

        function setCookie(cookieName, value, exdays){
            var exdate = new Date();
            exdate.setDate(exdate.getDate()+ exdays);
            var cookieValue = escape(value) + ((exdays == null) ? "" : "; expires=" + exdate.toGMTString());
            document.cookie = cookieName + "=" + cookieValue;
        }

        function deleteCookie(cookieName){
            var expireDate = new Date();
            expireDate.setDate(expireDate.getDate() - 1);
            document.cookie = cookieName + "=" + "; expires"+ expireDate.toGMTString();
        }

        function getCookie(cookieName){
            cookieName = cookieName + "=";
            var cookieDate = document.cookie;
            var start  = cookieDate.indexOf(cookieName);
            var cookieValue = "";

            if(start != -1){
                start += cookieName.length;
                var end = cookeDate.indexOf(";",start);
                if(end == -1)end = cookieDate.length;
                cookieValue = cookieDate.substring(start, end);
            }

            return unescape(cookieValue);
        }



    </script>
</head>
<body>
    <div class="wrap">
        <form action="/user/login" method="post" id="login_form">
            <div>
                <input type="text" placeholder="ID" id="user_id" name="user_id">
                <input type="password" placeholder="비밀번호" id="password" name="password">
                <br>
                <input type="checkbox" class="saveid" value="saveid" id="saveid">
                <label for="saveid">ID저장</label>
            </div>

            <input type="submit" value="로그인" class="submit">
            
        </form>
        <a href="#" class="join" onclick="join">회원가입</a>
        <a href="#" class="findid" onclick="find.jsp">ID/비밀번호 찾기</a>

    </div>

    
</body>
</html>