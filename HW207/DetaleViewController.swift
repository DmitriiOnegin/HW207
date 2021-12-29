//
//  DetaleViewController.swift
//  HW207
//
//  Created by Dmitrii Onegin on 29.12.2021.
//

import UIKit

class DetaleViewController: UIViewController {
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoneLabel.text = person.phone
        emailLabel.text = person.email
    }
    
    
}
