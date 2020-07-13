//
//  MapRepositoryMock.swift
//  MapDemoAppTests
//
//  Created by Tarsha de Souza on 12/7/20.
//  Copyright © 2020 TarshaDeSouza. All rights reserved.
//

import Alamofire

@testable import MapDemoApp

class MapRepositoryMock: MainMapRepositoryProtocol {
	
	var retrieveDataCalled = false
	var returnSuccess = true
	
	func retrieveData(completion: @escaping (MeepResult) -> Void) {
		retrieveDataCalled = true
		if returnSuccess {
			let meepObj = Mocks.load("", as: [Meep].self)
			completion(.success(meepObj))
		} else {
			completion(.failure(.parameterEncodingFailed(reason: .jsonEncodingFailed(error: CommonApiError.genericError))))
		}
	}
}
