//
//  DataModelProtocol.swift
//  MVVMDemo
//
//  Created by Atif Khan on 7/12/19.
//  Copyright © 2019 Atif Khan. All rights reserved.
//

import Foundation


protocol PageComponent
{
    var componentType: PageComponentType {get}
    var action: ActionableType {get}
}

protocol ImageComponentable {
    var image: String {get}
    var action: Actionable {get}
}

protocol ProductItemable {
    var title: String {get}
    var sellingPrice: Float {get}
    var oldPrice: Float {get}
}

protocol Actionable {
    var action: ActionableType {get}
}

protocol HorizontalGalleryComponentable: PageComponent {
    associatedtype ItemType
    var title: String? {get}
    var items: [ItemType] {get}
    var itemUseFullWidth:  Bool {get}
    var maxWidth: Float? {get}
    var height: Float? {get}
    var interSpacing: Float {get}
}

protocol HorizontalImageGalleryComponentable: HorizontalGalleryComponentable where ItemType == ImageComponentable {
    
}

protocol ProductSliderComponentable: HorizontalGalleryComponentable where ItemType == ProductItemable {
    
}
