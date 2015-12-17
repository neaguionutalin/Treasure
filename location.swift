//
//  location.swift
//  Treasure
//
//  Created by Ionut Neagu on 15/12/2015.
//  Copyright © 2015 Ionut Neagu. All rights reserved.
//

import UIKit
import CoreLocation

class location: UIViewController, CLLocationManagerDelegate {

    var locationManager = CLLocationManager()
    var location1: Bool = false
    var location2: Bool = false
    var location3: Bool = false
    var location4: Bool = false
    var location5: Bool = false
    var location6: Bool = false
    var location7: Bool = false
    
    var position: Int = 1
    
    @IBOutlet var txtForClue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.locationManager.delegate = self
        self.locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.startUpdatingLocation()
        txtForClue.text = "Go to the Coventry University Student Union"
    }
    
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        //location hub
        if(locationManager.location?.coordinate.latitude > 52.406906 && locationManager.location?.coordinate.latitude < 52.407891) {
            if(locationManager.location?.coordinate.longitude > -1.504427 && locationManager.location?.coordinate.longitude < -1.504346) {
                location1 = true
            }
        }
        
        //location Pool Meadow
        if(locationManager.location?.coordinate.latitude > 52.406958 && locationManager.location?.coordinate.latitude < 52.410869) {
            if(locationManager.location?.coordinate.longitude > -1.506701 && locationManager.location?.coordinate.longitude < -1.505725) {
                location2 = true
            }
        }
        
        
        
        //location Primark
        
        if(locationManager.location?.coordinate.latitude > 52.408401 && locationManager.location?.coordinate.latitude < 52.409115) {
            if(locationManager.location?.coordinate.longitude > -1.510821 && locationManager.location?.coordinate.longitude < -1.509813) {
                location3 = true
            }
        }
        
        //location Belgrade
        
        if(locationManager.location?.coordinate.latitude > 52.408994 && locationManager.location?.coordinate.latitude < 52.410253) {
            if(locationManager.location?.coordinate.longitude > -1.515907 && locationManager.location?.coordinate.longitude < -1.513509) {
                location4 = true
            }
        }
        
        //location Odeon
        
        if(locationManager.location?.coordinate.latitude > 52.407510 && locationManager.location?.coordinate.latitude < 52.408264) {
            if(locationManager.location?.coordinate.longitude > -1.518566 && locationManager.location?.coordinate.longitude < -1.517542) {
                location5 = true
            }
        }
        
        //location Cathedral
        
        if(locationManager.location?.coordinate.latitude > 52.407652 && locationManager.location?.coordinate.latitude < 52.409177) {
            if(locationManager.location?.coordinate.longitude > -1.508397 && locationManager.location?.coordinate.longitude < -1.506342) {
                location6 = true
            }
        }
        
    }
    

    @IBAction func checklocation()
    {
        print(position.description)
        print(location2.description)
        if(position==1){
            if(location1 == true)
            {
                position++
                txtForClue.text = "Go to the Pool Meadow Bus Station"
            }
        }
        if(position==2 && location2 == true)
        {
            position++
            txtForClue.text = "Go to Primark"
        }
        if(position==3 && location3 == true)
        {
            position++
            txtForClue.text = "Go to Belgrade Thetre"
        }
        if(position==4 && location4 == true)
        {
            position++
            txtForClue.text = "Go to the front of Odeon Skydome"
        }
        if(position==5 && location5 == true)
        {
            position++
            txtForClue.text = "Go to Coventry Cathedral"
        }
        if(position==6 && location6 == true)
        {
            txtForClue.text = "You have finished the hunt"
        }
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
