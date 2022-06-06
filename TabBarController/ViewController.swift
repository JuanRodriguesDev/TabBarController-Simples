//
//  ViewController.swift
//  TabBarController
//
//  Created by Paulo Koga on 06/06/22.
// Aula e Pratica sobre TabBarController via codigo(View Code)


import UIKit

class MyTabBarController: UITabBarController {
    
    override func viewDidLoad() {
      super.viewDidLoad()
      self.setupTabBarController()

    
    }
    
    private func setupTabBarController() {
        
        let tela01 = UINavigationController(rootViewController: Tela01())
        let tela02 = UINavigationController(rootViewController: Tela02())
        let tela03 = UINavigationController(rootViewController: Tela03())
        let tela04 = UINavigationController(rootViewController: Tela04())
        self.setViewControllers([tela01, tela02, tela03, tela04], animated: false)
        self.tabBar.backgroundColor = .white
        self.tabBar.isTranslucent = false
        
        guard let items = tabBar.items else{return}
        
        items[0].title = "Tela 01"
        items[0].image = UIImage(systemName: "star")
       
        items[1].title = "Tela 02"
        items[1].image = UIImage(systemName: "gear")
       
        items[2].title = "Tela 03"
        items[2].image = UIImage(systemName: "person")
     
        items[3].title = "Tela 04"
        items[3].image = UIImage(systemName: "trash")
        
    
    
    }
    
}



class Tela01: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        self.title = "Tela 01"

    }


}
class Tela02: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
        self.title = "Tela 02"
    }


}
class Tela03: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .purple
        self.title = "Tela 03"
    }


}
class Tela04: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .gray
        self.title = "Tela 04"
    }


}
