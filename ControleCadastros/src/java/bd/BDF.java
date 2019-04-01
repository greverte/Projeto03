
package bd;

/**
 *
 * @author mirel
 */
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.util.ArrayList;

public class BDF {
    private static ArrayList<Fornecedor> fornecedoresList;
    public static ArrayList<Fornecedor> getFornecedoresList(){
    
    if(fornecedoresList == null){
    fornecedoresList = new ArrayList<>();
    
    Fornecedor f1 = new Fornecedor();
    
    f1.setNome ("Gabriel Reverte");
    f1.setRazao("Sla");
    f1.setCnpj ("20.365.41/0001-91");
    f1.setEmail ("gabriel.reverte@fatec.com");
    f1.setTelefone("55 13 999887766");
    f1.setEndereco ("AV:Presidente Kennedy 777");
    fornecedoresList.add(f1);
    Fornecedor f2 = new Fornecedor();
    
    f2.setNome ("Mirelle Gushimoto");
    f2.setRazao("Mirelle Gushomoto Razao Social");
    f2.setCnpj ("20.365.41/0001-91");
    f2.setEmail ("mirelle.gushimoto@fatec.com");
    f2.setTelefone ("55 13 911223344");
    f2.setEndereco ("AV: Presidente Kennedy 666");
    fornecedoresList.add(f2);
    }
    return fornecedoresList;
   
}
}
