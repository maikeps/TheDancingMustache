
<%@page import="model.Musica"%>
<%@page import="DAO.MusicaDAO"%>
<%@page import="java.util.ArrayList"%>
<div class="coluna-centro well corpo" >
    <%
        out.print("<h1><center>" + request.getParameter("titulo") + "</center></h1>");
    %>
    <br/>


    <table class="table table-condensed">
        <%

            ArrayList<Musica> listaMusica = MusicaDAO.listaMusicas();
            int posicao = 0;
            for (Musica m : listaMusica) {
                posicao++;
                out.print(
                    "<tr>"
                      //+ "<td class=\"num-votos\">"+posicao+".</td>"
                        + "<td class=\"coluna-nome\"><a href=\"/TheDancingMustache/PgMusica.jsp?id=" + m.getId() + "\">" + m.getTitulo() + "</a></td>"
                        + "<td class=\"num-votos\">" + m.getVisualizações() + "</td>"
                    + "</tr>"); 
            }

        %>
    </table>

</div>