<%-- 
    Document   : alterar
    Created on : 31/03/2019, 12:25:10
    Author     : gabri
--%>


<%@page import="bd.BDF"%>
<%@page import="bd.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Fornecedor</title>
    </head>
    <body>
        <% int id = Integer.parseInt(request.getParameter("id"));%>
        <% Fornecedor f = BDF.getFornecedoresList().get(id);%>
        
        <h2>Alterar Dados dos Fornecedores</h2>
        <h4>ID: <b><%= id %></b></h4>
        <form action="listafornecedor.jsp">
            Nome: <br/><input type="text" name="nome" value="<%=f.getNome()%>"/>
            <br/><br/>Razão Social: <br/><input type="text" name="razao" value="<%=f.getRazao()%>"/>
            <br/><br/>CNPJ: <br/><input type="text" name="cnpj" value="<%=f.getCnpj()%>"/>
            <br/><br/>E-mail: <br/><input type="text" name="email" value="<%=f.getEmail()%>"/>
            <br/><br/>Telefone: <br/><input type="text" name="telefone" value="<%=f.getTelefone()%>"/>
            <br/><br/>Endereço: <br/><input type="text" name="endereco" value="<%=f.getEndereco()%>"/>
            <br/>
            <hr>
            <h2>Tem certeza que deseja alterar os dados desse fornecedor?</h2>
            <input type="submit" name="alterarf" value="Sim">
            <input type="submit" name="alterarf" value="Não">
            <input type="hidden" name="id" value="<%= id %>">
  
        </form>
    </body>
</html>
