//
//  SwiftUIView.swift
//  Voyager
//
//  Created by Dhruv Jatkar on 3/25/20.
//  Copyright © 2020 Dhruv Jatkar. All rights reserved.
//


import SwiftUI

let screenSize = UIScreen.main.bounds
let screenWidth = screenSize.width
let screenHeight = screenSize.height

let plantNums = ["plant1","plant2","plant3","plant4","plant5","plant6","plant7","plant8","plant9","plant10","plant11","plant12"]
let randomPlant = plantNums.randomElement()
let date = Date()
let dateFormatter = DateFormatter()


struct JournalView: View {
    
    
    var body: some View {
        
        ZStack{
            wholeView()
                .scaledToFit()
            
        }
        
        
    }
}

struct JounralView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView()
    }
}


struct SaveCardView: View{
    
    var body: some View{
        ZStack{
            
            VStack{
                Rectangle()
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .frame(width: 80, height: 120)
                    .shadow(radius: 10)
                    .border(Color(#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)), width: 2)
            }
            
            
            Text("Save")
            
        }
    }
}


struct wholeView: View{
    
    
    
    @State var userInput: String = ""
    
    func textTransport(){
        if textTransporter != "" {
            userInput = textTransporter
        }
    }
    
    var body: some View{
        ZStack{
            Image(randomPlant!)
                .resizable()
                .frame(width: 100, height: 200)
                .padding(.top, 700)
                .padding(.leading, 300)
            
            ZStack{
                
                
                Image("palm leaves")
                    .padding(.bottom, 1000)
                
                
                
                ScrollView {
                    VStack{
                        Text("Journal Entry")
                            .font(.system(size: 33))
                            .underline()
                            .padding(.top, 370)
                        
                        
                        
                        
                        
                        TextView(text: $userInput).frame(numLines:27)
                            .frame(width: screenWidth - 30)
                        
                        
                        
                        
                    }
                    
                    
                    Button(action: {
                        UserDefaults.standard.set(self.$userInput.wrappedValue, forKey: dateFormatter.string(from: date))
                        
                        if let text = UserDefaults.standard.object(forKey: dateFormatter.string(from: date)) as? String{
                            print(text)
                        }
                    }) {
                        SaveCardView()
                            .padding(.trailing, 240)
                            .padding(.top, 20)
                    }.buttonStyle(PlainButtonStyle())
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }.onAppear{
                    self.textTransport()
                    dateFormatter.dateFormat = "MM-dd-yyyy"
                    print(dateFormatter.string(from: date))
                }
                
            }
            
        }
        
    }
    
}
