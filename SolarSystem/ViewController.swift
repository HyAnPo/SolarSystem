//
//  ViewController.swift
//  SolarSystem
//
//  Created by Caleb Hicks on 9/29/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //this is a test
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return PlanetController.planets.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("planetCell", forIndexPath: indexPath)
        
        let planet = PlanetController.planets[indexPath.row]
        
        cell.textLabel?.text = planet.name
        cell.imageView?.image = UIImage(named: planet.imageName)
        
        return cell
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //check to make sure its the correct segue
        if segue.identifier == "toDetailViewController"{
            
            //set the destinationVC to the segues VC, and then cast it as PlanetDetailVC
            if let destinationViewController = segue.destinationViewController as? PlanetDetailViewController {
                
                //forces the future view to build
                _ = destinationViewController.view
                
                //get the indexPath of the tableView with method provided
                let indexPath = tableView.indexPathForSelectedRow
                
                if let selectedRow = indexPath?.row{
                    
                    //get the planet from array of planets using indexPath.row
                    //pass that planet to the next View
                    let planet = PlanetController.planets[selectedRow]
                    destinationViewController.updateWithPlanet(planet)
                }
                
            }
        }

    }
}

