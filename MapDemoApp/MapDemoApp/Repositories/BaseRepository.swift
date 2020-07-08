//
//  BaseRepository.swift
//  MapDemoApp
//
//  Created by Tarsha De Souza on 08/07/2020.
//  Copyright © 2020 TarshaDeSouza. All rights reserved.
//

import Foundation
import Alamofire

class BaseRepository: NSObject {
	let manager: RequestManager
	
	internal init(manager: RequestManager = RequestManager()) {
		self.manager = manager
	}
}
