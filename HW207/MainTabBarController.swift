//
//  MainTabBarController.swift
//  HW207
//
//  Created by Dmitrii Onegin on 29.12.2021.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    private let persons = Person.getPersons()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        getPersonsToVC()
        
        
    }
    

   
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        getPersonsToVC()
        
    }
}

extension MainTabBarController {
    private func getPersonsToVC() {
        let viewControllers = self.children
        
        for viewController in viewControllers {
            if let firstVC = viewController as? FirstTableViewController {
                firstVC.persons = persons
                
            } else if let secondVC = viewController as? SecondTableViewController {
                
                secondVC.persons = persons
            }
        }
    }
}





