//
//  main.swift
//  Human-Evolution-Simulator
//
//  Created by Lou DiMuro on 12/1/18.
//  Copyright © 2018 Lou DiMuro. All rights reserved.
//

import Foundation
import AppKit

//INTRO TO SIMULATOR
print("""


    *****************************************
    |       "TIMELINE OF HUMAN HISTORY"     |
    |                                       |
    |             By: Lou DiMuro            |
    |               12/10/2018              |
    *****************************************

    """)

print("Welcome to the TIMELINE OF HUMAN HISTORY Simulator!")
print()
print("Enter your birthday (MM/DD/YYYY):")

var birthday = readLine()

let birthdayFormatter = DateFormatter()
birthdayFormatter.dateFormat = "MM/dd/yyyy"
var birthdayDate = birthdayFormatter.date(from: birthday!)

while birthdayDate == nil {
    print("Not a date, enter birthday again:")
    birthday = readLine()
    birthdayDate = birthdayFormatter.date(from: birthday!)
}




var milestones = [Milestone]()

milestones.append(Milestone(description: "Apes become bipedal",                 date: -7000000,  symbol: "🐵"))                            //~7,000,000

milestones.append(Milestone(description: "STONE AGE BEGINS",                    date: -2600000,                             symbol: "⚪️")) // = ~2,600,000 BC    }
milestones.append(Milestone(description: "Ice Age begins",                      date: calculateMilestones(date: -2600000),  symbol: "❄️")) // = ~2,600,000 BC    }
milestones.append(Milestone(description: "First stone tools are used",          date: calculateMilestones(date: -2600000),  symbol: "⛏")) // = ~2,600,000 BC    }   ~ 3.15 YEARS
milestones.append(Milestone(description: "Fire is discovered",                  date: calculateMilestones(date: -800000),  symbol: "🔥"))  // = ~800,000 BC      }
milestones.append(Milestone(description: "First 'Homo sapiens' (humans) appear",date: calculateMilestones(date: -300000),   symbol: "👨‍🦲")) // = ~300,000 BC      }
//                        ~ 3.75 MONTHS
milestones.append(Milestone(description: "Humans develop language",             date: calculateMilestones(date: -75000),    symbol: "💬")) // = ~75,000 BC       }
milestones.append(Milestone(description: "Humans become behaviorally modern",   date: calculateMilestones(date: -50000),    symbol: "🧠")) // = ~50,000 BC       }
milestones.append(Milestone(description: "First signs of religion (cremation)", date: calculateMilestones(date: -40000),    symbol: "✝️")) // = ~40,000 BC       }
milestones.append(Milestone(description: "Domestication of dogs",               date: calculateMilestones(date: -33000),    symbol: "🐶")) // = ~33,000 BC       }
milestones.append(Milestone(description: "First human settlement (village)",    date: calculateMilestones(date: -25000),    symbol: "⛺️")) // = ~25,000 BC       }
milestones.append(Milestone(description: "Domestication of pigs",               date: calculateMilestones(date: -15000),    symbol: "🐷")) // = ~15,000 BC       }
milestones.append(Milestone(description: "First human warfare",                 date: calculateMilestones(date: -13000),    symbol: "⚔️")) // = ~13,000 BC       }
milestones.append(Milestone(description: "First city is built",                 date: calculateMilestones(date: -11000),    symbol: "🌇")) // = ~11,000 BC       }
milestones.append(Milestone(description: "Domestication of cattle",             date: calculateMilestones(date: -10500),    symbol: "🐄")) // = ~10,500 BC       }   ~ 37.5 DAYS
milestones.append(Milestone(description: "End of Ice Age",                      date: calculateMilestones(date: -10000),    symbol: "💧")) // = ~10,000 BC       }
milestones.append(Milestone(description: "Domestication of cats",               date: calculateMilestones(date: -9500),     symbol: "🐱")) // = ~9500 BC         }
milestones.append(Milestone(description: "First proto-writing",                 date: calculateMilestones(date: -6500),     symbol: "✍️")) // = ~6500 BC         }
milestones.append(Milestone(description: "Domestication of horses",             date: calculateMilestones(date: -6000),     symbol: "🐴")) // = ~6000 BC         }
milestones.append(Milestone(description: "Domestication of chickens",           date: calculateMilestones(date: -6000),     symbol: "🐔")) // = ~6000 BC         }
milestones.append(Milestone(description: "Invention of the wheel",              date: calculateMilestones(date: -5500),     symbol: "⭕️")) // = ~5500 BC         }
milestones.append(Milestone(description: "Writing is invented",                 date: calculateMilestones(date: -4600),     symbol: "📝")) // = ~4600 BC         }
milestones.append(Milestone(description: "BRONZE AGE BEGINS",                   date: calculateMilestones(date: -3000),     symbol: "🔶")) // = ~3000 BC         }
milestones.append(Milestone(description: "IRON AGE BEGINS",                     date: calculateMilestones(date: -1000),     symbol: "⚒")) // = ~1000 BC         }
// ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––-–––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– 0 AD ––––––––––
milestones.append(Milestone(description: "MIDDLE AGES BEGINS",                  date: calculateMilestones(date: 500),       symbol: "🏰")) // = ~500 AD          }
milestones.append(Milestone(description: "AGE OF ENLIGHTENMENT BEGINS",         date: calculateMilestones(date: 1500),      symbol: "💡")) // = ~1500 AD         }
milestones.append(Milestone(description: "MODERN ERA BEGINS",                   date: calculateMilestones(date: 1800),      symbol: "🌐")) // = ~1800 AD         }
milestones.append(Milestone(description: "First human to leave Earth",          date: 1961,                                 symbol: "🚀")) // = ~1961 AD         }
milestones.append(Milestone(description: "Invention of Artificial Intelligence",date: calculateMilestones(date: 2100),      symbol: "🤖")) // = ~2100 AD         }   ~ 30 HOURS
milestones.append(Milestone(description: "Colonization of another planet",      date: calculateMilestones(date: 2200),      symbol: "🌏")) // = ~2200 AD         }
milestones.append(Milestone(description: "Discovery of alien life",             date: calculateMilestones(date: 2400),      symbol: "👽")) // = ~2400 AD         }
milestones.append(Milestone(description: "INTERGALACTIC ERA BEGINS",            date: calculateMilestones(date: 2500),      symbol: "✨")) // = ~2500 AD         }

