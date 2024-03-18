<!--#include file="topo.asp"-->  
<!--#include file="wpg_cnx.asp"-->  
<%

sql = "select * from professor order by nome "
set rs = conexao.execute(sql)

%>
  <script>
function Excluir(cod)
   {
	 if(confirm("Confirma exclusão?"))
	  {
	    parent.location = "manu_professor.asp?opc=exc&cod=" + cod ;
      }
   
   } 
 	
 </script>

<div class="container">
<form action="professor.asp" method=post>
<button type="submit" class="btn btn-primary">Adicionar</button>

  <h4>Plano</h4>
  <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th>#</th>
        <th>Nome</th>
        <th>Curso</th>
        <th>#</th>		
      </tr>
    </thead>
    <tbody>
<%
'AQUI COME�A O DO WHILE ONDE TRAR� AS LINHAS DE ACORDO COM O SELECT FEITO
'do while not rs.eof%>
      <tr>
        <td>
 <a href="frm_professor.asp?evt=alt&cod=<%'=rs("id")%>">
<img src="imagens/alt.jpg">
        </a>		
		</td>
        <td><%=rs("nome")%></td>
        <td><%=rs("curso")%></td>
        <td>
 <a href="javascript:Excluir(<%'=rs("id")%>)">
 <img src="imagens/excluir.jpg">
        </a>		
		</td>

      </tr>
<%
'LOOP DEPOIS DA LINHA PARA QUE SE REPITA ENQUANTO TIVER REGISTROS NO SELECT FEITO
'rs.movenext
'loop
%>	  
    </tbody>
  </table>

  </div>
</form>

</div>
</body>
</html>