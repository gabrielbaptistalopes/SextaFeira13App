//
//  FiltroViewController.swift
//  DesafioSextaFeira13
//
//  Created by Gabriel Lopes on 15/05/22.
//

import UIKit

class FiltroViewController: UIViewController {

    @IBOutlet weak var filtroTableView: UITableView!
    @IBOutlet weak var adultoInfantilSegmentedControl: UISegmentedControl!
    
    
    var listaParaTableView: [Filme] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filtroTableView.dataSource = self
        
        listaParaTableView = filmesAdultos
    }
    
    var filmesAdultos: [Filme] = RelacionamentoAmigos().filmes.filter { filmes in
        filmes.classificacao == .Adulto
    }
    var filmesInfantis: [Filme] = RelacionamentoAmigos().filmes.filter { filmes in
        filmes.classificacao == .Infantil
    }
    
    
    @IBAction func escolhapublicoSegmetedControl(_ sender: Any) {
        let index = adultoInfantilSegmentedControl.selectedSegmentIndex
        
        switch index {
        case 0:
            listaParaTableView = filmesAdultos
            filtroTableView.reloadData()
        case 1:
            listaParaTableView = filmesInfantis
            filtroTableView.reloadData()
        default:
            break
        }
        
    }
    
    
}

extension FiltroViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listaParaTableView.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        
        if indexPath.section == 0 {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "filtroCell") as? FiltroTableViewCell {
                cell.configuraCelulaFiltro(poster: listaParaTableView[row].posterFilme, nome: listaParaTableView[row].nomeFilme)
                return cell
            }
        }
        
        if indexPath.section == 1 {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "filtroCell") as? FiltroTableViewCell {
                cell.configuraCelulaFiltro(poster: filmesInfantis[row].posterFilme, nome: filmesInfantis[row].nomeFilme)
                return cell
            }
        }
        return UITableViewCell()
    }
    
    
}


/*
 import UIKit

 class FiltroViewController: UIViewController, UITableViewDataSource {
     // MARK: IBOutlets

     @IBOutlet weak var tableView: UITableView!
     @IBOutlet weak var segmentedControl: UISegmentedControl!

     // MARK: Variaveis

     private var datasource: [Filme] = []
         
     // MARK: Funcoes de ciclo de vida (Lifecycle)

     override func viewDidLoad() {
         super.viewDidLoad()
         tableView.dataSource = self
         datasource = RelacionamentoAmigos().filmes.filter { $0.classificacao == .Adulto }
     }

     // MARK: IBActions (Selectors)

     @IBAction func didToggleSegmentedControl(_ sender: Any) {
         switch segmentedControl.selectedSegmentIndex {
         case 0:
             datasource = RelacionamentoAmigos().filmes.filter { $0.classificacao == .Adulto }
         case 1:
             datasource = RelacionamentoAmigos().filmes.filter { $0.classificacao == .Infantil }
         default:
             break
         }
         
         tableView.reloadData()
     }
     
     // MARK: UITableViewDataSource

     func tableView(_: UITableView, numberOfRowsInSection: Int) -> Int {
         datasource.count
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         if let cell = tableView.dequeueReusableCell(withIdentifier: "filtroCell") as? FiltroTableViewCell {
             cell.configuraCelulaFiltro(
                 poster: datasource[indexPath.row].posterFilme,
                 nome: datasource[indexPath.row].nomeFilme
             )

             return cell
         }
         
         return UITableViewCell()
     }
 }

 */

// MOSTRAR TREINOS EM UMA TABLE VIEW E AO CLICAR NUM TREINO, MOSTRAR UM MODAL COM OS EXERCICIOS DAQUELE TREINO

/*
struct Exercicio {
    let nome: String
    let imagem: URL?
    let observacoes: String
}

struct Treino {
    let data: Date
    let nome: String
    let descricao: String
    let exercicios: [Exercicio]
}

let treinoExemplo = Treino(
    data: Date(),
    nome: "Treino de alta intensidade",
    descricao: "No treino de alta intensidade, o objetivo é suar ate morrer.",
    exercicios: [
        .init(
            nome: "Leg Press",
            imagem: URL(string: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.naturalfitness.com.br%2Faparelho-de-academia-leg-press-45-3-polegadas&psig=AOvVaw0AEHhwbkLe4ZRWGd28rCOa&ust=1652901542748000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCOCD_5yg5_cCFQAAAAAdAAAAABAG"),
            observacoes: "Sem observacoes."
        ),
        .init(
            nome: "Rosca direta",
            imagem: URL(string: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.uol.com.br%2Fvivabem%2Fnoticias%2Fredacao%2F2019%2F03%2F27%2Frosca-direta-aprenda-a-fazer-o-exercicio-que-fortalece-e-define-o-biceps.htm&psig=AOvVaw0F-3sUOo56D57z6jZJEFdH&ust=1652901652615000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCJCX_tCg5_cCFQAAAAAdAAAAABAK"),
            observacoes: "Alternar com esteira de 10 em 10 minutos"
        )
    ]
)

//if let url = url {
//    let data = try? Data(contentsOf: url)
//    imageView.image = UIImage(data: Data)
//}
*/
