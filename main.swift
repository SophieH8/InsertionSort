
/*
// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


 */

// Add your code below:
import Foundation

//Defines wordArray, sortedWordArray, word, and input
var wordArray = [String]()
var sortedWordArray :  [String]


func stringGreaterThan(string1: String, string2: String) -> Bool {
    
    //filters out anything that isn't a letter to sort only the letters
    let s1 = string1.lowercased().filter("abcdefghijklmnopqrstuvwxyz".contains)
    let s2 = string2.lowercased().filter("abcdefghijklmnopqrstuvwxyz".contains)
    return s1.lowercased() > s2.lowercased()
}

func swap(integers: inout [String], firstIndex: Int, secondIndex: Int) {
    let temp = integers[firstIndex]
    integers[firstIndex] = integers[secondIndex]
    integers[secondIndex] = temp
}

// sorts integers in an array by smallest to largest
func insertionSort(unsortedStrings: [String]) -> [String]{
    var sortedStrings = unsortedStrings

//    print("Pass: 0, Swaps: 0/0, Array: \(sortedIntegers)")        


    for i in 1..<unsortedStrings.count {
        
            var marker = i
            while marker > 0 && stringGreaterThan(string1: sortedStrings[marker-1], string2: sortedStrings[marker]) {
                swap(integers:&sortedStrings, firstIndex:marker - 1, secondIndex:marker)
                marker -= 1
            }
    }
    return sortedStrings
        
  
    }


//checks to see if input is nil or blank then appends input and checks next input
var word = readLine()
while word != nil && word != "" {
    wordArray.append(word!)
    word = readLine()
}



for word in insertionSort(unsortedStrings: wordArray) {
    print(word)
}
