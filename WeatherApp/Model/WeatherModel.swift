
import Foundation


struct Day {
    let dayOfWeek:String
    let imageName:String
    let temperature:Int
}

var DaysOfWeek: [Day] = [
    Day(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 74),
    Day(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 86),
    Day(dayOfWeek: "THU", imageName: "cloud.rain.fill", temperature: 30),
    Day(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 60),
    Day(dayOfWeek: "SAT", imageName: "cloud.bolt.rain.fill", temperature: 25)



]
