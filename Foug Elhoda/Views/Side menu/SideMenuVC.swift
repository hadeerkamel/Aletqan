//
//  SideMenuVC.swift
//  Foug Elhoda
//
//  Created by Hadeer Kamel on 7/29/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit
var  sideMenu : SideMenuVC!

class SideMenuVC: UIViewController {
    
    //MARK: - Outlets -
    @IBOutlet weak var TableVeiw: TableViewAdapter!
   
    
    
    //MARK: - Propreties -
    var sidemenuItems:[SideMenuCell.sideMenuItem] = []
    
    //MARK: - Controller life cycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        initialization()
        uiStyle()
        SetupViews()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    //MARK: - Side Menu -
    func SetupViews() {
        
        sidemenuItems.append(SideMenuCell.sideMenuItem(icon_:#imageLiteral(resourceName: "we"),  label_: "من نحن"))
        sidemenuItems.append(SideMenuCell.sideMenuItem(icon_:#imageLiteral(resourceName: "taeh"),  label_:"أنا تائه"))
        sidemenuItems.append(SideMenuCell.sideMenuItem(icon_:#imageLiteral(resourceName: "login"),  label_:"تسجيل الدخول"))
        sidemenuItems.append(SideMenuCell.sideMenuItem(icon_:#imageLiteral(resourceName: "question"),  label_:"أسئله وأجوبه"))
       // sidemenuItems.append(SideMenuCell.sideMenuItem(icon_:#imageLiteral(resourceName: "about"),  label_:"عن التطبيق"))
        
        
        
        TableVeiw.setup(cell: "SideMenuCell", data: sidemenuItems, cell_Height: 44, AL_Height: nil) { (cell, index) in
            self.SideMenuCellsSetup(cell: cell as! SideMenuCell, index: index)
        }
        let indexPath = IndexPath(row: 0, section: 0)
        TableVeiw.selectRow(at: indexPath, animated: true, scrollPosition: .bottom)
        
    }
    
    func SideMenuCellsSetup(cell:SideMenuCell, index:IndexPath) {
        let item = sidemenuItems[index.row]
        cell.Setup(data: item)
        
        
    }
    
    //MARK : Helpers
    func  initialization (){
        sideMenu = self
        
      // sideMenuBG_SafeArea_Trailing.constant = (  self.revealViewController().rearViewRevealWidth)
    }
    func uiStyle(){
       // logoWhiteView.borderRad(Radus: 5, borderWidth: 0)
    }
    func handleMenuSelection(row:Int){
        switch row{
        case 0 :
            Home.navigationController?.pushViewController((UIConstants.SideMenuStory.instantiateViewController(withIdentifier: UIConstants.Screens.SideMenu.WeScreen)), animated: true)
            break
        case 1 :
            Home.navigationController?.pushViewController((UIConstants.SideMenuStory.instantiateViewController(withIdentifier: UIConstants.Screens.SideMenu.LostScreen)), animated: true)
            break
        case 2 :
            Home.openLoginLink(navigationTitle: "تسجيل الدخول")
            break
        case 3 :
            Home.navigationController?.pushViewController((UIConstants.SideMenuStory.instantiateViewController(withIdentifier: UIConstants.Screens.SideMenu.QuestionsScreen)), animated: true)
            break
        case 4 :
            Home.navigationController?.pushViewController((UIConstants.SideMenuStory.instantiateViewController(withIdentifier: UIConstants.Screens.SideMenu.AboutScreen)), animated: true)
            break
        
        default :
            break
            
            
        }
       toggleSWRevealViewController()
    }

   
    
    
}

