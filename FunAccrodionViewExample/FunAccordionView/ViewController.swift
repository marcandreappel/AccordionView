//
//  ViewController.swift
//  FunAccordionViewExample
//
//  Created by Marc-André Appel on 28/12/2018.
//  Copyright (c) 2018 Marc-André Appel. All rights reserved.
//

import UIKit
import FunAccordionView

class ViewController: UIViewController, FunAVDelegate, UIActionSheetDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var cells = [FunAVCell]()
    var delegateController: FunAVController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Checklist"
        
        let backgroundColor = UIColor(red: 237.0 / 255.0, green: 254.0 / 255.0, blue: 249.0 / 255.0, alpha: 1.0)
        let textColor = UIColor(red: 31.0 / 255.0, green: 217.0 / 255.0, blue: 185.0 / 255.0, alpha: 1.0)
        
        cells.append(FunAVHeaderItem(value: "Bathroom" as AnyObject, imageURL: "bathroom_grey_32.png", backgroundColor: UIColor.orange, textColor: UIColor.white))
        cells.append(FunAVCell(value: "Shower" as AnyObject))
        cells.append(FunAVSubItem(value: "Shower pores should be cleaned effectively by brushing." as AnyObject))
        cells.append(FunAVCell(value: "Tap" as AnyObject))
        cells.append(FunAVSubItem(value: "Taps must be washed with soap and all the salt removed." as AnyObject))
        cells.append(FunAVCell(value: "Toilet" as AnyObject, imageURL: "toilet_grey_32.png"))
        cells.append(FunAVSubItem(value: "Should be made stains and germs free." as AnyObject))

        cells.append(FunAVHeaderItem(value: "Bedroom" as AnyObject, imageURL: "bedroom_grey_32.png"))
        cells.append(FunAVCell(value: "Bed" as AnyObject))
        cells.append(FunAVSubItem(value: "Remove all the dust." as AnyObject))
        cells.append(FunAVCell(value: "Dressing" as AnyObject))
        
        cells.append(FunAVHeaderItem(value: "Kitchen" as AnyObject, imageURL: "kitchen_grey_32.png"))
        cells.append(FunAVCell(value: "Utensils" as AnyObject))
        cells.append(FunAVSubItem(value: "There are many type of utensils like tongs, rolling pin, pan, non stick pans. Wash them all." as AnyObject))
        cells.append(FunAVCell(value: "Sink" as AnyObject))
        cells.append(FunAVSubItem(value: "Clean the sink" as AnyObject))
        
        cells.append(FunAVHeaderItem(value: "Hallway" as AnyObject, imageURL: "hallway_grey_32.png"))
        cells.append(FunAVCell(value: "Stairs" as AnyObject, imageURL: "stairs_grey_32.png"))
        cells.append(FunAVSubItem(value: "One stair, two stair, three stair, all stairs clean clean." as AnyObject))
        cells.append(FunAVCell(value: "Hall" as AnyObject))
        cells.append(FunAVSubItem(value: "Clean the hall" as AnyObject, imageURL: "hall_grey_32.png"))
        
        cells.append(FunAVHeaderItem(value: "Lounge" as AnyObject, imageURL: "lounge_grey_32.png"))
        cells.append(FunAVCell(value: "Dining Area" as AnyObject, imageURL: "dining_area_grey_32.png"))
        cells.append(FunAVSubItem(value: "All tables and chairs scrubbed for dust and germs." as AnyObject))
        
        cells.append(FunAVHeaderItem(value: "Study Room" as AnyObject, imageURL: "study_room_grey_32.png", backgroundColor: UIColor.green, textColor: UIColor.white))
        
        cells.append(FunAVHeaderItem(value: "Conservatory" as AnyObject, imageURL: "conservatory_grey_32.png"))
        cells.append(FunAVCell(value: "Utilities" as AnyObject, imageURL: "utility_room_grey_32.png"))
        cells.append(FunAVSubItem(value: "Clean! Clean!" as AnyObject))
        
        cells.append(FunAVHeaderItem(value: "Entrance" as AnyObject, imageURL: "entrance_grey_32.png"))
        cells.append(FunAVCell(value: "Back Room" as AnyObject, imageURL: "back_room_grey_32.png"))
        cells.append(FunAVSubItem(value: "Clean! Clean!" as AnyObject))
        
        let options: [FunAVOption] = [
            .useAccessoryIcons(true),
            .expandIcon(UIImage(named: "MyExpandIcon.png")!),
            .collapseIcon(UIImage(named: "MyCollapseIcon.png")!),
            .headerTextFont(UIFont.systemFont(ofSize: CGFloat(15.0))),
            .headerTextColor(textColor),
            .headerCellBackgroundColor(backgroundColor),
            .subItemTextFont(UIFont.systemFont(ofSize: CGFloat(12.0))),
            .subItemTextColor(UIColor.black),
            .subItemCellBackgroundColor(UIColor.white),
            .itemTextFont(UIFont.systemFont(ofSize: CGFloat(14.0))),
            .itemTextColor(UIColor.black),
            .itemCellBackgroundColor(UIColor.white),
            ]
        
        let funAccordionView = FunAccordionView.init(cells: cells, options: options, reuseIdentifier: "FunAVCell")
        funAccordionView.delegate = self
        
        delegateController = funAccordionView.controller
        tableView.dataSource = delegateController
        tableView.delegate = delegateController
        tableView.reloadData()
    }
    
    func didSelectItemAtIndex(_ index: Int) {
        print(index)
    }
}
