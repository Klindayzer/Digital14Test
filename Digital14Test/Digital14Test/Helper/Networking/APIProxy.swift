/*
 *	APIProxy.swift
 *	LevelShoes
 *
 *	Created by Klindayzer on 21/12/2021.
 *	Copyright 2021 ___ORGANIZATIONNAME___. All rights reserved.
 */

enum APIProxy {

  case events
    
    var value: String {
        switch self {
        case .events:
            return "events"
        }
    }
}
