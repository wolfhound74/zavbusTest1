//
//  RidersTableViewController.swift
//  zavbusTest1
//
//  Created by Vladimir Maslov on 21.01.2018.
//  Copyright © 2018 Vladimir Maslov. All rights reserved.
//

import UIKit

class RidersTableViewController: UITableViewController {

    var riders: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadData()
    }

    private func loadData() {
        let loadedRiders = UserDefaults.standard.object(forKey: "riders") as? [String]
        if (loadedRiders == nil) {
            riders.append("Маслов Владимир")
            riders.append("Нагибин Алексей")
            riders.append("Андреев Александр")

            self.saveData()
        } else {
            riders = loadedRiders!
        }
    }

    private func saveData() {
        UserDefaults.standard.set(riders, forKey: "riders")
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return riders.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "riderCell", for: indexPath)

        cell.textLabel?.text = riders[indexPath.row]

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        (segue.destination as! RiderViewController).name = self.riders[(tableView.indexPathForSelectedRow?.row)!]
    }


}
