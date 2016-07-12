//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Matt Amerige on 7/12/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane: Vehicle {
	
	let maxAltitude: Double
	var altitude: Double = 0
	var inFlight: Bool { return speed > 0 && altitude > 0 }
	
	init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
		self.maxAltitude = maxAltitude
		super.init(name: name, weight: weight, maxSpeed: maxSpeed)
	}
	
	func takeoff() {
		if altitude != 0 { return }
		
		speed = maxSpeed * 0.1
		altitude = maxAltitude * 0.1
	}
	
	func land() {
		speed = 0
		altitude = 0
	}
	
	func dive() {
		let deltaAltitude = maxAltitude * 0.1
		altitude -= deltaAltitude
		accelerate()
		if altitude < 0 {
			altitude = 0;
		}
	}
	
	func climb() {
		
		if altitude == 0 { return }
		
		let deltaAltitude = maxAltitude * 0.1
		altitude += deltaAltitude
		decelerate()
		if altitude > maxAltitude {
			altitude = maxAltitude
		}
	}
	
	func bankRight() {
		if altitude == 0 { return }
		
		if heading == 360 {
			heading = 0
		}
		
		heading += 45
		speed -= speed * 0.1
	}
	
	func bankLeft() {
		if altitude == 0 { return }
		
		if heading == 0 {
			heading = 360
		}
		
		heading -= 45
		speed -= speed * 0.1
	}
	
	
}