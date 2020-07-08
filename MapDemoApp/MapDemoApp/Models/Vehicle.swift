//
//  Vehicle.swift
//  MapDemoApp
//
//  Created by Tarsha De Souza on 08/07/2020.
//  Copyright © 2020 TarshaDeSouza. All rights reserved.
//

import Foundation
import CoreLocation

enum ResourceType: String, Codable {
	case moped = "MOPED"
	case electricCar = "ELECTRIC_CAR"
}

protocol Transportable: Meepable {
	var licencePlate: String { get set }
	var range: Double { get set }
	var batteryLevel: Double { get set }
	var seats: Double { get set }
	var model: String { get set }
	var resourceType: ResourceType { get set }
}

struct Vehicle: Codable, Transportable {
	
	var licencePlate: String
	var range: Double
	var batteryLevel: Double
	var seats: Double
	var model: String
	var resourceType: ResourceType
	var id: String
	var name: String
	var x: CLLocationDegrees
	var y: CLLocationDegrees
	var companyZoneId: Double
	
	enum CodingKeys: String, CodingKey {
		case licencePlate
		case range
		case batteryLevel
		case seats
		case model
		case resourceType
		case id
		case name
		case x
		case y
		case companyZoneId
	}
}
