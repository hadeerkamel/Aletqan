//
//  HomeVC.swift
//  Foug Elhoda
//
//  Created by Hadeer Kamel on 7/28/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit
var Home : HomeVC!

class HomeVC: UIViewController {
    //MARK :- Outlets -
    
    @IBOutlet weak var homeCollecctionview: UICollectionView!
    
    @IBOutlet weak var homeNavigationBar: UINavigationBar!
    
    @IBOutlet weak var coverView: UIView!
    //MARK :- Properties -
    var homeItems:[HomeCollectionViewCell.HomeItem]=[]
    //MARK :- Controller Life Cycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializations()
        uiStyle()
        setupViews()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    //MARK :- Actions -
    @IBAction func menuButtonDidClicked(_ sender: Any) {
        openCloseSideMenu(sender)
    }
    
    @IBAction func notificationButtonsDidClicked(_ sender: Any) {
        Home.navigationController?.pushViewController((self.storyboard?.instantiateViewController(withIdentifier: UIConstants.Screens.Home.NotificationsScreen))!, animated: true)
    }
    //MARK :- Helpers -
    func initializations(){
        Home = self

        let tap = UITapGestureRecognizer(target: self,action: #selector(self.openCloseSideMenu(_:)))
        
        coverView.addGestureRecognizer(tap)
    }
    func uiStyle(){
        homeNavigationBar.shadowImage = UIImage()
        homeNavigationBar.setBackgroundImage(UIImage(), for: .default)
       Home.navigationController?.navigationBar.topItem?.backBarButtonItem =  UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
    }
    func setupViews(){
        homeItems.append(HomeCollectionViewCell.HomeItem(icon_ : #imageLiteral(resourceName: "location"),label_ : "مواقع الحمله بالمشاعر"))
        homeItems.append(HomeCollectionViewCell.HomeItem(icon_ : #imageLiteral(resourceName: "people"),label_ : "أماكن التجمع"))
        homeItems.append(HomeCollectionViewCell.HomeItem(icon_ : #imageLiteral(resourceName: "date"),label_ : "الجدول الزمني للحج"))
        homeItems.append(HomeCollectionViewCell.HomeItem(icon_ : #imageLiteral(resourceName: "video"),label_ : "فيديوهات الحج"))
        homeItems.append(HomeCollectionViewCell.HomeItem(icon_ : #imageLiteral(resourceName: "picture"),label_ : "صور الحج"))
        homeItems.append(HomeCollectionViewCell.HomeItem(icon_ : #imageLiteral(resourceName: "haj"),label_ : "دخول حاج"))
        
        homeCollecctionview.register(UINib(nibName: "HomeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HomeCollectionViewCell")
    }
    @objc func openCloseSideMenu(_ sender: Any){
        coverView.isHidden = !coverView.isHidden
        if self.revealViewController() != nil{
            self.revealViewController().rightRevealToggle(sender)
        }
    }
    func openLoginLink(navigationTitle: String){
        
       
        openWebViewWith(navigationTitle: navigationTitle,url: NetworkConstants.loginURL)
    }
    func openWebViewWith(navigationTitle: String,url: String){
        let WebVC = UIConstants.HomeStory.instantiateViewController(withIdentifier: UIConstants.Screens.Home.WebViewScreen) as! WebViewVC
        WebVC.nvaigationItemTitle = navigationTitle
        WebVC.urlString =  url
        Home.navigationController?.pushViewController(WebVC, animated: true)
    }
}
//MARK: - Collection View
extension HomeVC : UICollectionViewDelegate ,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return homeItems.count
        }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.frame.width - 20 )/2
        let height = (collectionView.frame.height - 20 )/3
        return CGSize(width: width, height: height)
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as! HomeCollectionViewCell
        
            cell.Setup(data: homeItems[indexPath.row])
            
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
            let locationsVC = (self.storyboard?.instantiateViewController(withIdentifier: UIConstants.Screens.Home.LocationsScreen)) as! LocationsVC
            locationsVC.locationsList = getHamlaLocations()
            Home.navigationController?.pushViewController(locationsVC, animated: true)
            break
        case 1:
            let locationsVC = (self.storyboard?.instantiateViewController(withIdentifier: UIConstants.Screens.Home.LocationsScreen)) as! LocationsVC
            locationsVC.locationsList = getGatheringLocations()
            Home.navigationController?.pushViewController(locationsVC, animated: true)
            break
        case 2:
            Home.navigationController?.pushViewController((self.storyboard?.instantiateViewController(withIdentifier: UIConstants.Screens.Home.TimeTableScreen))!, animated: true)
            break
        case 3:
           openWebViewWith(navigationTitle: "فديوهات الحج",url: NetworkConstants.VideoURL)
        case 4:
            Home.navigationController?.pushViewController((self.storyboard?.instantiateViewController(withIdentifier: UIConstants.Screens.Home.PicturesScreen))!, animated: true)
            break
        case 5:
            Home.openLoginLink(navigationTitle: "دخول حاج")
            break
        default:
            break
        }
        
    }

}

