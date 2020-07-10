//
//  Meep.swift
//  MapDemoApp
//
//  Created by Tarsha De Souza on 08/07/2020.
//  Copyright © 2020 TarshaDeSouza. All rights reserved.
//

import Foundation
import CoreLocation

struct Meep: Codable, Transportable, Meepable, Stoppable, Bikeable {
	var lat: CLLocationDegrees?
	var lon: CLLocationDegrees?
	var scheduledArrival: Double?
	var locationType: Double?
	var realTimeData: Bool?
	var station: Bool?
	var availableResources: Double?
	var spacesAvailable: Double?
	var allowDropoff: Bool?
	var bikesAvailable: Double?
	var licencePlate: String?
	var range: Double?
	var batteryLevel: Double?
	var seats: Double?
	var model: String?
	var resourceType: ResourceType?
	var id: String
	var name: String
	var x: CLLocationDegrees
	var y: CLLocationDegrees
	var companyZoneId: Double
	
	var vehicle: Vehicle? {
		guard let plate = licencePlate, let range = range, let battery = batteryLevel, let model = model, let resType = resourceType else {
			return nil
			}
		return Vehicle(licencePlate: plate, range: range, batteryLevel: battery, seats: seats, model: model, resourceType: resType, id: id, name: name, x: x, y: y, companyZoneId: companyZoneId)
	}
	
	var bike: Bike? {
		guard let realTimeData = realTimeData, let station = station, let availableRes =  availableResources, let spacesAvailable = spacesAvailable, let allowDropOff = allowDropoff, let bikesAvail = bikesAvailable else {
			return nil
		}
		
		return Bike(id: id, name: name, x: x, y: y, companyZoneId: companyZoneId, realTimeData: realTimeData, station: station, availableResources: availableRes, spacesAvailable: spacesAvailable, allowDropoff: allowDropOff, bikesAvailable: bikesAvail)
	}
}
