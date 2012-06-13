
<div class="row bloco-pesquisa">
    

 <form action="pesquisaMusicas.jsp" method="POST" >
     <div class="span">
        <div class="btn-group meu-grupo-botoes">

            <ul class="nav nav-pills">
                <li class="dropdown" id="menu1">
                    <%
                        out.print("<button class=\"btn btn-inverse dropdown-toggle\" data-toggle=\"dropdown\">" + request.getParameter("tipoPesquisa") + "<span class=\"caret\"></span></button>");
                    %>
                    </button>
                    <ul class="dropdown-menu">
                        <li><a href="#">Artistas</a></li>
                        <li><a href="#">Musicas</a></li>
                    </ul>
                </li>
            </ul>

        </div>
    </div>
        
    <div class="span7">
        <div class="btn-group barra-pesquisa">
            <input type="text" tabindex="1" value="" name="pesquisa" id="pesquisa" size="30" maxlength="80" required="required" />

        </div>
    </div>
    <div class="offset2 span1">
        <div class="btn-group meu-grupo-botoes">
            <div class="btn-group link-pesquisa">
                <button type="submit" class="btn btn-inverse">Pesquisar</button>
            </div>
        </div>
    </div>
     
 </form>
</div>