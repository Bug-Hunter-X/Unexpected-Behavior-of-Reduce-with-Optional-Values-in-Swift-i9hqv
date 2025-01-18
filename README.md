# Swift Reduce Function and Optional Values

This repository demonstrates a subtle but important difference in how Swift's `reduce` function handles optional values when using concise operators versus custom closures.  This difference can lead to unexpected behavior and difficult-to-debug errors.

The `bug.swift` file showcases the issue. The `bugSolution.swift` file provides a corrected approach.

## Problem

The concise plus operator (+) in `reduce` ignores `nil` values, while a custom closure requires explicit handling of `nil` using the nil-coalescing operator (??).

This can cause discrepancies in calculations, especially when dealing with arrays containing optional numbers and different initial values for the `reduce` operation.

## Solution

Always explicitly handle optional values within the closure passed to `reduce` to ensure consistent and predictable results.  Use the nil-coalescing operator (??), or other appropriate techniques to deal with potential `nil` values.