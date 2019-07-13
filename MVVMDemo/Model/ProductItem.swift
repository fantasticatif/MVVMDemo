//
//  ProductItem.swift
//  MVVMDemo
//
//  Created by Atif Khan on 7/13/19.
//  Copyright © 2019 Atif Khan. All rights reserved.
//

import Foundation


struct ProductItem: ProductItemable
{
    var title: String
    
    var sellingPrice: Float
    
    var oldPrice: Float
    
    var imageURI: String
    
    var haveOldPrice: Bool {
        return sellingPrice > 0 && oldPrice > 0 && oldPrice > sellingPrice
    }
    
    init?(info: [AnyHashable : Any]) {
        title = info["title"] as? String ?? ""
        sellingPrice = info["sellingPrice"] as? Float ?? 0
        oldPrice = info["oldPrice"] as? Float ?? 0
        imageURI = info["image"] as? String ?? ""
    }
    
    
}
