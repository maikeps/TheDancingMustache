<%@page import="DAO.ComentarioDAO"%>
<%@page import="model.Comentario"%>
<%@page import="java.util.ArrayList"%>

<div class ="page-header">

<%

    String stringID = request.getParameter("id");
    int id = Integer.parseInt(stringID);

    ArrayList<Comentario> lista = ComentarioDAO.listaComentarios(id);
    for (Comentario c : lista) {
    
        out.print("<h4>" + c.getNome() + "</h4>");
        out.print("<p>" + c.getComentario() + "</p>");
        

    }
%>
</div>