import UIKit

// Strings                              // STRINGS
var str = "Hello, playground"
let constant = "This attribute is not changable" // Konstante
var explicit: Double = 4.5 // expliziter Datentyp

// Arrays                              // Arrays
var tiere = ["Hund", "Katze", "Maus"]
tiere[1] // Index ausgeben
tiere[1] = "Elefant" // Wert ändern
tiere.append("Giraffe")
tiere.remove(at: 2) // remove element at index
tiere.removeFirst()
tiere.removeLast()
"eins".count
[1,2,3].count // length

var intArray = [Int]() // two different ways to create an empty array
var doubleArray: [Double] = []

// DICTIONARIES (unsortierte Sammlung - key:value paris)
var lieblingstiere = ["Joey": "Katze", "Timothy": "Hund", "Lisa": "Elefant"]
lieblingstiere["Lisa"]
var newDict = [Double:Int]()
var newDict2: [Int:Double] = [:]
newDict[2.1] = 2
newDict.removeValue(forKey: 2.1)


// Range - Bereiche                     // RANGES
let fünf = 0...4 // 0 bis 4
let vier = 0..<4 // exklusive 4 (nur 0,1,2,3)
let unendlich = 0...
let negativeUnendlich = ...0
fünf.contains(0)

// conditional statements
if fünf.contains(-20) {                 // IF
    print("-20 ist drin")
} else if fünf.contains(1) {
    print("1 ist drin")
} else {
    print("Neee")
}
var zahl = 10
switch zahl {                           // SWITCH
case 1...10:
    print("Zwischen 1 und 10...")
case 20:
    print("Die Zahl ist 30")
    fallthrough // in den nächsten case fallen (ohne zu prüfen, ob der nächste Case wahr ist)
case 30:
    print("Die Zahl ist 30")
default:
    print("Es ist eine andere Zahl")
}

// FOR-Schleifen                       // FOR
for _ in 0...300 { // Zählvariable wird nicht verwendet
    print("Print")
}
for zahl in stride(from: 0, through: 100, by: 1) { // Intervalle
    print(zahl)
}
for (name, tier) in lieblingstiere { // for statement for dictionary
    print("\(tier) ist das Lieblingstier von \(name)")
}

while zahl < 20 {                      // WHILE
    zahl += 1
    print(zahl)
}
repeat { // einmal anfangs ausführen ohne Überprüfung
    print("Hallo")
} while zahl < 10

// Funktionen
func sum(_ zahl: Int,_ andereZahl: Int) { // _ -> keinen Namen angeben
    print(zahl + andereZahl)
}
func multiply(zahl: Int, und andereZahl:Int) { // externer Name "und"
    print(zahl * andereZahl)
}
sum(30,34)
multiply(zahl: 30, und: 20)
// Funktionen                           // FUNKTIONEN
func addiere(_ zahl: Int, mit andereZahl: Int) -> Int {
    return zahl + andereZahl
}
func addiereUndSubtrahiere(_ zahl: Int, und andereZahl: Int) -> (summe: Int, differenz: Int) {
    return (zahl + andereZahl, zahl - andereZahl) // zwei Rückgabewerte
}
addiere(20, mit: 34)
addiereUndSubtrahiere(20, und: 10)

// KLASSEN                              // KLASSEN
class Auto {
    let zahlDerRäder: Int
    var farbe: String
    
    init(_ räder: Int,_ farbe: String) { // Konstruktor
        self.zahlDerRäder = räder
        self.farbe = farbe
    }
    
    convenience init() { // bequemlicher Konstruktor mit Standardwerten
        self.init(4, "rot")
    }
    
    var print: String {
        return "Das Auto ist \(farbe)"
    }
    
    func starteDenMotor() {
        Swift.print("Der Motor des Autos mit \(self.zahlDerRäder) Rädern ist gestartet")
    }
}
let mercedes = Auto(4, "schwarz")
mercedes.farbe
mercedes.print
mercedes.starteDenMotor()

// Vererbung                            // VERERBUNG
class Porsche: Auto { // Hund hat alles in Tier geerbt
    override init(_ räder: Int,_ farbe: String) {
        super.init(4, farbe)
    }
}

// Structs                              // STRUCTS - Strukturen
struct Rechteck {
    let breite: Int // Initializer wird automatisch erstellt
    let höhe: Int
    
    func fläche() -> Int {
        return breite * höhe
    }
}
var rechteck = Rechteck(breite: 200, höhe: 400)
rechteck.fläche()

// ENUMERATIONEN                        // ENUMS
enum GewichtsEinheit {
    case gramm, kilogramm, tonne
}
var einheit = GewichtsEinheit.gramm
einheit = .tonne // Variable ändern
enum Barcode { // enums with associated values
    case upc(Int, Int, Int, Int)
    case qr(String)
}
var productBarCode = Barcode.qr("ABCDE")
var productBarCode2 = Barcode.upc(1, 12345, 45678, 9)
enum KommaZahlen: String {
    case rot = "rgb(255,0,0)", grün = "rgb(0,255,0)", blau = "rgb(0,0,255)"
}
var farbe = KommaZahlen.rot

// optionals (optionale Werte)          // OPTIONALS
var alter:Int?
if let a = alter {
    print("Das Alter ist \(a).")
} else {
    print("Das Alter ist undefined")
}
func begrüße(_ name: String?) {
    guard let entpackt = name else { // guard let: Variable is für die gesamte Methode definiert!
        print("Es wurde kein Name angegeben")
        return
    }
    
    print("Hallo \(entpackt)")
}
begrüße("Joey")
let string = "8"
var number = Int(string)! // force unrapping
print(number)
var meinName: String! = nil // auf jeden Fall gesetzt bevor ich ihn das erste Mal benutze
func username(for id: Int) -> String? {
    if id == 1 {
        return "Joey"
    } else {
        return nil
    }
}
let nutzer = username(for: 5) ?? "Anonymous" // if null, default value

// Closures                             // CLOSURES
let begrüßung = {
    print("Hallo")
}
let andereBegürßung = { (name: String) in // Parameternamen werden beim Aufrufen direkt weggelassen bei Closures
    print("Hallo \(name)")
}
let gibZurück = { (name:String) -> String in
    return "Hallo \(name)"
}
begrüßung()
andereBegürßung("Jens")
gibZurück("Peter")
func sagHallo(action: () -> ()) {
    print("Jetzt sage ich Hallo")
    action()
}
sagHallo(action: begrüßung)
sagHallo { // trailing closure syntax
    print("Herzlich Wilkommen!")
}
