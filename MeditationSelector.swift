//
//  MeditationSelector.swift
//  Voyager
//
//  Created by Dhruv Jatkar on 3/21/20.
//  Copyright © 2020 Dhruv Jatkar. All rights reserved.
//




import SwiftUI
var isNaturePlaying : Bool = false
var selectedAudio : String = ""
var selectedBackground : String = ""


var tg1 : Bool = false
var tgDesc1 : Bool = false
var tg2 : Bool = false
var tgDesc2 : Bool = false
var tg3 : Bool = false
var tgDesc3 : Bool = false
var tg4 : Bool = false
var tgDesc4 : Bool = false
var tg5 : Bool = false
var tgDesc5 : Bool = false
var tg6 : Bool = false
var tgDesc6 : Bool = false
var tg7 : Bool = false
var tgDesc7 : Bool = false
var tg8 : Bool = false
var tgDesc8 : Bool = false


struct MeditationSelector: View {
    
    @State var presentHomeNatureSelector: Bool = false
    
    
    public func checkHome(){
        if presentHome{
            self.presentHomeNatureSelector.toggle()
        }
        presentHome = false
        
        
    }
    
    
    
    var timer1: Timer {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in
            self.checkMeditation1()
            self.checkMeditation2()
            self.checkMeditation3()
            self.checkMeditation4()
            self.checkMeditation5()
            self.checkMeditation6()
            self.checkMeditation7()
            self.checkMeditation8()
            self.checkBack1()
            self.checkBack2()
            
            self.checkBack3()
            
            self.checkBack4()
            
            self.checkBack5()
            
            self.checkBack6()
            
            self.checkBack7()
            
            self.checkBack8()
            self.checkHome()
            
        }
    }
    @State var gotoMeditate = false
    @State var toggleNatureCard1 = false
    @State var toggleNatureCard2 = false
    @State var toggleNatureCard3 = false
    @State var toggleNatureCard4 = false
    @State var toggleNatureCard5 = false
    @State var toggleNatureCard6 = false
    @State var toggleNatureCard7 = false
    @State var toggleNatureCard8 = false
    
    @State var toggleMeditate1 = false
    @State var toggleMeditate2 = false
    @State var toggleMeditate3 = false
    @State var toggleMeditate4 = false
    @State var toggleMeditate5 = false
    @State var toggleMeditate6 = false
    @State var toggleMeditate7 = false
    @State var toggleMeditate8 = false
    
    
    
    
    
    public func checkMeditation1(){
        if tg1{
            self.toggleMeditate1.toggle()
            self.gotoMeditate.toggle()
            selectedBackground = mWalkURL
            selectedAudio = "mwalk"
            
        }
        tg1 = false
        
    }
    
    public func checkBack1(){
        if tgDesc1{
            self.toggleNatureCard1.toggle()
            
        }
        tgDesc1 = false
    }
    
    
    
    
    
    public func checkMeditation2(){
        if tg2{
            self.toggleMeditate2.toggle()
            self.gotoMeditate.toggle()
            selectedBackground = beachURL
            selectedAudio = "oceansound"
            
            print("did this work")
            
        }
        tg2 = false
    }
    
    public func checkBack2(){
        if tgDesc2{
            self.toggleNatureCard2.toggle()
        }
        tgDesc2 = false
    }
    
    
    
    
    
    public func checkMeditation3(){
        if tg3{
            self.toggleMeditate3.toggle()
            self.gotoMeditate.toggle()
            selectedBackground = waterFallURL
            selectedAudio = "waterfall"
        }
        tg3 = false
    }
    
    public func checkBack3(){
        if tgDesc3{
            self.toggleNatureCard3.toggle()
            
        }
        tgDesc3 = false
    }
    
    
    
    
    
    
    
    public func checkMeditation4(){
        if tg4{
            self.toggleMeditate4.toggle()
            self.gotoMeditate.toggle()
            selectedBackground = snowURL
            selectedAudio = "snow"
        }
        tg4 = false
    }
    
    public func checkBack4(){
        if tgDesc4{
            self.toggleNatureCard4.toggle()
        }
        tgDesc4 = false
    }
    
    
    
    
    
    
    public func checkMeditation5(){
        if tg5{
            self.toggleMeditate5.toggle()
            self.gotoMeditate.toggle()
            selectedBackground = nightURL
            selectedAudio = "night"
        }
        tg5 = false
    }
    
    public func checkBack5(){
        if tgDesc5{
            self.toggleNatureCard5.toggle()
        }
        tgDesc5 = false
        
        
        
    }
    
    
    
    
    
    
    
    public func checkMeditation6(){
        if tg6{
            self.toggleMeditate6.toggle()
            self.gotoMeditate.toggle()
            selectedBackground = capeURL
            selectedAudio = "cape"
        }
        tg6 = false
    }
    
    public func checkBack6(){
        if tgDesc6{
            self.toggleNatureCard6.toggle()
        }
        tgDesc6 = false
    }
    
    
    
    
    
    
    public func checkMeditation7(){
        if tg7{
            self.toggleMeditate7.toggle()
            self.gotoMeditate.toggle()
            selectedBackground = islandURL
            selectedAudio = "island"
        }
        tg7 = false
    }
    
    public func checkBack7(){
        if tgDesc7{
            self.toggleNatureCard7.toggle()
        }
        tgDesc7 = false
    }
    
    
    
    
    
    public func checkMeditation8(){
        if tg8{
            self.toggleMeditate8.toggle()
            self.gotoMeditate.toggle()
            selectedBackground = eveningMountainURL
            selectedAudio = "mtwind"
        }
        tg8 = false
    }
    
    public func checkBack8(){
        if tgDesc8{
            self.toggleNatureCard8.toggle()
        }
        tgDesc8 = false
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    var body: some View {
        
        
        NavigationView{
            
            ZStack{
                
                VStack{
                    
                    
                    Image("Mountains copy")
                        .resizable()
                        .cornerRadius(180).frame(width: 600, height: 500).padding(.bottom, 690).padding(.trailing, 10)
                        .padding(.top, 300)
                        .edgesIgnoringSafeArea(.all)
                        .onAppear(perform: {self.timer1})
                    
                }
                
                Text("Nature Immersions").font(.system(size: 30)).foregroundColor(.white).fontWeight(.bold).padding(.bottom, 450)
                Text("Wherever you may be, you can always enjoy the calming").font(.system(size: 10)).foregroundColor(.white).padding(.bottom, 350)
                Text(" sounds of nature here. Feel free to take take a walk, ").font(.system(size: 10)).foregroundColor(.white).padding(.bottom, 290)
                Text("lay down, or simply close your eyes").font(.system(size: 10)).foregroundColor(.white).padding(.bottom, 225)
                
                ScrollView{
                    VStack{
                        Spacer()
                        Spacer()
                        
                        HStack{
                            Spacer()
                            
                            Button(action: {
                                self.toggleNatureCard1.toggle()
                                self.checkMeditation1()
                                print("hi")
                                
                            }) {
                                NatureCard1()
                                    .padding(.trailing, 20)
                                    .padding(.bottom, 20)
                            }.buttonStyle(PlainButtonStyle())
                            
                            Button(action: {
                                self.toggleNatureCard2.toggle()
                                self.checkMeditation2()
                                
                            }) {
                                NatureCard2()
                                    .padding(.leading, 20)
                                    .padding(.bottom, 20)
                                
                            }.buttonStyle(PlainButtonStyle())
                            Spacer()
                            
                            
                        }
                        
                        HStack{
                            Spacer()
                            
                            Button(action: {
                                self.toggleNatureCard3.toggle()
                                self.checkMeditation3()
                                
                            }) {
                                
                                NatureCard3().padding(.top, 10)
                                    .padding(.trailing, 20)
                                    .padding(.bottom, 20)
                                
                            }.buttonStyle(PlainButtonStyle())
                            
                            
                            
                            Button(action: {
                                self.toggleNatureCard4.toggle()
                                self.checkMeditation4()
                                
                            }) {
                                
                                
                                NatureCard4().padding(.top, 10)
                                    .padding(.leading, 20)
                                    .padding(.bottom, 20)
                                
                            }.buttonStyle(PlainButtonStyle())
                            
                            
                            
                            
                            
                            
                            Spacer()
                            
                        }
                        
                        HStack{
                            Spacer()
                            
                            
                            
                            Button(action: {
                                self.toggleNatureCard5.toggle()
                                self.checkMeditation5()
                                
                            }) {
                                
                                NatureCard5().padding(.top, 10)
                                    .padding(.trailing, 20)
                                    .padding(.bottom, 20)
                                
                            }.buttonStyle(PlainButtonStyle())
                            
                            
                            
                            
                            
                            
                            Button(action: {
                                self.toggleNatureCard6.toggle()
                                self.checkMeditation6()
                                
                            }) {
                                
                                NatureCard6().padding(.top, 10)
                                    .padding(.leading, 20)
                                    .padding(.bottom, 20)
                                
                            }.buttonStyle(PlainButtonStyle())
                            
                            
                            Spacer()
                            
                        }
                        
                        HStack{
                            Spacer()
                            
                            Button(action: {
                                self.toggleNatureCard7.toggle()
                                self.checkMeditation7()
                                
                            }) {
                                
                                NatureCard7().padding(.top, 10)
                                    .padding(.trailing, 20)
                                    .padding(.bottom, 20)
                                
                            }.buttonStyle(PlainButtonStyle())
                            
                            Button(action: {
                                self.toggleNatureCard8.toggle()
                                self.checkMeditation8()
                                
                            }) {
                                
                                NatureCard8().padding(.top, 10)
                                    .padding(.leading, 20)
                                    .padding(.bottom, 20)
                                
                            }.buttonStyle(PlainButtonStyle())
                            
                            
                            
                            Spacer()
                            
                        }
                        
                    }
                    
                }.frame(width: 7000, height: screenHeight/2, alignment: .top)
                    .padding(.top, screenHeight/3)
                    .edgesIgnoringSafeArea(.all)
                
                
                
                Group{
                    if toggleNatureCard1{
                        NatureCardPreview1()
                    }
                    else{
                        NatureCardPreview1().hidden()
                    }
                    
                    
                    
                    if toggleNatureCard2{
                        NatureCardPreview2()
                    }
                    else{
                        NatureCardPreview2().hidden()
                    }
                    
                    if toggleNatureCard3{
                        NatureCardPreview3()
                    }
                    else{
                        NatureCardPreview3().hidden()
                    }
                    if toggleNatureCard4{
                        NatureCardPreview4()
                    }
                    else{
                        NatureCardPreview4().hidden()
                    }
                    if toggleNatureCard5{
                        NatureCardPreview5()
                    }
                    else{
                        NatureCardPreview5().hidden()
                    }
                    
                    
                    
                    if toggleNatureCard6{
                        NatureCardPreview6()
                    }
                    else{
                        NatureCardPreview6().hidden()
                    }
                    
                    
                    if toggleNatureCard7{
                        NatureCardPreview7()
                    }
                    else{
                        NatureCardPreview7().hidden()
                    }
                    
                    
                    if toggleNatureCard8{
                        NatureCardPreview8()
                    }
                    else{
                        NatureCardPreview8().hidden()
                    }
                    
                }
                

                
                
            }.background(Color(#colorLiteral(red: 0.9527771832, green: 0.7075931079, blue: 0.2434985017, alpha: 0.2127300942)))
 .sheet(isPresented: $gotoMeditate) {
                MeditateState()
                
            }
            
        }
        .sheet(isPresented: $presentHomeNatureSelector) {
            ContentView()
            
        }
        
        
        
    }
    
}

struct MeditationSelector_Previews: PreviewProvider {
    static var previews: some View {
        MeditationSelector()
    }
}

struct NatureCard1: View{
    var body: some View{
        ZStack{
            Rectangle()
                .fill(Color(.white))
                .frame(width: 130, height: 180)
                .cornerRadius(20)
                .shadow(radius: 10)
                
                .edgesIgnoringSafeArea(.all)
            
            
            Image("forest")
                .resizable()
                .frame(width: 100, height: 100)
                .padding(.bottom, 40)
            
            Text("Morning Walk")
                .fontWeight(.bold)
                .padding(.top, 100)
            
        }
        
    }
    
}

struct NatureCard2: View{
    var body: some View{
        ZStack{
            Rectangle()
                .fill(Color(.white))
                .frame(width: 130, height: 180)
                .cornerRadius(20)
                .shadow(radius: 10)
                .edgesIgnoringSafeArea(.all)
            
            Image("sea")
                .resizable()
                .frame(width: 100, height: 100)
                .padding(.bottom, 40)
            Text("Seaside Vibes")
                .fontWeight(.bold)
                .padding(.top, 100)
            
        }
        
    }
    
}

struct NatureCard3: View{
    var body: some View{
        ZStack{
            Rectangle()
                .fill(Color(.white))
                .frame(width: 130, height: 180)
                .cornerRadius(20)
                .shadow(radius: 10)
            
            Image("waterfall")
                .resizable()
                .frame(width: 100, height: 100)
                .padding(.bottom, 40)
            Text("Rushing Falls")
                .fontWeight(.bold)
                .padding(.top, 100)
            
        }
        
    }
    
}

struct NatureCard4: View{
    var body: some View{
        ZStack{
            Rectangle()
                .fill(Color(.white))
                .frame(width: 130, height: 180)
                .cornerRadius(20)
                .shadow(radius: 10)
            
            Image("iceberg")
                .resizable()
                .frame(width: 100, height: 100)
                .padding(.bottom, 40)
            Text("Icy Paradise")
                .fontWeight(.bold)
                .padding(.top, 100)
            
        }
        
    }
    
}

struct NatureCard5: View{
    var body: some View{
        ZStack{
            Rectangle()
                .fill(Color(.white))
                .frame(width: 130, height: 180)
                .cornerRadius(20)
                .shadow(radius: 10)
            
            Image("bridge")
                .resizable()
                .frame(width: 100, height: 100)
                .padding(.bottom, 40)
            Text("Night Drive")
                .fontWeight(.bold)
                .padding(.top, 100)
            
        }
        
    }
    
}

struct NatureCard6: View{
    var body: some View{
        ZStack{
            Rectangle()
                .fill(Color(.white))
                .frame(width: 130, height: 180)
                .cornerRadius(20)
                .shadow(radius: 10)
            
            Image("cape")
                .resizable()
                .frame(width: 100, height: 100)
                .padding(.bottom, 40)
            Text("Sunset Cape")
                .fontWeight(.bold)
                .padding(.top, 100)
            
        }
        
    }
    
}

struct NatureCard7: View{
    var body: some View{
        ZStack{
            Rectangle()
                .fill(Color(.white))
                .frame(width: 130, height: 180)
                .cornerRadius(20)
                .shadow(radius: 10)
            
            Image("island")
                .resizable()
                .frame(width: 100, height: 100)
                .padding(.bottom, 40)
            Text("Island Views")
                .fontWeight(.bold)
                .padding(.top, 100)
            
        }
        
    }
    
}

struct NatureCard8: View{
    var body: some View{
        ZStack{
            Rectangle()
                .fill(Color(.white))
                .frame(width: 130, height: 180)
                .cornerRadius(20)
                .shadow(radius: 10)
            
            Image("mountains-1")
                .resizable()
                .frame(width: 100, height: 100)
                .padding(.bottom, 40)
            Text("Mountain Winds")
                .fontWeight(.bold)
                .padding(.top, 100)
            
        }
        
    }
    
}

struct NatureCard9: View{
    var body: some View{
        ZStack{
            Rectangle()
                .fill(Color(.white))
                .frame(width: 130, height: 180)
                .cornerRadius(20)
                .shadow(radius: 10)
            
            Image("forest")
                .resizable()
                .frame(width: 100, height: 100)
                .padding(.bottom, 40)
            Text("Morning Walk")
                .fontWeight(.bold)
                .padding(.top, 100)
            
        }
        
    }
    
}

struct NatureCardPreview1: View{
    
    
    
    var body: some View{
        ZStack{
            Rectangle()
                .fill(Color(.white))
                .frame(width: 400, height: 300)
                .cornerRadius(20)
                .shadow(radius: 10)
                .padding(.top, 180)
            
            Image("MWalk")
                .resizable()
                .frame(width: 400, height: 250)
                .cornerRadius(20, corners: [.topLeft, .topRight])
                .padding(.top, 70)
            
            Text("Morning Walk")
                .font(.system(size: 30))
                .foregroundColor(Color(.white))
                .fontWeight(.bold)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 150).padding(.leading, 5).padding(.trailing, 5)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 200).padding(.leading, 5).padding(.trailing, 5)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 250).padding(.leading, 5).padding(.trailing, 5)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 300).padding(.leading, 5).padding(.trailing, 5)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 350).padding(.leading, 5).padding(.trailing, 5)
            
            
            
            Button(action: {
                tgDesc1 = true
                
            }) {
                Image("Back")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .padding(.trailing, 330)
                    .padding(.bottom, 100)
            }.buttonStyle(PlainButtonStyle())
            
            
            
            
            Button(action: {
                tg1 = true
                
            }) {
                PlayButtonView()
                    .padding(.top, 420)
            }.buttonStyle(PlainButtonStyle())
            
            
        }
        
        
        
    }
    
}

