//
//  ListItem.swift
//  Unori
//
//  Created by Fabio Barbato on 05/03/23.
//

import Foundation

struct ListItem: Identifiable, Hashable{
    var id = UUID()
    var name: String
    var icon: String
    var itemChildren: [ListItem]?
}
