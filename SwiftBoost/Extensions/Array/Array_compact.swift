/// Array compact.

extension Array {
  
  /// Remove any nil elements.
  ///
  /// Example:
  ///
  ///     let items: [Int?] = [1, nil, 2, nil, 3]
  ///     let results: [Int] = Array.compact(items) 
  ///     // results == [1, 2, 3]
  ///
  /// This is a static function, rather than an instance function,
  /// because Swift currently doesn't let instance functions use 
  /// optionals; if this changes, then we will move this function
  /// from static to instance.
  ///
  /// :params: array
  /// :returns: a new array with the nil elements removed.
  ///
  static func compact(array: [T?]) -> [T] {
    return array.filter { $0 != nil }.map { $0! }
  }

}
