import SwiftUI

@main
struct MyApp: App {
    @Environment(\.dismiss) var dismiss
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                MenuView()
            }.navigationViewStyle(.stack)
                .navigationBarHidden(true)
        }
    }
}
