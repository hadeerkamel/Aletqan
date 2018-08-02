//
//  TimesTableViewCell.swift
//  Foug Elhoda
//
//  Created by Hadeer Kamel on 8/2/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit

class TimesTableViewCell: UITableViewCell {
    //MARK: - Outlets -
    @IBOutlet weak var placeLabel: UILabel!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    //MARK: - lifeCycle -
    override func awakeFromNib() {
        super.awakeFromNib()
       
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    //MARK: - Helpers -
    func setup(data: TimeItem){
        placeLabel.text = data.place
        dayLabel.text = data.day
        timeLabel.text = data.time
        
        placeLabel.alpha = 1
        dayLabel.alpha = 1
        timeLabel.alpha = 1
    }
    
}
