//
//  DetalheAmigoViewController.swift
//  DesafioSextaFeira13
//
//  Created by Gabriel Lopes on 18/05/22.
//

import UIKit

class DetalheAmigoViewController: UIViewController {
    
    @IBOutlet weak var detalheAmigoCollectionView: UICollectionView!
    
    var filmesAmigosVC: Usuario?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detalheAmigoCollectionView.dataSource = self
    }

}

extension DetalheAmigoViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filmesAmigosVC?.listaDeAmigos.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let  cell = collectionView.dequeueReusableCell(withReuseIdentifier: "amigoFilmeCell", for: indexPath) as? DetalheAmigoCollectionViewCell {
            cell.configuraDetalheAmigo(poster: (filmesAmigosVC?.listaDeAmigos[indexPath.item].poster)!, nome: (filmesAmigosVC?.listaDeAmigos[indexPath.item].nome)!)
            return cell
        }
        return UICollectionViewCell()
    }
    
    
}
