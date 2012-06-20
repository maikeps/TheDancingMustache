<%@page import="model.Usuario"%>
<%@page import="DAO.UsuarioDAO"%>
<%
//Pega dados de entrada do formulário
String usuario = request.getParameter("usuario");
String senha = request.getParameter("senha");

//Verifica se os dados batem com a senha

Usuario user = UsuarioDAO.fazLogin(usuario, senha);

if(user.getLogin().equals(usuario) && user.getSenha().equals(senha)){
    
    if (user.getLogin().equals("admin") && user.getSenha().equals("54321")) {
            session.setAttribute("usuario", usuario);
            session.setAttribute("senha", senha);
            
            response.sendRedirect("../admin/indexAdmin.jsp");
            
        } else{
            session.setAttribute("usuario", usuario);
            session.setAttribute("senha", senha);
            
            response.sendRedirect("../index.jsp");
  
        }
    
   
}

//if(usuario.equals("admin") && senha.equals("54321")){
    
    //Se chegou aqui é porque o login deu certo.
    //Então, guarda as variáveis na sessão e redireciona para o index do ADM
  //  session.setAttribute("usuario", usuario);
  //  session.setAttribute("senha", senha);
    //e redireciona para o index
   // response.sendRedirect("../index.jsp");

//}
else {

    //Dados errados. Grava mensagem de erro na sessão para ser exibida no formulário
    session.setAttribute("error", "Desculpe, não encontramos nenhum usuário com os dados fornecidos");
    //redireciona para o login
    response.sendRedirect("../login.jsp");
    return;
    
}
%>