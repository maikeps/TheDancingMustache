<!DOCTYPE html>
<html lang="pt">

    <jsp:include page="includes/head.jsp" />

    <body>
        <div class="container">

            <jsp:include page="includes/menu.jsp" />
            
            <div class="row">
                <div class="coluna-esquerda">
                    <div class="row">
                        <jsp:include page="includes/Insert.jsp" />
                    </div>
                    <div class="row">
                        <jsp:include page="includes/Delete.jsp" />
                    </div>
                </div>
                
                <div class="coluna-centro">
                    <jsp:include page="includes/corpoDeletarMusica.jsp">
                        <jsp:param name="titulo" value="Bem-Vindo ADM" />
                    </jsp:include>
                </div>
            </div>                
            
            <jsp:include page="includes/rodape.jsp" />

        </div>

            <jsp:include page="includes/JavaScript.jsp" />

    </body>
</html>
