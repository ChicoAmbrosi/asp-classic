<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <title>Sistema Curso ASP </title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="css.css" />
  </head>
  <body>
    <div class="login-page">
      <div class="form"> 
<%
  id = request.querystring("id")
if id = "" then
%>      
      Informe o login
<%
elseif id = "0" then
%>
      Login inválido, tente novamente!
<%
elseif id = "-1" then
%>
      Sessão encerrada!
<%
end if
%>
        <form class="login-form" action="login.asp" method="post">
          <input type="text" placeholder="usuário" name="usuario">
          <input type="password" placeholder="senha" name="senha">
          <button>entrar</button>
        </form>
      </div>
    </div>
  </body>
</html>
