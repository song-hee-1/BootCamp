//
//  main.swift
//  optionalDemo
//
//  Created by 한송희 on 2021/10/05.
//

struct MyOptional {
    var property = 123
    func method() {
        print("I am the struct's method.")
    }
}

let myOptional: MyOptional?

myOptional = MyOptional()

print(myOptional?.method())
