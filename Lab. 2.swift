import Foundation
// Zad. 1
print("Podaj liczbę a:")
let a: Int? = Int(readLine()!)
print("Podaj liczbę b:")
let b: Int? = Int(readLine()!)
if(a! % b! == 0){
   print("A JEST PODZIELNE PRZEZ B")
}
else {
   print("A NIE JEST PODZIELNE PRZEZ B")
}
// Zad. 2
print("Podaj liczbę:")
let liczba: Double? = Double(readLine()!)
if(liczba! <= 10){
   print("Wartość mniejsza bądź równa 10.")
}
else if (liczba! <= 25){
   print("Większa od 10, lecz mniejsza lub równa 25")
}
else {
   print("Większa od 25")
}
// Zad. 3
print("Podaj liczbę a:")
let a: Double? = Double(readLine()!)
print("Podaj liczbę b:")
let b: Double? = Double(readLine()!)
print("Podaj liczbę c:")
let c: Double? = Double(readLine()!)

if (a! >= b! && a! >= c!){
   print("Liczba A jest największa!")
   if(a! == b!){
       print("Liczba A jest równa liczbie B!")
   }
   else if (a! == c!){
       print("Liczba A jest równa liczbie C!")
   }
}
else if (b! >= a! && b! >= c!){
   print("Liczba B jest największa!")
   if(b! == a!){
       print("Liczba B jest równa liczbie A!")
   }
   else if (b! == c!){
       print("Liczba B jest równa liczbie C!")
   }
   }
else if (c! >= b! && c! >= a!){
   print("Liczba C jest największa!")
   if(c! == b!){
           print("Liczba C jest równa liczbie B!")
   }
   else if (c! == a!){
           print("Liczba C jest równa liczbie A!")
       }
}
// Zad. 4
print("Podaj liczbę:")
var liczba: Int? = Int(readLine()!)
if (liczba! % 2 == 1){
   print("Liczba posiada resztę!")
}
if (liczba! > 0){
   print("Liczba większa od 0")
}
else if (liczba! < 0){
   print("Liczba mniejsza od 0")
}
else {
   print("Równa")
}
// Zad. 5
print("Podaj zawartość alkoholu w wydychanym powietrzu:")
var zawartoscPowietrza: Double? = Double(readLine()!)
if (zawartoscPowietrza! > 0.2 && zawartoscPowietrza! <= 0.25){
   print("Stan po użyciu alkoholu.")
}
else if (zawartoscPowietrza! > 0.25) {
   print("Stan nietrzeźwości")
}
else {
   print("Trzeźwy")
}
// Zad. 6
print("Podaj liczbę a:")
var a: Double? = Double(readLine()!)
print("Podaj liczbę b:")
var b: Double? = Double(readLine()!)
print("Podaj liczbę c:")
var c: Double? = Double(readLine()!)
print("Podaj liczbę d:")
var d: Double? = Double(readLine()!)

if (a! >= b! && a! >= c! && a! >= d!){
   print("Liczba A jest największa!")
}
else if (b! >= a! && b! >= c! && b! >= d!){
   print("Liczba B jest największa!")
   }
else if (c! >= b! && c! >= a! && c! >= d!){
   print("Liczba C jest największa!")
}
else if (d! >= a! && d! >= b! && d! >= c!){
   print("Liczba D jest największa!")
}
// Zad. 7
print("Podaj liczbę a:")
var a: Double = Double(readLine()!)!
print("Podaj liczbę b:")
var b: Double = Double(readLine()!)!
print("Podaj liczbę c:")
var c: Double = Double(readLine()!)!
var delta = (b*b) - (4 * a * c)
if (delta > 0){
   let x1 = (-1*b + sqrt(delta)) / (2 * a)
   let x2 = (-1*b - sqrt(delta)) / (2 * a)
   print("x1 = " + String(x1))
   print("x2 = " + String(x2))
}
else if (delta == 0){
   let x1 = -1 * b / (2 * a)
   print("x1 = " + String(x1))
}
else{
   print("Brak miejsc zerowych funkcji kwadratowej!")
}
// Zad. 8
print("Podaj długość a:")
var a: Double = Double(readLine()!)!
print("Podaj długość b:")
var b: Double = Double(readLine()!)!
print("Podaj długośc c:")
var c: Double = Double(readLine()!)!

if (a >= b && a >= c){
   //print("Liczba A jest największa!")
   if((a*a) == (b*b)+(c*c)){
       print("Trójkąt jest prostokątny!")
   }
   else {
       print("Trójkąt nie jest prostokątny!")
   }
}
else if (b >= a && b >= c){
   //print("Liczba B jest największa!")
   if((b*b) == (a*a)+(c*c)){
       print("Trójkąt jest prostokątny!")
       }
   else {
       print("Trójkąt nie jest prostokątny!")
   }
   }
else if (c >= b && c >= a){
   //print("Liczba C jest największa!")
   if((c*c) == (a*a)+(b*b)){
       print("Trójkąt jest prostokątny!")
   }
   else {
       print("Trójkąt nie jest prostokątny!")
   }
}