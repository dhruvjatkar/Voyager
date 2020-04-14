//
//  ContentView.swift
//  RKCalendar
//
//  Created by Raffi Kian on 7/14/19.
//  Modified by Dhruv Jatkar 4/11/20
//  Copyright © 2019 Raffi Kian. All rights reserved.
//

//Date return format: Sunday, April 12, 2020

var selectedDate: String = ""
var currDate: String = ""
var dateDidChange: Bool = false
var runOnce : Bool = false
var numEvents: Int = 2

import SwiftUI

struct CalendarView : View {
    
    var timer20: Timer {
        Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) {_ in
            selectedDate = self.getTextFromDate(date: self.rkManager1.selectedDate)
            
            if runOnce == false{
                currDate = selectedDate
                runOnce = true
            }
            
            if currDate != selectedDate{
                runOnce = false
                dateDidChange = true

                currDate = selectedDate
                
            }
            
            
            print(selectedDate)
        }
    }

    public func check(){
        if dateDidChange{
            dateDidChange = false
        }
    }
    
    @State var singleIsPresented = false
    @State var startIsPresented = false
    @State var multipleIsPresented = false
    @State var deselectedIsPresented = false
    
    var rkManager1 = RKManager(calendar: Calendar.current, minimumDate: Date(), maximumDate: Date().addingTimeInterval(60*60*24*365), mode: 0)
    //single date
    
    var rkManager2 = RKManager(calendar: Calendar.current, minimumDate: Date(), maximumDate: Date().addingTimeInterval(60*60*24*365), mode: 1) // automatically goes to mode=2 after start selection, and vice versa.
    //range of dates  ex:12-29
    
    var rkManager3 = RKManager(calendar: Calendar.current, minimumDate: Date(), maximumDate: Date().addingTimeInterval(60*60*24*365), mode: 3)
    //multiple dates: ex: 13,20,23
    
    var rkManager4 = RKManager(calendar: Calendar.current, minimumDate: Date(), maximumDate: Date().addingTimeInterval(60*60*24*365), mode: 0)
    //disabling dates, we dont rly need that
    
    
    
    var body: some View {
        VStack (spacing: 25) {
            ZStack{
                
                
                
                RKViewController(isPresented: self.$singleIsPresented, rkManager: self.rkManager1).padding(.top, 10)

                actionView()
            
            }.onAppear(perform: {self.timer20
                self.check()
            })

            
            
        }.onAppear(perform: startUp)
            .navigationViewStyle(StackNavigationViewStyle())
       
        
    }
    
    
    func datesView(dates: [Date]) -> some View {
        ScrollView (.horizontal) {
            HStack {
                ForEach(dates, id: \.self) { date in
                    Text(self.getTextFromDate(date: date))
                }
            }
        }.padding(.horizontal, 15)
    }
    
    func startUp() {
        
        // example of pre-setting selected dates
        let testOnDates = [Date().addingTimeInterval(60*60*24), Date().addingTimeInterval(60*60*24*2)]
        rkManager3.selectedDates.append(contentsOf: testOnDates)
        
        // example of some foreground colors
        rkManager3.colors.weekdayHeaderColor = Color.blue
        rkManager3.colors.monthHeaderColor = Color.green
        rkManager3.colors.textColor = Color.blue
        rkManager3.colors.disabledColor = Color.red
        
        // example of pre-setting disabled dates
        let testOffDates = [
            Date().addingTimeInterval(60*60*24*4),
            Date().addingTimeInterval(60*60*24*5),
            Date().addingTimeInterval(60*60*24*7)]
        rkManager4.disabledDates.append(contentsOf: testOffDates)
    }
    
    func getTextFromDate(date: Date!) -> String {
        let formatter = DateFormatter()
        formatter.locale = .current
        formatter.dateFormat = "EEEE, MMMM d, yyyy"
        return date == nil ? "" : formatter.string(from: date)
    }
    
}

#if DEBUG
struct CalendarView_Previews : PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
#endif

struct actionView : View{
    //add events
    //add recurring events
    //view events
    //back
    
    public func check(){
          if dateDidChange{
            self.viewDidChange.toggle()
            dateDidChange = false
          }
      }
    
    @State var viewDidChange: Bool = false
    
