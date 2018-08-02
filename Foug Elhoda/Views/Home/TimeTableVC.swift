//
//  TimeTableVC.swift
//  Foug Elhoda
//
//  Created by Hadeer Kamel on 7/30/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit

class TimeTableVC: UIViewController {
    //MARK:- Outlets -

    @IBOutlet weak var timesTableView: UITableView!
    //MARK:- Properties -
    var timesList = HajTimes()
    //MARK:- Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initializaions()
        uiStyle()
        // Do any additional setup after loading the view.
    }
    //MARK:- Helpers -
    func initializaions(){
        timesTableView.register(UINib(nibName: "TimesTableViewCell", bundle: nil), forCellReuseIdentifier: "TimesTableViewCell")
    }
    func uiStyle(){
        self.navigationItem.title = "الجدول الزمني للحج"
    }

}
extension TimeTableVC: UITableViewDelegate , UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return timesList.timesList.count+1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = timesTableView.dequeueReusableCell(withIdentifier: "TimesTableViewCell", for: indexPath) as! TimesTableViewCell
        if indexPath.row > 0{
           cell.setup(data: timesList.timesList[indexPath.row-1])
        }
        return cell
    }
}

