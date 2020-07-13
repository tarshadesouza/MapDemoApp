//
//  Endpoints.swift
//  MapDemoApp
//
//  Created by Tarsha De Souza on 08/07/2020.
//  Copyright © 2020 TarshaDeSouza. All rights reserved.
//

import Foundation
import Alamofire

///Endpoints for meep repository request objects
public enum MeepEndPoints {
	case retrieveData
}

extension MeepEndPoints {
	
	var httpMethod: HTTPMethod {
		switch self {
		case .retrieveData:
			return .get
		}
	}
	
	var baseURLString: String {
		switch self {
		case .retrieveData:
			return "https://apidev.meep.me"
		}
	}
	
	var path: String? {
		switch self {
		case .retrieveData:
			return "tripplan/api/v1/routers/lisboa/resources"
		}
	}
	
	var params: [String: Any]? {
		switch self {
		case .retrieveData:
			return ["lowerLeftLatLon" : "38.711046,-9.160096",
					"upperRightLatLon" : "38.739429,-9.137115"]
		}
	}
	
	var headers: HTTPHeaders {
		switch self {
		case .retrieveData :
			return  ["Content-Type": "application/json"]
		}
	}
	
	public func asURLRequest() throws -> URLRequest {
		let url = try baseURLString.asURL()
		
		var request = URLRequest(url: url.appendingPathComponent(path ?? ""))
		request.httpMethod = httpMethod.rawValue
		request.timeoutInterval = TimeInterval(10 * 1000)
		
		return try URLEncoding.default.encode(request, with: params)
	}
}
