//
//  MeepViewObject.swift
//  MapDemoApp
//
//  Created by Tarsha De Souza on 09/07/2020.
//  Copyright © 2020 TarshaDeSouza. All rights reserved.
//

import Foundation

class MeepViewObject {
//	var vehicles: [Vehicle]
//	var bikes: [Bike]
//	var stops: [BusStop]
	var obj: [Meep]

	init (data: [Meep]) {
		self.obj = data
//		self.vehicles = vehicles
//		self.bikes = bikes
//		self.stops = stops
	}
	
	var vehicles: [Vehicle] {
		var vehiclesArray = [Vehicle]()
		obj.forEach { (meepObject) in
			
			guard let authorizedVehicles = meepObject.vehicle else {
				return
			}
			vehiclesArray.append(authorizedVehicles)
		}
		return vehiclesArray
	}
}
