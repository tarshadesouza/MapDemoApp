//
//  MarkerColors.swift
//  MapDemoApp
//
//  Created by Tarsha de Souza on 12/7/20.
//  Copyright © 2020 TarshaDeSouza. All rights reserved.
//

import Foundation
import UIKit

enum ZoneId: Double {
	case FourHundredTwo = 402
	case ThreeHundredSeventyEight = 378
	case TheeHundredEightyTwo = 382
	case FourHundredSixtySeven = 467
	case FourHundredSeventyThree = 473
	case FourHundredTwelve = 412
}

extension ZoneId {
	var value: UIColor {
        var color = UIColor.clear
		switch self {
		case .FourHundredTwo:
			color = UIColor.red
			return color
		case .ThreeHundredSeventyEight:
			color = UIColor.blue
			return color
		case .TheeHundredEightyTwo:
			color = UIColor.green
			return color
		case .FourHundredSixtySeven:
			color = UIColor.systemTeal
			return color
		case .FourHundredSeventyThree:
			color = UIColor.systemIndigo
			return color
		case .FourHundredTwelve:
			color = UIColor.systemYellow
			return color
		}
	}
}
