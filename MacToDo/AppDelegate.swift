import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    @IBOutlet weak var window: NSWindow!
    
    let mainWindowController = MainWindowController()
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        mainWindowController.showWindow(self)
    }
    
    func applicationDidBecomeActive(notification: NSNotification) {
        println("applicationDidBecomeActive")
    }
    
    func applicationShouldHandleReopen(sender: NSApplication, hasVisibleWindows flag: Bool) -> Bool {
        mainWindowController.showWindow(self)
        return true
    }
    
    
}

