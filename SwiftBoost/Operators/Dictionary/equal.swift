/// Equal operator that compares any two nested dictionaries with the same type.
///
/// Cite: http://stackoverflow.com/questions/26038258/how-to-compare-nested-collections-in-swift
///
/// :author: Nate Cook (http://stackoverflow.com/users/59541/nate-cook)
/// :license: Unknown

func == <K: Hashable, V: Equatable>(a: Dictionary<K,V>, b: Dictionary<K,V>) -> Bool {
  if a.count != b.count { return false }
  for (key, aa) in a {
    if let bb = b[key] {
      //if aa as Equatable != bb as Equatable {
      if aa != bb {
        return false
      }
    } else {
      return false
    }
  }
  
  return true
}
