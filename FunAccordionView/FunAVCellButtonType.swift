//
//  FunAVCellButtonType.swift
//  FunAccordionView
//
//  Created by Marc-André Appel on 27/12/2018.
//  Copyright (c) 2018 Marc-André Appel. All rights reserved.
//
import Foundation
import UIKit

enum FunAVCellButtonType {
    case expand
    case collapse
}

class FunAVCellAccessoryView {

    static internal func getCellAccessory(_ type: FunAVCellButtonType) -> UIView{
        return FunAVCellButton.init(type: type) as UIView
    }
    
    static internal func getCellAccessoryWithCustomImage(_ image: UIImage) -> UIView{
        return FunAVCellButton.init(image: image) as UIView
    }
}
