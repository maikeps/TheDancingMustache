<%@page import="DAO.ComentarioDAO"%>
<%@page import="model.Comentario"%>
<%@page import="java.util.ArrayList"%>

<%

    String stringID = request.getParameter("id");
    int id = Integer.parseInt(stringID);

    ArrayList<Comentario> lista = ComentarioDAO.listaComentarios(id);
    for (Comentario c : lista) {
        String s = "";
        s += "<div class=\"bloco-comentario\">";
        s += "<h4>" + c.getNome() + "</h4>";
        s += "<p>" + c.getComentario() + "</p>";
        s += "</div>";
        out.print(s);


    }
%>
