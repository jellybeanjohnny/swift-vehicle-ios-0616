//
//  RaceCar.swift
//  swift-vehicle-lab
//
//  Created by Matt Amerige on 7/12/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar: Car {
	
	let driver: String
	var sponsors: [String]
	
	init(name: String,
	     weight: Double,
	     maxSpeed: Double,
	     transmission: String,
	     cylinders: Int,
	     milesPerGallon: Double,
	     driver: String,
	     sponsors: [String]) {
		self.driver = driver
		self.sponsors = sponsors
		super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
	}
	
	override func accelerate() {
		let deltaSpeed = maxSpeed * 0.2
		speed += deltaSpeed
		if speed > maxSpeed {
			speed = maxSpeed
		}
	}
	
	override func decelerate() {
		let deltaSpeed = maxSpeed * 0.2
		speed -= deltaSpeed
		if speed < 0 {
			speed = 0
		}
	}
	
	func driftRight() {
		if speed == 0 {
			return
		}
		
		speed -= speed / 4
		
		if heading == 270 {
			// resetting to zero
			heading = 0
		}
		else if heading == 360 {
			heading = 90
		}
		else {
			heading += 90
		}
	}
	
	func driftLeft() {
		if speed == 0 {
			return
		}
		
		if heading == 0 {
			heading = 270
		}
		else {
			heading -= 90
		}
		
		if speed != 0 {
			speed -= speed / 4
		}
	}
	
	
	
}