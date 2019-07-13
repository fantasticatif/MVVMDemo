//
//  PageComponent.swift
//  MVVMDemo
//
//  Created by Atif Khan on 7/12/19.
//  Copyright © 2019 Atif Khan. All rights reserved.
//

import Foundation


struct HorizontalGalleryData<ItemType: InfoInitializerable>: HorizontalGalleryComponentable
{
    var title: String?
    
    var items: [ItemType]
    
    var itemUseFullWidth: Bool
    
    var maxWidth: Float?
    
    var height: Float?
    
    var interSpacing: Float
    
    var componentType: PageComponentType
    
    
    init?(info: [AnyHashable : Any]) {
        guard let itemsInfo = info["items"] as? [[AnyHashable: Any]] else {
            return nil
        }
        var items = [ItemType]()
        for itemInfo in itemsInfo
        {
            if let item = ItemType(info: itemInfo) {
                items.append(item)
            }
        }
        self.items = items
        
        title = info["title"] as? String
        itemUseFullWidth = info["itemUseFullWidth"] as? Bool ?? true
        maxWidth = info["maxWidth"] as? Float
        height = info ["height"] as? Float
        interSpacing = info["interSpacing"] as? Float ?? 10
        componentType = .gallery
    }
    
    
}



