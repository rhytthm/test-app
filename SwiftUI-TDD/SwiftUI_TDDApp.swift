//
//  SwiftUI_TDDApp.swift
//  SwiftUI-TDD
//
//  Created by RAJEEV MAHAJAN on 14/04/25.
//

import SwiftUI

struct Real_App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct Test_App: App {
    var body: some Scene {
        WindowGroup {
            Text("Hello, Tests!")
        }
    }
}

@main
struct Main {
    static func main() {
        guard isProduction() else {
            Test_App.main()
            return
        }
        Real_App.main()
    }
    
    fileprivate static func isProduction() -> Bool {
        return NSClassFromString("XCTestCase") != nil
    }
    
}

