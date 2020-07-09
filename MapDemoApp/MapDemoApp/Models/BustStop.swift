//
//  BustStop.swift
//  MapDemoApp
//
//  Created by Tarsha De Souza on 08/07/2020.
//  Copyright © 2020 TarshaDeSouza. All rights reserved.
//

import Foundation
import CoreLocation

protocol Stoppable: Meepable {
	var lat: CLLocationDegrees? { get set }
	var lon: CLLocationDegrees? { get set }
	var scheduledArrival: Double? { get set }
	var locationType: Double? { get set }
}

struct BusStop: Codable, Meepable {
	var id: String
	var name: String
	var x: CLLocationDegrees
	var y: CLLocationDegrees
	var companyZoneId: Double
	var scheduledArrival: Double?
	var locationType: Double?
	var lat: CLLocationDegrees?
	var lon: CLLocationDegrees?
}
