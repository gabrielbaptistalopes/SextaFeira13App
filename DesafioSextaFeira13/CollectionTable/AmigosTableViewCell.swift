//
//  AmigosTableViewCell.swift
//  DesafioSextaFeira13
//
//  Created by Gabriel Lopes on 16/05/22.
//

import UIKit

class AmigosTableViewCell: UITableViewCell {

    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var posterUIImage: UIImageView!
    @IBOutlet weak var quantidadeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configuraAmigosVC(nome: String, poster: UIImage, quantidade: String) {
        nomeLabel.text = nome
        posterUIImage.image = poster
        quantidadeLabel.text = "Quantidade de amigos: \(quantidade)"
    }
    
    
}
