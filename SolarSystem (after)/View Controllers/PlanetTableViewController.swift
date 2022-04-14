//
//  PlanetTableViewController.swift
//  SolarSystem (after)
//
//  Created by Erik Jimenez on 3/9/22.
//

import UIKit

class PlanetTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return PlanetController.planetArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)
        
        // note an error for this project was declaring the instance on the cell, and not writing down [indexPath.row].
        let instance = PlanetController.planetArray[indexPath.row]

        cell.textLabel?.text = instance.planetName
        cell.imageView?.image = UIImage(named: instance.planetImage)
        cell.textLabel?.textColor = .white
        cell.textLabel?.textAlignment = . center
       

        return cell
    }
    

 // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "mainViewToDetailView" {
            guard let indexPath = tableView.indexPathForSelectedRow,
                  let destination = segue.destination as? PlanetDetailViewController else { return }
            let selectedPlanet = PlanetController.planetArray[indexPath.row]
            destination.planet = selectedPlanet
            
            let planet = PlanetController.planetArray[indexPath.row]
        }
    }
}
