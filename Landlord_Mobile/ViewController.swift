//
//  ViewController.swift
//  Landlord_Mobile
//
//  Created by Chutong Jin on 2/5/18.
//  Copyright © 2018 Chutong Jin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // MARK: Login
    @IBAction func userName(_ sender: UITextField) {
    }
    @IBAction func signIn(_ sender: UIButton) {
    }

    
    
    // MARK: Properties
    @IBOutlet weak var addPropStackView: UIStackView!
    @IBOutlet weak var listPropBtn: UIButton!
    @IBOutlet weak var listPropView: UITextView!
    
    
    // MARK: Owner Details

    
    
    
    
//    @IBAction func listProp(_ sender: UIButton) {
//        client.propertiesGet()
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up the AWS client
        let credentialsProvider = AWSCognitoCredentialsProvider(regionType: AWSRegionType.USEast2, identityPoolId: "my_pool_id")
        let configuration = AWSServiceConfiguration(region: AWSRegionType.USEast2, credentialsProvider: credentialsProvider)
        AWSServiceManager.default().defaultServiceConfiguration = configuration
        let client = LANDLORDMOBILEAPIForPropertyMgmtClient.default()
        
        print(client.propertiesGet())

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    // MARK: Actions
    @IBAction func addBtn(_ sender: UIButton) {
    }
    @IBAction func cancelBtn(_ sender: UIButton) {
    }
    @IBAction func listPropBtnPressed(_ sender: UIButton) {
        listPropView.isHidden = true
    }
    
    
    
    
}

