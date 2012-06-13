<%@page import="java.util.ArrayList"%>
<%@page import="DAO.ArtistaDAO"%>
<%@page import="model.Artista"%>
<div class="bloco-artistas">
        <div class="page-header">
            <h4><a href="/TheDancingMustache/Artistas.jsp">Top Artistas</a></h4>
        </div>
        <ol>
            
            <%
            
                ArrayList<Artista> listaArtista = ArtistaDAO.top5Artistas();
                for( Artista a : listaArtista) {
                    out.print("<li><a href=\"/TheDancingMustache/PgArtista.jsp?id=" + a.getId() + "\">"+a.getNome()+"</a></li>");
                }
            
            %>
        
        </ol>
</div>