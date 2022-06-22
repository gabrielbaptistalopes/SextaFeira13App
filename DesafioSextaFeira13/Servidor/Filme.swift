//
//  Filme.swift
//  DesafioSextaFeira13
//
//  Created by Marcelo Falcao Costa Filho on 15/05/22.
//

import Foundation
import UIKit


class Filme {
    
    enum Classificao: Int {
        case Infantil = 0
        case Adulto = 1
    }
    
    let posterFilme: UIImage
    let nomeFilme: String
    let anoDoFilme: Int
    let descricaoFilme: String
    let classificacao: Classificao
    
    init(posterFilme: UIImage, nomeFilme: String, anoDoFilme: Int, descricaoFilme: String, classificacao: Classificao) {
        self.posterFilme = posterFilme
        self.nomeFilme = nomeFilme
        self.anoDoFilme = anoDoFilme
        self.descricaoFilme = descricaoFilme
        self.classificacao = classificacao
    }
    
    
}


