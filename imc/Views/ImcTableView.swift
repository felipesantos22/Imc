//
//  TableView.swift
//  imc
//
//  Created by Felipe Santos on 10/12/24.
//


import SwiftUI

//struct ImcTableView: View {
//    @State private var imcRanges = [
//        ImcRange(category: "Abaixo do peso", range: "< 18.5"),
//        ImcRange(category: "Peso normal", range: "18.5 - 24.9"),
//        ImcRange(category: "Sobrepeso", range: "25 - 29.9"),
//        ImcRange(category: "Obesidade grau I", range: "30 - 34.9"),
//        ImcRange(category: "Obesidade grau II", range: "35 - 39.9"),
//        ImcRange(category: "Obesidade grau III", range: "≥ 40")
//    ]
//    
//    var body: some View {
//        Table(imcRanges) {
////            TableColumn("Categoria", value: \.category)
//            TableColumn("Faixa de IMC", value: \.range)
//        }
//        .frame(maxWidth: UIScreen.main.bounds.width * 0.9) // Limita a largura da tabela a 90% da tela
//        .frame(height: 300) // Altura ajustável
//        .border(Color.gray, width: 1) // Apenas para visualizar os limites da tabela (opcional)
//        .padding() // Adiciona um espaçamento para o layout
//    }
//}


struct ImcTableView: View {
    private let imcRanges: [ImcRange] = [
        ImcRange(category: "Abaixo do peso", range: "< 18.5"),
        ImcRange(category: "Peso normal", range: "18.5 - 24.9"),
        ImcRange(category: "Sobrepeso", range: "25 - 29.9"),
        ImcRange(category: "Obesidade grau I", range: "30 - 34.9"),
        ImcRange(category: "Obesidade grau II", range: "35 - 39.9"),
        ImcRange(category: "Obesidade grau III", range: "≥ 40")
    ]
    
    var body: some View {
        Table(imcRanges) {
            TableColumn("Categoria") { row in
                Text(row.category)
                    .frame(width: 150, alignment: .leading) // Define largura e alinhamento
            }
            TableColumn("Faixa de IMC") { row in
                Text(row.range)
                    .frame(width: 100, alignment: .center) // Define largura e alinhamento
            }
        }
        .padding()
    }
}
