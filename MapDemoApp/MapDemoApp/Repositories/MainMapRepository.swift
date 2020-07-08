//
//  MainMapRepository.swift
//  MapDemoApp
//
//  Created by Tarsha De Souza on 08/07/2020.
//  Copyright © 2020 TarshaDeSouza. All rights reserved.
//

import Foundation
import Alamofire

typealias MeepResult = Swift.Result<Meep, AFError>

protocol MainMapRepositoryRepositoryProtocol {
	func retrieveData(completion: @escaping (MeepResult) -> Void)
}

/// Manages connection to the backend for MainMap call to Meep backend
class MainMapRepository: BaseRepository, MainMapRepositoryRepositoryProtocol {
	
	init() {
		super.init(manager: RequestManager())
	}
	
	func retrieveData(completion: @escaping (MeepResult) -> Void) {
		let queryObj = MeepEndPoints.retrieveData
		manager.request(queryObj)?.logResponse().responseDecodable { (response: DataResponse<Meep, AFError>) in
			completion(response.result)
		}
	}
}
