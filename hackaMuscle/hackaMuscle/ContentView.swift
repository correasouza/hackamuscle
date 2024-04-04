//
//  ContentView.swift
//  projetofinal2
//
//  Created by Turma02-1 on 08/02/24.
//

import SwiftUI

struct ContentView: View {
  @State private var selectedTab = 0
  @State private var showMenu = false

  var body: some View {
    NavigationStack{
      ZStack{
        TabView(selection: $selectedTab){
          CardsTreinos().tag(0)

          ListDieta().tag(1)

          InformacoesPessoais().tag(2)
          
        }
        SideMenuView(isShowing: $showMenu, selectedTab: $selectedTab)
      }
      .toolbar{
        ToolbarItem(placement: .navigationBarLeading){
          Text("")
        }
      }
      //.navigationTitle("Home")
      .navigationBarTitleDisplayMode(.inline)
      .toolbar {

        Button(action: {
          showMenu.toggle()
        }, label:{
            Image(systemName: "line.3.horizontal").foregroundColor(.red)
        })
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
