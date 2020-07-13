//
//  CommonApiError.swift
//  MapDemoAppTests
//
//  Created by Tarsha de Souza on 12/7/20.
//  Copyright © 2020 TarshaDeSouza. All rights reserved.
//

enum CommonApiError: Error {
	case genericError
	
	var localizedDescription: String {
		switch self {
		case .genericError:
			return "Something went wrong"
		}
	}
}
