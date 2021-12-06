import UIKit

//let agesString = "3,4,3,1,2"
let agesString = "2,5,3,4,4,5,3,2,3,3,2,2,4,2,5,4,1,1,4,4,5,1,2,1,5,2,1,5,1,1,1,2,4,3,3,1,4,2,3,4,5,1,2,5,1,2,2,5,2,4,4,1,4,5,4,2,1,5,5,3,2,1,3,2,1,4,2,5,5,5,2,3,3,5,1,1,5,3,4,2,1,4,4,5,4,5,3,1,4,5,1,5,3,5,4,4,4,1,4,2,2,2,5,4,3,1,4,4,3,4,2,1,1,5,3,3,2,5,3,1,2,2,4,1,4,1,5,1,1,2,5,2,2,5,2,4,4,3,4,1,3,3,5,4,5,4,5,5,5,5,5,4,4,5,3,4,3,3,1,1,5,2,4,5,5,1,5,2,4,5,4,2,4,4,4,2,2,2,2,2,3,5,3,1,1,2,1,1,5,1,4,3,4,2,5,3,4,4,3,5,5,5,4,1,3,4,4,2,2,1,4,1,2,1,2,1,5,5,3,4,1,3,2,1,4,5,1,5,5,1,2,3,4,2,1,4,1,4,2,3,3,2,4,1,4,1,4,4,1,5,3,1,5,2,1,1,2,3,3,2,4,1,2,1,5,1,1,2,1,2,1,2,4,5,3,5,5,1,3,4,1,1,3,3,2,2,4,3,1,1,2,4,1,1,1,5,4,2,4,3"
let initialFishAges = agesString.split(separator: ",").map {
    Int($0)!
}

var timer0FishCount = 0
var timer1FishCount = 0
var timer2FishCount = 0
var timer3FishCount = 0
var timer4FishCount = 0
var timer5FishCount = 0
var timer6FishCount = 0
var timer7FishCount = 0
var timer8FishCount = 0

for age in initialFishAges {
    switch age {
    case 0:
        timer0FishCount += 1
    case 1:
        timer1FishCount += 1
    case 2:
        timer2FishCount += 1
    case 3:
        timer3FishCount += 1
    case 4:
        timer4FishCount += 1
    case 5:
        timer5FishCount += 1
    case 6:
        timer6FishCount += 1
    case 7:
        timer7FishCount += 1
    case 8:
        timer8FishCount += 1
    default:
        fatalError()
    }
}

for day in 1...256 {
    let pregnantFish = timer0FishCount
    timer0FishCount = timer1FishCount
    timer1FishCount = timer2FishCount
    timer2FishCount = timer3FishCount
    timer3FishCount = timer4FishCount
    timer4FishCount = timer5FishCount
    timer5FishCount = timer6FishCount
    timer6FishCount = timer7FishCount
    timer7FishCount = timer8FishCount
    
    // Children!
    timer8FishCount = pregnantFish
    
    // Parents go back
    timer6FishCount += pregnantFish
    
    let totalFish = timer0FishCount + timer1FishCount + timer2FishCount + timer3FishCount + timer4FishCount + timer5FishCount + timer6FishCount + timer7FishCount + timer8FishCount
    print("Day \(day): \(totalFish) fish")
}
