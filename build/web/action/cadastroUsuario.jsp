<%@page import="util.ConjuntoResultados"%>
<%@page import="util.MySQL"%>
<%
//Pegar os dados
    String login = request.getParameter("login");
    String senha = request.getParameter("senha");
    String senha2 = request.getParameter("senha2");
    String email = request.getParameter("email");
    String email2 = request.getParameter("email2");
    String sql = "";

    if (senha.equals(senha2) && email.equals(email2) && senha != "" && email != "") {
        sql = "insert into usuario (Login, Senha, Email) values ("
                + "\"" + login + "\","
                + "\"" + senha + "\","
                + "\"" + email + "\""
                + ")";

//Montar SQL
        
        MySQL bancoDeDados = new MySQL();
        boolean bool = bancoDeDados.executaInsert(sql);

//Redirecionar

        String redirectURL = "CadastroConcluido.jsp";
        response.sendRedirect(redirectURL);
    } else {
        String redirectURL = "/TheDancingMustache/action/CadastroErrado.jsp";
        response.sendRedirect(redirectURL);
    }

%>