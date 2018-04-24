//
//  AppDelegate.swift
//  AppStore(Clone)
//
//  Created by Maggie Mostrou on 24/3/18.
//  Copyright © 2018 Georgia M. Mostrou. All rights reserved.
//
import Foundation
import UIKit

class AppCategory: NSObject {

    var name: String?
    var apps: [App]?
    
    static func setAppCategoryFrom(dictionary: [String: AnyObject]) -> AppCategory {
    
        let appCategory = AppCategory()
        appCategory.name = dictionary["name"] as? String
        if let appsDictArray = dictionary["apps"] as? [[String: AnyObject]] {
            appCategory.apps = appsDictArray.map{App.setAppFrom(dictionary: $0)}
        }
        return appCategory
    }
    
        
    
}
