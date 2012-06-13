<%@page import="util.ConjuntoResultados"%>
<%@page import="util.MySQL"%>
<%
//Pegar os dados
    String titulo = request.getParameter("titulo");
    String autor = request.getParameter("autor");
    String visualizacoes = request.getParameter("visualizacoes");
    String categoria = request.getParameter("categoria");
    String letra = request.getParameter("letra");
    String sql = "";
    
    //int visualizacoesInt = Integer.getInteger(visualizacoes);

        sql = "insert into musica (Titulo, Autor, Visualizações, Categoria, Letra) values ("
                + "\"" + titulo + "\","
                + "\"" + autor + "\","
                + "\"" + visualizacoes + "\","
                
                + "\"" + categoria + "\","
                + "\"" + letra + "\""
                + ")";

//Montar SQL
        
        MySQL bancoDeDados = new MySQL();
        boolean bool = bancoDeDados.executaInsert(sql);

//Redirecionar

        //out.print(sql);
        
        String redirectURL = "../CadastroMusica.jsp";
        response.sendRedirect(redirectURL);
       

%>