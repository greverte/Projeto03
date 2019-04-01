<%-- 
    Document   : excluir
    Created on : 31/03/2019, 12:25:18
    Author     : gabri
--%>

<%@page import="bd.BDC"%>
<%@page import="bd.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir cliente</title>
    </head>
    <body>
        <% int id = Integer.parseInt(request.getParameter("id"));%>
        <% Cliente c = BDC.getClientesList().get(id);%>
        
        <h3>Remoção de Cliente</h3>
        <h4>ID: <%= id%> </h4>
        <h4>Nome: <%= c.getNome() %></h4>
        <h4>CPF: <%= c.getCpf() %></h4>
        <h4>RG: <%= c.getRg() %></h4>
        <h4>E-mail: <%= c.getEmail() %></h4>
        <h4>Telefone: <%= c.getTelefone() %></h4>
        <h4>Endereço: <%= c.getEndereco() %></h4>
        
        <form action="listaclientes.jsp">
            <h2>Tem certeza que deseja excluir esse cliente?</h2>
            <input type="submit" name="excluir" value="Sim">
            <input type="submit" name="excluir" value="Não">
            <input type="hidden" name="id" value="<%= id%>">
    
        </form>
  
    </body>
</html>
