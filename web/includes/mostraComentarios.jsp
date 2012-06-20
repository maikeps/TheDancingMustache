<%@page import="DAO.ComentarioDAO"%>
<%@page import="model.Comentario"%>
<%@page import="java.util.ArrayList"%>

</br>
</br>


<div class="well comentario">

<%

    String stringID = request.getParameter("id");
    int id = Integer.parseInt(stringID);

    ArrayList<Comentario> lista = ComentarioDAO.listaComentarios(id);
    for (Comentario c : lista) {
        
        out.print("<div class=\"page-header\">");
        
        out.print("<h4>" + c.getNome() + "</h4>");
        out.print("<p>" + c.getComentario() + "</p>");
        
        out.append("</div>");
        
    }
%>

</div>