//
//  AppError.swift
//  Bible_Quiz
//
//  Created by Paulette Stevena on 2024/04/22.
//

import Foundation

struct AppError: Identifiable {
    let id = UUID().uuidString
    let errorString: String
}
