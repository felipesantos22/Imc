//
//  ImcView.swift
//  imc
//
//  Created by Felipe Santos on 10/12/24.
//

import SwiftUI
import SwiftData

struct ImcView: View {
    
    @StateObject private var viewModel = ImcViewModel()
    
    var body: some View {
        ZStack {
            VStack {
                Label("IMC", systemImage: "person.crop.circle")
                    .font(.title)
                    .foregroundStyle(.black)
                    .padding(.top, 10)
                Text("Peso")
                    .font(.system(size: 22))
                    .padding(.top, 10)
                TextField("Peso", text: $viewModel.weightValue)
                    .keyboardType(.decimalPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                
                Text("Altura")
                    .font(.system(size: 22))
                    .padding(.top, 10)
                TextField("Altura", text: $viewModel.heightValue)
                    .keyboardType(.decimalPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                
                Button(action: {
                    viewModel.calculateIMC()  // Chama a função corretamente sem o $
                }) {
                    Text("Calcular IMC")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.top, 20)
                }
                .padding(10)
                Text("IMC: \(viewModel.imcResult)").bold()// Use a variável diretamente
            }
        }
        .padding()
    }
}


