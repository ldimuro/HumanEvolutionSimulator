//
//  functions.swift
//  Human-Evolution-Simulator
//
//  Created by Lou DiMuro on 12/1/18.
//  Copyright © 2018 Lou DiMuro. All rights reserved.
//

import Foundation

//GET "BC" OR "AD"
func calculateEpoch() -> String {
    if startDate - years <= 0 {
        return "AD"
    }
    else {
        return "BC"
    }
}

//Converts a year (e.g. 50,000 BC) to real-time date
func yearToDate(inputYear: Int) -> String {
    
    let totalSeconds = Int(Double(startDate) / secondsToYears)
    var value = inputYear
    
    if value < 0 {
        value = value * -1
    }
    else {
        value += startDate
    }
    
    let numOfSec = Int(Double(value) / secondsToYears)
    var seconds: Int!
    
    if inputYear < 0 {
        seconds = Int(abs(totalSeconds - numOfSec))
    }
    else {
        seconds = Int(abs(numOfSec))
    }
    
    let trueDate = someDateTime.addingTimeInterval(TimeInterval(seconds))
    
    let yearFormatter = DateFormatter()
    yearFormatter.dateFormat = "MM/dd/yy HH:mm:ss"
    
    return yearFormatter.string(from: trueDate)
}

func yearsToSeconds(year: Int) -> Int{
    var seconds = 0
    if year < 0 {
        seconds = Int(Double(year) / secondsToYears) * -1
    }
    else {
        seconds = Int(Double(year) / secondsToYears) + startDate
    }
    
    return seconds
}

struct Era {
    let name: String
    let ceilingPop: Int
}

//GET CURRENT ERA
var countingBackwards = (years - startDate)
func calculateEra() -> Era {
    if countingBackwards <= -2600000 {
        let neogene = Era(name: "Neogene Era", ceilingPop: 1000)
        return neogene
    }
    else if countingBackwards >= -2600000 && countingBackwards <= -200000{
        let lowPaleo = Era(name: "Lower Paleolithic Era", ceilingPop: 10000)
        return lowPaleo
    }
    else if countingBackwards > -200000 && countingBackwards <= -50000 {
        let midPaleo = Era(name: "Middle Paleolithic Era", ceilingPop: 10000)
        return midPaleo
    }
    else if countingBackwards > -50000 && countingBackwards <= -10000 {
        let upPaleo = Era(name: "Upper Paleolithic Era", ceilingPop: 10000)
        return upPaleo
    }
    else if countingBackwards > -10000 && countingBackwards <= -6000 {
        let mesolithic = Era(name: "Mesolithic Era", ceilingPop: 5000000)
        return mesolithic
    }
    else if countingBackwards > -6000 && countingBackwards <= -3000 {
        let neolithic = Era(name: "Neolithic Era", ceilingPop: 50000000)
        return neolithic
    }
    else if countingBackwards > -3000 && countingBackwards <= -1000 {
        let bronze = Era(name: "Bronze Age", ceilingPop: 100000000)
        return bronze
    }
    else if countingBackwards > -1000 && countingBackwards <= 500 {
        let iron = Era(name: "Iron Age", ceilingPop: 175000000)
        print("COUNTING BACKWARDS: \(countingBackwards)")
        return iron
    }
    else if countingBackwards > 500 && countingBackwards <= 1500 {
        let middleAges = Era(name: "Middle Ages", ceilingPop: 200000000)
        return middleAges
    }
    else if countingBackwards > 1500 && countingBackwards <= 1800 {
        let enlightenment = Era(name: "Age of Enlightenment", ceilingPop: 425000000)
        return enlightenment
    }
    else if currentYear > 1800 && currentYear <= 2500 {
        let modern = Era(name: "Modern Age", ceilingPop: 10000000000)
        return modern
    }
    else /* if currentYear > 2500 && epoch == "AD"*/ {
        let intergalactic = Era(name: "Intergalactic Age", ceilingPop: 20000000000)
        return intergalactic
    }
}

//Calculate how much the total population grows based on the ceiling population for the current era
func calculatePopulation(currentPop: Int, maxPop: Int) -> Int{
    let difference = maxPop - currentPop
    var loss = 0
    var newPop = 0
    
    //So there is at least 1 human left
    repeat {
        let naturalDisaster = Int.random(in: 0...3)
        
        //25% of a natural disaster every year
        if naturalDisaster == 1 {
            loss = difference * -1
        }
        
        //random amount of population growth (or decay)
        let popAdd = Int.random(in: loss ... difference)
        
        newPop = currentPop + popAdd
        
    } while newPop < 0
    
    return newPop
}

//Picks a random date within 5% before and after input milestone date
func calculateMilestones(date: Int) -> Int {
    let offset : Int
    
    if date < 0 {
        offset = Int(Double(date) * -0.05)
    }
    else {
        offset = Int(Double(date) * 0.05)
    }
    
    let randomOffset = Int.random(in: (offset * -1) ... offset)
    
    return date + randomOffset
}

struct Milestone {
    let description: String
    let date: Int
    let symbol: String
}
