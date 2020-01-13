//
//  ViewController.swift
//  first-app
//
//  Created by user162635 on 1/13/20.
//  Copyright © 2020 Stephano Apiolaza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var btnAction: UIButton!
    @IBOutlet var txtHelloWorld: UILabel!
    var change : Bool! = false
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
        self.txtHelloWorld.text = "Ejemplo desde codigo"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad")
        self.btnAction.addTarget(self,
                                 action: #selector(self.changeName),
                                 for: .touchUpInside)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // Do any additional setup after loading the view.
        print("viewDidAppear")
        // self.changeName()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }

}

extension ViewController {
    
    @objc func changeName() {
        if ( self.change ) {
            self.txtHelloWorld.text = "Toggle"
        } else {
            self.txtHelloWorld.text = "Hola Mundo desde extension"
        }
        self.change = self.change ? false : true;
    }
    
}

extension Bool {
    
    mutating func toggle() {
        self = !self
    }
    
}

