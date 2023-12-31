//
//  NamePhoneNumberViewController.swift
//  AddNamePhoneNumber2
//
//  Created by JX on 09/12/23.
//

import UIKit

class NamePhoneNumberViewController: UIViewController {

    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var name: UITextField!
    
    var sendNamePhoneDelegate: SendNamePhoneNumberDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveNamePhone(_ sender: Any) {
        guard let name = name.text else {return}
        guard let phoneNumber = phoneNumber.text else {return}
        sendNamePhoneDelegate?.sendNamePhoneNumber(name: name, phoneNumber: phoneNumber)
        self.navigationController?.popViewController(animated: true)
    }
}
