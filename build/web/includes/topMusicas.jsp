                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
<%@page import="DAO.MusicaDAO"%>
<%@page import="model.Musica"%>
<%@page import="java.util.ArrayList"%>
<div class="bloco-musicas">
        <div class="page-header">
            <h4><a href="/TheDancingMustache/Musicas.jsp">Top Musicas</a></h4>
        </div>
        <ol>
            <%
                ArrayList<Musica> listaMusica = MusicaDAO.top5Musicas();

                for (Musica m : listaMusica) {
                    out.print("<li><a href=\"/TheDancingMustache/PgMusica.jsp?id=" + m.getId() + "\">" + m.getTitulo() + "</a></li>");
                }


            %>
        </ol>
</div>