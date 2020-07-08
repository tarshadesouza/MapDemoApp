//
//  Bike.swift
//  MapDemoApp
//
//  Created by Tarsha De Souza on 08/07/2020.
//  Copyright © 2020 TarshaDeSouza. All rights reserved.
//

import Foundation
import CoreLocation

struct Bike: Codable, Meepable {
	var id: String
	var name: String
	var x: CLLocationDegrees
	var y: CLLocationDegrees
	var companyZoneId: Double
	var realTimeData: Bool
	var station: Bool
	var availableResources: Double
	var spacesAvailable: Double
	var allowDropoff: Bool
	var bikesAvailable: Double
}
