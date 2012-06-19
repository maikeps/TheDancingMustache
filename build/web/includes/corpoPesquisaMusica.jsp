<%@page import="model.Artista"%>
<%@page import="DAO.ArtistaDAO"%>
<%@page import="model.Musica"%>
<%@page import="DAO.MusicaDAO"%>
<%@page import="java.util.ArrayList"%>
<div class="coluna-centro well corpo" >
    
    
    <%
    //Pegar os dados
        String pesquisa = request.getParameter("pesquisa");

        out.print("<div class=\"page-header\"></div>");

        ArrayList<Musica> list = MusicaDAO.getResultadoDaPesquisa(pesquisa);
        out.print("Resultados para "+pesquisa + ": " + list.size());
        if (list.size() == 0) {
            out.print("<h4>Nenhuma música encontrada!</h4>");
        }
        for (Musica m : list) {
            out.print("<li><a href=\"/TheDancingMustache/PgMusica.jsp?id=" + m.getId() + "\">" + m.getTitulo() + "</a></li>");
        }

        //Pegar os dados

        out.print("<div class=\"page-header\"></div>");

        ArrayList<Artista> listArtista = ArtistaDAO.getResultadoDaPesquisa(pesquisa);
        out.print("Artista: "+pesquisa + ": " + listArtista.size());
        if (listArtista.size() == 0) {
            out.print("<h4>Nenhum artista encontrado!</h4>");
        }
        for (Artista a : listArtista) {
            out.print("<li><a href=\"/TheDancingMustache/PgArtista.jsp?id=" + a.getId() + "\">" + a.getNome() + "</a></li>");
        }

        out.print("<div class=\"page-header\"></div>");
        
        ArrayList<Musica> listLetra = MusicaDAO.getResultadoDaPesquisaLetra(pesquisa);
        out.print("Letras: "+pesquisa + ": " + listLetra.size());
        if (listLetra.size() == 0) {
            out.print("<h4>Nenhum trecho de letra encontrado!</h4>");
        }
        for (Musica m : listLetra) {
            out.print("<li><a href=\"/TheDancingMustache/PgMusica.jsp?id=" + m.getId() + "\">" + m.getTitulo() + "</a></li>");
        }

        out.print("<div class=\"page-header\"></div>");
        
    %>
</div>