struct NatureCardPreview2: View{
    
    
    
    var body: some View{
        ZStack{
            Rectangle()
                .fill(Color(.white))
                .frame(width: 400, height: 300)
                .cornerRadius(20)
                .shadow(radius: 10)
                .padding(.top, 180)
            
            Image("beachv")
                .resizable()
                .frame(width: 400, height: 250)
                .cornerRadius(20, corners: [.topLeft, .topRight])
                .padding(.top, 70)
            
            Text("Morning Walk")
                .font(.system(size: 30))
                .foregroundColor(Color(.white))
                .fontWeight(.bold)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 150).padding(.leading, 5).padding(.trailing, 5)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 200).padding(.leading, 5).padding(.trailing, 5)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 250).padding(.leading, 5).padding(.trailing, 5)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 300).padding(.leading, 5).padding(.trailing, 5)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 350).padding(.leading, 5).padding(.trailing, 5)
            
            
            
            Button(action: {
                tgDesc2 = true
                
            }) {
                Image("Back")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .padding(.trailing, 330)
                    .padding(.bottom, 100)
            }.buttonStyle(PlainButtonStyle())
            
            Button(action: {
                tg2 = true
                print("is this working tho")
                
            }) {
                PlayButtonView()
                    .padding(.top, 420)
            }.buttonStyle(PlainButtonStyle())
            
        }
    }
    
}

