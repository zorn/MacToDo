import Cocoa

class MainWindowController: NSWindowController {
    
    //MARK: - Outlets
    
    @IBOutlet weak var tableView: NSTableView!
    @IBOutlet weak var textField: NSTextField!
    @IBOutlet weak var addButton: NSButton!
    
    //MARK: - Properties
    var items = [String]()
    
    //MARK: - NSWindowController
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
    //MARK: - Actions
    
    @IBAction func addButtonAction(sender: NSButton) {
        let newItem = textField.stringValue
        if !newItem.isEmpty {
            items.append(newItem)
            tableView.reloadData()
            textField.stringValue = ""
        }
    }
    
}

extension MainWindowController: NSTableViewDataSource, NSTableViewDelegate {
    
    func numberOfRowsInTableView(tableView: NSTableView) -> Int {
        return items.count
    }
    
    func tableView(tableView: NSTableView, objectValueForTableColumn tableColumn: NSTableColumn?, row: Int) -> AnyObject? {
        return items[row]
    }
    
}