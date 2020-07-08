//
//  Meepable.swift
//  MapDemoApp
//
//  Created by Tarsha De Souza on 08/07/2020.
//  Copyright © 2020 TarshaDeSouza. All rights reserved.
//

import Foundation
import CoreLocation

protocol Meepable {
	var id: String { get set }
	var name: String { get set }
	var x: CLLocationDegrees { get set }
	var y: CLLocationDegrees { get set }
	var companyZoneId: Double { get set }
}
