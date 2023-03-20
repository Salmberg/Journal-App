//
//  NewEntryViewController.swift
//  Journal App
//
//  Created by David Salmberg on 2023-03-20.
//

import UIKit

class NewEntryViewController: UIViewController {
    
    @IBOutlet weak var journalEntryTextView: UITextView!
    
    
    var journal : Journal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        journalEntryTextView.becomeFirstResponder()
    }
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func save(_ sender: UIBarButtonItem) {
        
        if let entryText = journalEntryTextView.text{
            let newEntry = JournalEntry(content: entryText)
            
            journal?.add(entry: newEntry)
        }
        navigationController?.popViewController(animated: true)
    }
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }

