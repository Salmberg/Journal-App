//
//  JournalEntryModel.swift
//  Journal App
//
//  Created by David Salmberg on 2023-03-20.
//

import Foundation


class JournalEntry {
    var content : String
    private var unformattedDate : Date
    private var dateformatter = DateFormatter()
    
    var date : String {
        return dateformatter.string(from: unformattedDate)
    }
    
    
    init(content : String){
        self.content = content
        self.unformattedDate = Date()
        dateformatter.dateStyle = .medium
    }
    
    
    
    init(content: String, date: Date) {
        self.content = content
        self.unformattedDate = date
        dateformatter.dateStyle = .medium

    }
}
