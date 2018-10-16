//
//  BuscaLojasController.swift
//  Projeto Lojas
//
//  Created by Renê Xavier on 20/09/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//


class BuscaLojasController {
    var todasAsLojas: [Loja] = []
    var lojasFiltradas: [Loja] = []
    
    init() {
        todasAsLojas = [
            Loja("Casas Bahia", "header-bahianinho"),
            Loja("Ricardo Electro", "header-ricardo"),
            Loja("Juninho System", "logo"),
            Loja("Americanas", "liked")
        ]
        
        lojasFiltradas = todasAsLojas
    }
    
    func quantidadeDeLojas() -> Int {
        return lojasFiltradas.count
    }
    
    func nomeDaLoja(_ index: Int) -> String {
        return lojasFiltradas[index].nome
    }

    func nomeLogoLoja(_ index: Int) -> String {
        return lojasFiltradas[index].logo
    }
    
    func buscarLojas(comNome searchText: String) {
        if searchText.isEmpty {
            lojasFiltradas = todasAsLojas
        } else {
            lojasFiltradas = todasAsLojas.filter { $0.nome.lowercased().contains(searchText.lowercased()) }
        }
    }
}
