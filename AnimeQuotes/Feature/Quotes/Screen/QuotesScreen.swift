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
                QuoteView(item: item)
            }
        }
    }
}

struct QuotesScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuotesScreen()
    }
}
