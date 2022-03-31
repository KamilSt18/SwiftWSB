import Foundation
// Zad. 1
class Auto {
  var marka: String
  var model: String
  var rodzaj: String
  var kolor: String
  var przebieg: Double
  
 init(marka: String, model: String, rodzaj: String, kolor: String, przebieg: Double) {
 self.marka = marka
 self.model = model
 self.rodzaj = rodzaj
 self.kolor = kolor
 self.przebieg = przebieg
 }

 func jedzProsto(){
  print("Auto \(marka) \(model) jedzie prosto!")
 }
func skrecWPrawo(){
  print("Auto \(marka) \(model) skręca w prawo.")
 }
func skrecWLewo(){
  print("Auto \(marka) \(model) skręca w lewo.")
 }
func zaparkuj(){
  print("Auto \(marka) \(model) parkuje...")
 }
func zatrzymaj(){
  print("Auto \(marka) \(model) zatrzymuje...")
 }
func wyswietl(){
  print("Marka: \(marka)\nModel: \(model)\nRodzaj: \(rodzaj)\nKolor: \(kolor)\nPrzebieg: \(przebieg)")    
}
}

var auto1 = Auto(marka: "Ferrari", model: "California", rodzaj: "kabriolet", kolor: "czerwony", przebieg: 6000.0)

var auto2 = Auto(marka: "Audi", model: "A4", rodzaj: "sedan", kolor: "czarny", przebieg: 200_000.0)

var auto3 = Auto(marka: "BMW", model: "E60", rodzaj: "touring", kolor: "czerwony", przebieg: 300_000.0)

var auto4 = Auto(marka: "Volkswagen", model: "Passat", rodzaj: "kombi", kolor: "srebrny", przebieg: 500_000.0)

var auto5 = Auto(marka: "Skoda", model: "Superb", rodzaj: "sedan", kolor: "czarny", przebieg: 250_000.0)

auto1.wyswietl()
auto1.jedzProsto()

auto2.skrecWPrawo()
auto3.skrecWLewo()
auto4.zaparkuj()
auto5.zatrzymaj()
// Zad. 2
import Foundation
class Student {
  var imie: String = ""
  var nazwisko: String = ""
  var uczelnia: String = ""
  var kierunek: String = ""
  var trybStudiow: String = ""
  var rokAkademicki: Double = 0.0
  var numerIndeksu: Float = 0
  var gotowoscDoSesji: Bool = false
  var stanNietrzezwosci: Bool = false
  var oceny = [Double]()
  
  func setKierunek(kierunek: String) {
    self.kierunek = kierunek
  }
func setTrybStudiow(trybStudiow: String) {
    self.trybStudiow = trybStudiow
  }
func setGotowoscDoSesji(gotowoscDoSesji: Bool) {
    self.gotowoscDoSesji = gotowoscDoSesji
  }
func setStanNietrzezwosci(stanNietrzezwosci: Bool) {
    self.stanNietrzezwosci = stanNietrzezwosci
  }
func getInfo(){
  var gotowosc = ""
  if (gotowoscDoSesji == true) {
   gotowosc = "Tak"
  }
  else {
   gotowosc = "Nie"
  }
  var stan = ""
  if (stanNietrzezwosci == true) {
    stan = "Tak"
  }
  else {
    stan = "Nie"
  }
 var ocenyString = ""
 for i in oceny {
 ocenyString += String(i) + " "
 }
 print("Imię: \(imie)\nNazwisko: \(nazwisko)\nUczelnia: \(uczelnia)\nKierunek: \(kierunek)\nTryb studiów: \(trybStudiow)\nRok akademicki: \(rokAkademicki)\nIndeks: \(numerIndeksu)\nGotowość do sesji: \(gotowosc)\nStan nietrzeźwości: \(stan)\nOceny: \(ocenyString)")
}
 }
