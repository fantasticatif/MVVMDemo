//
//  PageComponent.swift
//  MVVMDemo
//
//  Created by Atif Khan on 7/12/19.
//  Copyright © 2019 Atif Khan. All rights reserved.
//

import Foundation


struct ImageHorizontalGalleryData: HorizontalImageGalleryComponentable
{
    var title: String?
    
    var items: [ImageComponentable]
    
    var itemUseFullWidth: Bool
    
    var maxWidth: Float?
    
    var height: Float?
    
    var interSpacing: Float
    
    var componentType: PageComponentType
    
    var action: ActionableType
    
    
}

