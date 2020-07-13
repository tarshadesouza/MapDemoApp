//
//  MapMarkerFactory.swift
//  MapDemoApp
//
//  Created by Tarsha de Souza on 12/7/20.
//  Copyright © 2020 TarshaDeSouza. All rights reserved.
//

import UIKit
import CoreLocation
import GoogleMaps

///Marker factory that  creates a marker object for the map based on its certain config
protocol MapMarkerProtocol {
	func configureMapMarker() -> GMSMarker
}

struct Marker {
	var title: String
	var position: CLLocationCoordinate2D
	var snippet: String
	var type: MeepType
	var resourceType: ResourceType?
	var companyZoneId: Double
	
	enum MeepType {
		case busStop
		case bike
		case vehicle
	}
	
	init(title: String, position: CLLocationCoordinate2D, snippet: String, type: MeepType, resType: ResourceType? = nil, companyZoneId: Double) {
		self.title = title
		self.position = position
		self.snippet = snippet
		self.type = type
		self.resourceType = resType
		self.companyZoneId = companyZoneId
	}
}

struct MapMarkerList: MapMarkerProtocol {
	var marker: Marker
	
	init(marker: Marker) {
		self.marker = marker
	}
	
	func configureMapMarker() -> GMSMarker {
		let mapMarker = GMSMarker()
		mapMarker.position = marker.position
		mapMarker.title = marker.title
		mapMarker.snippet = marker.snippet
		
		guard let zoneID = ZoneId(rawValue: marker.companyZoneId) else {
			return GMSMarker()
		}
		
		switch marker.type {
		case .bike:
			mapMarker.icon =  UIImage(named: "icn_bike")?.imageWithColor(zoneId: zoneID) ?? UIImage()
		case .vehicle:
			mapMarker.icon = configureImageForResourceType(type: marker.resourceType ?? .electricCar)
		case .busStop:
			mapMarker.icon = UIImage(named: "icn_bus")?.imageWithColor(zoneId: zoneID) ?? UIImage()
		}
		return mapMarker
	}
	
	private func configureImageForResourceType(type: ResourceType) -> UIImage {
		guard let zoneID = ZoneId(rawValue: marker.companyZoneId) else {
			return UIImage()
		}
		switch type {
		case .electricCar:
			return UIImage(named: "icn_car")?.imageWithColor(zoneId: zoneID) ?? UIImage()
		case .moped:
			return UIImage(named: "icn_moped")?.imageWithColor(zoneId: zoneID) ?? UIImage()
		}
	}
}

struct MapMarkerFactory {
	static func getMapMarker(marker: Marker) -> GMSMarker {
		switch marker.type {
		case .bike, .vehicle, .busStop:
			let marker = MapMarkerList(marker: marker)
			return marker.configureMapMarker()
		}
	}
}
