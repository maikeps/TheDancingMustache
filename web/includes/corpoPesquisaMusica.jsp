<%@page import="model.Musica"%>
<%@page import="DAO.MusicaDAO"%>
<%@page import="java.util.ArrayList"%>
<div class="coluna-centro well corpo" >
<%
//Pegar os dados
    String pesquisa = request.getParameter("pesquisa");
    

            ArrayList<Musica> list = MusicaDAO.getResultadoDaPesquisa(pesquisa);
            out.print( pesquisa+": "+list.size() );
            if(list.size() == 0){
                out.print("<h4>Nenhum resultado encontrado!</h4>");
            }
            for (Musica m : list) {
                out.print("<li><a href=\"/TheDancingMustache/PgMusica.jsp?id=" + m.getId() + "\">" + m.getTitulo() + "</a></li>");
                }


%>
</div>