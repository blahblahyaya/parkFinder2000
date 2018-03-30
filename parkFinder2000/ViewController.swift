//
//  ViewController.swift
//  parkFinder2000
//
//  Created by Andrew Roberts on 3/29/18.
//  Copyright © 2018 Andrew Roberts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var floorLabel: UILabel!
    @IBOutlet weak var floorSegment: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func indexChanged(_ sender: Any) {
        
        switch floorSegment.selectedSegmentIndex
        {
        case 0:
            floorLabel.text = "P4";
        case 1:
            floorLabel.text = "P3";
        case 2:
            floorLabel.text = "P2";
        case 3:
            floorLabel.text = "P1";
        case 4:
            floorLabel.text = "1";
        case 5:
            floorLabel.text = "2";
        case 6:
            floorLabel.text = "3";
        case 7:
            floorLabel.text = "4";
        default:
            break
        }
    }
    
}

