//
//  LoadingView.swift
//  LoadingView
//
//  Created by Charlie Nguyen on 03/09/2021.
//

import SwiftUI

struct LoadingView: View {
    
    let text: String
    
    var body: some View {
        
        VStack(spacing: 8) {
            ProgressView()
            Text(text)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView(text: "Fetching Quotes")
    }
}
