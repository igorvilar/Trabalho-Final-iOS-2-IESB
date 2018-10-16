//
//  BuscaLojasTableViewController.swift
//  Projeto Lojas
//
//  Created by Renê Xavier on 13/09/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class BuscaLojasTableViewController: UITableViewController, UISearchBarDelegate {
    
    @IBOutlet weak var searchBar: UISearchBar!
    let controller = BuscaLojasController()
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
    }
    
    // MARK: - SearchBar Delegate
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        controller.buscarLojas(comNome: searchText)
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controller.quantidadeDeLojas()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "lojasCellIdentifier", for: indexPath)
        if let cellLoja = cell as? LojaTableViewCell {
            cellLoja.nomeLoja.text = controller.nomeDaLoja(indexPath.row)
            cellLoja.logoLoja.image = UIImage(named: controller.nomeLogoLoja(indexPath.row))
            cellLoja.likeButton.imageView?.image = UIImage(named: "like")
            
            return cellLoja
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
}
