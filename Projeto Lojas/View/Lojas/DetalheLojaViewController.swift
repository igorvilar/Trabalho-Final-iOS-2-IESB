//
//  DetalheLojaViewController.swift
//  Projeto Lojas
//
//  Created by Renê Xavier on 27/09/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class LojaDetalheViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    var items: [String] = ["Swift1", "Swift2", "Swift3", "Swift1", "Swift2", "Swift3"]
    
    @IBOutlet weak var imagemProduto: UIImageView!
    @IBOutlet weak var tituloProduto: UILabel!
    @IBOutlet weak var descricaoProduto: UILabel!
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "celulaIdentifier")
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "celulaIdentifier")! as UITableViewCell
        
        cell.textLabel?.text = self.items[indexPath.row]
        return cell
    }

}
