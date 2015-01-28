extension String {

  func contains(s: String) -> Bool {
    return self.rangeOfString(s) != nil ? true : false
  }

}