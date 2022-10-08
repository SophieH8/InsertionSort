


//Defines wordArray, sortedWordArray, and word
var wordArray = [String]()
let sortedWordArray : [String]
var word : String


//compares the ascii values in two strings to figure out if the first string is greater than the second string
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
  func insertionSort(unsortedIntegers: [String]) -> [String]{
    var sortedIntegers = unsortedIntegers

    for i in 1..<unsortedIntegers.count {
            var marker = i
            //            while marker > 0 && sortedIntegers[marker-1] >  sortedIntegers[marker] {
            while marker > 0 && stringGreaterThan(string1: sortedIntegers[marker-1], string2: sortedIntegers[marker]){
                swap(integers:&sortedIntegers, firstIndex:marker - 1, secondIndex:marker)
                marker -= 1
            }

    }
  return sortedIntegers      
//    print(sortedIntegers)
    }


//checks if word is nil, breaks loop if its blank, appends if it isn't
while let word = readLine() {
    if word == "" {
     break
    } else {
    wordArray.append(word)
    }
}

for i in insertionSort(unsortedIntegers: wordArray) {
    print(i)
}
