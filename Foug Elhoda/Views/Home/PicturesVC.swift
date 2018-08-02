//
//  PicturesVC.swift
//  Foug Elhoda
//
//  Created by Hadeer Kamel on 7/30/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit

class PicturesVC: UIViewController {

    //MARK:- Outlets -
    
    @IBOutlet weak var photosCollectionviews: UICollectionView!
    //MARK: - properties -
    var pictures : [UIImage]=[]
    
    //MARK:- Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initializaions()
        uiStyle()
        // Do any additional setup after loading the view.
    }
    //MARK:- Helpers -
    func initializaions(){
        setupPicturesList()
         photosCollectionviews.register(UINib(nibName: "ImageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ImageCollectionViewCell")
    }
    func uiStyle(){
        self.navigationItem.title = "صور الحج"
    }
    func  setupPicturesList(){
        pictures.append(#imageLiteral(resourceName: "P1"))
        pictures.append(#imageLiteral(resourceName: "P2"))
        pictures.append(#imageLiteral(resourceName: "P3"))
        pictures.append(#imageLiteral(resourceName: "P4"))
        pictures.append(#imageLiteral(resourceName: "P5"))
        pictures.append(#imageLiteral(resourceName: "P6"))
        pictures.append(#imageLiteral(resourceName: "P7"))
        pictures.append(#imageLiteral(resourceName: "P8"))
        pictures.append(#imageLiteral(resourceName: "P9"))
        pictures.append(#imageLiteral(resourceName: "P10"))
        pictures.append(#imageLiteral(resourceName: "P11"))
        
    }

}
//MARK: - Collection View
extension PicturesVC : UICollectionViewDelegate ,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pictures.count
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width_ = collectionView.frame.width
        let height_ = collectionView.frame.height
        
        return CGSize(width: width_, height: height_)
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as! ImageCollectionViewCell
        
        cell.Setup(image: pictures[indexPath.row])
        return cell
    }
   
    
    
}
