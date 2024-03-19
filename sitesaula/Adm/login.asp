<!--#include file="wpg_cnx.asp"-->  
<%

 usuario = trim(request.form("usuario"))
 senha = trim(request.form("senha"))


sql = "select * from usuario where usuario = '"&usuario&"' and senha = '"&senha&"'"
set rs = conexao.execute(sql)

if not rs.eof then
    session("usuario_id") = trim(rs("id"))
    session("usuario_nome") = rs("nome")
    response.redirect("inicio.asp")
else
    response.redirect("index.asp?id=0")
end if

%>