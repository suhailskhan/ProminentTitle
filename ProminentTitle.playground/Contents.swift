import SwiftUI
import PlaygroundSupport

struct ProminentTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle.weight(.bold))
            .foregroundColor(.blue)
    }
}

extension View {
    func prominentTitleStyle() -> some View {
        modifier(ProminentTitle())
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .prominentTitleStyle()
            .padding()
        
        Text("Body text")
    }
}

let view = ContentView()
let hostingVC = UIHostingController(rootView: view)
PlaygroundPage.current.liveView = hostingVC
