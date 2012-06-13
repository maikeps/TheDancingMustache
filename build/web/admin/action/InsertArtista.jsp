<%@page import="util.ConjuntoResultados"%>
<%@page import="util.MySQL"%>
<%
//Pegar os dados
    String nome = request.getParameter("nome");
    String votos = request.getParameter("votos");
    String descricao = request.getParameter("descricao");
    String sql = "";

    //int visualizacoesInt = Integer.getInteger(visualizacoes);

    sql = "insert into artista (Nome, Votos, Descrição) values ("
            + "\"" + nome + "\","
            + "\"" + votos + "\","
            + "\"" + descricao + "\""
            + ")";

//Montar SQL

    MySQL bancoDeDados = new MySQL();
    boolean bool = bancoDeDados.executaInsert(sql);

//Redirecionar

        //out.print(sql);

    String redirectURL = "../CadastroArtista.jsp";
    response.sendRedirect(redirectURL);


%>