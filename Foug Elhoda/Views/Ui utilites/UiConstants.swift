//
//  UiConstants.swift
//  Foug Elhoda
//
//  Created by Hadeer Kamel on 7/29/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import Foundation

class UIConstants {
    class Screens {
        class SideMenu {
            static let WeScreen        = "WeVC"
            static let LostScreen      = "LostVC"
            static let QuestionsScreen = "QuestionsVC"
            static let AboutScreen     = "AboutVC"
            
        }
        class Home {
            static let LocationsScreen  = "LocationsVC"
            static let PlacesScreen     = "PlacesVC"
            static let TimeTableScreen  = "TimeTableVC"
            static let VediosScreen     = "VideosVC"
            static let PicturesScreen   = "PicturesVC"
            static let NotificationsScreen = "NotificationVC"
            static let WebViewScreen        = "WebViewVC"
        }
        
    }
    static var SideMenuStory = UIStoryboard(name: "Side menu", bundle: Bundle.main)
    static var HomeStory = UIStoryboard(name: "Home", bundle: Bundle.main)
    
    class constantTexts{
        class SideMenu{
            static let about     = "شركة فوج الهدى المحدودةالشريحة الاولى وهي افضل شريحة خدمات للمخيمات داخل منى موقع متميز مقابل الجمرات في فئة أ خدمات أعاشة متميزة (بوفيه مفتوح - اصناف متنوعة - مشروبات باردة وساخنة ) على مدار اليوم خدمة النقل داخل المشاعر بالقطار عربات غولف لنقل كبار السن والنساءوتسعى الشركه جاهدة لخدمة ضيوف الرحمن وتوفير كل سبل الراحه المتاحهز وخدمتهم علي اكمل وجه"
            
        }
    }
}
