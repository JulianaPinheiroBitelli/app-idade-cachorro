//
//  ViewController.swift
//  IdadeCachorro
//
//  Created by Juliana Pinheiro on 28/09/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var digitarIdadeTextField: UITextField!
    @IBOutlet weak var buttomOutlet: UIButton!
    @IBOutlet weak var resultadoLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        digitarIdadeTextField.keyboardType = .numberPad
        digitarIdadeTextField.delegate = self
        
    }
    @IBAction func buttomAction(_ sender: UIButton) {
        let idadeCachorro = Int(digitarIdadeTextField.text!)! * 7
        resultadoLabel.text = "A idade do cachorro é: \(String(idadeCachorro)) anos"
        digitarIdadeTextField.resignFirstResponder()
    }
   
}

extension ViewController: UITextFieldDelegate{
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        digitarIdadeTextField.layer.borderColor = UIColor.purple.cgColor
        digitarIdadeTextField.layer.borderWidth = 1
       
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        digitarIdadeTextField.layer.borderWidth = 0
    }
    
}
