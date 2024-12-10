//
//  imcApp.swift
//  imc
//
//  Created by Felipe Santos on 05/12/24.
//

import SwiftUI
import SwiftData

@main
struct imcApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Imc.self])
    }
}
