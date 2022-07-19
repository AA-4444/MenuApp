//
//  Home.swift
//  MenuAPP
//
//  Created by Алексей Зарицький on 03.07.2022.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject var appModel: AppViewModel
    var animation: Namespace.ID
    // For Esying Calling
    let black: Color = Color("Black")
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 15){
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Enemy Losses")
                            .font(.title.bold())
                    
                        
                     Text("Все Буде Добре,Україно!")
                          .font(.callout)
                          .foregroundStyle(

                              LinearGradient(
                                  colors: [.yellow, .blue],
                                  startPoint: .topTrailing,
                                  endPoint: .bottomTrailing
                              )
                          )
                            
                    }
                    .foregroundColor(Color("Black"))
                    .frame(maxWidth: .infinity,alignment: .leading)
                    
                    HStack(spacing: 12){
                        // MARK: Search BAR
                        HStack(spacing: 12){
                            Image("Search")
                                .resizable()
                                .renderingMode(.template)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25)
                                .foregroundColor(black)
                            
                            TextField("Search", text: .constant(""))
                        }
                        .padding(.horizontal)
                        .padding(.vertical,12)
                        .background{
                            RoundedRectangle(cornerRadius: 12, style: .continuous)
                                .fill(.white)
                        }
                        
                        Button {
                            
                        } label: {
                            Image("Filter")
                                .resizable()
                                .renderingMode(.template)
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(black)
                                .frame(width: 25, height: 25)
                                .padding(12)
                                .background{
                                    RoundedRectangle(cornerRadius: 12, style: .continuous)
                                        .fill(.white)
                                }
                        }
                    }
                    
                    // MARK: Custom Menu (using Matched Geometry Effect)
                   // CustomMenu()
                    
                    // MARK: Staff View
                    ForEach(staffs){staff in
                        CardView(staffs: staff)
                    }
                    
                }
                .padding()
                // MARK: For Bottom Tab Bar...
                .padding(.bottom,100)
            }
        }
    
    // MARK: Staff View...
    @ViewBuilder
    func CardView(staffs: Staff)->some View{
        HStack(spacing: 12){
            Group {
                if appModel.currentActiveItem?.id == staffs.id && appModel.showDetailView{
                    Image(staffs.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .opacity(0)
                }else{
                    Image(staffs.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .matchedGeometryEffect(id: staffs.id + "IMAGE", in: animation)
                }
            }
                .frame(width: 120)
                .padding()
                .background{
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .fill(Color("CardBG"))
                }
               
            VStack(alignment: .leading, spacing: 10) {
                // MARK: Text Geometry Effect...
                Group {
                    if appModel.currentActiveItem?.id == staffs.id && appModel.showDetailView{
                        Text(staffs.title)
                            .fontWeight(.bold)
                            .foregroundColor(black)
                            .opacity(0)
                        
                        Text("destroyed by the Military Forces of Ukraine")
                            .font(.caption2.bold())
                            .foregroundColor(.gray)
                            .padding(.top,-5)
                            .opacity(0)
                    }else{
                        Text(staffs.title)
                            .fontWeight(.bold)
                            .foregroundColor(black)
                            .matchedGeometryEffect(id: staffs.id + "TITLE" , in: animation)
                        
                        Text("Destroyed by the Military Forces of Ukraine")
                            .font(.caption2.bold())
                            .foregroundColor(.gray)
                            .matchedGeometryEffect(id: staffs.id + "SUBTITLE" , in: animation)
                            .padding(.top,-5)
                    }
                }
                
                Text(staffs.subTitle)
                    .font(.system(size: 14))
                    .foregroundColor(black.opacity(0.8))
                
                HStack{
                    Text(staffs.price)
                        .font(.title3.bold())
                        .foregroundColor(black)
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("More")
                            .font(.callout)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(.vertical,8)
                            .padding(.horizontal,20)
                            .background{
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    
                                    .fill(Color("Orange"))
                            }
                    }
                    .scaleEffect(0.9)
                }
                .offset(y: 10)
            }
            .padding(.vertical,10)
            .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .topLeading)
        }
        .padding(10)
        .background{
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(.white)
                .shadow(color: black.opacity(0.08), radius: 5, x: 5, y: 5)
            
        }
        .onTapGesture(perform: {
            withAnimation(.easeInOut){
                appModel.currentActiveItem = staffs
                appModel.showDetailView = true
            }
        })
        .padding(.bottom,6)
    }
    
    //@ViewBuilder
    //  func CustomMenu()->some View{
    //  HStack(spacing: 0){
     //  ForEach(["ALL","Personnel","Tanks","Aircraft","Vechicles","MLRS","Artillery system","Aaws","Ships","misslies","SE","Helicopter","UAV"],id: \.self){menu in
     //      Text(menu)
     //           .font(.callout)
     //           .fontWeight(.semibold)
       //           .foregroundColor(appModel.currentMenu != menu ? black : .white)//
      //           .padding(.vertical,8)
        //        .frame(maxWidth: .infinity)
         //      .background{
          //         if appModel.currentMenu == menu{
               //         Capsule()
              //             .fill(black)
                //          .shadow(color: black.opacity(0.1), radius: 5, x: 5, y: 5)
                 //           .matchedGeometryEffect(id: "MENU", in: animation)
               //      }
               //  }
               //  .onTapGesture {
               //     withAnimation(.easeInOut){appModel.currentMenu = menu}
           //    }
          // }
      // }
    //  .padding(.top,10)
   // .padding(.bottom,20)
 // }
}


struct Homee_Previews: PreviewProvider {
    static var previews: some View {
       ContentView()
    }
  }

