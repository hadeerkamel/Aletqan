//
//  NotificationVC.swift
//  Foug Elhoda
//
//  Created by Hadeer Kamel on 7/30/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit

class NotificationVC: UIViewController {

    //MARK:- Outlets -
    
    @IBOutlet weak var messagesTableView: UITableView!
    //MARK:- Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initializaions()
        uiStyle()
        // Do any additional setup after loading the view.
    }
    //MARK:- Helpers -
    func initializaions(){
        
    }
    func uiStyle(){
        self.navigationItem.title = "رسائل الخدمه"
    }

}
