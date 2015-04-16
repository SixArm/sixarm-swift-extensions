// Credit: https://gist.github.com/albertbori/0faf7de867d96eb83591

extension String {
  var length: Int {
    get {
      return countElements(self)
    }
  }
}
