//
//  AppDelegate.swift
//  AppStore(Clone)
//
//  Created by Maggie Mostrou on 24/3/18.
//  Copyright © 2018 Georgia M. Mostrou. All rights reserved.
//
import Foundation
import UIKit

class FeaturedApps: NSObject {
    
    var bannerCategory: AppCategory?
    var appCategories: [AppCategory]?
    
    static func featuredappsFrom(dictionary: [String: AnyObject]) -> FeaturedApps {
        
        let featuredApps = FeaturedApps()
        if let bannerCategoryDictionary = dictionary["bannerCategory"] as? [String: AnyObject] {
            featuredApps.bannerCategory = AppCategory.setAppCategoryFrom(dictionary: bannerCategoryDictionary)
        }
        if let categoriesArray = dictionary["categories"] as? [[String: AnyObject]] {
            featuredApps.appCategories = categoriesArray.map{AppCategory.setAppCategoryFrom(dictionary: $0)}
        }
        return featuredApps
    }
}
