//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Andrew Porter on 10/13/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {

    
    
    @IBOutlet weak var planetImageView: UIImageView!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var diameterLabel: UILabel!
    @IBOutlet weak var dayLength: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateWithPlanet(planet : Planet) {
        
        self.title = planet.name
        planetImageView.image = UIImage(named: planet.imageName)
        diameterLabel.text = "\(planet.diameter)"
        dayLength.text = "\(planet.dayLength)"
        distanceLabel.text = "\(planet.millionKMsFromSun) 10^6km"
        //diameterLabel.text = planet.diameter
    }
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
