//
//  Planet.swift
//  SolarSystem (after)
//
//  Created by Erik Jimenez on 3/9/22.
//

import Foundation


class Planet {
    
    
    let planetName: String 
    let planetImage: String
    let colonized: Bool
    let planetType: String
    let planetDiameter: Double
    
    init(planetName: String, planetImage: String, colonized: Bool, planetType: String, planetDiameter: Double) {
        
        self.planetName = planetName
        self.planetImage = planetImage
        self.colonized = colonized
        self.planetType = planetType
        self.planetDiameter = planetDiameter
    }
}



























// Model

// planet name
// planet picture
// colonized by humans?
// gas giant or rock ?
// planet diameter size





// Model controller

// main table view - with certain model displays attributes

// detail table view - larger more specified view

