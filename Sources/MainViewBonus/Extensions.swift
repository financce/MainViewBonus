//
//  File.swift
//  
//
//  Created by slava on 27/04/2021.
//

import Foundation

extension Formatter {
    static let date = DateFormatter()
    
}

extension Date {
    func localizedDescription(dateStyle: DateFormatter.Style = .medium,
                              timeStyle: DateFormatter.Style = .medium,
                              in timeZone : TimeZone = .current,
                              locale   : Locale = .current) -> String {
       
        Formatter.date.dateFormat = "dd.MM"
        return Formatter.date.string(from: self)
    }
    var localizedDescription: String { return localizedDescription() }
    var shortDate: String { return localizedDescription(dateStyle: .short, timeStyle: .none)  }
}
