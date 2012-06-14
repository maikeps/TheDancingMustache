
<%@page import="model.Musica"%>
<%@page import="DAO.MusicaDAO"%>
<%@page import="java.util.ArrayList"%>
<div class="coluna-centro well corpo" >

    <br/>

    
    <ol>
            <%
                    
                    
                    String requestParam = request.getParameter("id");
                    int id = Integer.parseInt(requestParam);
                    
                    Musica m = MusicaDAO.getMusica(id);
                    
                    out.print("<h1><center>"+m.getTitulo()+"</center></h1>");
                    out.print("</br><h3>"+m.getAutor()+"</h3>");
                    out.print("<h4>"+m.getCategoria()+"</h4>");
                    out.print("<h5>"+m.getVisualizações()+" Views</h5>");
                    out.print("<div class=\"page-header\"><button class=\"btn btn-inverse botao-download\">Download</button></div>");
                    out.print(m.getLetra());
                %>
        </ol>
        
        <jsp:include page="mostraComentarios.jsp" />
        <jsp:include page="comentario.jsp" />



</div>