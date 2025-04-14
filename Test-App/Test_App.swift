//
//  Test_AppApp.swift
//  Test-App
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
            ContentView()
        }
    }
}

@main
struct TestDriver {
    static func main() {
        if NSClassFromString("XCTestCase") != nil {
            Test_App.main()
        } else {
            Real_App.main()
        }
    }
}

