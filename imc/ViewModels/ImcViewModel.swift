//
//  ImcViewModel.swift
//  imc
//
//  Created by Felipe Santos on 10/12/24.
//

import SwiftData
import SwiftUI

class ImcViewModel: ObservableObject {
    
    @Environment(\.modelContext) private var modelContext
    @Query private var imc: [Imc]
    
    @Published var weightValue: String = ""
    @Published var heightValue: String = ""
    @Published var imcResult: String = ""
    
    func calculateIMC() {
        // Valida se os valores inseridos são válidos
        guard let weight = Double(weightValue), let height = Double(heightValue), height > 0 else {
            imcResult = "Por favor, insira valores válidos."
            return
        }
        
        // Cálculo do IMC
        let result = weight / (height * height)
        imcResult = String(format: "%.2f", result)
        
        // Salva o IMC no banco de dados
        let newImc = Imc(weight: weight, height: height) // Aqui usamos Double para weight e height
        modelContext.insert(newImc)
        
        // Salva no contexto
        do {
            try modelContext.save()
        } catch {
            print("Erro ao salvar o IMC: \(error)")
        }
    }
}








