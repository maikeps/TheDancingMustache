<%@page import="java.util.ArrayList"%>
<%@page import="DAO.MusicaDAO"%>
<%@page import="model.Musica"%>
<%@page import="util.ConjuntoResultados"%>
<%@page import="util.MySQL"%>
<%
//Pegar os dados
    String pesquisa = request.getParameter("pesquisa");
    String sql = "";

    
                Musica a = MusicaDAO.getArtista(id);
            out.print("<h1><center>" + a.getNome() + "</center></h1>");
            out.print("<h5>" + a.getVotos() + " Votos</h5>");

            ArrayList<Musica> list = MusicaDAO.getListaMusicasPorArtista(a.getNome());
            
            for (Musica m : list) {
                out.print("<li><a href=\"/TheDancingMustache/PgMusica.jsp?id=" + m.getId() + "\">" + m.getTitulo() + "</a></li>");
                }
                                 
    if (pesquisa != "") {
        sql = "select * from musica where Titulo like \"%"+pesquisa+"%\"";
                

//Montar SQL
        
        MySQL bancoDeDados = new MySQL();
        ConjuntoResultados linhas = bancoDeDados.executaSelect(sql);

//Redirecionar

        String redirectURL = "CadastroConcluido.jsp";
        response.sendRedirect(redirectURL);
    } else {
        String redirectURL = "/TheDancingMustache/action/CadastroErrado.jsp";
        response.sendRedirect(redirectURL);
    }

%>