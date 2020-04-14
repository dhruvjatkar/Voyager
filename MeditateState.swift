import SwiftUI
import AVKit



let beachURL = "https://firebasestorage.googleapis.com/v0/b/voyager-74db0.appspot.com/o/BeachAnim.mp4?alt=media&token=6c305c08-7769-4931-9aa4-4c01e112923c"

let eveningMountainURL = "https://firebasestorage.googleapis.com/v0/b/voyager-74db0.appspot.com/o/EveningMountainAnim.mp4?alt=media&token=6a96d1ff-769a-4fbf-89ff-69ac9b164a62"

let nightURL = "https://firebasestorage.googleapis.com/v0/b/voyager-74db0.appspot.com/o/NightAnim.mp4?alt=media&token=6998ca5a-5a50-4a43-91a3-2b18ea354539"

let snowURL = "https://firebasestorage.googleapis.com/v0/b/voyager-74db0.appspot.com/o/SnowAnim.mp4?alt=media&token=63f9eba8-257e-4943-a61b-160e4edf11e8"

let mWalkURL = "https://firebasestorage.googleapis.com/v0/b/voyager-74db0.appspot.com/o/MWalkAnim.mp4?alt=media&token=d35b2763-ecc3-4247-bec3-cbe02bd7ecd7"

let waterFallURL = "https://firebasestorage.googleapis.com/v0/b/voyager-74db0.appspot.com/o/WaterfallAnim.mp4?alt=media&token=0cdc6435-acec-4f39-9e82-466a61fb12bd"

let capeURL = "https://firebasestorage.googleapis.com/v0/b/voyager-74db0.appspot.com/o/CapeAnim.mp4?alt=media&token=a1161548-9087-41a0-bec4-9c688c2aa1f2"

let islandURL = "https://firebasestorage.googleapis.com/v0/b/voyager-74db0.appspot.com/o/IslandAnim.mp4?alt=media&token=36a4319e-c00c-4eab-9013-bbf375bfdd8b"

var x : CGFloat = 100
var audioPlayer : AVAudioPlayer!


struct MeditateState: View {
    

    var toDate = Calendar.current.date(byAdding: .minute, value: 10, to: Date())!
    @State var maxHeight:CGFloat = 250
    @State var isPlaying = false
    
    var body: some View {
        ZStack{
        VStack{
            VidView(videoURL: URL(string: selectedBackground)!, previewLength: 4)
            }
            Outliner(percentage: 100)
            TimerView(setDate: toDate)

            
        }.onAppear{
        
            let sound = Bundle.main.path(forResource: selectedAudio, ofType: "wav")
            
            audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            
            
            audioPlayer.numberOfLoops = -1
            audioPlayer.play()
            
        }
    
        
        .onDisappear{
            print("onDisappearworked")
            audioPlayer.pause()

        }
   
    }
struct TimerView : View {
    @State var nowDate: Date = Date()
    let setDate: Date
    var timer: Timer {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in self.nowDate = Date()
            
        }
    }

    var body: some View{
        Text(TimerFunction(from: setDate)).font(.system(size: 50)).foregroundColor(.white)
            .onAppear(perform: {self.timer})
    }
    func TimerFunction (from date: Date) -> String{
        let calendar = Calendar(identifier: .gregorian)
        let timeValue = calendar
            .dateComponents([.hour, .minute, .second], from: nowDate, to: setDate)
        return String(format: "%02d:%02d:%02d",
                    timeValue.hour!,
                    timeValue.minute!,
                    timeValue.second!)
    }
            
        }
}


struct Outliner: View{
    var percentage: CGFloat = 50
    var colors: [Color] = [Color.outlineColor]
    var body: some View {
        ZStack{
            Circle()
                .fill(Color.clear)
                .frame(width: 250, height: 250)
            .overlay(
            Circle()
                .trim(from: 0, to: percentage * 0.01)
                .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                .fill(AngularGradient(gradient: .init(colors: colors), center: .center, startAngle: .zero, endAngle: .init(degrees: 360)))
            ).animation(.spring(response: 2.0, dampingFraction: 1.0, blendDuration: 1.0))
        }
    }
}




extension Color {
    static func rgb(r: Double, g: Double, b: Double) -> Color{
        return Color(red: r/255, green
            : g/255, blue: b/255)
    }
    static let backgroundColor = Color.rgb(r: 21, g: 22, b: 33)
    static let outlineColor = Color.rgb(r: 54, g: 255, b: 203)
    static let trackColor = Color.rgb(r: 45, g: 56, b: 95)
    static let pulsatingColor = Color.rgb(r: 73, g: 113, b: 148)
    
}

