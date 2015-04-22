/// String getMatches.

/*
extension String {

  func getMatches(regex: String, options: NSRegularExpressionOptions) -> [NSTextCheckingResult] {
    var error: NSError?
    var exp = NSRegularExpression(pattern: regex, options: options, error: &error)
    if let error = error {
      println(error.description)
    }
    var matches = exp.matchesInString(self, options: nil, range: NSMakeRange(0, self.length))
    return matches as [NSTextCheckingResult]
  } 
  
}
*/