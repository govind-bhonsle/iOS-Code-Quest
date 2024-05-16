//
//  ContentView.swift
//  iOS Coding Challenge
//
//  Created by Govind Sonu on 15/05/24.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - BODY
    @ObservedObject private var viewModel : ViewModel
    @State private var error: RequestError?
    @State private var showAlert = false

    // MARK: - Init
    init() {
        self.viewModel = ViewModel(service: ProductService())
    }
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .background(.white)
                List(viewModel.products) { product in
                    NavigationLink {
                        ProductDetailView(product: product)
                    } label: {
                        ProductListItemView(product: product)
                    }
                }
                .listStyle(.plain)
                .background(.colorBackground)
                .padding(0)
            }
            .padding(0)
        }
        .alert(isPresented: $showAlert, error: error) { _ in
              Button("OK") {
                showAlert = false
              }
        } message: { error in
            Text(error.customMessage)
        }
        .accentColor(.colorGreenDark)
        .task {
            await viewModel.fetchData { result in
                switch result
                {
                case .success(_):
                    showAlert = false
                case .failure(let error):
                    self.error = error
                    showAlert = true
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