struct NatureCardPreview3: View{
    
    
    
    var body: some View{
        ZStack{
            Rectangle()
                .fill(Color(.white))
                .frame(width: 400, height: 300)
                .cornerRadius(20)
                .shadow(radius: 10)
                .padding(.top, 180)
            
            Image("waterfall-2")
                .resizable()
                .frame(width: 400, height: 250)
                .cornerRadius(20, corners: [.topLeft, .topRight])
                .padding(.top, 70)
            
            Text("Morning Walk")
                .font(.system(size: 30))
                .foregroundColor(Color(.white))
                .fontWeight(.bold)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 150).padding(.leading, 5).padding(.trailing, 5)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 200).padding(.leading, 5).padding(.trailing, 5)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 250).padding(.leading, 5).padding(.trailing, 5)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 300).padding(.leading, 5).padding(.trailing, 5)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 350).padding(.leading, 5).padding(.trailing, 5)
            
            
            
            Button(action: {
                tgDesc3 = true
                
            }) {
                Image("Back")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .padding(.trailing, 330)
                    .padding(.bottom, 100)
            }.buttonStyle(PlainButtonStyle())
            
            Button(action: {
                tg3 = true
                
            }) {
                PlayButtonView()
                    .padding(.top, 420)
            }.buttonStyle(PlainButtonStyle())
            
        }
    }
    
}


