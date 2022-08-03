extension Collection {

    /// Safe index.
    ///
    /// If the specified index is within bounds, then return the element,
    /// else return nil.
    ///
    /// Example:
    ///
    /// ```
    /// let array = [1, 2, 3]
    /// for index in -20...20 {
    ///     if let item = array[safe: index] {
    ///         print(item)
    ///     }
    /// }
    ///
    /// Thanks: 
    ///
    ///   * https://stackoverflow.com/users/1607485/nikita-kukushkin
    ///
    ///   * https://stackoverflow.com/questions/25329186/safe-bounds-checked-array-lookup-in-swift-through-optional-bindings/30593673#30593673
    ///
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