milestones.append(Milestone(description: "END OF THE UNIVERSE",                 date: calculateMilestones(date: 300000000), symbol: "💥")) // = ~2500 AD         }


let numOfSecondsElapsed = Int(Date().timeIntervalSince(birthdayDate!))
let startDate = 2600000
let secondsToYears: Double = Double(startDate) / Double(numOfSecondsElapsed) // Each second represents a certain amount of years starting from 2,600,000 BC
let years = Int(Double(numOfSecondsElapsed) * secondsToYears) + milestones[31].date // INTERGALACTIC ERA BEGINS
var realDays = Calendar.current.dateComponents([.day], from: birthdayDate!, to: Date()).day // Number of days since user's birthday
let currentYear = abs(startDate - years)
var epoch = ""
let populationFactor = 100
var population = 1000

let now = Date()
let nowFormatter = DateFormatter()
nowFormatter.dateFormat = "MM/dd/yy HH:mm:ss"
let nowString = nowFormatter.string(from: now)

let numberFormatter = NumberFormatter()
numberFormatter.numberStyle = NumberFormatter.Style.decimal

//Initial Properties
let worldName = "Lou's Desk"
let era = calculateEra()
epoch = calculateEpoch()
population = calculatePopulation(currentPop: population, maxPop: era.ceilingPop)

let oneDay = Double(startDate) / Double(realDays!)
let oneHour = oneDay / 24.0
let oneMin = oneHour / 60.0
let oneDotValue = Double(realDays!) * 0.1

