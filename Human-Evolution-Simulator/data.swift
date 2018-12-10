//
//  data.swift
//  Human-Evolution-Simulator
//
//  Created by Lou DiMuro on 12/1/18.
//  Copyright © 2018 Lou DiMuro. All rights reserved.
//

import Foundation

struct Milestone {
    let description: String
    let date: Int
    let symbol: String
}

func getMilestoneData() -> [Milestone] {
    
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
    
    return milestones

}
