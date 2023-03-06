//
//  SideBarItems.swift
//  Unori
//
//  Created by Fabio Barbato on 05/03/23.
//

import Foundation

struct SideBarItems{
    let sideBarItems = {
        
        //Categories
        let categories = [
            ListItem(name: "Action", icon: "figure.run"),
            ListItem(name: "Animals", icon: "pawprint.fill"),
            ListItem(name: "Home", icon: "house.fill", itemChildren: homeItems)
            
        ]
        
        //Items into sidebar
        let items = [
            ListItem(name: "My journey", icon: "graduationcap.fill", itemChildren: categories)
        ]
        

        return categories
    }()
    
    
    func fetchSubMenuItems(for id: ListItem.ID) -> [ListItem]? {
        guard let menuItem = sideBarItems.first(where: { $0.id == id }) else {
            return nil
        }
        
        
        return menuItem.itemChildren
    }
 
    func fetchMenuItem(for categoryID: ListItem.ID, itemID: ListItem.ID) -> ListItem? {
 
        guard let subMenuItems = fetchSubMenuItems(for: categoryID) else {
            return nil
        }
 
        guard let menuItem = subMenuItems.first(where: { $0.id == itemID }) else {
            return nil
        }
 
        return menuItem
    }
}
