<%@page import="model.Artista"%>
<%@page import="DAO.ArtistaDAO"%>
<%@page import="model.Musica"%>
<%@page import="DAO.MusicaDAO"%>
<%@page import="java.util.ArrayList"%>
<div class="coluna-centro well corpo" >
    <%
    //Pegar os dados
        String pesquisa = request.getParameter("pesquisa");


        ArrayList<Musica> list = MusicaDAO.getResultadoDaPesquisa(pesquisa);
        out.print(pesquisa + ": " + list.size());
        if (list.size() == 0) {
            out.print("<h4>Nenhuma música encontrada!</h4>");
        }
        for (Musica m : list) {
            out.print("<li><a href=\"/TheDancingMustache/PgMusica.jsp?id=" + m.getId() + "\">" + m.getTitulo() + "</a></li>");
        }

        //Pegar os dados


        ArrayList<Artista> listArtista = ArtistaDAO.getResultadoDaPesquisa(pesquisa);
        out.print(pesquisa + ": " + listArtista.size());
        if (listArtista.size() == 0) {
            out.print("<h4>Nenhum artista encontrado!</h4>");
        }
        for (Artista a : listArtista) {
            out.print("<li><a href=\"/TheDancingMustache/PgArtista.jsp?id=" + a.getId() + "\">" + a.getNome() + "</a></li>");
        }

        
        
        ArrayList<Musica> listLetra = MusicaDAO.getResultadoDaPesquisa(pesquisa);
        out.print(pesquisa + ": " + listLetra.size());
        if (listLetra.size() == 0) {
            out.print("<h4>Nenhum trecho de letra encontrado!</h4>");
        }
        for (Musica m : listLetra) {
            out.print("<li><a href=\"/TheDancingMustache/PgMusica.jsp?id=" + m.getId() + "\">" + m.getLetra() + "</a></li>");
        }

    %>
</div>