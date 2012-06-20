<%@page import="util.MySQL"%>
<%
String nome = request.getParameter("nome");
String comentario = request.getParameter("comentario");
String idMusica = request.getParameter("idMusica");

String sql = "insert into comentario ";
sql += "(nome, comentario, id_Musica) ";
sql += "values (";
    sql += "\""+nome+"\",";   
    sql += "\""+comentario+"\",";    
    sql += "\""+idMusica+"\"";
sql += ")";

//Teste
//out.print(sql);

MySQL mysql = new MySQL();
String linkVoltar = "../PgMusica.jsp?id="+idMusica;
if(mysql.executaInsert(sql)){
       
    response.sendRedirect(linkVoltar);
    
} else {
    
    out.print("Erro: por favor, tente novamente<br />");
    out.print("<a href=\""+linkVoltar+"\">Voltar</a>");

}
%>
