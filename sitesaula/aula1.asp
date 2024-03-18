<%
response.charset = "utf-8"

dim tipoCadastro

tipoCadastro = 3

if tipoCadastro = 1 then
    response.write("O Tipo do Cadastro é um")
end if
if tipoCadastro = 2 then
    response.write("O Tipo do Cadastro é dois")
end if
if tipoCadastro     = 3 then
    response.write("O Tipo do Cadastro é três")
end if
%>