//
//  ContentView.swift
//  Voyager
//
//  Created by Dhruv Jatkar on 3/13/20.
//  Copyright © 2020 Dhruv Jatkar. All rights reserved.
//
var presentHome: Bool = false
var presentNote = false
var strMoTr = ""
var currMo:Int = 1

import SwiftUI

struct ContentView: View {
    
    /*
     @State var data: [[CGFloat]] = [
     [],
     []
     ]
     */
    
    var timer2: Timer {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in
            self.checkHome()
            self.checkNote()
            
        }
    }
    
    
    
    
    public func checkHome(){
        if presentHome{
            self.presentHomeHome.toggle()
        }
        presentHome = false
        
        
    }
    
    
    public func checkNote(){
        if presentNote{
            self.presentNote2.toggle()
        }
        presentNote = false
        
        
    }

    
    @State var presentNature = false
    @State var presentHomeHome = false
    @State var presentNote2 = false
    
    
    
    
    
    var body: some View {
        
        Section{
        
        NavigationView{
            
            ZStack{
                
                
                
                topCardHome()
                    .padding(.bottom, 720)
                
                
                
                Capsule()
                    .frame(width: 300, height: 50)
                    .foregroundColor(Color(.white))
                    .shadow(radius: 10)
                    .padding(.bottom, 840)
                    .padding(.trailing, 340)
                Text("Discover")
                    .font(.system(size: 28))
                    .fontWeight(.bold)
                    
                    .padding(.trailing, 240)
                    .padding(.bottom, 840)
                
                
                ScrollView{
                    VStack{
                        Text("Meditations")
                            .font(.system(size: 28))
                            .fontWeight(.bold)
                            .padding(.trailing, 210)
                            .padding(.top, 35)
                        
                        ScrollView(.horizontal){
                            HStack{
                                
                                Button(action: {
                                    self.presentNature.toggle()
                                    
                                }) {
                                    MeditateHomeCard1()
                                        .padding(.leading, 128)
                                    
                                }.buttonStyle(PlainButtonStyle())
                                
                                
                                
                                MeditateHomeCard2()
                                    .padding(.trailing, 128)
                                
                            }
                        }.sheet(isPresented: $presentNature) {
                            MeditationSelector()
                            
                        }
                        
                        
                        
                        caljourCards().padding()
                        
                        
                        
                        
                        
                        
                    }
                }.padding(.top, 308)
                    .padding(.bottom, 200)
                
                
                
                
                navBarView()
            }.sheet(isPresented: $presentHomeHome) {
                ContentView()
                
            }
        } .onAppear(perform: {self.timer2})
        }.sheet(isPresented: $presentNote2){
            NotePicker()
        }
    }
    
}




struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct BarGraphsView : View{
    @State var pickerSelectedItem = 1
    
    
    var dayTimes = ["12:00 AM", "4:00 AM", "8:00 AM", "12:00 PM", "3:00 PM", "6:00 PM", "9:00 PM"]
    
    var weekDays = ["Sun        ", "Mon        ", "Tues       ", "Wed        ", "Thu        ", "Fri        ", "Sat        "]
    var body: some View{
        ZStack{
            Color.white.edgesIgnoringSafeArea(.all)
            
            VStack{
                
                
                
                Text("Meditation Minutes")
                    .font(.headline)
                    .fontWeight(.heavy)
                    .lineLimit(nil)
                
                
                
                Picker(selection: $pickerSelectedItem, label: Text("")) {
                    Text("Day").tag(0)
                    Text("Week").tag(1)
                }.pickerStyle(SegmentedPickerStyle())
                    .padding(.horizontal, 24)
                
                HStack{
                    VStack{
                        ZStack(alignment: .bottom){
                            Capsule().frame(width: 30, height: 200)
                                .foregroundColor(Color(#colorLiteral(red: 0.8308708072, green: 0.7991258502, blue: 0.9995847344, alpha: 1)))
                            //Wrap colorliteral in Color()
                            Capsule().frame(width: 30, height: 170)
                                .foregroundColor(Color(#colorLiteral(red: 0.5234538913, green: 0.314029783, blue: 0.9882138371, alpha: 1)))
                            
                        }
                        
                        if pickerSelectedItem == 1{
                            Text(weekDays[0]).font(.system(size:10)).padding(.top, 8)
                            
                        }
                        else{
                            Text(dayTimes[0]).font(.system(size:10)).padding(.top, 8)
                        }
                    }
                    VStack{
                        ZStack(alignment: .bottom){
                            Capsule().frame(width: 30, height: 200)
                                .foregroundColor(Color(#colorLiteral(red: 0.8308708072, green: 0.7991258502, blue: 0.9995847344, alpha: 1)))
                            //Wrap colorliteral in Color()
                            Capsule().frame(width: 30, height: 170)
                                .foregroundColor(Color(#colorLiteral(red: 0.5234538913, green: 0.314029783, blue: 0.9882138371, alpha: 1)))
                            
                        }
                        if pickerSelectedItem == 1{
                            Text(weekDays[1]).font(.system(size:10)).padding(.top, 8)
                            
                        }
                        else{
                            Text(dayTimes[1]).font(.system(size:10)).padding(.top, 8)
                        }
                    }
                    
                    
                    VStack{
                        ZStack(alignment: .bottom){
                            Capsule().frame(width: 30, height: 200)
                                .foregroundColor(Color(#colorLiteral(red: 0.8308708072, green: 0.7991258502, blue: 0.9995847344, alpha: 1)))
                            //Wrap colorliteral in Color()
                            Capsule().frame(width: 30, height: 170)
                                .foregroundColor(Color(#colorLiteral(red: 0.5234538913, green: 0.314029783, blue: 0.9882138371, alpha: 1)))
                            
                        }
                        if pickerSelectedItem == 1{
                            Text(weekDays[2]).font(.system(size:10)).padding(.top, 8)
                            
                        }
                        else{
                            Text(dayTimes[2]).font(.system(size:10)).padding(.top, 8)
                        }
                        
                    }
                    
                    
                    
                    VStack{
                        ZStack(alignment: .bottom){
                            Capsule().frame(width: 30, height: 200)
                                .foregroundColor(Color(#colorLiteral(red: 0.8308708072, green: 0.7991258502, blue: 0.9995847344, alpha: 1)))
                            //Wrap colorliteral in Color()
                            Capsule().frame(width: 30, height: 170)
                                .foregroundColor(Color(#colorLiteral(red: 0.5234538913, green: 0.314029783, blue: 0.9882138371, alpha: 1)))
                            
                        }
                        if pickerSelectedItem == 1{
                            Text(weekDays[3]).font(.system(size:10)).padding(.top, 8)
                            
                        }
                        else{
                            Text(dayTimes[3]).font(.system(size:10)).padding(.top, 8)
                        }
                        
                    }
                    
                    
                    
                    VStack{
                        ZStack(alignment: .bottom){
                            Capsule().frame(width: 30, height: 200)
                                .foregroundColor(Color(#colorLiteral(red: 0.8308708072, green: 0.7991258502, blue: 0.9995847344, alpha: 1)))
                            //Wrap colorliteral in Color()
                            Capsule().frame(width: 30, height: 170)
                                .foregroundColor(Color(#colorLiteral(red: 0.5234538913, green: 0.314029783, blue: 0.9882138371, alpha: 1)))
                            
                        }
                        if pickerSelectedItem == 1{
                            Text(weekDays[4]).font(.system(size:10)).padding(.top, 8)
                            
                        }
                        else{
                            Text(dayTimes[5]).font(.system(size:10)).padding(.top, 8)
                        }
                        
                    }
                    
                    
                    
                    VStack{
                        ZStack(alignment: .bottom){
                            Capsule().frame(width: 30, height: 200)
                                .foregroundColor(Color(#colorLiteral(red: 0.8308708072, green: 0.7991258502, blue: 0.9995847344, alpha: 1)))
                            //Wrap colorliteral in Color()
                            Capsule().frame(width: 30, height: 170)
                                .foregroundColor(Color(#colorLiteral(red: 0.5234538913, green: 0.314029783, blue: 0.9882138371, alpha: 1)))
                            
                        }
                        if pickerSelectedItem == 1{
                            Text(weekDays[5]).font(.system(size:10)).padding(.top, 8)
                            
                        }
                        else{
                            Text(dayTimes[5]).font(.system(size:10)).padding(.top, 8)
                        }
                        
                    }
                    
                    
                    VStack{
                        ZStack(alignment: .bottom){
                            Capsule().frame(width: 30, height: 200)
                                .foregroundColor(Color(#colorLiteral(red: 0.8308708072, green: 0.7991258502, blue: 0.9995847344, alpha: 1)))
                            //Wrap colorliteral in Color()
                            Capsule().frame(width: 30, height: 170)
                                .foregroundColor(Color(#colorLiteral(red: 0.5234538913, green: 0.314029783, blue: 0.9882138371, alpha: 1)))
                            
                        }
                        if pickerSelectedItem == 1{
                            Text(weekDays[6]).font(.system(size:10)).padding(.top, 8)
                            
                        }
                        else{
                            Text(dayTimes[6]).font(.system(size:10)).padding(.top, 8)
                        }
                    }
                    
                    
                }
            }
            //end of v stack
        }
        
    }
}


struct topCardHome: View{
    
    var body: some View{
        ZStack{
            
            Image("yoga class 9-1")
                .resizable()
                .frame(width: screenWidth, height: 305)
                .padding(.bottom, 10)
            //     .edgesIgnoringSafeArea(.all)
            Text("Destress At Home")
                .fontWeight(.bold)
                .font(.system(size:25))
                .foregroundColor(Color(.white))
                .padding(.top, 250)
                .padding(.leading, 160)
            
        }
    }
}

struct caljourCards: View{
    var body: some View{
        ZStack{
            Button(action: {
                 presentNote = true
                print(presentNote)
            }){
            
            
            Text("Plan Your Day")
                .font(.system(size: 28))
                .fontWeight(.bold)
                .padding(.bottom, 199)
                .padding(.trailing, 170)
            VStack{
                Image("Journal")
                    .resizable()
                    .frame(width: 130, height: 130)
                    .cornerRadius(10)
                    .shadow(radius: 6)
                    .padding(.trailing, 180)
                }
                
            }.buttonStyle(PlainButtonStyle())
            
            Text("Bullet Journal")
                .bold()
                .padding(.trailing, 180)
                .padding(.top, 180)
            
            Rectangle()
                
                .fill(Color(#colorLiteral(red: 0.9972055554, green: 0.7310305238, blue: 0.3058537245, alpha: 1)))
                .frame(width: 130, height: 130)
                .cornerRadius(10)
                .shadow(radius: 6)
                .padding(.leading, 177)
            
            
            
            VStack{
                Image("Calendar")
                    .resizable()
                    .frame(width: 150, height: 180)
                    .cornerRadius(10)
                    .shadow(radius: 6)
                    .padding(.leading, 180)
                
            }
            Text("Calendar")
                .bold()
                .padding(.leading, 180)
                .padding(.top, 180)
            
            
            
            
            
            
        }
    }
}



struct MeditateHomeCard1: View{
    
    var body: some View{
        ZStack{
            
            Image("HomeMeditateButton")
                .resizable()
                .frame(width: screenWidth - 30, height: 220)
                .cornerRadius(10)
            Image("Play")
                .resizable()
                .frame(width: 75, height: 60)
                .padding(.top, 150)
                .padding(.leading, 300)
            Text("Nature Immersions")
                .foregroundColor(Color(.white))
                .font(.system(size: 30))
                .fontWeight(.bold)
            
        }
    }
}


struct MeditateHomeCard2: View{
    
    var body: some View{
        ZStack{
            
            Image("Peace")
                .resizable()
                .frame(width: screenWidth - 30, height: 220)
                .cornerRadius(10)
            Image("Play")
                .resizable()
                .frame(width: 75, height: 60)
                .padding(.top, 150)
                .padding(.leading, 300)
            Text("Peace and Focus")
                .foregroundColor(Color(.white))
                .font(.system(size: 30))
                .fontWeight(.bold)
            
        }
    }
}


struct navBarView: View{
    public func numNotesApril(){
            dateFormatter.dateFormat = "MM-dd-yyyy"
             let str = dateFormatter.string(from: date)
             
             
             var start = str.index(str.startIndex, offsetBy: 3)
             var end = str.index(str.endIndex, offsetBy: -5)
             var range = start..<end
             
             var substrr = str[range]
             aprilStr = String(substrr)
             
             if aprilStr.first! == "0"{
                 lessThan10AprilStr = String(aprilStr.last!)
                 numOfNotes = Int(lessThan10AprilStr)! + 1

             }
             
             else{
                 numOfNotes = Int(aprilStr)! + 1



             }
            
                                    let str1 = dateFormatter.string(from: date)
                                    
                                    var start1 = str1.index(str1.startIndex, offsetBy: 0)
                                    var end1 = str1.index(str1.endIndex, offsetBy: -8)
                                    var range1 = start1..<end1
                                    
                                    var substr1 = str1[range1]
              
                                    strMoTr = String(substr1)
        
                currMo = Int(strMoTr)!
                print(String(currMo) + "LOOK HERE THIS IS THE CURRENT MONTH")
        
        
            
        
             
         }
    
    var body: some View{
        ZStack{
            
            
            Rectangle()
                .fill(Color(.white))
                
                .frame(width: screenWidth, height: 70)
                .padding(.top, 720)
                .shadow(radius: 4)
            
            
            
            Button(action: {
                presentHome = true
                
            }) {
                Rectangle()
                    .fill(Color(.white))
                    .frame(width: (screenWidth/3), height: 70)
                    .padding(.top, 720)
                    .shadow(radius: 1)
                
                Image("cape")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding(.top, 720)
            }.buttonStyle(PlainButtonStyle())
            
            
            
        }.onAppear{
            
            self.numNotesApril()
        }
        
    }
}
