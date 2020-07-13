//
//  MainMapPresenterTests.swift
//  MapDemoAppTests
//
//  Created by Tarsha de Souza on 13/7/20.
//  Copyright © 2020 TarshaDeSouza. All rights reserved.
//

import XCTest
@testable import MapDemoApp

class MainMapPresenterTests: XCTestCase {
	var presenter: MainMapPresenter!
	var viewMock: MainMapViewMock!
	
	override func setUp() {
		viewMock = MainMapViewMock()
		presenter = MainMapPresenter(view: viewMock)
	}
	
	override func tearDown() {
	}
	
	func testGetMapData() {
		//Given
		let mockResponse = Mocks.load("Meep", as: [Meep].self)
		let meepObject = MeepViewObject(data: mockResponse)
		
		//When
		presenter.getMapData(response: MainMap.Model.Response(meeps: meepObject))
		
		//Then
		XCTAssert(viewMock.didDisplayMapData, "Error, could not return meep objects")
	}
	
	func testDidFailToGetData() {
		
		//When
		presenter.didFailToGetData()
		
		//Then
		XCTAssert(viewMock.didShowError, "error handling was not shown")
	}
}
