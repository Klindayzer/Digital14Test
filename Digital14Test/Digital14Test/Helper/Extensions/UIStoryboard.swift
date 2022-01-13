/*
 *	UIStoryboard.swift
 *	LevelShoes
 *
 *	Created by Klindayzer on 22/12/2021.
 *	Copyright 2021 ___ORGANIZATIONNAME___. All rights reserved.
 */

import UIKit

extension UIStoryboard {

    convenience init(storyboard: Storyboards) {
        self.init(name: storyboard.name, bundle: nil)
    }
    
    func controller<T: UIViewController>(id: String) -> T {
        
        guard let viewController = self.instantiateViewController(withIdentifier: id) as? T else {
            fatalError("Couldn't instantiate view controller with identifier \(T.name) ")
        }
        return viewController
    }
}
