
<%@page import="DAO.ArtistaDAO"%>
<%@page import="model.Artista"%>
<%@page import="model.Musica"%>
<%@page import="DAO.MusicaDAO"%>
<%@page import="java.util.ArrayList"%>
<div class="coluna-centro well corpo" >

    <br/>


    <ol>

        <%


            String requestParam = request.getParameter("id");
            int id = Integer.parseInt(requestParam);

            Artista a = ArtistaDAO.getArtista(id);
            out.print("<h1><center>" + a.getNome() + "</center></h1>");
            out.print("<h5>" + a.getVotos() + " Votos</h5>");

            ArrayList<Musica> list = ArtistaDAO.getListaMusicasPorArtista(a.getNome());
            
            for (Musica m : list) {
                out.print("<li><a href=\"/TheDancingMustache/PgMusica.jsp?id=" + m.getId() + "\">" + m.getTitulo() + "</a></li>");
                }
                                        
                


        %>

    </ol>



</div>