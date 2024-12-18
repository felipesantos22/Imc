//
//  HistoryView.swift
//  imc
//
//  Created by Felipe Santos on 11/12/24.
//

import SwiftUI
import SwiftData

struct HistoryView: View {
    
    @Query(sort: \Imc.date, order: .forward) private var results: [Imc]
    @StateObject private var viewModel = ImcViewModel()
    @Environment(\.modelContext) private var context

    var body: some View {
        VStack {
            Text("Histórico de Resultados")
                .font(.title)
                .fontWeight(.bold)
                .padding()

            if results.isEmpty {
                Text("Nenhum resultado disponível.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            } else {
                List(results) { result in
                    VStack(alignment: .leading) {
                        Text("ID: \(result.id) Id")
                            .font(.subheadline)
                        Text("Peso: \(String(format: "%.2f", result.weight)) kg")
                            .font(.headline)
                            .foregroundColor(.gray)
                        Text("Altura: \(String(format: "%.2f", result.height)) kg")
                            .font(.headline)
                            .foregroundColor(.gray)
                        Text("IMC: \(String(format: "%.2f", result.result))")
                            .font(.headline)
                        Text("Data: \(result.date, style: .date)")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Button(action: {
                            viewModel.clearResult(result: result, context: context)
                        }){
                            Text("Excluir").foregroundColor(.red)
                        }
                    }
                    .padding()
                }
            }
        }
        .padding()
    }
}