struct NatureCardPreview4: View{
    
    
    
    var body: some View{
        ZStack{
            Rectangle()
                .fill(Color(.white))
                .frame(width: 400, height: 300)
                .cornerRadius(20)
                .shadow(radius: 10)
                .padding(.top, 180)
            
            Image("winterw")
                .resizable()
                .frame(width: 400, height: 250)
                .cornerRadius(20, corners: [.topLeft, .topRight])
                .padding(.top, 70)
            
            Text("Morning Walk")
                .font(.system(size: 30))
                .foregroundColor(Color(.white))
                .fontWeight(.bold)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 150).padding(.leading, 5).padding(.trailing, 5)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 200).padding(.leading, 5).padding(.trailing, 5)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 250).padding(.leading, 5).padding(.trailing, 5)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 300).padding(.leading, 5).padding(.trailing, 5)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 350).padding(.leading, 5).padding(.trailing, 5)
            
            
            
            Button(action: {
                tgDesc4 = true
                
            }) {
                Image("Back")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .padding(.trailing, 330)
                    .padding(.bottom, 100)
            }.buttonStyle(PlainButtonStyle())
            
            Button(action: {
                tg4 = true
                
            }) {
                PlayButtonView()
                    .padding(.top, 420)
            }.buttonStyle(PlainButtonStyle())
            
        }
    }
    
}


