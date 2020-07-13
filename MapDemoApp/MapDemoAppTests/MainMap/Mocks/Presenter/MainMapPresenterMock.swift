//
//  MainMapPresenterMock.swift
//  MapDemoAppTests
//
//  Created by Tarsha de Souza on 12/7/20.
//  Copyright © 2020 TarshaDeSouza. All rights reserved.
//

import Foundation
@testable import MapDemoApp

class MainMapPresenterMock: MainMapPresenterProtocol {
	
	var didGetMapData = false
	var didShowError = false
	
	func getMapData(response: MainMap.Model.Response) {
		didGetMapData = true
	}
	
	func didFailToGetData() {
		didShowError = true
	}
}
