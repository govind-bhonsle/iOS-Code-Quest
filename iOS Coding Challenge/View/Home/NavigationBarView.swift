//
//  NavigationBarView.swift
//  iOS Coding Challenge
//
//  Created by Govind Sonu on 15/05/24.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        HStack {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.colorGreenLight)
            })
            Spacer()
            Text("Products")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.colorGreenMedium)
            Spacer()
            Button(action: {}, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.colorGreenLight)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }
            })
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    NavigationBarView()
        .padding()
}
