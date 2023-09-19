//
//  FileManager+SharedContainer.swift
//  Weather
//
//  Created by Sang Hyeon kim on 2023/09/19.
//

import Foundation

extension FileManager {
    static var sharedContainerURL: URL {
        return FileManager.default.containerURL(forSecurityApplicationGroupIdentifier: "group.com.newkayak12.Weather.contents")!
    }
}
