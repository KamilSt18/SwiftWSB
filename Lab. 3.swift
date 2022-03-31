import Foundation
// Zad. 1 A
var i = 254
while(i <= 320){
   if(i % 2 == 1){
       if (i % 5 == 0){
           print(i)
       }
   }
   i = i + 1
}
// Zad. 1 B
var i = -320
while(i <= -254){

   if(i % 2 != 0){
       if (i % 5 == 0){
           print(i)
       }
   }
   i = i + 1
}
// Zad. 2
var suma: Double = 0
print("Podaj wartość: ")
var wartosc: Double = Double(readLine()!)!
while (wartosc != 0){
   suma += wartosc
   print("Suma = " + String(suma))
   print("Podaj wartość: ")
   wartosc = Double(readLine()!)!
}
// Trzeba by konwertować na liczbę dopiero po sprawdzeniu czy istnieje taka możliwość i wtedy użyć if z funkcją break
// Zad. 3 Doskonała
print("Podaj liczbę: ")
var liczba: Int = Int(readLine()!)!
if liczba > 0 {
   var dzielniki: Array<Int> = [] // wszystkie dzielniki poza nią samą
   for a in 1...(liczba/2){ // iterujemy od 1 do połowy liczby włącznie - dzielenie przez wiecej niż połowę nie da wyniku całkowitego
       if liczba % a  == 0 { // jeżeli liczba jest podzielna
           dzielniki.append(a) // to dodaj ją do tabeli
       }
   }
   var suma = 0
   for i in dzielniki{
       suma += i // zliczamy sume
   }
   if liczba == suma {
       print("Liczba jest doskonała!")
   }
   else {
       print("Liczba nie jest doskonała.")
   }
}
//Zad. 4 Pierwsza
var stan = false
print("Podaj liczbę: ")
var liczba: Int = Int(readLine()!)!
if liczba >= 2 { //liczby 0 i 1 nie są liczbami pierwszymi
   for i in 2...Int(sqrt(Double(liczba))) {
       if liczba % i == 0 {
           stan = false
       }
       else {
           stan = true
       }
   }
   if stan{
       print("Liczba jest pierwszą!")
   }
   else {
       print("Liczba nie jest pierwszą.")
   }
}
// Zad. 5
var suma = 0.0
for i in 1...12 {
   suma += 333.0
   if i > 1 {
       suma += suma*0.08
   }
}
print("Pracownik zgromadzi: " + String(round(suma)) + "zł.")
//Zad. 6
print("Podaj liczbę: ")
var n = 1

var a = 0
var b = 0
repeat {
   a = 0
   b = 0
   if n % 2 == 1 {
       print("Podaj liczbe a:")
       a = Int(readLine()!)!
   }
   else {
       print("Podaj liczbe b:")
       b = Int(readLine()!)!
   }
   n += 1
} while (abs(a - b) >= 5)
print("Koniec!")