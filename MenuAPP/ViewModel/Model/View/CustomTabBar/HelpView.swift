//
//  HelpView.swift
//  MenuAPP
//
//  Created by Алексей Зарицький on 04.07.2022.
//

import SwiftUI

struct HelpView: View {
    var body: some View {
       
        VStack{
          
               
            Image(systemName: "heart.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .padding(.vertical)
                .foregroundStyle(
                    LinearGradient(
                    colors: [.yellow, .blue],
                        startPoint: .top,
                            endPoint: .bottom
                                    )
                                )
            .font(.system(size: 16, weight: .regular))
            
            
            VStack {
                VStack(alignment: .leading) {
                    HStack(spacing: 10) {
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Help Ukraine!")
                                .font(.title.bold())
                                .frame(width: 200, height: 50)
                                .foregroundColor(Color("Black"))
                            
                           // Text("Destroyed by the Military Forces of Ukraine")
                            //    .font(.caption2)
                             //   .bold()
                             //   .frame(width: 200, height: 50)
                              //  .foregroundColor(.gray)
                        }
                        .frame(maxWidth: .infinity,alignment: .leading)
                        
                        Button {
            
                        } label: {
                            Image("Pay")
                                .resizable()
                                .renderingMode(.template)
                                .aspectRatio(contentMode: .fill)
                                .foregroundColor(Color("Black"))
                                .frame(width: 40, height: 25)
                                .padding(15)
                                .background{
                                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                                        .fill(.white)
                                        .shadow(color: .black, radius: 5, x: 0, y: 0)
                                }
                            }
                       // .scaleEffect(0.8)
                    }
                    
                    Text("Every hryvnia goes to the aid of the Ukrainian Army. \n\nWhile donating to the Army, each of you helps to destroy the invaders. \n\nAlso, thanks to your financial support, we will save the lives of our brave defenders!")
                        .font(.callout)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                        .padding(.vertical)
                   }
                // alignment text...
                .padding(.top,35)
                .padding(.horizontal)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                .background{
                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .fill(Color("BG"))
                        .ignoresSafeArea()
                }
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("BG").clipShape(CustomCorner(corners: [.topLeft,.topRight]))).ignoresSafeArea(.all, edges: .bottom)
            
        }
        .background(Color("Color3").ignoresSafeArea(.all, edges: .all))

    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
