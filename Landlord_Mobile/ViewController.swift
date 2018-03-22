//
//  ViewController.swift
//  Landlord_Mobile
//
//  Created by Chutong Jin on 2/5/18.
//  Copyright © 2018 Chutong Jin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    @IBAction func listProp(_ sender: UIButton) {
//        client.propertiesGet()
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let credentialsProvider = AWSCognitoCredentialsProvider(regionType: AWSRegionType.USEast2, identityPoolId: "my_pool_id")
        let configuration = AWSServiceConfiguration(region: AWSRegionType.USEast2, credentialsProvider: credentialsProvider)
        AWSServiceManager.default().defaultServiceConfiguration = configuration
        let client = LANDLORDMOBILEAPIForPropertyMgmtClient.default()

        client.propertiesGet()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

