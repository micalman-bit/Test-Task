//
//  String + Extension .swift
//  TestTask
//
//  Created by Andrey Samchenko on 09.10.2021.
//

import Foundation

extension String {
    
    enum ValidTypes {
        case name
        case email
        case password
    }
    
    enum Regex: String {
        case name = "[a-zA-Z]{1,}"
        case email = "[a-zA-Z0-9._]+@[a-zA-Z0-9]+\\.[a-zA-Z]{2,}"
        case password = "(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9]).{6,}"
        
    }
    
    func isValid(validType: ValidTypes) -> Bool {
        let format = "SELF MATCHES %@"
        var regx = ""
        
        switch validType {
        case .name: regx = Regex.name.rawValue
        case .email: regx = Regex.email.rawValue
        case .password: regx = Regex.password.rawValue
        }
        
        return NSPredicate(format: format, regx).evaluate(with: self)
    }
}
