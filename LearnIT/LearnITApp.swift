import SwiftUI

@main
struct LearnITApp: App {
    let persistenceController = PersistenceController.shared
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
            .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }.windowStyle(.hiddenTitleBar)
    }
}
