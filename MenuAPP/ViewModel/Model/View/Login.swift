//
//  Login.swift
//  MenuAPP
//
//  Created by Алексей Зарицький on 04.07.2022.
//

import SwiftUI

struct Login: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack{
            
            Text("Sign In")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.black.opacity(0.8))
                // Letter Spacing...
                .kerning(1.9)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            // Email And Password....
            VStack(alignment: .leading, spacing: 8, content: {
                
                Text("User Name")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                TextField("example@gmail.com", text: $email)
                // Increasing Font Size And Changing Text Color...
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color("dark"))
                    .padding(.top,5)
                Divider()
            })
            .padding(.top,25)
            
            
            VStack(alignment: .leading, spacing: 8, content: {
                
                Text("Password")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                SecureField("123456", text: $password)
                // Increasing Font Size And Changing Text Color...
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color("dark"))
                    .padding(.top,5)
                
                Divider()
            })
            .padding(.top,20)
            
            // Forget Password...
            Button(action: {}, label: {
                Text("Forgot password?")
                    .fontWeight(.bold)
                    .foregroundColor(Color("Black"))
                    .padding(12)
                    .background{
                        RoundedRectangle(cornerRadius: 12, style: .continuous)
                            .fill(.white)
                    }
                    .shadow(color: Color("Black").opacity(0.6), radius: 5, x: 0, y: 0)
            })
            // This line will reduce the use of unwanted hstack and spacers....
            // Try to use this and reduce the code in SwiftUI :)))
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding(.top,10)
            
            // Next Button...
            Button(action: {}, label: {
                Image(systemName: "arrow.right")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(Color("Black"))
                    .frame(width: 25, height: 25)
                    .padding(12)
                    .background{
                        RoundedRectangle(cornerRadius: 12, style: .continuous)
                            .fill(.white)
                    }
                // Shadow...
                    .shadow(color: Color("Black").opacity(0.6), radius: 5, x: 0, y: 0)
            })
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top,10)
        }
        .padding()
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
