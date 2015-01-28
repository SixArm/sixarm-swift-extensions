extension String {

  func subString(startIndex: Int, length: Int) -> String {
    var start = advance(self.startIndex, startIndex)
    var end = advance(self.startIndex, startIndex + length)
    return self.substringWithRange(Range<String.Index>(start: start, end: end))
  } 

}