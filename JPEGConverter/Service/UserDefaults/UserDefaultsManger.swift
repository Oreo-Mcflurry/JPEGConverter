//
//  UserDefaultsManger.swift
//  JPEGConverter
//
//  Created by A_Mcflurry on 6/5/24.
//

import Foundation

final class UserDefaultsManger {
	enum UserDefaultsKey: String {
		case scale
		case isEXIFSaved
        case isFirstRun
	}

	static var scale: Float {
		get {
			UserDefaults.standard.float(forKey: UserDefaultsKey.scale.rawValue)
		} set {
			UserDefaults.standard.setValue(newValue, forKey: UserDefaultsKey.scale.rawValue)
		}
	}

	static var exifSaved: Bool {
		get {
			UserDefaults.standard.bool(forKey: UserDefaultsKey.isEXIFSaved.rawValue)
		} set {
			UserDefaults.standard.setValue(newValue, forKey: UserDefaultsKey.isEXIFSaved.rawValue)
		}
	}
    
    static var isFirstRun: Bool {
        get {
            UserDefaults.standard.bool(forKey: UserDefaultsKey.isFirstRun.rawValue)
        } set {
            UserDefaults.standard.setValue(newValue, forKey: UserDefaultsKey.isFirstRun.rawValue)
        }
    }
}
