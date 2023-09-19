//
//  ApiError.swift
//  Weather
//
//  Created by Sang Hyeon kim on 2023/09/19.
//

import Foundation

enum ApiError: Error {
    case unknown
    case invalidUrl(String)
    case invalidResponse
    case failed(Int)
    case emptyData
}
