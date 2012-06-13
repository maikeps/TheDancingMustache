<%@page import="util.ConjuntoResultados"%>
<%@page import="util.MySQL"%>
<%
//Pegar os dados
    String id = request.getParameter("id");

    String sql = "";

    //int visualizacoesInt = Integer.getInteger(visualizacoes);

    sql = "delete from artista where id = \"" + id + "\"";

//Montar SQL

    MySQL bancoDeDados = new MySQL();
    boolean bool = bancoDeDados.executaInsert(sql);

//Redirecionar

        //out.print(sql);

    String redirectURL = "../DeletarArtista.jsp";
    response.sendRedirect(redirectURL);


%>