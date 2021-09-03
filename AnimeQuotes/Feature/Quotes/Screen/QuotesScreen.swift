//
//  QuotesScreen.swift
//  QuotesScreen
//
//  Created by Charlie Nguyen on 03/09/2021.
//

import SwiftUI

struct QuotesScreen: View {
    var body: some View {
        List {
            ForEach(Quote.dummyData, id: \.anime) { item in
                VStack(alignment: .leading,
                       spacing: 8) {
                    HStack {
                        Image(systemName: "tv")
                            .font(.system(size: 12, weight: .black))
                        Text(item.anime)
                    }
                }
                       .padding()
                       .foregroundColor(.black)
            }
        }
    }
    
    private func makeAttributedString(title: String, label: String) -> AttributedString {
        
        var string = AttributedString("\(title): \(label)")
        string.foregroundColor = .black
        string.font = .system(size: 16, weight: .bold)
        
        if let range = string.range(of: label) {
            string[range].foregroundColor = .black.opacity(0.8)
            string[range].font = .system(size: 16, weight: .regular)
        }
        return string
    }
}

struct QuotesScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuotesScreen()
    }
}