func printTimeline() {
    
    print()
    print("• = ~\(String(format: "%.2f", oneDotValue)) YEARS")
    print("–––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––")
    print(("\(yearToDate(inputYear: milestones[31].date))\t\(milestones[31].symbol) <- \(milestones[31].description)")
        + (" – \(numberFormatter.string(from: NSNumber(value: abs(milestones[31].date)))!) AD"))
    
    //Continues through milestones until it is caught up to the right time period
    var count = 1
    //    let length = milestones.count
    while (years - startDate) >= milestones[count].date && count <= 31 {
        count += 1
    }
    count -= 2
    
    var currentDate = birthdayDate
    
    while count > 0 && (years - startDate) > milestones[count].date {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yy"
        var dateCounter = dateFormatter.string(from: currentDate!)
        let tomorrow = dateFormatter.string(from: currentDate!.addingTimeInterval(TimeInterval(3600 * 24)))
        
        if count == 1 {
            dateCounter = dateFormatter.string(from: birthdayDate!)
        }
        else {
            dateCounter = dateFormatter.string(from: currentDate!)
        }
        
        let distance = abs(milestones[count + 1].date - milestones[count].date)
        
        let lineNum = (distance / Int(oneDotValue))
        
        for _ in 0..<lineNum {
            
            dateCounter = dateFormatter.string(from: currentDate!)
            
            print("\t\t\t\t\t•")
            
            currentDate = currentDate!.addingTimeInterval(TimeInterval(3600 * 24)) // Increase date by 1 day
        }
        
        if count == 23 { // When year is 0 AD (current day)
            print()
            print("🔵 🔵 🔵 🔵 🔵 🔵  TODAY (1 AD) 🔵 🔵 🔵 🔵 🔵 🔵 🔵 🔵 🔵 🔵 🔵 🔵 🔵 🔵 🔵")
            print()
        }
        
        var date : Int
        var ep : String
        if milestones[count].date < 0 {
            date = milestones[count].date
            ep = "BC"
        }
        else {
            date = milestones[count].date
            ep = "AD"
        }
        
        let actualDate = yearToDate(inputYear: date)
        
        print(("\(actualDate)\t\(milestones[count].symbol) <- \(milestones[count].description)")
            + (" – \(numberFormatter.string(from: NSNumber(value: abs(date)))!) \(ep)"))
        
        if dateCounter == tomorrow {
            dateCounter = "\t\t"
        }
        else {
            currentDate = currentDate!.addingTimeInterval(TimeInterval(3600 * 24)) // Increase date by 1 day
        }
        
        count -= 1
    }
    
    //Prints first event in human history = "Apes become bipedal"
    print()
    print("\t\t\t\t\t\\")
    print("\t\t\t\t\t/")
    print("\t\t\t\t\t\\")
    print("\t\t\t\t\t/")
    print("\t\t\t\t\t\\\tSKIP ~4,400,000 YEARS OF EVOLUTION")
    print("\t\t\t\t\t/")
    print("\t\t\t\t\t\\")
    print("\t\t\t\t\t/")
    print("\t\t\t\t\t\\\n")
    
    print("\t\t\t\t\t\(milestones[0].symbol) <- \(milestones[0].description) – 7,000,000 BC")
    
}

//Prints simulation status
func printStats() {
    
    let yearFormatter = DateFormatter()
    yearFormatter.dateFormat = "yyyy-MM-dd"
    
    
    /*
     
    var z = Double(years)
    //    var z = 2300000.0
    var percentComplete = 0.0
    let finishDate = milestones[milestones.count-2].date
    var numOfSquares: Int
    var completeSquares = ""
    var emptySquares = "⬜️⬜️⬜️⬜️⬜️⬜️⬜️⬜️⬜️⬜️⬜️⬜️⬜️⬜️⬜️⬜️⬜️⬜️⬜️⬜️"
    
    //Calculate % completion
    if z >= Double(finishDate + startDate) {
        z = Double(finishDate + startDate)
        percentComplete = 100.0
        numOfSquares = 20
    }
    else {
        percentComplete = (z / Double(finishDate + startDate)) * 100.0
        numOfSquares = Int(percentComplete) / 5
    }
    
    //Fill progress bar arrays
    for _ in 0..<numOfSquares {
        completeSquares.append("⬛️")
        emptySquares = String(emptySquares.dropLast())
    }
    
    print("""
        
        If your entire life represented the entirety
        of human existence...
        
            1 DAY   ~ \(String(format: "%.2f", oneDay)) years
            1 HOUR  ~ \(String(format: "%.2f", oneHour)) years
            1 MIN   ~ \(String(format: "%.2f", oneMin)) years
        
        
        HUMANITY PROGRESS      = \(String(format: "%.6f", percentComplete))% complete
        ********************************************
        \(completeSquares)\(emptySquares)
        ********************************************
        ↑                                          ↑
        ~2,600,000 BC                      ~2,500 AD
        Stone Age                  Intergalactic Era
        
        
        """)
    */
    
    print()
    print("AS OF \(nowString)")
    print("****************************")
    print("DAYS\t\t\t= \(realDays!)")
//    print("YEAR IN \(worldName)\t= \(numberFormatter.string(from: NSNumber(value: currentYear))!) \(epoch)")
    print("YEARS ELAPSED\t= \(numberFormatter.string(from: NSNumber(value: years))!)")
//    print("ERA\t\t\t\t= \(era.name)")
//    print("POPULATION\t\t= \(numberFormatter.string(from: NSNumber(value: population / populationFactor))!)")
    print("START DATE\t\t= \(yearFormatter.string(from: birthdayDate!))")
    print("****************************")
}

printStats()
printTimeline()








//  SOURCES:

//  INTERACTIVE TIMELINE:       http://humanorigins.si.edu/evidence/human-evolution-timeline-interactive
//  TIMELINE OF HUMAN HISTORY:  https://en.wikipedia.org/wiki/Timeline_of_human_prehistory
//  OVERVIEW OF ERAS:           http://www.essential-humanities.net/history-overview/stone-bronze-iron-ages/


