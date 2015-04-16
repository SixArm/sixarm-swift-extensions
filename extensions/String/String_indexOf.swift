extension String {

  func indexOf(target: String) -> Int {
    var range = self.rangeOfString(target)
    return range != nil ? distance(self.startIndex, range.startIndex) : -1
  }

  func indexOf(target: String, startIndex: Int) -> Int {
    var startRange = advance(self.startIndex, startIndex)        
    var range = self.rangeOfString(target, options: NSStringCompareOptions.LiteralSearch, range: Range<String.Index>(start: startRange, end: self.endIndex))
    return (range != nil) ? distance(self.startIndex, range.startIndex) : -1
  }

}
