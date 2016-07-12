//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by Matt Amerige on 7/12/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
	
	let name: String
	let weight: Double
	let maxSpeed: Double
	var speed: Double = 0
	var heading: Double = 0
	
	init(name: String, weight: Double, maxSpeed: Double) {
		self.name = name
		self.weight = weight
		self.maxSpeed = maxSpeed
	}
	
	func goFast() {
		speed = maxSpeed
	}
	
	func halt() {
		speed = 0
	}
	
	func accelerate() {
		let deltaSpeed = maxSpeed * 0.10
		speed += deltaSpeed
		
		if speed > maxSpeed {
			speed = maxSpeed
		}
	}
	
	func decelerate() {
		let deltaSpeed = maxSpeed * 0.10
		speed -= deltaSpeed
		
		if speed < 0 {
			speed = 0
		}
	}
	
	func turnRight() {
		// Increase heading by 90
		if speed == 0 {
			return
		}
		
		speed = speed / 2
		
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
	
	func turnLeft() {
		
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
			speed = speed / 2
		}
		
	}
	
	
	
}







































