//
//  DataModelProtocol.swift
//  MVVMDemo
//
//  Created by Atif Khan on 7/12/19.
//  Copyright © 2019 Atif Khan. All rights reserved.
//

import Foundation


protocol PageComponent: InfoInitializerable
{
    var componentType: PageComponentType {get}
}

protocol InfoInitializerable {
    init?(info:[AnyHashable: Any])
}

protocol ImageComponentable:InfoInitializerable {
    var image: String {get}
    
}

protocol ProductItemable {
    var title: String {get}
    var sellingPrice: Float {get}
    var oldPrice: Float {get}
    var imageURI: String {get}
    var haveOldPrice: Bool {get}
    init?(info:[AnyHashable: Any])
    
}

protocol Actionable {
    var action: ActionableType {get}
    init(info:[AnyHashable: Any])
}

protocol HorizontalGalleryComponentable: PageComponent {
    associatedtype ItemType
    var title: String? {get}
    var items: [ItemType] {get}
    var itemUseFullWidth:  Bool {get}
    var maxWidth: Float? {get}
    var height: Float? {get}
    var interSpacing: Float {get}
    
    init?(info:[AnyHashable: Any])
}