struct NatureCardPreview5: View{
    
    
    
    
    var body: some View{
        ZStack{
            Rectangle()
                .fill(Color(.white))
                .frame(width: 400, height: 300)
                .cornerRadius(20)
                .shadow(radius: 10)
                .padding(.top, 180)
            
            Image("ndri")
                .resizable()
                .frame(width: 400, height: 250)
                .cornerRadius(20, corners: [.topLeft, .topRight])
                .padding(.top, 70)
            
            Text("Morning Walk")
                .font(.system(size: 30))
                .foregroundColor(Color(.white))
                .fontWeight(.bold)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 150).padding(.leading, 5).padding(.trailing, 5)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 200).padding(.leading, 5).padding(.trailing, 5)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 250).padding(.leading, 5).padding(.trailing, 5)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 300).padding(.leading, 5).padding(.trailing, 5)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 350).padding(.leading, 5).padding(.trailing, 5)
            
            
            
            Button(action: {
                tgDesc5 = true
                
            }) {
                Image("Back")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .padding(.trailing, 330)
                    .padding(.bottom, 100)
            }.buttonStyle(PlainButtonStyle())
            
            Button(action: {
                tg5 = true
                
            }) {
                PlayButtonView()
                    .padding(.top, 420)
            }.buttonStyle(PlainButtonStyle())
            
        }
    }
    
    
}


