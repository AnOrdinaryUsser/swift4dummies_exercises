//
//  ViewController.swift
//  Calculadora
//
//  Created by DAA on 26/9/25.
//

import UIKit

class ViewController: UIViewController {

    // Etiqueta dónde se realizarán los cálculos de las operaciones
    @IBOutlet weak var ventana: UILabel!
    
    private var currentNumber: String = ""
    private var previousNumber: Double = 0
    private var currentOperation: String? = nil
    
    // Función para ver que número ha sido presionado
    @IBAction func numeroPresionado(_ sender: UIButton) {
        let number = sender.tag
            currentNumber += "\(number)"
            ventana.text = currentNumber
    }
    
    @IBAction func operacionPresionada(_ sender: UIButton) {
        switch sender.tag {
            case 10: // "+"
                if let current = Double(currentNumber) {
                    previousNumber = current
                    currentNumber = ""
                    currentOperation = "+"
                }
                
            case 11: // "-"
                if let current = Double(currentNumber) {
                    previousNumber = current
                    currentNumber = ""
                    currentOperation = "-"
                }
                
            case 12: // "×"
                if let current = Double(currentNumber) {
                    previousNumber = current
                    currentNumber = ""
                    currentOperation = "×"
                }
                
            case 13: // "÷"
                if let current = Double(currentNumber) {
                    previousNumber = current
                    currentNumber = ""
                    currentOperation = "÷"
                }
                
            case 14: // "="
                if let op = currentOperation, let current = Double(currentNumber) {
                    var result: Double = 0
                    switch op {
                    case "+": result = previousNumber + current
                    case "-": result = previousNumber - current
                    case "×": result = previousNumber * current
                    case "÷": result = previousNumber / current
                    default: break
                    }
                    ventana.text = "\(result)"
                    currentNumber = "\(result)"
                    currentOperation = nil
                }
                
            case 15: // "C"
                currentNumber = ""
                previousNumber = 0
                currentOperation = nil
                ventana.text = "0"
                
            default:
                break
            }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

