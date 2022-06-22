//
//  BuscarViewController.swift
//  DesafioSextaFeira13
//
//  Created by Gabriel Lopes on 15/05/22.
//

import UIKit

class BuscarViewController: UIViewController {
    
    @IBOutlet weak var buscarFilmeTextField: UITextField!
    @IBOutlet weak var buscarTableView: UITableView!
    
    var filmesFiltrados: [Filme] = []
    var filmeSelecionado: Filme?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buscarTableView.dataSource = self
        buscarTableView.delegate = self
    }
    
    @IBAction func buscarBotao(_ sender: Any) {
        filmesFiltrados = RelacionamentoAmigos().filmes.filter { filme in
            filme.nomeFilme.lowercased().contains(buscarFilmeTextField.text!.lowercased())
            
            
        }
        
        buscarTableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detalheDoFilmeVC = segue.destination as? DetalheDoFilmeViewController {
            detalheDoFilmeVC.filme = filmeSelecionado
        }
    }
    
}

extension BuscarViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmesFiltrados.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "buscarCell") as? BuscarTableViewCell {
            let filmes = filmesFiltrados[row]
            
            cell.configuraTableView(poster: filmes.posterFilme, titulo: filmes.nomeFilme)
            return cell
        }
        
        return UITableViewCell()
    }
    
}

extension BuscarViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        150.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        filmeSelecionado = filmesFiltrados[indexPath.row]
        
        performSegue(withIdentifier: "openDetail", sender: self)
    }
}
