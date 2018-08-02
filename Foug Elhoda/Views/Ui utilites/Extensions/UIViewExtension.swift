//
//  UIViewExtension.swift
//  Foug Elhoda
//
//  Created by Hadeer Kamel on 8/1/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import Foundation
extension UIView{
    func borderRad(Radus:CGFloat,borderWidth:CGFloat,BorderColor:UIColor? = nil)
    {
        layer.borderWidth = borderWidth
        layer.cornerRadius = Radus
        clipsToBounds = true;
        if let BorderColor = BorderColor
        {
            layer.borderColor = BorderColor.cgColor;
        }
        
    }
}
