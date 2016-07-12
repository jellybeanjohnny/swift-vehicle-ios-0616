//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Matt Amerige on 7/12/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane {
	
	override func climb() {
		if altitude == 0 { return }
		
		let deltaAltitude = maxAltitude * 0.2
		altitude += deltaAltitude
		decelerate()
		if altitude > maxAltitude {
			altitude = maxAltitude
		}
	}
	
	override func dive() {
		let deltaAltitude = maxAltitude * 0.2
		altitude -= deltaAltitude
		accelerate()
		if altitude < 0 {
			altitude = 0;
		}
	}
	
	func afterburner() {
		if speed == maxSpeed {
			speed = maxSpeed * 2
		}
	}
	
}