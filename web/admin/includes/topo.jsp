<div class="row bloco-fundo">
    <div class="span3 div-banner">
        <img src="img/Banner2.png"/>
    </div>

    <div class="offset1 span4">
        <div class="btn-group meu-grupo-botoes links">
            <a href="/TheDancingMustache/index.jsp" class="btn btn-inverse">Home</a>
            <a class="btn btn-inverse" data-toggle="dropdown">Top<span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="/TheDancingMustache/Artistas.jsp">Artistas</a></li>
                <li><a href="/TheDancingMustache/Musicas.jsp">Musicas</a></li>
            </ul>
            <a href="/TheDancingMustache/Favoritos.jsp" class="btn btn-inverse">Favoritos</a>
            <a href="/TheDancingMustache/Cadastro.jsp" class="btn btn-inverse">Cadastro</a>
        </div> 
    </div> 
    <div class="offset1 span2">
        <div class="btn-group meu-grupo-botoes div-nova"> 

            <%
                String usuario = (String)session.getAttribute("usuario");

                if(usuario.equals(null) || !usuario.equals("admin")){
                    
                    response.sendRedirect("../../index.jsp");
                
            %>
            
                          
                
             
          
            </form>
            
            <%
                }else{
            %>
            
            <form action="action/logoffAdmin.jsp" method="POST">
                <button class="btn btn-inverse">Logoff</button>
            </form>
            
            <%
                }
            %>
            
        </div>
    </div> 
</div>