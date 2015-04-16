/// Add items to a dictionary.
///
/// :author: Joel Parker Henderson (https://joelparkerhenderson.com)
/// :license: GPL (https://www.gnu.org/copyleft/gpl.html)

/// Add dictionaries.
///
/// Example:
///
///     var d1: [String: String] = ["a": "b"]
///     var d2: [String: String] = ["c": "d"]
///     var d3: [String: String]
///     d3 = d1 + d2
///     // d3 == ["a": "b", "c": "d"]
///
func + <K,V>(a: Dictionary<K,V>, b: Dictionary<K,V>) -> Dictionary<K,V> {
  var d = Dictionary<K,V>()
  for (k, v) in a { d[k] = v }
  for (k, v) in b { d[k] = v }
  return d
}

/// Add items to a dictionary.
///
/// Example:
///
///     var d1: [String: String] = ["a": "b"]
///     var d2: [String: String] = ["c": "d"]
///     d1 += d2
///     // d1 == ["a": "b", "c": "d"]
///
func += <K,V>(inout a: Dictionary<K,V>, b: Dictionary<K,V>) {
  for (k, v) in b { a[k] = v }
}
