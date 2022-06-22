//
//  RelacionamentoAmigos.swift
//  DesafioSextaFeira13
//
//  Created by Marcelo Falcao Costa Filho on 16/05/22.
//



import UIKit

class RelacionamentoAmigos {
    
    let filmes: [Filme] = [
        Filme(posterFilme: UIImage(named: "halloween") ?? .init(), nomeFilme: "Halloween", anoDoFilme: 2020, descricaoFilme: "Aterrorizante", classificacao: .Infantil),
        Filme(posterFilme: UIImage(named: "panico") ?? .init(), nomeFilme: "Pânico", anoDoFilme: 2020, descricaoFilme: "Aterrorizante", classificacao: .Adulto),
        Filme(posterFilme: UIImage(named: "alien") ?? .init(), nomeFilme: "Alien", anoDoFilme: 2020, descricaoFilme: "Aterrorizante", classificacao: .Infantil),
        Filme(posterFilme: UIImage(named: "a bruxa blair") ?? .init(), nomeFilme: "A Bruxa Blair", anoDoFilme: 2020, descricaoFilme: "Aterrorizante", classificacao: .Adulto),
        Filme(posterFilme: UIImage(named: "hora do pesadelo") ?? .init(), nomeFilme: "Hora do Pesadelo", anoDoFilme: 2020, descricaoFilme: "Aterrorizante", classificacao: .Infantil),
        Filme(posterFilme: UIImage(named: "a mosca") ?? .init(), nomeFilme: "A Mosca", anoDoFilme: 2020, descricaoFilme: "Aterrorizante", classificacao: .Adulto),
        Filme(posterFilme: UIImage(named: "silencio dos inocentes") ?? .init(), nomeFilme: "Silencio dos Inocentes", anoDoFilme: 2020, descricaoFilme: "Aterrorizante", classificacao: .Infantil),
        Filme(posterFilme: UIImage(named: "o despertar dos mortos") ?? .init(), nomeFilme: "O Despertar dos Mortos", anoDoFilme: 2020, descricaoFilme: "Aterrorizante", classificacao: .Adulto),
        Filme(posterFilme: UIImage(named: "sexta feira 13") ?? .init(), nomeFilme: "Sexta-feira 13", anoDoFilme: 2020, descricaoFilme: "Aterrorizante", classificacao: .Infantil),
        Filme(posterFilme: UIImage(named: "Predador") ?? .init(), nomeFilme: "Predador", anoDoFilme: 2020, descricaoFilme: "Aterrorizante", classificacao: .Adulto),
        Filme(posterFilme: UIImage(named: "o brinquedo assassino") ?? .init(), nomeFilme: "O Brinquedo Assassino", anoDoFilme: 2020, descricaoFilme: "Aterrorizante", classificacao: .Adulto),
        Filme(posterFilme: UIImage(named: "o iluminado") ?? .init(), nomeFilme: "O Iluminado", anoDoFilme: 2020, descricaoFilme: "Aterrorizante", classificacao: .Adulto),
        Filme(posterFilme: UIImage(named: "jogos mortais") ?? .init(), nomeFilme: "Jogos Mortais", anoDoFilme: 2020, descricaoFilme: "Aterrorizante", classificacao: .Infantil),
        Filme(posterFilme: UIImage(named: "o babadook") ?? .init(), nomeFilme: "O Babadook", anoDoFilme: 2020, descricaoFilme: "Aterrorizante", classificacao: .Adulto),
        Filme(posterFilme: UIImage(named: "invocacao do mal") ?? .init(), nomeFilme: "Invocação do Mal", anoDoFilme: 2020, descricaoFilme: "Aterrorizante", classificacao: .Infantil),
        Filme(posterFilme: UIImage(named: "tubarao") ?? .init(), nomeFilme: "Tubarão", anoDoFilme: 2020, descricaoFilme: "Aterrorizante", classificacao: .Adulto),
        Filme(posterFilme: UIImage(named: "hereditario") ?? .init(), nomeFilme: "Hereditário", anoDoFilme: 2020, descricaoFilme: "Aterrorizante", classificacao: .Adulto),
        Filme(posterFilme: UIImage(named: "psicose") ?? .init(), nomeFilme: "Psicose", anoDoFilme: 2020, descricaoFilme: "Aterrorizante", classificacao: .Adulto),
        Filme(posterFilme: UIImage(named: "arrasta-me para o inferno") ?? .init(), nomeFilme: "Arrasta-me para o Inferno", anoDoFilme: 2020, descricaoFilme: "Aterrorizante", classificacao: .Adulto),
        Filme(posterFilme: UIImage(named: "sexto sentido") ?? .init(), nomeFilme: "O Sexto Sentido", anoDoFilme: 2020, descricaoFilme: "Aterrorizante", classificacao: .Adulto),
        Filme(posterFilme: UIImage(named: "a bruxa") ?? .init(), nomeFilme: "A bruxa", anoDoFilme: 2020, descricaoFilme: "Aterrorizante", classificacao: .Adulto),
        Filme(posterFilme: UIImage(named: "o massacre da serra eletrica") ?? .init(), nomeFilme: "O Massacre da Serra Elétrica", anoDoFilme: 2020, descricaoFilme: "Aterrorizante", classificacao: .Adulto),
        Filme(posterFilme: UIImage(named: "exorcista") ?? .init(), nomeFilme: "Exorcista", anoDoFilme: 2020, descricaoFilme: "Aterrorizante", classificacao: .Adulto),
        Filme(posterFilme: UIImage(named: "madrugada dos mortos") ?? .init(), nomeFilme: "Madrugada dos Mortos", anoDoFilme: 2020, descricaoFilme: "Aterrorizante", classificacao: .Adulto)
          ]
    
    var usuarios: [Usuario] = []
    
    var usuarioLogado: Usuario = Usuario(nome: "Marcelo", poster: UIImage(named: "Marcelo"))
    
    private func adicionarUsuario() {
    
        let usuarioDois = Usuario(nome: "Gabriel", poster: UIImage(named: "Gabriel"))
        let usuarioTres = Usuario(nome: "Policastro", poster: UIImage(named: "Camila"))
        
        if let filme = buscarFilme(nome: "Exorcista") {
        usuarioDois.listaDeFilmesFavoritos.append(filme)
        }
        
        usuarioLogado.listaDeAmigos.append(usuarioDois)
        usuarioLogado.listaDeAmigos.append(usuarioTres)
        usuarioDois.listaDeAmigos.append(usuarioTres)
        usuarioTres.listaDeAmigos.append(usuarioLogado)
        
        usuarios.append(usuarioLogado)
        usuarios.append(usuarioDois)
        usuarios.append(usuarioTres)
        
    }
    
    init() {
        adicionarUsuario()
    }
    
    func buscarFilme(nome: String) -> Filme? {
       return filmes.first { filme in
           filme.nomeFilme.lowercased().contains(nome.lowercased())
        }
    }
    
    func buscarAmigosQueCurtam(filme: Filme) -> [Usuario] {
        return usuarioLogado.listaDeAmigos.filter { usuario in
            usuario.listaDeFilmesFavoritos.contains { filmeFavorito in
                filme.nomeFilme == filmeFavorito.nomeFilme
            }
        }
    }
}
