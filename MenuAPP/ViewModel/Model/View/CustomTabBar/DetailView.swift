//
//  DetailView.swift
//  MenuAPP
//
//  Created by Алексей Зарицький on 04.07.2022.
//

import SwiftUI

struct DetailView: View {
    var staffs: Staff
    var animation: Namespace.ID
    @EnvironmentObject var appModel: AppViewModel
    
    //MARK: Animation Properties
    
    @State var showDetailContent: Bool = false
    var body: some View {
        GeometryReader{proxy in
            let size = proxy.size
            VStack{
                //MARK: Custom Nav Bar...
                HStack{
                    Button {
                        // Closing View...
                        withAnimation(.easeInOut){
                            showDetailContent = false
                        }
                        withAnimation(.easeInOut.delay(0.05)){
                            appModel.showDetailView = false
                        }
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(Color("Black"))
                            .padding(12)
                            .background{
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .fill(.white)
                       }
                        
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "suit.heart.fill")
                            .foregroundColor(Color.red)
                            .padding(12)
                            .background{
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .fill(.white)
                       }
                        
                    }
                }
                .padding()
                .opacity(showDetailContent ? 1 : 0)
                
                // MARK: Enemyes image...
                Image(staffs.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                // Matched Geometry Effect...!
                    .matchedGeometryEffect(id: staffs.id + "IMAGE", in: animation)
                    .frame(height: size.height / 3)
                
                VStack(alignment: .leading) {
                    HStack(spacing: 10) {
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Text(staffs.title)
                                .font(.title.bold())
                                .foregroundColor(Color("Black"))
                                .fixedSize()
                                .matchedGeometryEffect(id: staffs.id + "TITLE" , in: animation)
                                .lineLimit(1)
                            
                            Text("Destroyed by the Military Forces of Ukraine")
                                .font(.caption2)
                                .bold()
                                .foregroundColor(.gray)
                                .fixedSize()
                                .matchedGeometryEffect(id: staffs.id + "SUTITLE" , in: animation)
                        }
                        .frame(maxWidth: .infinity,alignment: .leading)
                        
                        Label {
                            Text("4.8")
                                .font(.callout)
                                .fontWeight(.bold)
                        } icon: {
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                        }
                        .padding(.horizontal,15)
                        .padding(.vertical,10)
                        .background{
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .strokeBorder(Color("Black").opacity(0.2),lineWidth: 1)
                        }
                        .scaleEffect(0.8)
                    }
                    
                    Text("The enemy suffered the greatest losses in the Kramatorsk and Bakhmut directions. \n\nThe data is being verified.  \n\nBeat the occupier! Together we will win! Our strength is in the truth!")
                        .font(.callout)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                        .padding(.vertical)
                    
                    
                }
                .padding(.top,35)
                .padding(.horizontal)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                .background{
                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .fill(.white)
                        .ignoresSafeArea()
                }
                .opacity(showDetailContent ? 1 : 0)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
        .background{
            Color("BG")
                .ignoresSafeArea()
                .opacity(showDetailContent ? 1 : 0)
        }
        .onAppear{
            withAnimation(.easeInOut){
                showDetailContent = true
            }
         }
     }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
       ContentView()
    }
}
