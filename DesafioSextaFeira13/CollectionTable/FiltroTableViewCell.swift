//
//  FiltroTableViewCell.swift
//  DesafioSextaFeira13
//
//  Created by Gabriel Lopes on 18/05/22.
//

import UIKit

class FiltroTableViewCell: UITableViewCell {

    @IBOutlet weak var posterFiltroUIImage: UIImageView!
    @IBOutlet weak var nomeFiltroLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

    func configuraCelulaFiltro(poster: UIImage, nome: String) {
        posterFiltroUIImage.image = poster
        nomeFiltroLabel.text = nome
    }
    
}
