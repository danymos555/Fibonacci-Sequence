//
//  main.swift
//  Fibonacci-Sequence
//
//  Created by Daniela Moscoso on 01/10/24.
//

import Foundation

func FibonacciSequence(_ n: Int) -> Int {
    if n <= 1 {
        return n
    } else {
        return FibonacciSequence(n - 1) + FibonacciSequence(n - 2)
    }
}

func calculateFibonacci() {
    print("Hello, insert a number to calculate its Fibonacci Sequence:")

    if let input = readLine(), let number = Int(input) {
        if number >= 0 {
            let resultFibonacci = FibonacciSequence(number)
            print("Fibonacci of \(number) is \(resultFibonacci)")
        } else {
            print("Invalid input. Please insert a positive number.")
        }
    } else {
        print("Invalid input. Insert a valid number (the number must be an integer).")
    }
}
calculateFibonacci()
