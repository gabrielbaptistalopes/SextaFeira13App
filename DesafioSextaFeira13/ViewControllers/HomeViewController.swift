//
//  HomeViewController.swift
//  DesafioSextaFeira13
//
//  Created by Gabriel Lopes on 15/05/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var exibirFilmesCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        exibirFilmesCollectionView.dataSource = self
        exibirFilmesCollectionView.delegate = self
    }
    
    
}


extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return RelacionamentoAmigos().filmes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let row = indexPath.row
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "filmesCell", for: indexPath) as? FilmesCollectionViewCell {
            let filmes = RelacionamentoAmigos().filmes[row]
            
            cell.configuraFilme(poster: filmes.posterFilme, nome: filmes.nomeFilme)
            
            return cell
            
        }
        
        return UICollectionViewCell()
        
    }
        
}


extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 300)
    }
}
    
