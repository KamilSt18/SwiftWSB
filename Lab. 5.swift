import Foundation
// Zad. 1
var tablica = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
print(tablica[0])
print(tablica[3])
print(tablica[6])
print(tablica[8])
 
// Zad. 2
print("Podaj liczbę naturalną:")
var liczba = Int(readLine()!)!
if (liczba > 0) {
   var dzielniki: Array<Int> = [] // wszystkie dzielniki poza nią samą
   for a in 1...(liczba/2){ // iterujemy od 1 do połowy liczby włącznie - dzielenie przez wiecej niż połowę nie da wyniku całkowitego
       if liczba % a  == 0 { // jeżeli liczba jest podzielna
           dzielniki.append(a) // to dodaj ją do tabeli
       }
   }
   print("Długość listy:", dzielniki.count)
   var ciag = ""
   for i in dzielniki{
       ciag += String(i)
   }
   var liczby = ["0":0, "1":0, "2":0, "3":0, "4":0, "5":0, "6":0, "7":0, "8":0, "9":0]
   for i in ciag {
       for (key, value) in liczby{
           if(String(i) == key){
               var licz:Int = value+1
               liczby.updateValue(Int(licz), forKey: String(i))
           }
       }
   }
   for (key, value) in liczby{
       print(key, "->", value)
   }
}
else {
   print("Zła liczba.")
}
 
// Zad. 3
var losoweLiczby:[Int] = []
for _ in(1...10){
   losoweLiczby.append(Int.random(in: 1...50))
}
print(losoweLiczby)
losoweLiczby.sort()
print(losoweLiczby)
 
// Zad. 4
print("Podaj ilość liczb:")
var n = Int(readLine()!)!
var tablicaLiczb:[Int] = []
for i in (1...n){
   print("Podaj", i, "liczbę całkowitą:")
   var liczba = Int(readLine()!)!
   tablicaLiczb.append(liczba)
}
var maksymalna = tablicaLiczb.max()
var licz = 0
for i in tablicaLiczb{
   if(String(i) == String(maksymalna!)){
       licz += 1
   }
}
print("Max liczba:",String(maksymalna!), "wystąpiła:", licz, "razy.")
 
// Zad. 5
print("Podaj n ciągu:")
var n = Int(readLine()!)
var liczby = [1,1]
for i in (0...n!-3){
   liczby.append(liczby[i]+liczby[(i+1)])
}
print(liczby)
 
// Zad. 6
print("Podaj n ciągu:")
var n = Int(readLine()!)!
if n < 2{
   print("Brak liczb pierwszych w podanym zakresie")
}
else {
   var skr:[Bool] = []
   for _ in (1...(n+1)){
       skr.append(false)
   }
   var i = 2
   while (i * i <= n){
       if !(skr[i]){
           var j = i * i
           while (j <= n){
               skr[j] = true
               j += i
           }
       }
       i += 1
   }
   var liczby:[Int] = []
   for i in (2...n){
       if !(skr[i]){
           liczby.append(i)
       }
   }
   print(liczby)
}
 
// Zad. 7
var menu = ["CARPACCIO Z BURAKA":16.00, "TATAR WOŁOWY":35.00, "TATAR Z TUŃCZYKA":36.00, "ŚLEDŹ":13.00, "Krem z kalafiora z olwią":14.00, "Bulion z krokietami z ogona wołowego":14.00, "Carpaccio z ośmiornicy z sosem malinowym i pesto z rzodkiewki":24.00, "Gnocchi w pesto ziołowym z wątróbką drobiową": 24.00, "Vege ramen z grillowanymi szparagami":24.00, "Tradycyjny rosół z makaronem domowym":12.00]
var listaCen:[Double] = []
// wartosci
print("-----Wartości-----")
for value in menu.values{
   print(value)
   listaCen.append(value)
}
// klucze
print("-----Klucze-----")
for key in menu.keys{
   print(key)
}
// klucze i wartosci
print("-----Klucze i wartości-----")
for (key, value) in menu{
   print(key,value)
}
var min = Double(listaCen.min()!)
var max = Double(listaCen.max()!)
print("min", min)
print("max", max)
for (key, value) in menu{
   if (String(value) == String(min) || String(value) == String(max)){
       menu[key] = nil
   }
}
print(menu)
menu["Pizza hawajska"] = 19.99
print(menu)
 
// Zad. 8
var listaKontaktow = ["Adam":535653345, "Kacper":694234564, "Dawid":696345345, "Michał":562245634, "Bartek":753345643, "Rafał":521356435, "Weronika":763456352, "Ola":542234573, "Aga":694312345, "Kasia":694355234]
// zmiana 1 klucza
listaKontaktow["Darek"] = listaKontaktow.removeValue(forKey: "Adam")
// zmiana ostatniego klucza
listaKontaktow["Ewa"] = listaKontaktow.removeValue(forKey: "Kasia")
// usuwanie wartosci srodkowych
for klucz in listaKontaktow.keys{
   if (klucz != "Darek" && klucz != "Ewa"){
       listaKontaktow[klucz] = nil
   }
}
print(listaKontaktow)
// dodanie 2 pozycji
listaKontaktow["Janusz"] = 523452345
listaKontaktow["Grażyna"] = 523452375
// sortowanie alfabetyczne kluczy
let sortedListaKontaktow = listaKontaktow.sorted(by: { $0.0 < $1.0 })
print(sortedListaKontaktow)

// Zad. 9
var serniczkowySpam:[String] = []
print("Chcesz otrzymywać codziennie na swoją skrzynkę pocztową zdjęcie np. serniczka na zimno? (tak/nie)")
var odp = readLine()!
if(odp.lowercased() == "tak"){
  print("Podaj swój email:")
  let adres = readLine()!
  serniczkowySpam.append(adres)
}
var wszystkieAdresy = ""
var n = 0
for i in serniczkowySpam{
  if (n == serniczkowySpam.count-1){
     wszystkieAdresy += i
  }
else{
     wszystkieAdresy += i + ";"
}
n += 1
}
// gotowy string w formacie dużej ilości odbiorców
print(wszystkieAdresy)