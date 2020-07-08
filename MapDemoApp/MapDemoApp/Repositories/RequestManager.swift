//
//  RequestManager.swift
//  MapDemoApp
//
//  Created by Tarsha De Souza on 08/07/2020.
//  Copyright © 2020 TarshaDeSouza. All rights reserved.
//

import Foundation
import Alamofire

/// Main common request manager
public class RequestManager {
	let client: Alamofire.Session
	
	public init() {
		self.client = Alamofire.Session(configuration: URLSessionConfiguration.default)
	}
	
	public func request(_ endPoints: MeepEndPoints) -> DataRequest? {
		guard let request = try? endPoints.asURLRequest() else {
			return nil
		}
		return client.request(request)
	}
}
