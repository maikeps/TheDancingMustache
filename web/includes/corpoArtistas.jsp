
<%@page import="model.Artista"%>
<%@page import="model.Artista"%>
<%@page import="DAO.ArtistaDAO"%>
<%@page import="java.util.ArrayList"%>
<div class="coluna-centro well corpo" >
    <%
        out.print("<h1><center>" + request.getParameter("titulo") + "</center></h1>");
    %>
    <br/>
    <table class="table table-condensed">
        <%

            ArrayList<Artista> listaArtista = ArtistaDAO.listaArtistas();
            int posicao = 0;
            for (Artista a : listaArtista) {
                posicao++;
                out.print(
                    "<tr>"
                        //   + "<td>"+posicao+".</td>"
                        + "<td class=\"coluna-nome\">" + "<a href=\"/TheDancingMustache/PgArtista.jsp?id=" + a.getId() + "\">" + a.getNome() + "</a>" + "</td>"
                        + "<td class=\"num-votos\">" + a.getVotos() + "</td>"
                    + "</tr>");

            }


        %>
    </table>



</div>