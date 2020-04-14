//
//  MyRecurringEvents.swift
//  Voyager
//
//  Created by Dhruv Jatkar on 4/11/20.
//  Copyright © 2020 Dhruv Jatkar. All rights reserved.
//

import SwiftUI

let colorScheme = [ Color(#colorLiteral(red: 0.9716103673, green: 0.7653454542, blue: 0.7251068354, alpha: 1)), Color(#colorLiteral(red: 0.9653825164, green: 0.8285039067, blue: 0.6885468364, alpha: 1)), Color(#colorLiteral(red: 0.9844804406, green: 0.9231253266, blue: 0.6501711011, alpha: 1)), Color(#colorLiteral(red: 0.6795236468, green: 0.8727894425, blue: 0.8303856254, alpha: 1)), Color(#colorLiteral(red: 0.708330214, green: 0.8931130767, blue: 0.7891228795, alpha: 1)), Color(#colorLiteral(red: 0.6778770089, green: 0.9130869508, blue: 0.8657885194, alpha: 1)), Color(#colorLiteral(red: 0.7104271054, green: 0.9376687407, blue: 0.8066535592, alpha: 1)), Color(#colorLiteral(red: 0.7186876535, green: 0.8654167056, blue: 0.9587698579, alpha: 1)), Color(#colorLiteral(red: 0.7247877717, green: 0.753308475, blue: 0.7876806259, alpha: 1))]

var currEventColor = 0
var numCurrEvents = UserDefaults.standard.object(forKey: "numCurrEvents") as? Int ?? 2

struct MyRecurringEvents: View {
    
    @State var viewDidChange: Bool = false
    
    public func howManyEvents() -> Int{
        return numCurrEvents
    }
    var timer11: Timer {
           Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in
               self.howManyEvents()
                MyRecurringEvents()
               
               
           }
       }
    
    var body: some View {
        ZStack{
            
            VStack{
                Group{
                        HStack{
                            ZStack{
                        Capsule()
                            .frame(width: screenWidth/1.7, height: 50)
                            .foregroundColor(Color(.white))
                            .shadow(radius: 10)
                        Text("My Events")
                            .font(.system(size: 28))
                            .fontWeight(.bold)
                            }
                        Button(action: {
                            UserDefaults.standard.set(numCurrEvents, forKey: "numCurrEvents")
                        }){
                            ZStack{
                                Capsule()
                                    .fill(Color(.white))
                                    .frame(width: 100, height: 40)
                                    .shadow(radius:3)
                                
                                Text("Save")
                                    .font(.system(size:20))
                            }
                        }
                        
                        
                        
                        
                        Button(action: {
                            numCurrEvents += 1
                            self.viewDidChange.toggle()
                        }){
                            ZStack{
                                Circle()
                                    .fill(Color(.white))
                                    .frame(width: 50, height: 50)
                                    .shadow(radius:3)
                                
                                Text("+")
                                    .font(.system(size:40))
                                    .padding(.bottom, 3)
                            }
                            
                        }
                    }
                    
                }
                    
                    ScrollView{
                        ForEach(1 ..< howManyEvents()){ number in
                            EventView1()
                            
                        }
                        
                    }
                }
            
            if self.viewDidChange{
                MyRecurringEvents()
            }
            
        }.background(Color(.yellow))
        .onAppear(perform: {self.timer11})
            
        }
        
    }


struct MyRecurringEvents_Previews: PreviewProvider {
    static var previews: some View {
        MyRecurringEvents()
    }
}


struct EventView1: View{
    
    var timer10: Timer {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in
            self.checkIfEmpty()
            
            
        }
    }
    
    func checkIfEmpty(){
        if eventText != ""{
            UserDefaults.standard.set(self.$eventText.wrappedValue, forKey: String(numCurrEvents) + "text")
        }
    }
    
    func selectEventColor() -> Int{
        currEventColor += 1
        numCurrEvents += 1
        return currEventColor
    }
    
    @State var eventText = ""

    
    var body: some View{
        ZStack{
            Rectangle()
                .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .frame(width: screenWidth + 5, height: screenHeight/17)
                .border(Color(.black))
            
            TextView(text: $eventText).frame(numLines:1)
                .frame(width: screenWidth - 5, height: screenHeight/17)
                .padding(.leading, 10)
            
            
        }.onAppear(perform:{self.timer10})
        
    }
    
}


