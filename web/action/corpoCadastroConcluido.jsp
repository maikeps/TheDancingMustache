
<%@page import="model.Musica"%>
<%@page import="DAO.MusicaDAO"%>
<%@page import="java.util.ArrayList"%>
<div class="coluna-centro well corpo" >
    <%
        out.print("<h1><center>" + request.getParameter("titulo") + "</center></h1>");
    %>
    <br/>


    <div>
        <center><a href="../index.jsp" class="btn btn-inverse">Clique aqui para voltar</a></center>
    </div>

</div>