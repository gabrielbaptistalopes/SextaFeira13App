//
//  DetalheDoFilmeViewController.swift
//  DesafioSextaFeira13
//
//  Created by Gabriel Lopes on 15/05/22.
//

import UIKit

class DetalheDoFilmeViewController: UIViewController {
   
    @IBOutlet weak var posterUIImage: UIImageView!
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var anoLabel: UILabel!
    @IBOutlet weak var descricaoLabel: UILabel!
    @IBOutlet weak var amigosQueGostamLabel: UILabel!
    
    
    var filme: Filme?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurarDetalhe(poster: filme?.posterFilme, nome: filme?.nomeFilme, ano: filme?.anoDoFilme, descricao: filme?.descricaoFilme)
        
    }
 
    func configurarDetalhe(poster: UIImage?, nome: String?, ano: Int?, descricao: String?) {
        posterUIImage.image = poster
        nomeLabel.text = nome
        if let ano = ano {
        anoLabel.text = "\(ano)"
        }
        descricaoLabel.text = descricao
        
        if let filme = filme {
            let usuarios = RelacionamentoAmigos().buscarAmigosQueCurtam(filme: filme)
             var amigos: String = "Amigos que gostam: "
             
             for amigo in usuarios {
                 amigos += "\(amigo.nome), "
             }
             amigosQueGostamLabel.text = amigos
        }
       
    }
    
}
