//
//  Imc.swift
//  imc
//
//  Created by Felipe Santos on 10/12/24.
//

import SwiftUI
import SwiftData

@Model
class Imc {
    @Attribute(.unique) var id: UUID = UUID()
    var weight: Double
    var height: Double
    var date: Date
    
    init (weight: Double, height: Double, date: Date = Date()) {
        self.weight = weight
        self.height = height
        self.date = date
    }
}
