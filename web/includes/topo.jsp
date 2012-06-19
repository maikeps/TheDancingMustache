<div class="row bloco-fundo">
    <div class="span3 div-banner">
        <img src="/TheDancingMustache/img/Banner2.png"/>
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

            
            
            <form action="action/loginUsuario.jsp" method="POST">
            
            <input class="inputLogin" type="text" tabindex="1" value="Usuario" name="usuario" size="30" maxlength="40" required="required" />
            <input class="inputLogin" type="password" tabindex="1" value="Senha" name="senha" size="30" maxlength="40" required="required" />
            <div class="btn-group"> 
                <button class="btn btn-inverse">Login</button>
                <%out.print(session.getAttribute("usuario"));%>
             
          </div>
            </form>
        </div>
    </div> 
</div>