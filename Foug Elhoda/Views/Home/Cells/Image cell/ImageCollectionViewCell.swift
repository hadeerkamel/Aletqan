//
//  ImageCollectionViewCell.swift
//  Foug Elhoda
//
//  Created by Hadeer Kamel on 8/1/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    
    //MARK: - Outlets -
    
    @IBOutlet weak var cellImage: UIImageView!
    
    //MARK:- Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    //MARK:- Helpers
    func Setup(image:UIImage) {
        cellImage.image = image
      
    }

}
