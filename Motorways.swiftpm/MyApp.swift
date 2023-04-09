import SwiftUI

@main
struct MyApp: App {
    
    init() {
            MyFont.registerFonts()
        }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
