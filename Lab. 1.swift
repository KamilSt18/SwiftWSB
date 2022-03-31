import Foundation
// Zad. 0
print("Podaj imię: ")
var name: String? = readLine()
print("Hello, " + String(name!))
// Zad. 1
print("Podaj liczbę a: ")
var a: Double? = Double(readLine()!)
print("Podaj liczbę b: ")
var b: Double? = Double(readLine()!)

print("Suma: " + String(a! + b!))
print("Różnica: " + String(a! - b!))
print("Iloczyn: " + String(a! * b!))
if(b != 0){
print("Iloraz: " + String(a! / b!))
}
// Zad. 2
let predkosc: Double = 299_792_458
let rokSekundy: Double = 60*60*24*365.25
let rokSwietlnydl: Double = round((predkosc*rokSekundy)/1000000000000000)
print("Odległość: " + String(rokSwietlnydl) + " biliona km.")
// Zad. 3
let godzinaNaSekudny: Double = 60*60
let dobaNaSekundy: Double = 60*60*24
let rokNaSekundy: Double = 60*60*24*365
print("Godzina na sekundy: " + String(godzinaNaSekudny))
print("Doba na sekundy: " + String(dobaNaSekundy))
print("Rok na sekundy: " + String(rokNaSekundy))
print("Podaj swój rok urodzenia: ")
let rokUrodzenia: Double? = Double(readLine()!)
let wynik: Double = rokUrodzenia! * rokNaSekundy
print("Żyjesz: " + String(wynik) + "sekund!")
// Zad. 4
print("Podaj cale: ")
var cale: Double? = Double(readLine()!)
print("Jest to " + String(cale! * 2.54)+"cm.")
//Zad. 5
var srednia = 30/0.25
var czas: Double = 27/60
var dystans: Double? = 60/czas
print("Średnia prędkość to " + String(srednia) + "km/h")
print("Różnica: " + String(round(dystans!-srednia)) + "km/h")
print("Cały dystans: " + String(round(dystans!)) + "km/h")