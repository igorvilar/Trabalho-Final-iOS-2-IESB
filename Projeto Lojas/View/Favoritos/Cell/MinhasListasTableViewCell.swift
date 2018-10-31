//
//  MinhasListasTableViewCell.swift
//  Projeto Lojas
//
//  Created by Igor Vilar on 28/10/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class MinhasListasTableViewCell: UITableViewCell {

    @IBOutlet weak var nomeLojaLabel: UILabel!
    @IBOutlet weak var quantidadeLojasLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
