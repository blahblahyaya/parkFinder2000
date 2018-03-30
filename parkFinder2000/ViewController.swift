//
//  ViewController.swift
//  parkFinder2000
//
//  Created by Andrew Roberts on 3/29/18.
//  Copyright © 2018 Andrew Roberts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var floors : [Floor] = []

    @IBOutlet weak var floorLabel: UILabel!
    @IBOutlet weak var floorSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        getFloor()
//        floorLabel.text = floors.floorValue
        
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
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let floors = Floor(context: context)
        floors.floorValue = floorLabel.text!
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        print(floors as Any)
    }
    
    func getFloor() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        do {
            floors = try context.fetch(Floor.fetchRequest()) as! [Floor]
            print(floors as Any)
        } catch {
            print("OOPS WE HAVE AN ERROR")
        }
    }
    
}

