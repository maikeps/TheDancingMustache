
<%@page import="model.Artista"%>
<%@page import="model.Artista"%>
<%@page import="DAO.ArtistaDAO"%>
<%@page import="java.util.ArrayList"%>
<div class="coluna-centro well corpo" >
    <%
        out.print("<h1><center>" + request.getParameter("titulo") + "</center></h1>");
    %>
    <br/>


    <form class="form-horizontal" action="/TheDancingMustache/action/cadastroUsuario.jsp" method="POST" >
        <fieldset>
            <legend>Cadastro</legend>
            <div class="control-group">
                <label class="control-label" for="input01">Login</label>
                <div class="controls">
                    <input type="text" class="input-xlarge" id="login" name="login" >
                    <span class="help-inline">Mínimo de 6 caracteres</span>
                </div>
            </div>
       
            <div class="control-group">
                <label class="control-label" for="input01">Senha</label>
                <div class="controls">
                    <input type="password" class="input-xlarge" id="senha" name="senha">
                    <span class="help-inline">Mínimo de 5 caracteres</span>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="input01">Repita sua senha</label>
                <div class="controls">
                    <input type="password" class="input-xlarge" id="senha2" name="senha2">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="input01">E-mail</label>
                <div class="controls">
                    <input type="text" class="input-xlarge" id="email" name="email">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="input01">Repita seu e-mail</label>
                <div class="controls">
                    <input type="text" class="input-xlarge" id="email2" name="email2">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="Textarea">Termos</label>
                <div class="controls">
                    <textarea disabled="disabled" class="input-xlarge" id="termos" rows="3">Eu aceito os termos e prometo nao denunciar esse site pro FBI :)</textarea>
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <input type="checkbox" id="optionsCheckbox" value="option1"> Aceito os termos</input>
                </div>
            </div>



            <div class="form-actions">
                <button type="submit" class="btn btn-inverse">Concluir</button>
                <button class="btn">Cancelar</button>
            </div>
        </fieldset>
    </form>


</div>