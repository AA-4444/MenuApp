//
//  MainView.swift
//  MenuAPP
//
//  Created by Алексей Зарицький on 03.07.2022.
//

import SwiftUI

struct MainView: View {
    // MARK: View Properties...
    @StateObject var appModel: AppViewModel = .init()
    // MARK: Animation Properties...
    @Namespace var animation
       // MARK: Hiding  Native Tab BAR...
    init(){
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        TabView(selection: $appModel.currentTab) {
            
            Home(animation: animation)
                .environmentObject(appModel)
                .tag(Tab.home)
                .setUpTab()
            
            HelpView()
                .tag(Tab.cart)
                .setUpTab()
            
            //Text("Important")
             //   .tag(Tab.favourite)
             //   .setUpTab()
            
            Homee()
                .tag(Tab.profile)
                .setUpTab()
            
        }
        .overlay(alignment: .bottom) {
            CustomTabBar(currentTab: $appModel.currentTab, animation: animation)
                .offset(y: appModel.showDetailView ? 150 : 0)
        }
        .overlay {
            if let staffs = appModel.currentActiveItem,appModel.showDetailView{
                // MARK: Detail View
                DetailView(staffs: staffs, animation: animation)
                    .environmentObject(appModel)
                    .transition(.offset(x: 1, y: 1))
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

// MARK: Custom Extensions...
extension View{
    @ViewBuilder
    func setUpTab()->some View{
        self.frame(maxWidth: .infinity,maxHeight: .infinity)
            .background{
                Color("BG")
                    .ignoresSafeArea()
            }
    }
}
