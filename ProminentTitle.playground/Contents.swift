import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
    }
}

let view = ContentView()
let hostingVC = UIHostingController(rootView: view)
PlaygroundPage.current.liveView = hostingVC
