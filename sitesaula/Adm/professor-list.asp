<!--#include virtual="adm/topo.asp"-->  
<!--#include virtual="adm/wpg_cnx.asp"-->  
<%

sql = "select * from professor order by nome "
set rs = conexao.execute(sql)

%>
  <script>
function Excluir(cod)
   {
	 if(confirm("Confirma exclusão?"))
	  {
	    parent.location = "professor-acao.asp?opc=exc&cod=" + cod ;
      }
   
   } 
 	
 </script>

<div class="container">
<form action="professor-form.asp" method=post>
<button type="submit" class="btn btn-primary">Adicionar</button>

  <h4>Professor</h4>
  <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th>#</th>
        <th>Nome</th>
        <th>Matéria</th>
        <th>#</th>		
      </tr>
    </thead>
    <tbody>
<%
'AQUI COMEÇA O DO WHILE ONDE TRARÁ AS LINHAS DE ACORDO COM O SELECT FEITO
do while not rs.eof%>
      <tr>
        <td>
 <a href="professor-form.asp?evt=alt&cod=<%=rs("id")%>">
<img src="imagens/editar.png">
        </a>		
		</td>
        <td><%=rs("nome")%></td>
        <td><%=rs("materia")%></td>
        <td>
 <a href="javascript:Excluir(<%=rs("id")%>)">
 <img src="imagens/excluir.png">
        </a>		
		</td>

      </tr>
<%
'LOOP DEPOIS DA LINHA PARA QUE SE REPITA ENQUANTO TIVER REGISTROS NO SELECT FEITO
rs.movenext
loop
%>	  
    </tbody>
  </table>

  </div>
</form>

</div>
</body>
</html>