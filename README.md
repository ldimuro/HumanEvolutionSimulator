# ⏳ "Timeline of Human History" Simulator 🕒

A program that simulates the timeline of human history from the dawn of the Stone Age (~2,600,000 BC) to the Modern Era relative to the age of the user. 

For instance, if the input birthday is `02/26/1998` and the current date is `12/10/2018`, the conversion to simulated years is:
```
Real-time   |   Simulated years
–––––––––––––––––––––––––––––––
1 DAY       =   342.466
1 HOUR      =   14.269
1 MINUTE    =   0.238
```
Using the lifespan of the user as a template and the simulated year conversion, the simulator generates timestamps of important events in human history, as demonstrated in the Sample Output below.


## Sample Output
```
–––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
12/17/18 20:37:44  ✨ <- INTERGALACTIC ERA BEGINS – 2,397 AD
12/16/18 19:19:38  🤖 <- Invention of Artificial Intelligence – 2,036 AD
12/16/18 14:04:14  🚀 <- First human to leave Earth – 1,961 AD
12/16/18 03:33:27  🌐 <- MODERN ERA BEGINS – 1,811 AD
12/15/18 08:12:47  💡 <- AGE OF ENLIGHTENMENT BEGINS – 1,535 AD
	           •
12/12/18 09:08:38  🏰 <- MIDDLE AGES BEGINS – 521 AD
	           •
	           •

🔵 🔵 🔵 🔵 🔵  TODAY (1 AD) 🔵 🔵 🔵 🔵 🔵 🔵 🔵 🔵 🔵 🔵 🔵 🔵 🔵 🔵 🔵

12/07/18 19:40:01  ⚒ <- IRON AGE BEGINS – 1,041 BC
	           •
	           •
12/01/18 23:04:14  🔶 <- BRONZE AGE BEGINS – 3,047 BC
	           •
	           •
11/26/18 19:42:57  📝 <- Writing is invented – 4,807 BC
11/24/18 16:45:43  ⭕️ <- Invention of the wheel – 5,534 BC
11/23/18 18:38:16  🐔 <- Domestication of chickens – 5,921 BC
11/23/18 12:27:00  🐴 <- Domestication of horses – 5,781 BC
11/22/18 11:50:44  ✍️ <- First proto-writing – 6,289 BC
	           •
	           •
	           •
	           •
11/13/18 13:39:24  🐱 <- Domestication of cats – 9,345 BC
11/11/18 13:09:21  💧 <- End of Ice Age – 10,037 BC
11/10/18 05:15:57  🐄 <- Domestication of cattle – 10,492 BC
	           •
11/07/18 18:36:08  🌇 <- First city is built – 11,329 BC
	           •
11/04/18 03:28:59  ⚔️ <- First human warfare – 12,572 BC
	           •
	           •
10/28/18 15:19:37  🐷 <- Domestication of pigs – 14,800 BC
	           •
	           •
	           •
	           •
	           •
	           •
	           •
	           •
	           •
	           •
	           •
	           •
09/30/18 18:07:39  ⛺️ <- First human settlement (village) – 24,348 BC
	           •
	           •
	           •
	           •
	           •
	           •
	           •
	           •
	           •
	           •
	           •
09/05/18 06:40:49  🐶 <- Domestication of dogs – 33,072 BC
	           •
	           •
	           •
	           •
	           •
	           •
	           •
08/20/18 09:36:44  ✝️ <- First signs of religion (cremation) – 38,509 BC
	           •
	           •
	           •
	           •
	           •
	           •
	           •
	           •
	           •
	           •
	           •
	           •
	           •
	           •
07/17/18 05:26:36  🧠 <- Humans become behaviorally modern – 50,211 BC
	           •
	           •
	           •
```
Skip **~25,000 years**...

```
	           •
	           •
	           •
04/25/18 20:07:21  💬 <- Humans develop language – 78,423 BC
	           •
	           •
	           •
```
Skip **~225,000 years**...

```
	           •
	           •
	           •
07/16/16 14:42:13  👨‍<- First 'Homo sapiens' (humans) appear – 300,393 BC
	           •
	           •
	           •
```
Skip **~470,000 years**...

```
	           •
	           •
	           •
10/12/12 08:41:38  🔥 <- Fire is discovered – 770,631 BC
	           •
	           •
	           •
```
Skip **~1,900,000 years**...

```
	           •
	           •
	           •
10/24/98 11:57:05  ⛏ <- First stone tools are used – 2,682,353 BC
	           •
	           •
	           •
```
Skip **~30,000 years**...

```
	           •
	           •
	           •
01/18/99 22:41:40  ❄️ <- Ice Age begins – 2,711,955 BC
	           •
	           •
	           •
```
Skip **~100,000 years**...

```
	           •
	           •
	           •
02/26/98 00:00:00  ⚪️ <- STONE AGE BEGINS – 2,600,000 BC

		   \
		   /
		   \
		   /
		   \	  SKIP ~4,400,000 YEARS OF EVOLUTION
		   /
		   \
		   /
		   \

		   🐵 <- Apes become bipedal – 7,000,000 BC
```

## How It Works

The way the simulator is able to generate pinpoint timestamps for the milestones of the timeline revolves the format of ```timeIntervalSinceReferenceDate```, whose value is the number of seconds since January 1st, 2001 at 00:00:00. By using this type, I could represent each second of its value as a certain amount of simulated years. In the sample above, each second of the real-time clock represented ```0.00396``` simulated years.

Each milestone has a target date, in which the method ```calculateMilestones``` uses to compute a random date within +/-5% of the target date. Here's an example of a milestone whose target date is 75,000 BC:
```swift
milestones.append(Milestone(description: "Humans develop language", date: calculateMilestones(date: -75000), symbol: "💬"))
```
Using the randomly generated date, this algorithm determines how many seconds it occurred after the birthday of the user:
```swift
let year = 75000		
let totalSeconds = 656130225	// the number of seconds between the user's birthday and the current date
let secondsToYears = 0.00396	// 2,600,000 years of time / totalSeconds
let numOfSec = Int(Double(year) / secondsToYears)
var seconds: Int!
    
if inputYear < 0 {
    seconds = Int(abs(totalSeconds - numOfSec))
} else {
    seconds = Int(abs(numOfSec))
}

let trueDate = birthdayDate!.addingTimeInterval(TimeInterval(seconds))

return trueDate
```
So in the sample above, the target date of the Milestone "Humans develop language" is ```75,000 BC```, and ```calculateMilestones``` randomly generated the date ```78,423 BC``` which corresponds the the real-time date ```04/25/18 20:07:21``` (according to the algorithm).

This process is repeated for each milestone (currently there are 31) and they are each chained together in a timeline of •'s, where each one represents a certain amount of years. In the sample above, ```each • = ~759.4 years```.

## Installation and Usage

**On computers with Xcode 6.1+:**
1. Clone this repository.
2. Navigate to to the folder ```Human-Evolution-Simulator``` in your console.
3. Type ```$ swiftc main.swift functions.swift -o humanEvolution``` to compile.
4. Type ```$ ./humanEvolution``` to execute.
5. Just type in your birthday in the ```MM/DD/YYYY``` format and hit enter to start the simulation.

```
*****************************************
|       "TIMELINE OF HUMAN HISTORY"     |
|                                       |
|             By: Lou DiMuro            |
|               12/10/2018              |
*****************************************

Welcome to the TIMELINE OF HUMAN HISTORY Simulator!

Enter your birthday (MM/DD/YYYY):
02/26/1998
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
