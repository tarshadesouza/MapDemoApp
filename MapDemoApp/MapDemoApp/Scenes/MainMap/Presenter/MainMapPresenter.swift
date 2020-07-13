//
//  MainMapPresenter.swift
//
//  Created by Tarsha De Souza on 08/07/2020.
//  Copyright (c) 2020 TarshaDeSouza. All rights reserved.
//
//  This file was generated by the Globile Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol MainMapPresenterProtocol {
	func getMapData(response: MainMap.Model.Response)
	func didFailToGetData()
}

class MainMapPresenter: MainMapPresenterProtocol {
	
	weak var view: MainMapViewProtocol?
	
	init(view: MainMapViewProtocol) {
		self.view = view
	}
	
	func getMapData(response: MainMap.Model.Response) {
		let viewModel = MainMap.Model.ViewModel(meeps: response.meeps)
		view?.displayMapData(viewModel: viewModel)
	}
	
	func didFailToGetData() {
		view?.showError()
	}
}
