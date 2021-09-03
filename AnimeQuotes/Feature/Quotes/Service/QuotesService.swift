//
//  QuotesService.swift
//  QuotesService
//
//  Created by Charlie Nguyen on 03/09/2021.
//

import Foundation

protocol QuotesService {
    func fetch() async throws -> [Quote]
}

final class QuotesServiceImplementation: QuotesService {
    func fetch() async throws -> [Quote] {
        let urlSession = URLSession.shared
        let url = URL(string: APIConstants.baseURL.appending("api/quotes"))
        let (data, _) = try await urlSession.data(from: url!)
        return try JSONDecoder().decode([Quote].self, from: data)
    }
}
