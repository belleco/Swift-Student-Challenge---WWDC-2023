import SwiftUI

@main
struct MyApp: App {
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                MenuView()
            }.navigationViewStyle(.stack)
                .navigationBarHidden(true)
        }
    }
}
