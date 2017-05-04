//
//  SettingsVC.swift
//  HelloWorld
//
//  Created by Anmol Verma on 5/4/17.
//  Copyright © 2017 mutualmobile. All rights reserved.
//

import UIKit


class SettingsVC : UIViewController {
    @IBOutlet weak var scrollViewMain: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.darkGray
        let viewToBeScrolled = UIView()
        viewToBeScrolled.frame.size.width = self.view.frame.size.width
        viewToBeScrolled.frame.size.height = self.view.frame.size.height.divided(by: 2)
        viewToBeScrolled.backgroundColor = UIColor.black
        
        viewToBeScrolled.center.x = self.view.center.x
        viewToBeScrolled.center.y = self.view.center.y
        
        self.scrollViewMain.addSubview(viewToBeScrolled)
        self.scrollViewMain.addSubview(viewToBeScrolled)

    }
    
}