extension Student {
 func setRokAkademicki(rokAkademicki: Double) {
    self.rokAkademicki = rokAkademicki
  }
 func setNumerIndeksu(numerIndeksu: Float) {
    self.numerIndeksu = numerIndeksu
  }
 func dodajOcene(ocena: Double) {
    self.oceny.append(ocena)
  }
}
var student1 = Student()
student1.imie = "Kamil"
student1.nazwisko = "Stępkowski"
student1.uczelnia = "Wyższa Szkoła Bankowa we Wrocławiu"
student1.setKierunek(kierunek: "Informatyka")
student1.setTrybStudiow(trybStudiow: "Stacjonarny")
student1.setGotowoscDoSesji(gotowoscDoSesji: true)
student1.setStanNietrzezwosci(stanNietrzezwosci: false)
student1.setRokAkademicki(rokAkademicki: 3.0)
student1.setNumerIndeksu(numerIndeksu: 70451)
student1.dodajOcene(ocena: 5.0)
student1.dodajOcene(ocena: 5.0)
student1.dodajOcene(ocena: 5.0)
student1.getInfo()
// Zad. 3
import Foundation
class Restaurant {
  var nazwa: String = ""
  var godzinyOtwarcia: String = ""
  var nrKontaktowy: String = ""
  var adres: String = ""
  var wspolrzedneGeo: String = ""
  var miasto: String = ""
  var stronaWww: String = ""
  func getInfo(){
   print("Nazwa: \(nazwa)\nGodziny otwarcia: \(godzinyOtwarcia)\nTel: \(nrKontaktowy)\nAdres/współrzędne geograficzne: \(wspolrzedneGeo) \(miasto)\nStrona WWW: \(stronaWww)")
  }
 init(nazwa: String, godzinyOtwarcia: String, nrKontaktowy: String, adres: String = "", wspolrzedneGeo: String = "", miasto: String, stronaWww: String){
   self.nazwa = nazwa
   self.godzinyOtwarcia = godzinyOtwarcia
   self.nrKontaktowy = nrKontaktowy
   self.adres = adres
   self.wspolrzedneGeo = wspolrzedneGeo
   self.miasto = miasto
   self.stronaWww = stronaWww
 }
}
class IceCreamStand: Restaurant {
  var mobilna: Bool = false
  var flavors = [String]()
  func dodajSmak(smak: String){
    flavors.append(smak)
  }
  func dostepneSmaki(){
   print("Dostępne smaki:")
   for i in flavors {
     print(i)
   }
  }
override func getInfo() {
  super.getInfo()
  var mobilnosc = ""
  if mobilna == true {
    mobilnosc = "Tak"
  }
  else {
    mobilnosc = "Nie"
  }
  print("Czy obiekt jest mobilny (może się poruszać): \(mobilnosc)")
}
init (nazwa: String, godzinyOtwarcia: String, nrKontaktowy: String, adres: String = "", wspolrzedneGeo: String = "", miasto: String, stronaWww: String, mobilna: Bool){
  super.init(nazwa: nazwa, godzinyOtwarcia: godzinyOtwarcia, nrKontaktowy: nrKontaktowy, adres: adres, wspolrzedneGeo: wspolrzedneGeo, miasto: miasto, stronaWww: stronaWww)
  self.mobilna = mobilna
}
}
class CoffeeShop: Restaurant {
  var coffee = [String]()
  var kartaRabatowa: Bool = false
  func dodajKawe(kawa: String) {
    coffee.append(kawa)
  }
  func dostepneKawy() {
   print("Dostępne kawy:")
   for i in coffee {
     print(i)
   }
  }
override func getInfo() {
  super.getInfo()
  var karta = ""
  if kartaRabatowa == true {
    karta = "Tak"
  }
  else {
    karta = "Nie"
  }
  print("Karta rabatowa na pieczątki przy zakupie kaw: \(karta)")
}
  init (nazwa: String, godzinyOtwarcia: String, nrKontaktowy: String, adres: String = "", wspolrzedneGeo: String = "", miasto: String, stronaWww: String, kartaRabatowa: Bool){
  super.init(nazwa: nazwa, godzinyOtwarcia: godzinyOtwarcia, nrKontaktowy: nrKontaktowy, adres: adres, wspolrzedneGeo: wspolrzedneGeo, miasto: miasto, stronaWww: stronaWww)
  self.kartaRabatowa = kartaRabatowa
}
}
var budka = IceCreamStand(nazwa: "Fruteiro Prawdziwe Lody", godzinyOtwarcia: "Pon-Sob 8:00 - 16:00", nrKontaktowy: "+48 123 456 789", wspolrzedneGeo: "51.110595, 17.044363", miasto: "Wrocław", stronaWww: "https://www.fruteiro.it/", mobilna: true)
budka.getInfo()
budka.dodajSmak(smak: "śmietanka")
budka.dodajSmak(smak: "wanilia")
budka.dodajSmak(smak: "czekolada")
budka.dodajSmak(smak: "smerfowe")
budka.dodajSmak(smak: "guma do żucia")
budka.dodajSmak(smak: "mleczna malina")
budka.dodajSmak(smak: "mleczna truskawka")
budka.dostepneSmaki()
print()
var starbucks = CoffeeShop(nazwa: "Starbucks", godzinyOtwarcia: "Pon-Nd 9:00 - 21:00", nrKontaktowy: "+48 123 456 789", adres: "plac Grunwaldzki 23", miasto: "Wrocław", stronaWww: "https://www.starbucks.pl/", kartaRabatowa: true)
starbucks.getInfo()
starbucks.dodajKawe(kawa: "Espresso")
starbucks.dodajKawe(kawa: "Ristretto")
starbucks.dodajKawe(kawa: "Espresso doppio")
starbucks.dodajKawe(kawa: "Cappuccino")
starbucks.dodajKawe(kawa: "Macchiato")
starbucks.dodajKawe(kawa: "Latte")
starbucks.dostepneKawy()