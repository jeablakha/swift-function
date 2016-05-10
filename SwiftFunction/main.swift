//
//  main.swift
//  SwiftFunction
//
//  Created by admin on 5/9/2559 BE.
//  Copyright © 2559 lakha. All rights reserved.
//

import Foundation

//1.no parameter function
// create function
func hello(){
    print("Hello Swift!")
}

//call function
hello();


//2.function with parameter
func circleArea(radius:Float)->Float {
    var area:Float
    area = 3.14*radius*radius;
    return area
}



func circleRound(radius:Float) {
    var round:Float
    round = 2*3.14*radius;
    print(round)

}
// call
print(circleArea(3.5))
// call
//print(circleRound(3.5))

//Default value of parameter function
func theStarName (name:String,last:String="The Star")->String{
    let result = name+" "+last
    return result
}

/*let start = theStarName("Boy")
print(start)*/


let start = theStarName("Boy" ,last:"SSS")
print(start)


// Nested Function
func newPosition(moveRight test:Bool,xPosition:Int)->Int{
    func goRight(xPosition:Int)->Int{
        return xPosition+1
    }
    func goLeft(xPosition:Int)->Int{
        return xPosition-1
    }
    // call Nested Function
    let dicision:(Int)->Int = test ? goRight:goLeft
    return dicision(xPosition)
}
var position = newPosition(moveRight: true, xPosition: 15)
print("ตำแหน่งปัจจุบัน\(position)")







