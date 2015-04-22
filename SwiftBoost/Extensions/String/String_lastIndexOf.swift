// Credit https://gist.github.com/albertbori/0faf7de867d96eb83591

/*
extension String {

  func lastIndexOf(target: String) -> Int {
    var index = -1
    var stepIndex = self.indexOf(target)
    while stepIndex > -1 {
      index = stepIndex
      if stepIndex + target.length < self.length {
        stepIndex = indexOf(target, startIndex: stepIndex + target.length)
      } else {
        stepIndex = -1
      }
    }
    return index
  }

}
*/