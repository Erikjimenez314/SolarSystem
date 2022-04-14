//
//  PlanetController.swift
//  SolarSystem (after)
//
//  Created by Erik Jimenez on 3/9/22.
//

import Foundation
import UIKit

public class PlanetController {
    
    static let shared = PlanetController()
    static var planetArray: [Planet] {
        
        let earth = Planet(planetName: "Earth", planetImage: "earth", colonized: true, planetType: "Rocky Planet", planetDiameter: 7917.5)
        let mercury = Planet(planetName: "Mercury", planetImage: "mercury", colonized: false, planetType: "Rocky Planet", planetDiameter: 3031.9)
        let venus = Planet(planetName: "Venus", planetImage: "venus", colonized: false, planetType: "Rocky Planet", planetDiameter: 7520.8)
        let mars = Planet(planetName: "Mars", planetImage: "mars", colonized: true, planetType: "Rocky Planet", planetDiameter: 4212.3)
        let jupiter = Planet(planetName: "Jupiter", planetImage: "jupiter", colonized: false, planetType: "Gas Giant", planetDiameter: 86881)
        let saturno = Planet(planetName: "Saturno", planetImage: "saturn", colonized: true, planetType: "Gas Giant", planetDiameter: 72367)
        let uranus = Planet(planetName: "Uranus", planetImage: "uranus", colonized: false, planetType: "Ice Giant", planetDiameter: 31518)
        let neptune = Planet(planetName: "Neptune", planetImage: "neptune", colonized: false, planetType: "Ice Giant", planetDiameter: 30599)
        let pluto = Planet(planetName: "Pluto", planetImage: "pluto", colonized: false, planetType: "Rocky Planet", planetDiameter: 1476.8)
        
        return [earth, venus, mercury, venus, mars, jupiter, saturno, uranus, neptune, pluto]
    }
    
}
