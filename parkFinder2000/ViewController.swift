//
//  ViewController.swift
//  parkFinder2000
//
//  Created by Andrew Roberts on 3/29/18.
//  Copyright © 2018 Andrew Roberts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let defaults = UserDefaults.standard
    
    var dateFormatter = DateFormatter()
    

    @IBOutlet weak var floorLabel: UILabel!
    @IBOutlet weak var floorSegment: UISegmentedControl!
    @IBOutlet weak var savedTime: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        dateFormatter.timeStyle = .medium
        
        floorLabel.text =
            defaults.string(forKey: "Floor")
        floorSegment.selectedSegmentIndex = defaults.integer(forKey: "Index")
        savedTime.text =
            defaults.string(forKey: "savedTime")
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        floorLabel.text = defaults.string(forKey: "Floor")
        floorSegment.selectedSegmentIndex = defaults.integer(forKey: "Index")
        savedTime.text =
            defaults.string(forKey: "savedTime")
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
        
        savedTime.text = "updated: \(dateFormatter.string(from: NSDate() as Date))"
        defaults.set(floorSegment.selectedSegmentIndex, forKey: "Index")
        defaults.set(floorLabel.text, forKey: "Floor")
        defaults.set(savedTime.text, forKey: "savedtime")
  
    }
    
}

