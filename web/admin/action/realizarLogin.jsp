<%@page import="model.Usuario"%>
<%@page import="DAO.UsuarioDAO"%>
<%
//Pega dados de entrada do formul�rio
    String usuario = request.getParameter("usuario");
    String senha = request.getParameter("senha");



    Usuario user = UsuarioDAO.fazLogin(usuario, senha);

    if (user.getLogin().equals(usuario) && user.getSenha().equals(senha)) {

        //e redireciona para o index
//        response.sendRedirect("../index.jsp");

        if (user.getLogin().equals("admin") && user.getSenha().equals("54321")) {
            session.setAttribute("usuario", usuario);
            session.setAttribute("senha", senha);
            
            response.sendRedirect("../indexAdmin.jsp");
            
        } else{
            session.setAttribute("usuario", usuario);
            session.setAttribute("senha", senha);
            
            response.sendRedirect("../../index.jsp");
                    
                    
                    
                    
        }

    }

 

//Verifica se os dados batem com a senha

        //e redireciona para o index
 

   else {
        //Dados errados. Grava mensagem de erro na sess�o para ser exibida no formul�rio
         session.setAttribute("error", "Desculpe, n�o encontramos nenhum usu�rio com os dados fornecidos");
        //redireciona para o login
        response.sendRedirect("../login.jsp");
        return;
           }
%>