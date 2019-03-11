func longestChain(words: [String]) -> Int {
  if words.isEmpty {
    return 0
  }

  // Sort the words from shortest to longest
  let sortedWords: [(length: Int, word: String)] = words.map { (length: $0.count, word: $0) }.sorted { $0.length < $1.length }
  
  // Create DP map
  var wordMap = [String: Int]()
  wordMap[sortedWords[0].word] = 1
  
  var longestChain = 0
  for i in 0..<sortedWords.count {
    let s = sortedWords[i].word
    
    let len = findChainLength(s: s, wordMap: wordMap)
    
    longestChain = max(longestChain, len)
    
    // Update map
    wordMap[s] = len
  }
  

  return longestChain
}

func findChainLength(s: String, wordMap: [String: Int]) -> Int {
  var longestChain = 1
  
  for i in 0..<s.count {
    var shortString = s
    let index = shortString.index(shortString.firstIndex(of: shortString.first!)!, offsetBy: i)
    shortString.remove(at: index)
    
    if let foundLen = wordMap[shortString] {
      longestChain = max(longestChain, foundLen + 1)
    }
  }
  return longestChain
}

let words = ["a", "bca", "b", "ba", "baadc", "bda", "bdca"]
let longestChainLength = longestChain(words: words)

print("The longest chain is \(longestChainLength)")