struct NatureCardPreview6: View{
    
    
    
    var body: some View{
        ZStack{
            Rectangle()
                .fill(Color(.white))
                .frame(width: 400, height: 300)
                .cornerRadius(20)
                .shadow(radius: 10)
                .padding(.top, 180)
            
            Image("sscap")
                .resizable()
                .frame(width: 400, height: 250)
                .cornerRadius(20, corners: [.topLeft, .topRight])
                .padding(.top, 70)
            
            Text("Morning Walk")
                .font(.system(size: 30))
                .foregroundColor(Color(.white))
                .fontWeight(.bold)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 150).padding(.leading, 5).padding(.trailing, 5)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 200).padding(.leading, 5).padding(.trailing, 5)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 250).padding(.leading, 5).padding(.trailing, 5)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 300).padding(.leading, 5).padding(.trailing, 5)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 350).padding(.leading, 5).padding(.trailing, 5)
            
            
            
            Button(action: {
                tgDesc6 = true
                
            }) {
                Image("Back")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .padding(.trailing, 330)
                    .padding(.bottom, 100)
            }.buttonStyle(PlainButtonStyle())
            
            Button(action: {
                tg6 = true
                
            }) {
                PlayButtonView()
                    .padding(.top, 420)
            }.buttonStyle(PlainButtonStyle())
            
        }
    }
    
}


