//
//  FunAVCellButton.swift
//  FunAccordionView
//
//  Created by Marc-André Appel on 27/12/2018.
//  Copyright (c) 2018 Marc-André Appel. All rights reserved.
//

import UIKit

class FunAVCellButton: UIButton {
    
    init(type: FunAVCellButtonType) {
        super.init(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        self.setImage(imageForType(type)!, for: UIControl.State())
    }
    
    init(image: UIImage) {
        super.init(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        self.setImage(image, for: UIControl.State())
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func imageForType(_ type: FunAVCellButtonType) -> UIImage? {
        let bundle = Bundle(for: Swift.type(of: self))
        switch(type) {
        case .expand :
            return UIImage(named: "chevron_right", in: bundle, compatibleWith: nil)
        case .collapse:
            return UIImage(named: "chevron_down", in: bundle, compatibleWith: nil)
        }
    }
}
