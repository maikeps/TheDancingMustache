
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
                    <span class="help-inline">Mínimo de 6 caracteres</span>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="input01">Senha</label>
                <div class="controls">
                    <span class="help-inline">Mínimo de 5 caracteres</span>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="input01">Repita sua senha</label>
                <div class="controls">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="input01">E-mail</label>
                <div class="controls">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="input01">Repita seu e-mail</label>
                <div class="controls">
                </div>
            </div>

        </fieldset>
    </form>


</div>