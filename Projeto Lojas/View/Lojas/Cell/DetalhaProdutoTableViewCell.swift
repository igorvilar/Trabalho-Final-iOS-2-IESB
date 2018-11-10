//
//  DetalhaProdutoTableViewCell.swift
//  Projeto Lojas
//
//  Created by Savio Silva on 09/11/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class DetalhaProdutoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imagemProduto: UIImageView!
    @IBOutlet weak var tituloProduto: UILabel!
    @IBOutlet weak var descricaoProduto: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
