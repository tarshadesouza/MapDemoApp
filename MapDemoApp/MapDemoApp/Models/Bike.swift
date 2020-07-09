//
//  Bike.swift
//  MapDemoApp
//
//  Created by Tarsha De Souza on 08/07/2020.
//  Copyright © 2020 TarshaDeSouza. All rights reserved.
//

import Foundation
import CoreLocation

protocol Bikeable: Meepable {
	var realTimeData: Bool? { get set }
	var station: Bool? { get set }
	var availableResources: Double? { get set }
	var spacesAvailable: Double? { get set }
	var allowDropoff: Bool? { get set }
	var bikesAvailable: Double? { get set }
}

struct Bike: Codable, Meepable, Bikeable {
	var id: String
	var name: String
	var x: CLLocationDegrees
	var y: CLLocationDegrees
	var companyZoneId: Double
	var realTimeData: Bool?
	var station: Bool?
	var availableResources: Double?
	var spacesAvailable: Double?
	var allowDropoff: Bool?
	var bikesAvailable: Double?
}
