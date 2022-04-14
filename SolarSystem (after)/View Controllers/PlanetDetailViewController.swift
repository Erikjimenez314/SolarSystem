//
//  PlanetDetailViewController.swift
//  SolarSystem (after)
//
//  Created by Erik Jimenez on 3/9/22.
//

import UIKit

class PlanetDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()

    }
    
    // Mark: - Outlets
    
    @IBOutlet weak var planetNameLabel: UILabel!
    @IBOutlet weak var planetImageView: UIImageView!
    @IBOutlet weak var colonizedTextLabel: UILabel!
    @IBOutlet weak var planetDiameterLabel: UILabel!
    @IBOutlet weak var planetTypeLabel: UILabel!
    
    
    var planet: Planet?
    
    
    func updateViews() {
        guard let planet = planet else {
            return
        }
        planetNameLabel.text = planet.planetName
        planetImageView.image = UIImage(named: planet.planetImage)
        colonizedTextLabel.text = "Colonized: \(planet.colonized)"
        planetDiameterLabel.text = "Diameter: \(planet.planetDiameter)"
        planetTypeLabel.text = planet.planetType

    }

}
