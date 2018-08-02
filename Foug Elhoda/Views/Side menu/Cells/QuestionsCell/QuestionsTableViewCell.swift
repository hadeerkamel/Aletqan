//
//  QuestionsTableViewCell.swift
//  Foug Elhoda
//
//  Created by Hadeer Kamel on 8/2/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit

class QuestionsTableViewCell: UITableViewCell {
    
    
    //MARK:- Outlets -
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var cellView: UIView!
    
    //MARK:- Properties -
   
    
    //MARK:_ LifeCycle -
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        uiStyle()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.selectionStyle = .none
        // Configure the view for the selected state
    }
    //MARK: - Helpers -
    func setup(data:QuestionItem ){
        questionLabel.text = "  " + data.question
        answerLabel.text = data.answer
    }
    func uiStyle(){
        cellView.borderRad(Radus: 10, borderWidth: 0.5,BorderColor: .gray)
        self.selectionStyle = .none
    }
    
}
