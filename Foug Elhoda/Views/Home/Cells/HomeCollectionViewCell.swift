//
//  HomeCollectionViewCell.swift
//  Foug Elhoda
//
//  Created by Hadeer Kamel on 7/29/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    //MARK:- Outlets -
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var cellBackgroundView: UIView!
    
    //MARK:- Properties -
    class HomeItem{
        var icon:UIImage!
        var label:String = ""
        
        init(icon_:UIImage,label_:String) {
            icon = icon_
            
            label = label_
        }
    }
    //MARK:- Life Cycle 
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        uiStyle()
    }
    //MARK:- Helpers
    func Setup(data:HomeItem) {
       
        image.image = data.icon
        label.text = data.label
    }
    func uiStyle(){
        cellBackgroundView.borderRad(Radus: 5, borderWidth: 0)
        
    }
}
