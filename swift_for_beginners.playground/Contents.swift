//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct Student{
    var name: String
    var age: Int
}

func sayHello(student:Student){
    print("Hello \(student.name)")
}
var minh = Student(name: "Minh", age: 12)
sayHello(student: minh)

struct BaseballHittingStats{
    var atBats: Int
    var hits: Int
    var singles: Int
    var doubles: Int
    var triples: Int
    var homeRuns: Int
}

func averageAndSlugging(stats: BaseballHittingStats) -> (Double, Double){
    return (Double(stats.hits)/Double(stats.atBats), Double(stats.singles + (stats.doubles * 2) + (stats.triples * 3) + (stats.homeRuns * 4)) / Double(stats.atBats))
}

var miguelCabrera = BaseballHittingStats(atBats: 384, hits: 131, singles: 86, doubles: 27, triples: 1, homeRuns: 17)

let averageAndSluggingTuple = averageAndSlugging(stats: miguelCabrera)

averageAndSluggingTuple.0
averageAndSluggingTuple.1


func andHitWithInOut(stats: inout BaseballHittingStats, hits: Int){
    stats.hits += hits
    print(stats.hits)
}

miguelCabrera.hits
andHitWithInOut(stats: &miguelCabrera, hits: 2)
miguelCabrera.hits






