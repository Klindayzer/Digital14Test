/*
 *	UITableView.swift
 *	LevelShoes
 *
 *	Created by Klindayzer on 22/12/2021.
 *	Copyright 2021 ___ORGANIZATIONNAME___. All rights reserved.
 */

import UIKit

extension UITableView {
    
    func register<T>(cell: T.Type) {
        
        let identifier = String(describing: T.self)
        self.register(UINib(nibName: identifier, bundle: nil), forCellReuseIdentifier: identifier)
    }
    
    func dequeue<T: UITableViewCell>(for indexPath: IndexPath) -> T {
        
        guard let cell = dequeueReusableCell(withIdentifier: T.name, for: indexPath) as? T else {
            fatalError("Unable to Dequeue Reusable Table View Cell With Id \(T.name)")
        }
        return cell
    }
}
