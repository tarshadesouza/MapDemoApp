//
//  Double+Extensions.swift
//  MapDemoApp
//
//  Created by Tarsha de Souza on 13/7/20.
//  Copyright © 2020 TarshaDeSouza. All rights reserved.
//

import Foundation
import UIKit

extension Double {
	var cleanValue: String {
		return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(format: "%.2f", self)
	}
}
