//
//  WeVC.swift
//  Foug Elhoda
//
//  Created by Hadeer Kamel on 7/30/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit

class WeVC: UIViewController {

    //MARK:- outlets -
    @IBOutlet weak var aboutUsLabel: UILabel!
    //MARK:- Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initializaions()
        uiStyle()
        // Do any additional setup after loading the view.
    }
    //MARK:- Helpers -
    func initializaions(){
        aboutUsLabel.text = UIConstants.constantTexts.SideMenu.about
    }
    func uiStyle(){
        self.navigationItem.title = "من نحن"
    }

}
