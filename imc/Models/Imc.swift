//
//  Imc.swift
//  imc
//
//  Created by Felipe Santos on 10/12/24.
//

import SwiftUI
import SwiftData

@Model
class Imc: Identifiable {
    var id: UUID
    var weight: Double
    var height: Double
    var result: Double
    var date: Date

    init(weight: Double, height: Double, result: Double, date: Date = Date()) {
        self.id = UUID()
        self.weight = weight
        self.height = height
        self.result = result
        self.date = date
    }
}
