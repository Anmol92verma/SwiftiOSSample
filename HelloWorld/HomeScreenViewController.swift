//
//  ViewController.swift
//  HelloWorld
//
//  Created by Anmol Verma on 4/28/17.
//  Copyright © 2017 mutualmobile. All rights reserved.
//

import UIKit

class HomeScreenViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor  = UIColor.brown
     
    }
    
    override func viewWillAppear(_ animated: Bool) {
       // navigationBar.backItem?.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(back))
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    func back() {
        self.dismiss(animated: true, completion: nil)
    }


}

