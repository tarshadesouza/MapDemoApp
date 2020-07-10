//
//  MeepViewObject.swift
//  MapDemoApp
//
//  Created by Tarsha De Souza on 09/07/2020.
//  Copyright © 2020 TarshaDeSouza. All rights reserved.
//

import Foundation

class MeepViewObject {
	
	var meepObjects: [Meep]
	
	init (data: [Meep]) {
		self.meepObjects = data
	}
	
	var vehicles: [Vehicle] {
		var vehiclesArray = [Vehicle]()
		meepObjects.forEach { (meepObject) in
			guard let authorizedVehicles = meepObject.vehicle else {
				return
			}
			vehiclesArray.append(authorizedVehicles)
		}
		return vehiclesArray
	}
	
	var bikes: [Bike] {
		var bikesArray = [Bike]()
		meepObjects.forEach { (meepObject) in
			guard let bike = meepObject.bike else {
				return
			}
			bikesArray.append(bike)
		}
		return bikesArray
	}
	
	var stops: [BusStop] {
		var busArray = [BusStop]()
		meepObjects.forEach { (meepObject) in
			guard let stop = meepObject.stops else {
				return
			}
			busArray.append(stop)
		}
		return busArray
	}
}
