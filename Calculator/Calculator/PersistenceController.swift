//
//  PersistenceController.swift
//  Calculator
//
//  Created by Christopher Thiebaut on 2/21/18.
//  Copyright © 2018 Christopher Thiebaut. All rights reserved.
//

import Foundation

class PersistenceController {
    
    private enum StorageKeys: String {
        case screen
        case stored1
        case stored2
    }
    
    private init(){}
    
    /*
        Save the provided values to a UserDefaults.
     */
    static func save(values: (screen: Double?, storedValue1: Double?, storedValue2: Double?)){
        UserDefaults.standard.set(values.screen, forKey: StorageKeys.screen.rawValue)
        UserDefaults.standard.set(values.storedValue1, forKey: StorageKeys.stored1.rawValue)
        UserDefaults.standard.set(values.storedValue2, forKey: StorageKeys.stored2.rawValue)
    }
    
    /*
        Load any stored values that may exist so the state of the calculator can be restored.
    */
    static func loadValues() -> (screen: Double?, storedValue1: Double?, storedValue2: Double?)? {
        var values: (screen: Double?, storedValue1: Double?, storedValue2: Double?) = (0,0,0)
        
        values.screen = UserDefaults.standard.value(forKey: StorageKeys.screen.rawValue) as? Double
        values.storedValue1 = UserDefaults.standard.value(forKey: StorageKeys.stored1.rawValue) as? Double
        values.storedValue2 = UserDefaults.standard.value(forKey: StorageKeys.stored2.rawValue) as? Double
        return values
    }
    
    static func clearStoredValues() {
        UserDefaults.standard.removeObject(forKey: StorageKeys.stored1.rawValue)
        UserDefaults.standard.removeObject(forKey: StorageKeys.stored2.rawValue)
    }
}

