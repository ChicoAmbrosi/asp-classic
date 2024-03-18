<%
session.lcid = 1046
Response.ContentType = "text/html"
Response.AddHeader "Content-Type", "text/html;charset=UTF-8"
Response.CodePage = 65001 'para uso no access db mdb - salvar em utf-8
Response.CharSet = "UTF-8"
'Conectar ao banco de dados MySQL

'Set Conexao = Server.CreateObject("ADODB.Connection")
'Conexao.Open = "Driver=MySQL ODBC 5.2 ANSI Driver; database=cartaopremiar01; server=mysql.cartaopremiar.com.br; uid=cartaopremiar01; password=CursoWeb1234"
Set conexao = Server.CreateObject ("ADODB.connection")
conexao.open "provider=microsoft.jet.oledb.4.0; data source=C:\sitesaula\adm\banco.mdb" '&server.mappath("banco.mdb")

'Response.Write "<center><b>Conectado com sucesso ao banco de dados</center>"


%>