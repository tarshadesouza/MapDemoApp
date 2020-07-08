//
//  MainMapViewController.swift
//
//  Created by Tarsha De Souza on 08/07/2020.
//  Copyright (c) 2020 TarshaDeSouza. All rights reserved.
//
//  This file was generated by the Globile Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit
import GoogleMaps

protocol MainMapViewProtocol: class {
    func displayMapData(viewModel: MainMap.Model.ViewModel)
}

class MainMapViewController: UIViewController {

    var router: MainMapRouterProtocol?
    private var interactor: MainMapInteractorProtocol?

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        initScene()
    }
  
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initScene()
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        doSomething()
		configMap()
    }

    private func initScene() {
        let presenter = MainMapPresenter(view: self)
        interactor = MainMapInteractor(presenter: presenter)
        router = MainMapRouter(view: self, dataStore: interactor)
    }
	
	private func configMap() {
		let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: self.view.frame, camera: camera)
        self.view.addSubview(mapView)

        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = mapView
	}
}

//Routing
extension MainMapViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let scene = segue.identifier {
            let selector = Selector(("routeTo\(scene):"))
            if let router = router, router.responds(to: selector) {
                router.perform(selector, with: segue)
            }
        }
    }
    
    private func routeToSomewhere() {
        router?.routeToSomewhere(nil)
    }
}

//Interaction
extension MainMapViewController {

    func doSomething() {
        let request = MainMap.Model.Request()
        interactor?.getMapData(request: request)
  }
}

//Presentation
extension MainMapViewController: MainMapViewProtocol {
    func displayMapData(viewModel: MainMap.Model.ViewModel) {
        //nameTextField.text = viewModel.name
    }
}