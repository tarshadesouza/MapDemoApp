//
//  MainMapViewMock.swift
//  MapDemoAppTests
//
//  Created by Tarsha de Souza on 12/7/20.
//  Copyright © 2020 TarshaDeSouza. All rights reserved.
//

import Foundation
@testable import MapDemoApp

class MainMapViewMock: MainMapViewProtocol {

	var didDisplayMapData = false
	var didShowError = false
	
	func displayMapData(viewModel: MainMap.Model.ViewModel) {
		didDisplayMapData = true
	}
	
	func showError() {
		didShowError = true
	}
}
