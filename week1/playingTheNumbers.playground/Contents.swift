import UIKit

var str = "Playing the Numbers!"

// Variable random number array's sorted
var a = ["22", "34", "56"]
a.sort {
    return $0 < $1
}

var b = ["18", "10", "52"]
b.sort {
    return $0 < $1
}

var c = ["64", "26", "18"]
c.sort {
    return $0 < $1
}

c.insert("96", at: 0)

var d = ["80", "42", "74"]
d.sort {
    return $0 < $1
}

var e = ["26", "38", "90"]
e.sort {
    $0 < $1
}



// Constant random number array's sorted

let f: Set = ["57", "15", "37"]
let fOrder = f.sorted(by: <)
//print(fOrder)

let g: Set = ["63", "27", "49"]
let eOrder = e.sorted(by: <)
//print(eOrder)

let h: Set = ["35", "1", "47"]
let gOrder = g.sorted(by: <)
//print(gOrder)

let i: Set = ["99", "3", "79"]
let hOrder = h.sorted(by: <)
//print(hOrder)

let j: Set = ["97", "9", "23"]
let iOrder = i.sorted(by: <)
//print(iOrder)


// Dictionary

var evenNumbers = ["a": "22", "b": "48", "c": "62","d": "16","e": "74"]
var oddNumbers = ["f": "91", "g": "23", "h": "77","i": "47","j": "3"]


//** Change a number in Dictionary **//
evenNumbers["a"] = "44"

//** Change a number in Array **//
a[1] = "44"

//** Print All **//

print(a,b,c,d,e)
print(f, g, h, i, j)

print(evenNumbers)
print(oddNumbers)
