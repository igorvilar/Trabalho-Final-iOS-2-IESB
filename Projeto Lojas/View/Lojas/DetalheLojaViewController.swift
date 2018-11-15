//
//  DetalheLojaViewController.swift
//  Projeto Lojas
//
//  Created by Renê Xavier on 27/09/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class LojaDetalheViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    @IBOutlet var tableView: UITableView!
    let controller = BuscaLojasController()
    var loja: Array<Loja> = []
    var produtos: Array<Produto> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "celulaIdentifier")
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
        
        // Busco a loja pelo nome
        loja = controller.buscarLojaPorNome("Ricardo Eletro")
        produtos = Array(loja[0].produtos)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return produtos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "celulaIdentifier", for: indexPath)
        if let cellLoja = cell as? DetalhaProdutoTableViewCell {
            cellLoja.tituloProduto.text = produtos[indexPath.row].titulo
            cellLoja.imagemProduto.image = UIImage(named: produtos[indexPath.row].imagem)
            cellLoja.descricaoProduto.text = produtos[indexPath.row].descricao
            
            return cellLoja
        }
        
        return cell
    }

}
