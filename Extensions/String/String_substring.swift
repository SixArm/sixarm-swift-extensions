extension String {

  func isMatch(regex: String, options: NSRegularExpressionOptions) -> Bool {
    var error: NSError?
    var exp = NSRegularExpression(pattern: regex, options: options, error: &error)
    if let error = error {
      println(error.description)
    }
    var matchCount = exp.numberOfMatchesInString(self, options: nil, range: NSMakeRange(0, self.length))
    return matchCount > 0
  } 

}