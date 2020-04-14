//
//  NotePicker.swift
//  Voyager
//
//  Created by Dhruv Jatkar on 04/6/2020.
//  Copyright © 2020 Dhruv Jatkar. All rights reserved.
//

import SwiftUI

var textTransporter: String = ""

var numOfNotes = 2
var numOfNotesMay = 2

var noteID: String = dateFormatter.string(from: date)

var aprilStr = ""
var lessThan10AprilStr = ""

struct disabler: View{
    var body: some View{
        ZStack{
            Rectangle()
                .fill(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 0.825984589)))
                .frame(width: screenWidth - 5, height: screenWidth/1.6)
                .cornerRadius(20, corners: [.topLeft, .bottomLeft])
            
        }
        
    }
    
}



struct NotePicker: View {
    
    @State var goToNote: Bool = false
    
    
    
    var body: some View{
        VStack{
            
            ZStack{
                
                Capsule()
                    .fill(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 0.7943867723)))
                    .frame(width: 250, height: 50)
                    .padding(.trailing, screenWidth/2)
                
                
                Text("My Journal")
                    .font(.system(size: 35))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .shadow(radius: 10)
                    .padding(.trailing, screenWidth/2)

            }
            .padding(.top, 40)
            .padding(.bottom, 20)
            
            Group{
            ScrollView{
                VStack{
                    ZStack{
                        VStack{
                            Text("April")
                                .font(.system(size: 33))
                                .fontWeight(.bold)
                                .padding(.trailing, screenWidth/2 + 80)
                            monthCardView1().padding(.leading,10)
                        }
                        ScrollView(.horizontal){
                            
                            HStack{
                                
                                ForEach(1 ..< numOfNotes){ number in
                                    Button(action:{
                                        
                                        let str = dateFormatter.string(from: date)
                                        
                                        var start = str.index(str.startIndex, offsetBy: 3)
                                        var end = str.index(str.endIndex, offsetBy: -5)
                                        var range = start..<end
                                        
                                        var substr = str[range]
                                        
                                        var newPass = ""
                                        
                                        
                                        
                                        if number == 1{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            print("I TOUCHED 1")
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        
                                        if number == 2{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 3{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 4{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 5{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 6{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 7{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 8{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 9{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 10{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 11{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 12{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 13{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 14{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 15{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 16{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 17{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 18{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 19{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 20{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 21{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 22{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 23{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 24{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 25{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 26{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 27{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 28{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 29{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 30{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 31{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "04-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        
                                        
                                        if let text1 = UserDefaults.standard.object(forKey: newPass) as? String{
                                            textTransporter = text1
                                            print(textTransporter)
                                        }
                                        self.goToNote.toggle()
                                    }){
                                        VStack{
                                            
                                            Image("j\(number)").resizable().frame(width: 150, height: 200)
                                                .padding(.top, 45)
                                            
                                            Text("April \(number), 2020")
                                                .fontWeight(.bold)
                                            
                                            
                                        }
                                    }.buttonStyle(PlainButtonStyle())
                                }
                            }.padding(.leading, 20)
                        }.padding(.leading, 10)
                    }.padding(.bottom, 20)
                        .onAppear{
                            dateFormatter.dateFormat = "MM-dd-yyyy"
                            
                    }
                    
                    mayMonth().padding(.bottom, 20)
                    juneMonth().padding(.bottom, 20)
                    julyMonth().padding(.bottom, 20)
                    
                }.sheet(isPresented: $goToNote){
                    JournalView()
                }
                .edgesIgnoringSafeArea(.all)
            }
            }
            
        }.background(Color(#colorLiteral(red: 0.8492279649, green: 0.9273030162, blue: 0.9652007222, alpha: 0.6143782106)).edgesIgnoringSafeArea(.all)
)
    }
}

struct NotePicker_Previews: PreviewProvider {
    static var previews: some View {
        NotePicker()
    }
}

struct monthCardView1: View{
    
    var body: some View{
        ZStack{
            Rectangle()
                .fill(Color(#colorLiteral(red: 0.9835236669, green: 0.7801328301, blue: 0.806121707, alpha: 1)))
                .frame(width: screenWidth - 5, height: screenWidth/1.6)
                .cornerRadius(20, corners: [.topLeft, .bottomLeft])
                .shadow(radius: 8)
        }
        .onAppear{
            dateFormatter.dateFormat = "MM-dd-yyyy"
            
        }
    }
}

struct monthCardView2: View{
    
    var body: some View{
        ZStack{
            Rectangle()
                .fill(Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)))
                .frame(width: screenWidth - 5, height: screenWidth/1.6)
                .cornerRadius(20, corners: [.topLeft, .bottomLeft])
                .shadow(radius: 8)
        }
        .onAppear{
            dateFormatter.dateFormat = "MM-dd-yyyy"
            
        }
    }
}

struct monthCardView3: View{
    
    var body: some View{
        ZStack{
            Rectangle()
                .fill(Color(#colorLiteral(red: 0.5258436799, green: 0.6822388172, blue: 0.9090140462, alpha: 1)))
                .frame(width: screenWidth - 5, height: screenWidth/1.6)
                .cornerRadius(20, corners: [.topLeft, .bottomLeft])
                .shadow(radius: 8)
        }
        .onAppear{
            dateFormatter.dateFormat = "MM-dd-yyyy"
            
        }
    }
}

struct monthCardView4: View{
    
    var body: some View{
        ZStack{
            Rectangle()
                .fill(Color(#colorLiteral(red: 0.8530040383, green: 0.6075234413, blue: 0.8959352374, alpha: 1)))
                .frame(width: screenWidth - 5, height: screenWidth/1.6)
                .cornerRadius(20, corners: [.topLeft, .bottomLeft])
                .shadow(radius: 8)
        }
        .onAppear{
            dateFormatter.dateFormat = "MM-dd-yyyy"
            
        }
    }
}

struct mayMonth: View{
    
    
    
    @State var goToNoteMay = false
    var body: some View{
        
        VStack{
            Section{
                ZStack{
                    VStack{
                        Text("May")
                            .font(.system(size: 33))
                            .fontWeight(.bold)
                            .padding(.trailing, screenWidth/2 + 80)
                        ZStack{
                            monthCardView2().padding(.leading,10)
                            
                        }
                    }
                    ZStack{
                        
                        
                        ScrollView(.horizontal){
                            
                            HStack{
                                
                                ForEach(1 ..< numOfNotes){ number in
                                    Button(action:{
                                        
                                        let str = dateFormatter.string(from: date)
                                        
                                        var start = str.index(str.startIndex, offsetBy: 3)
                                        var end = str.index(str.endIndex, offsetBy: -5)
                                        var range = start..<end
                                        
                                        var substr = str[range]
                                        
                                        var newPass = ""
                                        
                                        
                                        
                                        if number == 1{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            print("I TOUCHED 1")
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        
                                        if number == 2{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 3{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 4{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 5{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 6{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 7{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 8{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 9{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 10{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 11{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 12{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 13{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 14{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 15{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 16{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 17{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 18{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 19{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 20{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 21{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 22{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 23{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 24{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 25{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 26{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 27{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 28{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 29{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 30{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 31{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        
                                        
                                        if let text1 = UserDefaults.standard.object(forKey: newPass) as? String{
                                            textTransporter = text1
                                            print(textTransporter)
                                        }
                                        self.goToNoteMay.toggle()
                                    }){
                                        VStack{
                                            
                                            Image("j\(number)").resizable().frame(width: 150, height: 200)
                                                .padding(.top, 45)
                                            
                                            
                                        }
                                    }.buttonStyle(PlainButtonStyle())
                                }
                            }.padding(.leading, 20)
                        }.padding(.leading, 10)
                        if currMo < 5{
                            disabler().padding(.leading, 10)
                                .padding(.top, 60)
                        }
                        
                        
                    }.onAppear{
                        dateFormatter.dateFormat = "MM-dd-yyyy"
                        
                    }
                    
                    
                    
                }.sheet(isPresented: $goToNoteMay){
                    JournalView()
                }
            }
            
        }
    }
}


struct juneMonth: View{
    
    
    
    @State var goToNoteJune = false
    var body: some View{
        
        VStack{
            Section{
                ZStack{
                    VStack{
                        Text("June")
                            .font(.system(size: 33))
                            .fontWeight(.bold)
                            .padding(.trailing, screenWidth/2 + 80)
                        ZStack{
                            monthCardView3().padding(.leading,10)
                            
                        }
                    }
                    ZStack{
                        
                        
                        ScrollView(.horizontal){
                            
                            HStack{
                                
                                ForEach(1 ..< numOfNotes){ number in
                                    Button(action:{
                                        
                                        let str = dateFormatter.string(from: date)
                                        
                                        var start = str.index(str.startIndex, offsetBy: 3)
                                        var end = str.index(str.endIndex, offsetBy: -5)
                                        var range = start..<end
                                        
                                        var substr = str[range]
                                        
                                        var newPass = ""
                                        
                                        
                                        
                                        if number == 1{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            print("I TOUCHED 1")
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        
                                        if number == 2{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 3{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 4{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 5{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 6{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 7{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 8{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 9{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 10{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 11{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 12{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 13{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 14{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 15{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 16{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 17{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 18{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 19{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 20{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 21{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 22{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 23{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 24{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 25{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 26{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 27{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 28{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 29{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 30{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 31{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "06-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        
                                        
                                        if let text1 = UserDefaults.standard.object(forKey: newPass) as? String{
                                            textTransporter = text1
                                            print(textTransporter)
                                        }
                                        self.goToNoteJune.toggle()
                                    }){
                                        VStack{
                                            
                                            Image("j\(number)").resizable().frame(width: 150, height: 200)
                                                .padding(.top, 45)
                                            
                                            
                                        }
                                    }.buttonStyle(PlainButtonStyle())
                                }
                            }.padding(.leading, 20)
                        }.padding(.leading, 10)
                        if currMo < 6{
                            disabler().padding(.leading, 10)
                                .padding(.top, 60)
                        }
                        
                        
                    }.onAppear{
                        dateFormatter.dateFormat = "MM-dd-yyyy"
                        
                    }
                    
                    
                    
                }.sheet(isPresented: $goToNoteJune){
                    JournalView()
                }
            }
            
        }
    }
}

struct julyMonth: View{
    
    
    
    @State var goToNoteJuly = false
    var body: some View{
        
        VStack{
            Section{
                ZStack{
                    VStack{
                        Text("July")
                            .font(.system(size: 33))
                            .fontWeight(.bold)
                            .padding(.trailing, screenWidth/2 + 80)
                        ZStack{
                            monthCardView4().padding(.leading,10)
                            
                        }
                    }
                    ZStack{
                        
                        
                        ScrollView(.horizontal){
                            
                            HStack{
                                
                                ForEach(1 ..< numOfNotes){ number in
                                    Button(action:{
                                        
                                        let str = dateFormatter.string(from: date)
                                        
                                        var start = str.index(str.startIndex, offsetBy: 3)
                                        var end = str.index(str.endIndex, offsetBy: -5)
                                        var range = start..<end
                                        
                                        var substr = str[range]
                                        
                                        var newPass = ""
                                        
                                        
                                        
                                        if number == 1{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            print("I TOUCHED 1")
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        
                                        if number == 2{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 3{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 4{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 5{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 6{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 7{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 8{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 9{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 10{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 11{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 12{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 13{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 14{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 15{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 16{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 17{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 18{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 19{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 20{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 21{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 22{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 23{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 24{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 25{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 26{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 27{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 28{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 29{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 30{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        if number == 31{
                                            
                                            var addition = ""
                                            if number < 10{
                                                addition = "0" + String(number)
                                            }
                                            else{
                                                addition = String(number)
                                            }
                                            
                                            var passw = "05-x-2020"
                                            
                                            newPass = passw.replacingOccurrences(of: "x", with: addition, options: .literal, range: nil)
                                        }
                                        
                                        
                                        
                                        if let text1 = UserDefaults.standard.object(forKey: newPass) as? String{
                                            textTransporter = text1
                                            print(textTransporter)
                                        }
                                        self.goToNoteJuly.toggle()
                                    }){
                                        VStack{
                                            
                                            Image("j\(number)").resizable().frame(width: 150, height: 200)
                                                .padding(.top, 45)
                                            
                                            
                                        }
                                    }.buttonStyle(PlainButtonStyle())
                                }
                            }.padding(.leading, 20)
                        }.padding(.leading, 10)
                        if currMo < 7{
                            disabler().padding(.leading, 10)
                                .padding(.top, 60)
                        }
                        
                        
                    }.onAppear{
                        dateFormatter.dateFormat = "MM-dd-yyyy"
                        
                    }
                    
                    
                    
                }.sheet(isPresented: $goToNoteJuly){
                    JournalView()
                }
            }
            
        }
    }
}
