//
//  MainMapInteractorTests.swift
//  MapDemoAppTests
//
//  Created by Tarsha de Souza on 12/7/20.
//  Copyright © 2020 TarshaDeSouza. All rights reserved.
//

import XCTest
@testable import MapDemoApp

class MainMapInteractorTests: XCTestCase {
	
	var presenterMock: MainMapPresenterMock!
	var interactor: MainMapInteractor!
	var mapRepositoryMock: MapRepositoryMock!
	
	override func setUp() {
		mapRepositoryMock = MapRepositoryMock()
		presenterMock = MainMapPresenterMock()
		interactor = MainMapInteractor(presenter: presenterMock, repository: mapRepositoryMock)
	}
	
	override func tearDown() {
	}
	
	func testGetMapDataOK() {
		//Given
		mapRepositoryMock.returnSuccess = true

		//When
		interactor.getMapData()
		
		//Then
		XCTAssert(presenterMock.didGetMapData, "could not get data")
	}
	
	func testGetMapDataKO() {
		//Given
		mapRepositoryMock.returnSuccess = false

		//When
		interactor.getMapData()
		
		//Then
		XCTAssertFalse(presenterMock.didGetMapData, "could not handle error")
	}
}
