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
    var value: Any
    
    @available(*, deprecated, renamed: "image")
    var imageURL: String?
    
    var image: Any?
    var backgroundColor: UIColor?
    var textColor: UIColor?

    public init(_ hidden: Bool = true, value: Any, isExpanded: Bool = false, image: Any? = nil, backgroundColor: UIColor? = nil, textColor: UIColor? = nil) {
        self.isHidden = hidden
        self.value = value
        self.isExpanded = isExpanded
        self.image = image
        self.backgroundColor = backgroundColor
        self.textColor = textColor
    }
}

extension FunAVCell {
    
    @available(*, deprecated, message: "Replace imageURL: with image:")
    public convenience init(_ hidden: Bool = true, value: Any, isExpanded: Bool = false, imageURL: Any? = nil, backgroundColor: UIColor? = nil, textColor: UIColor? = nil) {
        self.init(value: value)
        self.isHidden = hidden
        self.isExpanded = isExpanded
        self.image = imageURL
        self.backgroundColor = backgroundColor
        self.textColor = textColor
    }
}

open class FunAVHeaderCell: FunAVCell {
    
    public init(value: Any, image: Any? = nil, backgroundColor: UIColor? = nil, textColor: UIColor? = nil) {
        super.init(false, value: value)
        self.image = image
        self.backgroundColor = backgroundColor
        self.textColor = textColor
    }
}

extension FunAVHeaderCell {
    
    @available(*, deprecated, message: "Replace imageURL: with image:")
    public convenience init(value: Any, imageURL: Any? = nil, backgroundColor: UIColor? = nil, textColor: UIColor? = nil) {
        self.init(value: value)
        self.image = imageURL
        self.backgroundColor = backgroundColor
        self.textColor = textColor
    }
}

open class FunAVSubCell: FunAVCell {
    
    public init(value: Any, image: Any? = nil, backgroundColor: UIColor? = nil, textColor: UIColor? = nil) {
        super.init(true, value: value)
        self.image = image
        self.backgroundColor = backgroundColor
        self.textColor = textColor
    }
}

extension FunAVSubCell {
    
    @available(*, deprecated, message: "Replace imageURL: with image:")
    public convenience init(value: Any, imageURL: Any? = nil, backgroundColor: UIColor? = nil, textColor: UIColor? = nil) {
        self.init(value: value)
        self.image = imageURL
        self.backgroundColor = backgroundColor
        self.textColor = textColor
    }
}

@available(*, deprecated, renamed: "FunAVHeaderCell")
class FunAVHeaderItem: FunAVCell {}

@available(*, deprecated, renamed: "FunAVSubCell")
class FunAVSubItem: FunAVCell {}
