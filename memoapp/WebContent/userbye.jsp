<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
<meta name=viewport content="width=device-width, initial-scale=1, user-scalable=0">


    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">
  </head>
  <body class="text-center">
  
  
 <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  
  
    
<main class="form-signin">
  <form action ="userbyedb.jsp">
    <img class="mb-4" src="https://austin.sogang.ac.kr/dataview/board/editor/20190703_1113_3410001.jpg" alt="" width="72" height="57">
    <h1 class="h3 mb-3 fw-normal">회원탈퇴</h1>

    <div class="form-floating">
      <input name="userid" type="text" class="form-control" id="floatingInput" placeholder="사용할 아이디를 입력하세요">
      <label for="floatingInput">아이디</label>
    </div>
    <div class="form-floating">
      <input name="userpw" type="password" class="form-control" id="floatingPassword" placeholder="사용할 암호를 입력하세요">
      <label for="floatingPassword">암호</label>
    </div>



    <button class="w-100 btn btn-lg btn-primary" type="submit">회원탈퇴</button>
    <p class="mt-5 mb-3 text-muted">&copy; Austin 2022</p>
  </form>
</main>



<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>