//
//  UIImage+Extensions.swift
//  MapDemoApp
//
//  Created by Tarsha de Souza on 13/7/20.
//  Copyright © 2020 TarshaDeSouza. All rights reserved.
//

import UIKit

extension UIImage {
	func imageWithColor(zoneId: ZoneId) -> UIImage {
		UIGraphicsBeginImageContextWithOptions(self.size, false, self.scale)
		zoneId.value.setFill()

		let context = UIGraphicsGetCurrentContext()
		context?.translateBy(x: 0, y: self.size.height)
		context?.scaleBy(x: 1.0, y: -1.0)
		context?.setBlendMode(CGBlendMode.normal)
		
		let rect = CGRect(origin: .zero, size: CGSize(width: self.size.width, height: self.size.height))
		context?.clip(to: rect, mask: self.cgImage!)
		context?.fill(rect)
		
		let newImage = UIGraphicsGetImageFromCurrentImageContext()
		UIGraphicsEndImageContext()
		
		return newImage ?? UIImage()
	}
}
