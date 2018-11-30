//
//  ViewController.swift
//  CCI_Fabric_Test
//
//  Created by Simone Barbara B on 22/11/2018.
//  Copyright © 2018 Simone Barbara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var versionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let unk = "Unknown"
        let version = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
        let build = Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as? String

        let ver: String? = "Version: \(version ?? unk) (build \(build ?? ""))"
        
        versionLabel.text = ver

    }


}

