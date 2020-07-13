//
//  XCTestExtensions.swift
//  MapDemoAppTests
//
//  Created by Tarsha de Souza on 12/7/20.
//  Copyright © 2020 TarshaDeSouza. All rights reserved.
//

import Foundation
import XCTest

class Mocks {
	static func load<T: Decodable>(_ filename: String, fileExtension: String = "json", as type: T.Type = T.self) -> T {
		let data: Data
		
		guard let filePath = Bundle(for: MainMapPresenterMock.self).path(forResource: filename, ofType: fileExtension)
			else {
				fatalError("Couldn’t find \(filename) in main bundle.")
		}
		
		let file = URL(fileURLWithPath: filePath)
		do {
			data = try Data(contentsOf: file)
		} catch {
			fatalError("Couldn’t load \(filename) from main bundle:\n\(error)")
		}
		
		do {
			let decoder = JSONDecoder()
			return try decoder.decode(T.self, from: data)
		} catch {
			fatalError("Couldn’t parse \(filename) as \(T.self):\n\(error)")
		}
	}
}
