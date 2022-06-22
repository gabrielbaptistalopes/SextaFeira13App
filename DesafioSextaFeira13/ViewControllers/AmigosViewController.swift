//
//  AmigosViewController.swift
//  DesafioSextaFeira13
//
//  Created by Gabriel Lopes on 15/05/22.
//

import UIKit

class AmigosViewController: UIViewController {

    @IBOutlet weak var amigosTableView: UITableView!
    
    var usuarios: [Usuario] = RelacionamentoAmigos().usuarios
    var usuarioSelecionado: Usuario?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        amigosTableView.dataSource = self
        amigosTableView.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detalheAmigosVC = segue.destination as? DetalheAmigoViewController {
            detalheAmigosVC.filmesAmigosVC = usuarioSelecionado
        }
    }
}

extension AmigosViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usuarios.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        if let cell = tableView.dequeueReusableCell(withIdentifier: "amigoCell") as? AmigosTableViewCell {
            cell.configuraAmigosVC(nome: usuarios[row].nome, poster: usuarios[row].poster ?? UIImage(), quantidade: String(usuarios[row].listaDeAmigos.count))
            return cell
        }
       return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Amigos que assistem os filmes:"
    }
    
}

extension AmigosViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        usuarioSelecionado = usuarios[indexPath.row]
        
        performSegue(withIdentifier: "transicaoTap", sender: self)
    }
}
