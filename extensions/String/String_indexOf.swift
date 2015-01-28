extension String {

  func indexOf(target: String) -> Int {
    var range = self.rangeOfString(target)
    if let range = range {
      return distance(self.startIndex, range.startIndex)
    } else {
      return -1
    }
  }

  func indexOf(target: String, startIndex: Int) -> Int {
    var startRange = advance(self.startIndex, startIndex)        
    var range = self.rangeOfString(target, options: NSStringCompareOptions.LiteralSearch, range: Range<String.Index>(start: startRange, end: self.endIndex))
    if let range = range {
      return distance(self.startIndex, range.startIndex)
    } else {
      return -1
    }
  }

}
