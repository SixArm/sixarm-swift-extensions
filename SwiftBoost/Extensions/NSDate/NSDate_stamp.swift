/// NSDate stamp.

import Foundation

extension NSDate {
  
  // We implement static via a struct because of extension limitations.
  struct Stamp {
    static var formatter = NSDateFormatter()
    init() {
      Stamp.formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z"
      Stamp.formatter.timeZone = NSTimeZone(forSecondsFromGMT: 0)
      Stamp.formatter.locale = NSLocale(localeIdentifier: "en_US_POSIX")
    }
  }
  
  /// Generate a date time stamp using a preferred standard format.
  ///
  /// The format is ISO 8601 and RFC 3339.
  ///
  /// Example:
  ///
  ///     var s = NSDate().stamp
  ///     => "2015-12-31T00:00:00.000Z"
  ///
  /// Example with a date param:
  ///
  ///     var d = NSDate()
  ///     var s = NSDate.stamp(d)
  ///     => "2015-12-31T00:00:00.000Z"
  ///
  /// :param: date The date to format; default is now.
  /// :returns: A date time stamp string.
  ///
  func stamp(date: NSDate = NSDate()) -> String {
    return Stamp.formatter.stringFromDate(date)
  }
  
}
