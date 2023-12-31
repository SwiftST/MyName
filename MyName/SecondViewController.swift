//
//  SecondViewController.swift
//  MyName
//
//  Created by Павел Зубрилов on 12.06.2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func showAlert() {
        let alertController = UIAlertController(
            title: "Welcome",
            message: "This is my name App",
            preferredStyle: .alert)
        // кнопка ОК
        let buttonOK = UIAlertAction(
            title: "OK",
            style: .default)
        // кнопка Cancel
        let buttonCancel = UIAlertAction(
            title: "Cancel",
            style: .cancel)
        // добавление обеих кнопок в AlertController
        alertController.addAction(buttonOK)
        alertController.addAction(buttonCancel)
        // вызов метода present отображающего всплывающее окно
        self.present(alertController, animated: true)
    }
    
    @IBAction func changeLabelText(_ sender: UIButton) {
        if let buttonText = sender.titleLabel!.text {
            self.myLabel.text = "\(buttonText) button was pressed"
        }
    }
}
