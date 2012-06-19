<%@page import="util.Util"%>
<%
Util.vericaLogin( session, response );
%>
<div class="coluna-centro well corpo" >
    <%
        out.print("<h1><center>"+request.getParameter("titulo")+"</center></h1>");
    %>
    <br/>

    <div>
        
    </div>

</div>