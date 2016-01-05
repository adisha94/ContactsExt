//: Playground - noun: a place where people can play

print("practicing subscripts")

struct TimesTable
{
    let multiplier: Int
    subscript (index: Int) ->Int
    {
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
let twoTimesTable = TimesTable(multiplier: 2)

print("six times three is \(threeTimesTable[6])")
print("six times three is \(twoTimesTable[6])")

var numberOfLegs: [String : Int] = ["millipede": 1000, "centipede" : 100, "spider" : 8, "insect" : 6, "bird" : 2, "bear" : 4, "human" : 2]
numberOfLegs["bird"] = 2
numberOfLegs





struct Matrix
{
    let rows: Int,  columns: Int
    var grid: [Double]
    init(rows : Int, columns: Int)
    {
        self.rows = rows
        self.columns = columns
        grid = Array(count: rows * columns, repeatedValue: 0.0)
    }
}

let mat_A: Matrix = Matrix(rows: 5, columns: 4)