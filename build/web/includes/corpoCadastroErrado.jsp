
<%@page import="model.Musica"%>
<%@page import="DAO.MusicaDAO"%>
<%@page import="java.util.ArrayList"%>
<div class="coluna-centro well corpo" >
    <%
        out.print("<h4><center>" + request.getParameter("titulo") + "</center></h4>");
    %>
    <br/>


    <div>
        <center><a href="/TheDancingMustache/Cadastro.jsp" class="btn btn-inverse">Clique aqui para voltar</a></center>
    </div>

</div>