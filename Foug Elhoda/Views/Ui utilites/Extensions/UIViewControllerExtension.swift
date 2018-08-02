//
//  UIViewControllerExtension.swift
//  Foug Elhoda
//
//  Created by Hadeer Kamel on 7/29/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import Foundation

extension UIViewController {
   
    func toggleSWRevealViewController() {
        //self.revealViewController().revealToggle(self.revealViewController())
        Home.openCloseSideMenu(self)
        }
}
