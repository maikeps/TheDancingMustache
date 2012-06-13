
<%@page import="model.Artista"%>
<%@page import="model.Artista"%>
<%@page import="DAO.ArtistaDAO"%>
<%@page import="java.util.ArrayList"%>
<div class="coluna-centro well corpo" >
    <%
        out.print("<h1><center>" + request.getParameter("titulo") + "</center></h1>");
    %>
    <br/>
    <table class="table table-striped">
        
        <%

            ArrayList<Artista> listaArtista = ArtistaDAO.listaArtistasPorData();
            int posicao = 0;
            for (Artista a : listaArtista) {
                posicao++;
                out.print(
                    "<tr>"
                        //   + "<td>"+posicao+".</td>"
                        + "<td class=\"coluna-nome\"><a href=\"PgArtista.jsp?id=" + a.getId() + "\">" + a.getNome() + "</a></td>"
                        + "<td><a href=\"action/DeleteArtista.jsp?id=" + a.getId() + "\" class=\"btn btn-inverse\" id=\"id\" name=\"id\">Excluir</button></a></td>"
                    + "</tr>");
            }

        %>
    </table>



</div>