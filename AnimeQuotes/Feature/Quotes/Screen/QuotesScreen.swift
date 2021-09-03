//
//  QuotesScreen.swift
//  QuotesScreen
//
//  Created by Charlie Nguyen on 03/09/2021.
//

import SwiftUI

struct QuotesScreen: View {
    
    @StateObject private var viewModel = QuotesViewModelImplementation(
        service: QuotesServiceImplementation()
    )
    
    var body: some View {
        Group {
            if viewModel.quotes.isEmpty {
                LoadingView(text: "Fetching Quotes")
            } else {
                List {
                    ForEach(viewModel.quotes, id: \.anime) { item in
                        QuoteView(item: item)
                    }
                }
            }
        }
        .task {
            await viewModel.getRandomQuotes()
        }
    }
}

struct QuotesScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuotesScreen()
    }
}
