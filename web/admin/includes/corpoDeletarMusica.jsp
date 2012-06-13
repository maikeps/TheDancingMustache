
<%@page import="DAO.MusicaDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Musica"%>
<div class="coluna-centro well corpo" >
    <%
        out.print("<h1><center>" + request.getParameter("titulo") + "</center></h1>");
    %>
    <br/>
    <table class="table table-striped">
        
        <%

            ArrayList<Musica> listaMusica = MusicaDAO.listaMusicasPorData();
            int posicao = 0;
            for (Musica a : listaMusica ) {
                posicao++;
                out.print(
                    "<tr>"
                        //   + "<td>"+posicao+".</td>"
                        + "<td class=\"coluna-nome\"><a href=\"PgArtista.jsp?id=" + a.getId() + "\">" + a.getTitulo() + "</a></td>"
                        + "<td><a href=\"action/DeleteMusica.jsp?id=" + a.getId() + "\" class=\"btn btn-inverse\" id=\"id\" name=\"id\">Excluir</button></a></td>"
                    + "</tr>");
            }

        %>
    </table>



</div>