//
//  ImcViewModel.swift
//  imc
//
//  Created by Felipe Santos on 10/12/24.
//

import SwiftData
import SwiftUI

class ImcViewModel: ObservableObject {
    
    @Published var weightValue: String = ""
    @Published var heightValue: String = ""
    @Published var imcResult: String = ""
    
    func calculateIMC(modelContext: ModelContext) {
        // Valida se os valores inseridos são válidos
        guard let weight = Double(weightValue), let height = Double(heightValue), height > 0 else {
            imcResult = "Por favor, insira valores válidos."
            return
        }
        
        // Cálculo do IMC
        let result = weight / (height * height)
        imcResult = String(format: "%.2f", result)
        
        // Salva o IMC no banco de dados
        let newImc = Imc(weight: weight, height: height,  result: result, date: Date())
        modelContext.insert(newImc)
        print("IMC salvo com sucesso")
        // Salva no contexto
        do {
            try modelContext.save()
        } catch {
            print("Erro ao salvar o IMC: \(error)")
        }
        
    }
}








