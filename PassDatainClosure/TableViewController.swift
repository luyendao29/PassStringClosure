//
//  TableViewController.swift
//  PassDatainClosure
//
//  Created by Boss on 5/12/19.
//  Copyright © 2019 Boss. All rights reserved.
//

import UIKit

enum SegueIdentifier : String {
    case segue1  = "segue1"
}
class TableViewController: UITableViewController {

   
    var mang = Array(1...10)
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return mang.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = String(mang[indexPath.row])
        

        return cell
    }
    
    // MARK: Navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        switch segue.identifier ?? "" {
//        case SegueIdentifier.segue1.rawValue:
//          let vc = segue.destination as? ViewController
//            if let index = tableView.indexPathForSelectedRow{
//                vc?.number = String(mang[index.row])
//                vc?.fillnumber = { data in
//                    self.mang[index.row] = Int(data!)!}
//            } else {
//                vc?.fillnumber = { [unowned self] data in
//                    self.mang.append(Int(data!) ?? 0)
//
//                }
//            }
//
//
//        default:
//            return
//        }
//    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? ViewController
        if let index = tableView.indexPathForSelectedRow{
            vc?.number = String(mang[index.row])
            vc?.fillnumber = {data in self.mang[index.row] = Int(data!) ?? 0}
        } else{
            vc?.fillnumber = {data2 in self.mang.append( Int(data2!) ?? 0)}
        }
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
