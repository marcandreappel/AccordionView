//
//  FunAVOption.swift
//  FunAccordionView
//
//  Created by Marc-André Appel on 27/12/2018.
//  Copyright (c) 2018 Marc-André Appel. All rights reserved.
//

import UIKit

public enum FunAVOption {
    
    case cellFont(UIFont)
    case cellColor(UIColor)
    case cellBackgroundColor(UIColor)
    case cellHeight(CGFloat)
    case useSingleValues(Bool)

    //
    // Cellule fermée, afficher image d'ouverture
    //
    case expandIcon(UIImage)

    //
    // Cellule ouvert, affichage d'une image pour la fermeture
    //
    case collapseIcon(UIImage)

    //
    // Says if accessory views are to be used or not
    //
    case useAccessoryIcons(Bool)
    
    case headerTextFont(UIFont)
    case headerTextColor(UIColor)
    case headerCellBackgroundColor(UIColor)
    case headerCellHeight(CGFloat)
    
    case subItemTextFont(UIFont)
    case subItemTextColor(UIColor)
    case subItemCellBackgroundColor(UIColor)
    case subItemCellHeight(CGFloat)

    //
    // Innermost cell has multiline text or not
    //
    case isMultiline(Bool)
    
    case itemTextFont(UIFont)
    case itemTextColor(UIColor)
    case itemCellBackgroundColor(UIColor)
    case itemCellHeight(CGFloat)
}
