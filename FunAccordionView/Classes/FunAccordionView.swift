//
//  FunAccordionView.swift
//  FunAccordionView
//
//  Created by Marc-André Appel on 27/12/2018.
//  Copyright (c) 2018 Marc-André Appel. All rights reserved.
//

import Foundation
import UIKit

public protocol FunAVDelegate {

    func didSelectItemAtIndex(_ index: Int)
}

open class FunAccordionView {

    open var controller: FunAVController!
    
    open var delegate: FunAVDelegate! {
        didSet {
            controller.delegate = delegate
        }
    }
    
    public init(cells: [FunAVCell], options: [FunAVOption]?, reuseIdentifier: String) {
        controller = FunAVController.init(cells: cells, options: options, reuseIdentifier: reuseIdentifier)
        delegate = nil
    }
}