    var timer21: Timer {
        Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) {_ in
            self.check()
        }
    }
    
     func getNumEvents() -> Int{
        if let nums = UserDefaults.standard.object(forKey: selectedDate) as? Int{
            return nums
        }
    
        return 2
    }
    
    func getEvent(id: Int) -> String{
        
        if let event = UserDefaults.standard.object(forKey: String(id) + currDate) as? String{
            print(event)
            return event
        }
        
        
        
        let emp = ""
        return emp
    }
    
    var body: some View{
        ZStack{
            Rectangle()
                .fill(Color(.white))
                .frame(width: screenWidth - 5, height: screenHeight/2, alignment: .bottom)
                .cornerRadius(10)
                .shadow(radius: 10)
               .padding(.top, screenHeight*0.5)
            Text("Events").font(.system(size:25))
                               .fontWeight(.bold)
                               .padding(.trailing, screenWidth/1.5)
                               .padding(.top, screenHeight/15)
            ScrollView{
                ForEach(1 ..< getNumEvents()){ number in
                EventView.init(eventText:
                    self.getEvent(id: number), id: String(String(number) + currDate) )
                    }
                
                
                
            }
            .frame(width: screenWidth, height: screenHeight/4 )
            .padding(.top, screenHeight*0.5)
            .padding(.bottom, screenHeight/8)

            
            VStack{
                
                
                
                HStack{
                    Button(action: {
                         numEvents += 1
                        UserDefaults.standard.set(numEvents, forKey: selectedDate)
                        self.viewDidChange.toggle()
                        
                    }){
                        ZStack{
                            
                            Rectangle()
                                .fill(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                                .frame(width: screenWidth/3, height: screenHeight/15, alignment: .bottom)
                                .cornerRadius(10)
                                .padding(.trailing, 10)
                            Text("Add Event")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .padding(.trailing, 10)
                            
                        }
                    }
                    
                    
                    Button(action:{
                        print("Saved")
                    }){
                        ZStack{
                            Rectangle()
                                .fill(Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)))
                                .frame(width: screenWidth/3, height: screenHeight/15, alignment: .bottom)
                                .cornerRadius(10)
                                .padding(.leading, 10)
                            Text("Save")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .padding(.leading, 10)
                        }
                    }
                }                                .padding(.top, screenHeight*0.8 - 19)

                HStack{
                    Button(action:{
                        if numEvents >= 2{
                        numEvents -= 1
                        UserDefaults.standard.set(numEvents, forKey: selectedDate)
                            self.viewDidChange.toggle()
                        }
                        
                    }){
                        ZStack{
                            Rectangle()
                                .fill(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                .frame(width: screenWidth/3, height: screenHeight/15, alignment: .bottom)
                                .cornerRadius(10)
                                .padding(.trailing, 10)
                            
                            Text("Delete Events")
                                .foregroundColor(.white)
                                .fontWeight(.bold)                            .padding(.trailing, 10)
                            
                        }
                    }
                    Button(action:{
                        
                    }){
                        ZStack{
                            
                            Rectangle()
                                .fill(Color(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)))
                                .frame(width: screenWidth/3, height: screenHeight/15, alignment: .bottom)
                                .cornerRadius(10)
                                .padding(.leading, 10)
                            Text("Back")
                                .foregroundColor(.white)
                                .fontWeight(.bold)                            .padding(.leading, 10)
                            
                        }
                    }
                }
                .padding(.bottom, 15)
                
   
            }
            
            if self.viewDidChange{
                actionView()
            }
            
        }.onAppear(perform:{self.timer21})
    }
}



struct EventView: View{
    @State var eventText = ""
    
    var id:String = ""

    var timer24: Timer {
        Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) {_ in
            self.checkIfEmpty()
            print(self.id + "this is MY ID ")
            
        }}
    
    
    public func checkIfEmpty(){
        if eventText != ""{
            UserDefaults.standard.set(self.$eventText.wrappedValue, forKey: id)
            
        }
    }
    
    var body: some View{
        ZStack{
            
    
            
        Rectangle()
        .fill(Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)))
        .frame(width: screenWidth - 5, height: screenHeight/17)
        .cornerRadius(8)
        .border(Color(.white))
            TextView(text: $eventText).frame(numLines:1)
                .frame(width: screenWidth - 30)
            
        }.onAppear(perform: {self.timer24})
        
            .onDisappear{
                self.eventText = ""
        }
    }
    

}

