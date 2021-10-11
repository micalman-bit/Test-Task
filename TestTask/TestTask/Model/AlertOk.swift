//
//  AlertOk.swift
//  TestTask
//
//  Created by Andrey Samchenko on 11.10.2021.
//

import Foundation
import UIKit

extension UIViewController {
    
    func alertOk(title: String, massege: String) {
        let alert = UIAlertController(title: title, message: massege, preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "Ok", style: .default)
        
        alert.addAction(ok)
        
        present(alert, animated: true, completion: nil)
    }
}
