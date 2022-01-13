/*
 *	Environment.swift
 *	Digital14Test
 *
 *	Created by Klindayzer on 13/01/2022.
 *	Copyright 2022 ___ORGANIZATIONNAME___. All rights reserved.
 */

import Foundation

// MARK: - Definitions
enum PropertyListKeys: String {
    case plistEntryKey = "Integration Specific Identifiers"
    case scheme = "UD_CURRENT_SCHEME_NAME"
    case apiBaseUrl = "UD_API_BASE_URL"
    case apiClentId = "UD_API_CLIENT_ID"
}

private enum Scheme: String {
    case development = "Develop"
    case production = "Production"
}

final class Environment {
    
    // MARK: - Properties
    static let shared = Environment()
    
    private lazy var pList: [String: Any] = {
        
        guard let dict = Bundle.main.infoDictionary else {
            fatalError("Plist file not found")
        }
        
        guard let dict = dict[PropertyListKeys.plistEntryKey.rawValue] as? [String : Any] else {
            fatalError("Integration Identifiers not found")
        }
        
        return dict
    }()
    
    
    // MARK: - Constructors
    private init() {}
    
    // MARK: - Exposed Methods
    func getValue(for key: PropertyListKeys) -> String {
        return pList[key.rawValue] as? String ?? .empty
    }
    
    var isDebug: Bool {
        return getValue(for: .scheme) != Scheme.production.rawValue
    }
}
