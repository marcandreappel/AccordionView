//
//  FunAVCell.swift
//  FunAccordionView
//
//  Created by Marc-André Appel on 27/12/2018.
//  Copyright (c) 2018 Marc-André Appel. All rights reserved.
//

import UIKit

open class FunAVCell {

    var isHidden: Bool
    var isExpanded: Bool
    var value: AnyObject
    var imageURL: String?
    var backgroundColor: UIColor?
    var textColor: UIColor?

    public init(_ hidden: Bool = true, value: AnyObject, isExpanded: Bool = false, imageURL: String? = nil, backgroundColor: UIColor? = nil, textColor: UIColor? = nil) {
        self.isHidden = hidden
        self.value = value
        self.isExpanded = isExpanded
        self.imageURL = imageURL
        self.backgroundColor = backgroundColor
        self.textColor = textColor
    }
}

open class FunAVHeaderItem: FunAVCell {

    public init (value: AnyObject, imageURL: String? = nil, backgroundColor: UIColor? = nil, textColor: UIColor? = nil) {
        super.init(false, value: value)
        self.imageURL = imageURL
        self.backgroundColor = backgroundColor
        self.textColor = textColor
    }
}

open class FunAVSubItem: FunAVCell {

    public init(value: AnyObject, imageURL: String? = nil, backgroundColor: UIColor? = nil, textColor: UIColor? = nil) {
        super.init(true, value: value)
        self.imageURL = imageURL
        self.backgroundColor = backgroundColor
        self.textColor = textColor
    }
}
