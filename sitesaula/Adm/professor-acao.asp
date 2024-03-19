<br>
<!--#include virtual="adm/wpg_cnx.asp"-->  
<%
'define o formato para data/hora/moeda para o padrão brasileiro
session.LCID = 1046
'RECEBENDO CAMPOS DO FORMULARIO
opc          = request.querystring("opc")
botao        =  request.form("botao")
cod          =  request.form("hfcod")
nome         =  request.form("nome")
materia      =  request.form("materia")

if botao = "Incluir" then
    ' INCLUINDO OS DADOS RECEBIDOS NA TABELA

    sql = "insert into professor (nome, materia)"
    sql = sql & " values('"&nome&"','"&materia&"')"
    response.write sql
    '   response.end
    conexao.execute(sql)
%>
    <script>
        //alert("Dados incluído com sucesso!")
        parent.location = "professor-list.asp"
    </script>
<%
elseif botao = "Alterar" then
    ' ALTERANDO OS DADOS RECEBIDOS NA TABELA

    sql = "update professor set"
    sql = sql & " nome = '"&nome&"',"
    sql = sql & " materia = '"&materia&"'"  
    sql = sql & " where id = "&cod
    'response.write sql
    'response.end
    conexao.execute(sql)
%>
    <script>
        //alert("Dados alterado com sucesso!")
        parent.location = "professor-list.asp"
    </script>
<%
elseif opc <> "" then
    ' DELETANDO REGISTRO SELECIONADO
    cod = request.querystring("cod")
    sql = "delete from professor where id="&cod
    '  response.write sql
    '  response.end
    conexao.execute(sql)
%>
    <script>
        //alert("Linha excluída com sucesso!")
        parent.location = "professor-list.asp"
    </script>
<%
end if
%>