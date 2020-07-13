//
//  MainMapInteractorMock.swift
//  MapDemoAppTests
//
//  Created by Tarsha de Souza on 12/7/20.
//  Copyright © 2020 TarshaDeSouza. All rights reserved.
//

import Foundation
@testable import MapDemoApp

class MainMapInteractorMock: MainMapInteractorProtocol {
	var didGetMapData = false
	
	func getMapData() {
		didGetMapData = true
	}
}
