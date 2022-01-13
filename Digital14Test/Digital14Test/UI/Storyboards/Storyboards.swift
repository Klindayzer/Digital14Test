/*
 *	Storyboards.swift
 *	Digital14Test
 *
 *	Created by Klindayzer on 13/01/2022.
 *	Copyright 2022 ___ORGANIZATIONNAME___. All rights reserved.
 */

import UIKit

enum Storyboards {
    
    case main
    case wishList
    
    // MARK: - Properties
    var name: String {
        switch self {
        case .main:
            return "Main"
            
        case .wishList:
            return "WishList"
        }
    }
}
