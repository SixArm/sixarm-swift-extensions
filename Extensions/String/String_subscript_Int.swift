extension String {

  subscript (r: Range<Int>) -> String {
    get {
      let startIndex = advance(self.startIndex, r.startIndex)
      let endIndex = advance(self.startIndex, r.endIndex - 1)
      return self[Range(start: startIndex, end: endIndex)]
    }
  } 

}