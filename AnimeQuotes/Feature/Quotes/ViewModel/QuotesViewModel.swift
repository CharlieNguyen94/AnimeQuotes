//
//  QuotesViewModel.swift
//  QuotesViewModel
//
//  Created by Charlie Nguyen on 03/09/2021.
//

import Foundation

protocol QuotesViewModel: ObservableObject {
    func getRandomQuotes() async
}

@MainActor
final class QuotesViewModelImplementation: QuotesViewModel {
    
    @Published private(set) var quotes: [Quote] = []
    
    private let service: QuotesService
    
    init(service: QuotesService) {
        self.service = service
    }
    
    func getRandomQuotes() async {
        do {
            self.quotes = try await service.fetchRandomQuotes()
        } catch {
            print(error)
        }
    }
    
    
}

