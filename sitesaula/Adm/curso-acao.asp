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
descricao    =  request.form("descricao")
imagem       =  request.form("imagem")

if botao = "Incluir" then
    ' INCLUINDO OS DADOS RECEBIDOS NA TABELA

    sql = "insert into curso (nome, descricao, imagem)"
    sql = sql & " values('"&nome&"','"&descricao&"','"&imagem&"')"
    response.write sql
    '   response.end
    conexao.execute(sql)
%>
    <script>
        //alert("Dados incluído com sucesso!")
        parent.location = "curso-list.asp"
    </script>
<%
elseif botao = "Alterar" then
    ' ALTERANDO OS DADOS RECEBIDOS NA TABELA

    sql = "update curso set"
    sql = sql & " nome = '"&nome&"',"
    sql = sql & " descricao = '"&descricao&"',"  
    sql = sql & " imagem = '"&imagem&"'"  
    sql = sql & " where id = "&cod
    'response.write sql
    'response.end
    conexao.execute(sql)
%>
    <script>
        //alert("Dados alterado com sucesso!")
        parent.location = "curso-list.asp"
    </script>
<%
elseif opc <> "" then
    ' DELETANDO REGISTRO SELECIONADO
    cod = request.querystring("cod")
    sql = "delete from curso where id="&cod
    '  response.write sql
    '  response.end
    conexao.execute(sql)
%>
    <script>
        //alert("Linha excluída com sucesso!")
        parent.location = "curso-list.asp"
    </script>
<%
end if
%>