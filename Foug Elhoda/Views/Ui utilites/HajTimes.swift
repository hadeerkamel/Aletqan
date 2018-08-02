//
//  HajTimes.swift
//  Foug Elhoda
//
//  Created by Hadeer Kamel on 8/2/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import Foundation
import Foundation
class TimeItem{
    var place : String!
    var day : String!
    var time : String!
    init(place_ : String ,day_ : String,time_ : String){
        place = place_
        day = day_
        time = time_
    }
}
class HajTimes {
    var timesList : [TimeItem] = []
    init() { 
          timesList.append(TimeItem(place_: "تبوك",day_: "6 ذو الحجة",time_: "4 مساء الى 6مساء"))
          timesList.append(TimeItem(place_: "الرياض",day_: "6ذو الحجه ",time_: "4 مساء الى 6 مساء"))
          timesList.append(TimeItem(place_: "حائل",day_: "6ذو الحجه ",time_: "5 مساء الى 7 مساء"))
          timesList.append(TimeItem(place_: "الخبر",day_: "6 ذو الحجه",time_: "1 الظهر الى 3 مساء"))
          timesList.append(TimeItem(place_: "مكه",day_: "7ذو الحجه",time_: "6 مساء الى 9 مساء"))
}
}
