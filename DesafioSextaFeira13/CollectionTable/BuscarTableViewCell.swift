//
//  BuscarTableViewCell.swift
//  DesafioSextaFeira13
//
//  Created by Gabriel Lopes on 17/05/22.
//

import UIKit

class BuscarTableViewCell: UITableViewCell {

    @IBOutlet weak var posterBuscarUIImage: UIImageView!
    @IBOutlet weak var tituloLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configuraTableView(poster: UIImage, titulo: String) {
        posterBuscarUIImage.image = poster
        tituloLabel.text = titulo
    }
    
}
