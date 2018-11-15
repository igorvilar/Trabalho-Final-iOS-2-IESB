//
//  JogoTableViewCell.swift
//  Projeto Lojas
//
//  Created by Igor Vilar on 14/11/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class JogoTableViewCell: UITableViewCell {

    @IBOutlet weak var nomeLojaLabel: UILabel!
    @IBOutlet weak var logoLojaImagem: UIImageView!
    @IBOutlet weak var videogameImagem: UIImageView!
    @IBOutlet weak var computadorImagem: UIImageView!
    @IBOutlet weak var likeImagem: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
