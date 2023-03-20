//
//  Journal.swift
//  Journal App
//
//  Created by David Salmberg on 2023-03-20.
//

import Foundation

class Journal {
    private var entries = [JournalEntry]()
    
    init(){
        add(entry: JournalEntry(content: "Plugg"))
        add(entry: JournalEntry(content: "Lunch"))
        add(entry: JournalEntry(content: "Plugg"))
        add(entry: JournalEntry(content: "Träning"))
    }
    
    var count: Int {
        return entries.count
    }
    
    func add(entry : JournalEntry){
        entries.append(entry)
        
    }
    func entry(index : Int) -> JournalEntry? {
        if index >= 0 && index < entries.count{
            return entries[index]
        }
        return nil
        
    }
    
    
}
