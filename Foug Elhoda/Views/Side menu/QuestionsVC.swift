//
//  QuestionsVC.swift
//  Foug Elhoda
//
//  Created by Hadeer Kamel on 7/30/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit

class QuestionsVC: UIViewController {

    //MARK:- Outlets -
    @IBOutlet weak var questionsTAbleView: UITableView!
    //MARK:-  Properities -
    var questionsList = QuestionsAndAnswers()
    //MARK:- Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initializaions()
        uiStyle()
        // Do any additional setup after loading the view.
    }
    //MARK:- Helpers -
    func initializaions(){
        questionsTAbleView.register(UINib(nibName: "QuestionsTableViewCell", bundle: nil), forCellReuseIdentifier: "QuestionsTableViewCell")
    }
    func uiStyle(){
        self.navigationItem.title = "أسئله و أجوبه"
        
    }

}
extension QuestionsVC: UITableViewDelegate , UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionsList.questionsList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = questionsTAbleView.dequeueReusableCell(withIdentifier: "QuestionsTableViewCell", for: indexPath) as! QuestionsTableViewCell
        cell.setup(data: questionsList.questionsList[indexPath.row])
        return cell
    }
}
