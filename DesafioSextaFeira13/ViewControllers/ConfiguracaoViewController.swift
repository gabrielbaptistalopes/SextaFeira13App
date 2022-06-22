//
//  ConfiguracaoViewController.swift
//  DesafioSextaFeira13
//
//  Created by Gabriel Lopes on 15/05/22.
//

import UIKit

class ConfiguracaoViewController: UIViewController {
    
    @IBOutlet weak var sentimentoPikerView: UIPickerView!
    @IBOutlet weak var sentimentoLabel: UILabel!
    @IBOutlet weak var diaDatePicker: UIDatePicker!
    @IBOutlet weak var ultimoAcessoLabel: UILabel!
    @IBOutlet weak var proximoAcessoLabel: UILabel!
    
    let sentimento = ["Muito Triste", "Triste", "Normal", "Feliz", "Muito Feliz"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sentimentoPikerView.dataSource = self
        sentimentoPikerView.delegate = self
        
        
    }
    
    @IBAction func escolhaData(_ sender: Any) {
        let data = diaDatePicker.date
        let datenow = Date()
        let dateFormater = DateFormatter()
        
        dateFormater.dateStyle = .short
        let stringData = dateFormater.string(from: data)
        
        proximoAcessoLabel.text = "Seu próximo acesso será: \(stringData)"
        ultimoAcessoLabel.text = "Seu ultimo acesso foi: \(dateFormater.string(from: datenow))"
    }
    
}

extension ConfiguracaoViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return sentimento.count
    }
    
}

extension ConfiguracaoViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return sentimento[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        sentimentoLabel.text = sentimento[row]
    }
}
