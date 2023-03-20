//
//  showEntryViewController.swift
//  Journal App
//
//  Created by David Salmberg on 2023-03-20.
//

import UIKit

class showEntryViewController: UIViewController {
    
    @IBOutlet weak var navBar: UINavigationItem!
    
    
    var journalEntry : JournalEntry?
    
    @IBOutlet weak var entryTextView: UITextView!
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navBar.title = journalEntry?.date
        
        entryTextView.text = journalEntry?.content
        
        
    }

}
