//
//  JournalTableViewController.swift
//  Journal App
//
//  Created by David Salmberg on 2023-03-20.
//

import UIKit

class JournalTableViewController: UITableViewController {
    
    let newEntrySegue = "newEntrySegue"
    let showEntrySegue = "showJournalEntry"
    
    var journal = Journal()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return journal.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "journalEntryCell", for: indexPath)

        let journalEntry = journal.entry(index: indexPath.row)
        cell.textLabel?.text = journalEntry?.date

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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == newEntrySegue {
            let destinationVC = segue.destination as? NewEntryViewController
            destinationVC?.journal = journal
        } else if (segue.identifier == showEntrySegue) {
            
            guard let destinationVC = segue.destination as? showEntryViewController else {return}
            guard let cell = sender as? UITableViewCell else {return}
            guard let indexPath = tableView.indexPath(for: cell) else {return}
            guard  let entry = journal.entry(index: indexPath.row) else {return}
            
            destinationVC.journalEntry = entry
        }
    }
}
