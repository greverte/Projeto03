<%@page import="bd.BDF"%>
<%@page import="bd.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (request.getParameter("adicionarf") != null){
        String nome = request.getParameter("nome");
        String razao = request.getParameter("razao");
        String cnpj = request.getParameter("cnpj");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        String endereco = request.getParameter("endereco");
        
        Fornecedor NovoFornecedor = new Fornecedor();
        NovoFornecedor.setNome(nome);
        NovoFornecedor.setRazao(razao);
        NovoFornecedor.setCnpj(cnpj);
        NovoFornecedor.setEmail(email);
        NovoFornecedor.setTelefone(telefone);
        NovoFornecedor.setEndereco(endereco);
        BDF.getFornecedoresList().add(NovoFornecedor);
        response.sendRedirect(request.getRequestURI());
    }
    else if (request.getParameter("excluirf")!= null){
        String resposta = request.getParameter("excluirf");
        if (resposta.equals("Sim")) {
            int id = Integer.parseInt(request.getParameter("id"));
            BDF.getFornecedoresList().remove(id);   
    }
    response.sendRedirect(request.getRequestURI());
    
    }
    
    else if (request.getParameter("alterarf")!=null){
        String resposta = request.getParameter("alterarf");
        if (resposta.equals("Sim")) {
            int id = Integer.parseInt(request.getParameter("id"));
            Fornecedor NovoFornecedor = new Fornecedor();
        NovoFornecedor.setNome(request.getParameter("nome"));
        NovoFornecedor.setRazao(request.getParameter("razao"));
        NovoFornecedor.setCnpj(request.getParameter("cnpj"));
        NovoFornecedor.setEmail(request.getParameter("email"));
        NovoFornecedor.setTelefone(request.getParameter("telefone"));
        NovoFornecedor.setEndereco(request.getParameter("endereco"));
         BDF.getFornecedoresList().set(id, NovoFornecedor);   
        }
        response.sendRedirect(request.getRequestURI());
    }

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fornecedor</title>
    </head>
    <body>
        
        <h2>Fornecedores</h2>
        <form action="adicionarf.jsp">
            <input type="submit" value="Adicionar">
            
        </form>
        <h3>Listagem</h3>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Razão Social</th>
                <th>CNPJ</th>
                <th>E-mail</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th>Comandos</th>
            </tr>
            <% for (Fornecedor f : BDF.getFornecedoresList()) {%>
            <tr>
                <% int id = BDF.getFornecedoresList().indexOf(f);%>
                
                <td> <%= id%></td>
                <td> <%= f.getNome() %></td>
                <td> <%= f.getRazao() %></td>
                <td><%= f.getCnpj() %></td>
                <td><%= f.getEmail() %></td>
                <td><%= f.getTelefone() %></td>
                <td><%= f.getEndereco() %></td>
                <td>
                    <a href="alterarf.jsp?id=<%=id%>">
                        <button>Alterar</button>
                </a>
                    <a href="excluirf.jsp?id=<%=id%>">
                        <button>Excluir</button>
                </a>
                </td>
                </tr>
                
                <%}%>
        </table>
        <br/>
        <br/>
        
        <a href="/ControleCadastros/home.jsp">Voltar</a>
    </body>
</html>
