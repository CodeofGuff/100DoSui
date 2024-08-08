//Day 20 through 22

// Project 2 - Guess The Flag

// "This project is still going to be nice and easy, but gives me chance to introduce 
// you to whole range of new SwiftUI functionality:
// stacks, buttons, images, alerts, asset catalogs, and more."



// Using Stacks to arrange Views
// HStack
// VStack
// ZStack



// Guass effect

struct ContentView: View {
    var body: some View {
        ZStack {
            // Two seperate Colors on top an bottom
            VStack(spacing: 0) {
                Color.red
                Color.blue
            }
            // Guass effect on the Click Me
            Text("Click me!")
                .foregroundStyle(.secondary)
                .padding()
                .background(.ultraThinMaterial)
        }
        .ignoresSafeArea() // most important three words
    }
}





// Gradient
struct ContentView: View {
   var body: some View {
        LinearGradient(stops: [
            Gradient.Stop(color: .gray, location: 0.1),
            Gradient.Stop(color: .blue, location: 0.9)
        ], startPoint: .top, endPoint: .bottom)
        .ignoresSafeArea()
            }
}


struct ContentView: View {
    var body: some View {
        RadialGradient(colors: [.blue, .black], center: .center, startRadius: 20, endRadius: 200)
            }
}


struct ContentView: View {
    var body: some View {
        AngularGradient(colors: [.blue, .black, .red, .yellow, .purple, .purple, .purple, .red, .blue], center: .center)
            }
}
