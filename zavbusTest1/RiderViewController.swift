//
//  RiderViewController.swift
//  zavbusTest1
//
//  Created by Vladimir Maslov on 21.01.2018.
//  Copyright © 2018 Vladimir Maslov. All rights reserved.
//

import UIKit

class RiderViewController: UIViewController {

    @IBOutlet weak var status: UISegmentedControl!
    @IBOutlet weak var rider: UILabel!
    
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        rider.text = name

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
