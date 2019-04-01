<%-- 
    Document   : excluir
    Created on : 31/03/2019, 12:25:18
    Author     : gabri
--%>

<%@page import="bd.BDF"%>
<%@page import="bd.Fornecedor"%>
<%@page import="bd.Fornecedor"%>
<%@page import="bd.BDC"%>
<%@page import="bd.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir fornecedor</title>
    </head>
    <body>
        <% int id = Integer.parseInt(request.getParameter("id"));%>
        <% Fornecedor f = BDF.getFornecedoresList().get(id);%>
        
        <h4>Remoção do Fornecedor</h4>
        <h4>ID: <%= id%> </h4>
        <h4>Nome: <%= f.getNome() %></h4>
        <h4>Razão Social: <%= f.getRazao() %></h4>
        <h4>CNPJ: <%= f.getCnpj() %></h4>
        <h4>E-mail: <%= f.getEmail() %></h4>
        <h4>Telefone: <%= f.getTelefone() %></h4>
        <h4>Endereço: <%= f.getEndereco() %></h4>
        
        <form action="listafornecedor.jsp">
            <h2>Tem certeza que deseja excluir esse cliente?</h2>
            <input type="submit" name="excluirf" value="Sim">
            <input type="submit" name="excluirf" value="Não">
            <input type="hidden" name="id" value="<%= id%>">
    
        </form>
  
    </body>
</html>