struct NatureCardPreview7: View{
    
    
    
    var body: some View{
        ZStack{
            Rectangle()
                .fill(Color(.white))
                .frame(width: 400, height: 300)
                .cornerRadius(20)
                .shadow(radius: 10)
                .padding(.top, 180)
            
            Image("Isv")
                .resizable()
                .frame(width: 400, height: 250)
                .cornerRadius(20, corners: [.topLeft, .topRight])
                .padding(.top, 70)
            
            Text("Morning Walk")
                .font(.system(size: 30))
                .foregroundColor(Color(.white))
                .fontWeight(.bold)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 150).padding(.leading, 5).padding(.trailing, 5)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 200).padding(.leading, 5).padding(.trailing, 5)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 250).padding(.leading, 5).padding(.trailing, 5)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 300).padding(.leading, 5).padding(.trailing, 5)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 350).padding(.leading, 5).padding(.trailing, 5)
            
            
            
            Button(action: {
                tgDesc7 = true
                
            }) {
                Image("Back")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .padding(.trailing, 330)
                    .padding(.bottom, 100)
            }.buttonStyle(PlainButtonStyle())
            
            Button(action: {
                tg7 = true
                
            }) {
                PlayButtonView()
                    .padding(.top, 420)
            }.buttonStyle(PlainButtonStyle())
            
        }
    }
    
}




struct NatureCardPreview8: View{
    
    
    
    var body: some View{
        ZStack{
            Rectangle()
                .fill(Color(.white))
                .frame(width: 400, height: 300)
                .cornerRadius(20)
                .shadow(radius: 10)
                .padding(.top, 180)
            
            Image("Mtww")
                .resizable()
                .frame(width: 400, height: 250)
                .cornerRadius(20, corners: [.topLeft, .topRight])
                .padding(.top, 70)
            
            Text("Morning Walk")
                .font(.system(size: 30))
                .foregroundColor(Color(.white))
                .fontWeight(.bold)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 150).padding(.leading, 5).padding(.trailing, 5)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 200).padding(.leading, 5).padding(.trailing, 5)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 250).padding(.leading, 5).padding(.trailing, 5)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 300).padding(.leading, 5).padding(.trailing, 5)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing").padding(.top, 350).padding(.leading, 5).padding(.trailing, 5)
            
            
            
            Button(action: {
                tgDesc8 = true
                
            }) {
                Image("Back")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .padding(.trailing, 330)
                    .padding(.bottom, 100)
            }.buttonStyle(PlainButtonStyle())
            
            Button(action: {
                tg8 = true
                
            }) {
                PlayButtonView()
                    .padding(.top, 420)
            }.buttonStyle(PlainButtonStyle())
            
        }
    }
    
}











struct PlayButtonView : View{
    
    
    var body : some View{
        ZStack{
            Capsule()
                .fill(Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))
                .frame(width: 130, height: 30)
            
            Text("Play")
                .foregroundColor(Color(.white))
                .fontWeight(.bold)
                .padding(.trailing, 30)
            Image("Play")
                .resizable()
                .frame(width: 60, height: 40)
                .padding(.top, 7)
                .padding(.leading, 40)
        }
    }
    
}




extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners) )
    }
}
struct RoundedCorner: Shape {
    
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
