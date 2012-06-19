<!DOCTYPE html>
<html lang="pt">

    <jsp:include page="../includes/head.jsp" />

    <body>
        <div class="container">

            <jsp:include page="../includes/menu.jsp" />
            <div class="row">
                <div class="coluna-esquerda">
                    <div class="row">
                        <jsp:include page="../includes/topArtistas.jsp" />
                    </div>
                    <div class="row">
                        <jsp:include page="../includes/topMusicas.jsp" />
                    </div>
                </div>
                
                <div class="coluna-centro">
                    <jsp:include page="corpoCadastroConcluido.jsp">
                        <jsp:param name="titulo" value="Cadastro Concluido!" />
                    </jsp:include>
                </div>
            </div>        
            <jsp:include page="../includes/rodape.jsp" />

        </div>

            <jsp:include page="../includes/JavaScript.jsp" />

    </body>
</html>
