//
//  AppDelegate.swift
//  AppStore(Clone)
//
//  Created by Maggie Mostrou on 24/3/18.
//  Copyright © 2018 Georgia M. Mostrou. All rights reserved.
//
import UIKit

class App: NSObject {
    
    var id: NSNumber?
    var name: String?
    var category: String?
    var imageName: String?
    var price: NSNumber?
    var screenShots: [String]?
    var desc: String?
    var appInformation: AnyObject?
    
    
    static func setAppFrom(dictionary: [String: AnyObject]) -> App {
        
        let app = App()
        app.name = dictionary["Name"] as? String
        app.category = dictionary["Category"] as? String
        app.imageName = dictionary["ImageName"] as? String
        app.price = dictionary["Price"] as? NSNumber
        app.id = dictionary["Id"] as? NSNumber
        app.screenShots = dictionary["Screenshots"] as? [String]
        app.desc = dictionary["description"] as? String
        app.appInformation = dictionary["appInformation"] 
        return app
    }

}
