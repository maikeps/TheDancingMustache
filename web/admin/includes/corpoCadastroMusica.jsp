
<%@page import="model.Artista"%>
<%@page import="model.Artista"%>
<%@page import="DAO.ArtistaDAO"%>
<%@page import="java.util.ArrayList"%>
<div class="coluna-centro well corpo" >
    <%
        out.print("<h1><center>" + request.getParameter("titulo") + "</center></h1>");
    %>
    <br/>


    <form class="form-horizontal" action="action/InsertMusica.jsp" method="POST" >
        <fieldset>
            <legend>Cadastro de Musica</legend>
            <div class="control-group">
                <label class="control-label" for="input01">Titulo</label>
                <div class="controls">
                    <input type="text" class="input-xlarge" id="titulo" name="titulo" >
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="input01">Autor</label>
                <div class="controls">
                    <input type="text" class="input-xlarge" id="autor" name="autor">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="input01">Visualizacoes</label>
                <div class="controls">
                    <input type="text" class="input-xlarge" id="visualizacoes" name="visualizacoes">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="input01">Categoria</label>
                <div class="controls">
                    <input type="text" class="input-xlarge" id="categoria" name="categoria">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="Textarea">Letra</label>
                <div class="controls">
                    <textarea class="input-xlarge" id="letra" name="letra" rows="10"></textarea>
                </div>
            </div>
            

            <div class="form-actions">
                <button type="submit" class="btn btn-inverse">Concluir</button>
                <button class="btn">Cancelar</button>
            </div>
        </fieldset>
    </form>


</div>