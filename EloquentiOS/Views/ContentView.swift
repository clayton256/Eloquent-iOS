import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appState: AppState
    @State private var selectedTab: Tab = .bibleReader
    
    enum Tab {
        case bibleReader
        case search
        case bookmarks
        case settings
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            // Bible Reader Tab
            BibleReaderView()
                .tabItem {
                    Label("Bible", systemImage: "book.fill")
                }
                .tag(Tab.bibleReader)
            
            // Search Tab
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
                .tag(Tab.search)
            
            // Bookmarks Tab
            BookmarksView()
                .tabItem {
                    Label("Bookmarks", systemImage: "bookmark.fill")
                }
                .tag(Tab.bookmarks)
            
            // Settings Tab
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
                .tag(Tab.settings)
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(AppState())
}
