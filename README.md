# AccordionView

[![CI Status](https://travis-ci.org/marcandreappel/FunAccordionView.svg?branch=master)](https://travis-ci.org/marcandreappel/FunAccordionView/builds)
[![Swift][swift-badge]][swift-url]
[![Version](https://img.shields.io/cocoapods/v/FunAccordionView.svg?style=flat)](http://cocoapods.org/pods/FunAccordionView)
[![License](https://img.shields.io/cocoapods/l/FunAccordionView.svg?style=flat)](http://cocoapods.org/pods/FunAccordionView)
[![Platform](https://img.shields.io/cocoapods/p/FunAccordionView.svg?style=flat)](http://cocoapods.org/pods/FunAccordionView)

[swift-badge]: https://img.shields.io/badge/Swift-4.2-orange.svg
[swift-url]: https://swift.org
[platform-badge]: https://img.shields.io/badge/Platforms-OS%20X%20--%20Linux-lightgray.svg
[platform-url]: https://swift.org

FunAccordionView is a fork of Amrata Baghels [ThreeLevelAccordian](https://github.com/amratab/ThreeLevelAccordian), a three level accordion table view for iOS. It itself owes its base code to [SwiftyAccordionCells](https://github.com/justinmfischer/SwiftyAccordionCells). Most of the design is customisable. It goes till three levels. You can customise the font, color, background color of items, add image to them etc. The innermost items can be multiline too. If an element does not have any child elements, expand icon is not shown against them. 

[![Styled demo][demo-styled]][repo-url]

[![Unstyled demo][demo-unstyled]][repo-url]

[demo-styled]: https://github.com/marcandreappel/FunAccordionView/blob/master/greenBgAccDemo.gif
[demo-unstyled]: https://github.com/marcandreappel/FunAccordionView/blob/master/whiteBgSmallAccDemo.gif
[repo-url]: https://github.com/marcandreappel/FunAccordionView

## Installation

FunAccordionView is available through [CocoaPods](http://cocoapods.org).
To install it, simply add it to your Podfile:

```ruby
   pod "FunAccordionView"
```

### Example

To run the example project, clone the repository, and run `pod install` from the *FunAccordionViewExample* directory.

### Requirements

iOS 11.0+

## Usage

There are three types of cells for three levels:

* __FunAVHeaderItem__ This is the highest (first) level cell.
* __FunAVCell__ This is the second level cell.
* __FunAVSubItem__ This is the innermost (third level) cell.

Setup your tableView whichever way you want before initializing FunAccordionView. If you wish, you can set globally the background color and other properties, and they will be retained if you do not override them with options.

Find the basic code below:

```swift
import FunAccordionView

class ViewController: UIViewController, TLADelegate {

    @IBOutlet weak var tableView: UITableView!

    var cells = [FunAVCell]()
    var delegateController: FunAVController! // ← This is very very important

    override func viewDidLoad() {
        super.viewDidLoad()

        // Populating data
        cells.append(TLAHeaderItem(value: "Header1", imageURL: "headerImage1"))
        cells.append(TLACell(value: "Middle item1", imageURL: "cellImage1"))
        cells.append(TLASubItem(value: "Lower item1", imageURL: "subItemImage1"))
        cells.append(TLACell(value: "Middle item2", imageURL: "cellImage2"))
        cells.append(TLASubItem(value: "Lower item2", imageURL: "subItemImage2"))
        cells.append(TLACell(value: "Middle item3", imageURL: "cellImage3"))

        cells.append(TLAHeaderItem(value: "Header2", imageURL: "headerImage2"))
        cells.append(TLACell(value: "Middle item21", imageURL: "cellImage2"))
        cells.append(TLASubItem(value: "Lower item21", imageURL: "subItemImage2"))
        cells.append(TLACell(value: "Middle item22"))

        // Customization properties - This part is optional
        let options: [TLAOption] = [
            .CellBackgroundColor(UIColor.whiteColor()),
            .CellColor(textColor),
            .CellFont(UIFont(name: "HelveticaNeue-Medium", size: 14.0)!),
            .CellHeight(44.0),
            .UseSingleValues(true),
            .UseAccessoryIcons(true),
            .ExpandIcon(UIImage(named: "MyExpandIcon.png")!),
            .CollapseIcon(UIImage(named: "MyCollapseIcon.png")!),
        ]

        // The following part is NOT optional 🙃
        // Specify the cell reuse identifier here
        let funAccordionView = FunAccordionView.init(cells: cells, options: options, reuseIdentifier: "tableViewCellIdentifier")
        funAccordionView.delegate = self
        // The next three lines are extremely important
        delegateController = funAccordionView.controller
        tableView.dataSource = delegateController
        tableView.delegate = delegateController

        tableView.reloadData()
    }

    // Delegate function
    func didSelectItemAtIndex(index: Int) {
        let alertController = UIAlertController(title: "Clicked", message: "Clicked \(index)", preferredStyle: UIAlertController.Style.Alert)
        alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.Cancel, handler: nil))
        self.presentViewController(alertController, animated: true, completion: nil)
        }
    }
```

### Customization

You can either specify single customization values for all cell types through the parameters given below:

* CellBackgroundColor
* CellColor: Text color
* CellHeight
* CellFont

*If you want to apply these values, make sure to set* UseSingleValues *to* `true`

You can also provide cell type specific customization. The names are self explanatory.

#### FunAVHeaderItem

1) HeaderTextFont
2) HeaderTextColor
3) HeaderCellBackgroundColor
4) HeaderCellHeight

#### FunAVCell

1) ItemTextFont
2) ItemTextColor
3) ItemCellBackgroundColor
4) ItemCellHeight

#### FunAVSubItem

1) SubItemTextFont
2) SubItemTextColor
3) SubItemCellBackgroundColor
4) SubItemCellHeight
5) IsMultiline: set to `true` if you are expecting your text to be too big for a single line.

Also, if you want default styling that comes with tables, you can pass options as nil.	

There is expand and collapse icons shown on default for appropriate rows (that is, if the row can be expanded or needs to be collapsed). You can turn it off or set your own icons for expand or collapse. Parameters for the same are:
1) UseAccessoryIcons: mark false if you do not want to show expand/collapse icons
2) ExpandIcon
3) CollapseIcon

You can use these options as shown in the Basic Usage section.

### Authors

Amrata Baghel, amrata.baghel@gmail.com
Marc-André Appel, marc-andre@appel.fun

### License

FunAccordionView is available under the MIT license. See the LICENSE file for more info.
