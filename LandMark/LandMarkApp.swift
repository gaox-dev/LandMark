//
//  LandMarkApp.swift
//  LandMark
//
//  Created by Gao on 2022/7/9.
//

import SwiftUI

@main
struct LandMarkApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
