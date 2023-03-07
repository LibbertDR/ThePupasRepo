//
//  MainView.swift
//  Unori
//
//  Created by Fabio Barbato on 05/03/23.
//

import SwiftUI

struct MainView: View {
    
    @State private var selectedCategoryId: ListItem.ID?
 
    private var dataModel = SideBarItems()
    
    
    var body: some View {
        NavigationSplitView {
            List(dataModel.sideBarItems, selection: $selectedCategoryId) { item in
                Label(item.name, systemImage: item.icon)
                 }
                 .listStyle(SidebarListStyle())
                 .navigationTitle("Categories")
        } detail: {
            if let selectedCategoryId,
               let categoryItems = dataModel.fetchSubMenuItems(for: selectedCategoryId) {
                NavigationStack{
                    List(categoryItems) { item in
                        NavigationLink(destination: SplitCameraView()){
                            Label(item.name, systemImage: item.icon)
                        }
                        
                        
                    }
                    .listStyle(.plain)
                    .navigationBarTitleDisplayMode(.inline)
                }
             
                        } else {
                            Text("Please select a category")
                        }
        }

    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
