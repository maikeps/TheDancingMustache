
<%@page import="model.Artista"%>
<%@page import="model.Artista"%>
<%@page import="DAO.ArtistaDAO"%>
<%@page import="java.util.ArrayList"%>
<div class="coluna-centro well corpo" >
    <%
        out.print("<h1><center>" + request.getParameter("titulo") + "</center></h1>");
    %>
    <br/>


    <form class="form-horizontal" action="action/InsertArtista.jsp" method="POST" >
        <fieldset>
            <legend>Cadastro de Artista</legend>
            <div class="control-group">
                <label class="control-label" for="input01">Nome</label>
                <div class="controls">
                    <input type="text" class="input-xlarge" id="nome" name="nome" >
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="input01">Votos</label>
                <div class="controls">
                    <input type="text" class="input-xlarge" id="votos" name="votos">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="Textarea">Descrição</label>
                <div class="controls">
                    <textarea class="input-xlarge" id="descricao" name="descricao" rows="10"></textarea>
                </div>
            </div>
            
            <div class="form-actions">
                <button type="submit" class="btn btn-inverse">Concluir</button>
                <button class="btn">Cancelar</button>
            </div>
        </fieldset>
    </form>


</div>