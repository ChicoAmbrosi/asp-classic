<!--#include virtual="adm/topo.asp"-->  
<!--#include virtual="adm/wpg_cnx.asp"-->  

<%
'RECEBENDO CÓDIGO COMO PARAMETRO E EVT PARA SABER SE VAI INCLUIR OU ALTERAR
cod = Request.QueryString("cod")
evt  = Request.QueryString("evt")
if cod <> "" then
   cod = cint(cod)
end if
if ucase(evt) = "ALT" then
   sql = "SELECT * from curso where id = "&cod
 ' Response.Write(sql)
'  Response.End()
   set rs = conexao.execute(sql)
   nome    = rs("nome") 
   descricao   = rs("descricao") 
   imagem   = rs("imagem") 

   bot        = "Alterar"
else
   bot       = "Incluir"
end if

%>

<div class="container">
<br><br>
  <form class="form-horizontal" action="curso-acao.asp" method="post">

    <div class="form-group">
      <label class="control-label col-sm-2" for="nome"><b>Nome:</b></label>
      <div class="col-sm-4">
        <input type="text" class="form-control" id="nome" placeholder="Informe o Nome" name="nome" value="<%=nome%>">
      </div>
    </div>

    <div class="form-group">
      <label class="control-label col-sm-2" for="descricao"><b>Descrição:</b></label>
      <div class="col-sm-4">
        <input type="text" class="form-control" id="descricao" placeholder="Informe a Descrição" name="descricao" value="<%=descricao%>">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="imagem"><b>Imagem:</b></label>
      <div class="col-sm-4">
        <input type="text" class="form-control" id="imagem" placeholder="Informe a Imagem" name="Imagem" value="<%=imagem%>">
      </div>
    </div>
    
    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default" name="Botao" value="<%=bot%>"><%=bot%></button>
      </div>
    </div>
	<input type="hidden" name="hfcod" value="<%=cod%>">	
  </form>
</div>

</body>
</html>