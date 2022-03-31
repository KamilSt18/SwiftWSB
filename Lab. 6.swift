import Foundation
// Zad. 1
func liczKolo(promien: Double){
  let pole = 4.0*Double.pi*pow(promien, 2)
  let objetosc = (4/3)*Double.pi*pow(promien, 3)
  print("Pole:", round(pole))
  print("Objętość:", round(objetosc))
}
func liczStozek(promien: Double, wysokosc: Double){
  let objetosc = (1/3)*Double.pi*pow(promien, 2)*wysokosc
  print("Objętość:", round(objetosc))
  let l = sqrt(pow(wysokosc, 2)+pow(promien, 2))
  let pole = Double.pi*promien*(promien+l)
  print("Pole:", round(pole))
}
func liczSzescian(bok: Double) {
  let pole = 6*pow(bok,2)
  let objetosc = pow(bok, 3)
  print("Pole:", round(pole))
  print("Objętość:", round(objetosc))
}

// Kolo
print("Koło")
liczKolo(promien: 6.0) // podaj promień
// Stożek
print("Stożek")
liczStozek(promien: 4.0, wysokosc: 8.0) // podaj promień, wysokość
// Sześcian
print("Sześcian")
liczSzescian(bok: 3.0) // podaj bok
// Zad. 2
func BMI(masa: Float, wzrost: Float){
  let liczBMI = masa/(Float(pow(Double(wzrost), 2))) * 10_000 // dla sensownego wyniku
  if (liczBMI < 18.5){
    print("Masz niedowagę")
  }
  else if (18.5 < liczBMI && liczBMI < 24.99){
    print("Twoja waga jest prawidłowa")
  }
  else if (liczBMI > 25.0){
    print("Masz nadwagę!!!")
  }
}
BMI(masa: 100.0, wzrost: 190.0)
BMI(masa: 65.0, wzrost: 175.0)
BMI(masa: 50.0, wzrost: 175.0)
// Zad. 3
func Convert(liczbaInt: Int = 0, liczbaString: String = "", system: Int, systemWew: Int = 0){
  if (liczbaInt > 0) {
    print(String(liczbaInt, radix: system))
  }
  else {
    let liczba: Int = Int(liczbaString, radix: systemWew)!
    print(String(liczba, radix: system))
  }
}
Convert(liczbaInt: 255, system: 2) // Decimal to binary
Convert(liczbaInt: 255, system: 16) // Decimal to hexadecimal
Convert(liczbaString: "11111111", system: 16, systemWew: 2) // Binary to hexadecimal
Convert(liczbaString: "face", system: 2, systemWew: 16) // Hexadecimal to binary

Convert(liczbaString: "255", system: 16, systemWew: 8) // Octal to hexadecimal

Convert(liczbaString: "ad", system: 8, systemWew: 16) // Hexadecimal to octal
// Zad. 4
print("Podaj pojemność podaną przez producenta [GB]:")
var poj = Double(readLine()!)!
var liczbaBajtow = poj * 1000 * 1000 * 1000
var relPoj = liczbaBajtow / 1024 / 1024 / 1024
print("Realna pojemność [GB]:",Double(round(100*relPoj)/100))
// - system dziesiątkowy używany przez producentów dysków twardych: 1KB = 1000 bajtów
// - system dwójkowy używany przez system operacyjny oraz BIOS 1KB = 1024 bajtów
// Zad. 5
func Przelicz(kwota: Double, wejscie: String, wyjscie: String){
  if (wejscie.uppercased() == "THB" && wyjscie.uppercased() == "USD") {
    print(round(kwota * 0.0300831*100)/100)
  }
  else if (wejscie.uppercased() == "USD" && wyjscie.uppercased() == "THB") {
    print(round(kwota / 0.0300831*100)/100)
  }
  else if (wejscie.uppercased() == "BTC" && wyjscie.uppercased() == "USD") {
    print(round(kwota * 42951.64*1000)/1000)
  }
else if (wejscie.uppercased() == "USD" && wyjscie.uppercased() == "BTC") {
    print(round(kwota / 42951.64*1000)/1000)
  }
else if (wejscie.uppercased() == "BTN" && wyjscie.uppercased() == "USD") {
    print(round(kwota * 0.013532074*1000)/1000)
  }
else if (wejscie.uppercased() == "USD" && wyjscie.uppercased() == "BTN") {
    print(round(kwota / 0.013532074*1000)/1000)
  }
else if (wejscie.uppercased() == "MRO" && wyjscie.uppercased() == "USD") {
    print(round(kwota * 0.00274833*1000)/1000)
  }
else if (wejscie.uppercased() == "USD" && wyjscie.uppercased() == "MRO") {
    print(round(kwota / 0.00274833*1000)/1000)
  }
else if (wejscie.uppercased() == "ETH" && wyjscie.uppercased() == "USD") {
    print(round(kwota * 3281.65*1000)/1000)
  }
else if (wejscie.uppercased() == "USD" && wyjscie.uppercased() == "ETH") {
    print(round(kwota / 3281.65*1000)/1000)
  }
}
Przelicz(kwota: 300.0, wejscie: "THB", wyjscie: "USD")
Przelicz(kwota: 100.0, wejscie: "USD", wyjscie: "THB")
Przelicz(kwota: 5.0, wejscie: "BTC", wyjscie: "USD")
Przelicz(kwota: 1000.0, wejscie: "USD", wyjscie: "BTC")
Przelicz(kwota: 300.0, wejscie: "BTN", wyjscie: "USD")
Przelicz(kwota: 100.0, wejscie: "USD", wyjscie: "BTN")
Przelicz(kwota: 300.0, wejscie: "MRO", wyjscie: "USD")
Przelicz(kwota: 100.0, wejscie: "USD", wyjscie: "MRO")
Przelicz(kwota: 5.0, wejscie: "ETH", wyjscie: "USD")
Przelicz(kwota: 1000.0, wejscie: "USD", wyjscie: "ETH")
// Zad. 6
func CelsjuszNaFahrenhait(sCelsjusz: Double) -> Double {
  let temp = round((9/5)*sCelsjusz+32)
  return temp
}
func SprawdzWode(temp: Double) {
  if(temp <= 32){
    print("Woda zamarza.")
  }
  else if(temp >= 212) {
    print("Woda wrze.")
  }
  else {
    print("Nic się nie dzieje z wodą.")
  }
}
func KelwinNaFahrenheit(sKelwin: Double) -> Double {
  let temp = round(((sKelwin-273.15)*1.8000+32.0)*100)/100
  return temp
}
func FahrenheitNaKelwin(sFahrenheit: Double) -> Double {
  let temp = round(((sFahrenheit+459.67)*(5/9))*100)/100
  return temp
}
func KelwinNaCelsjusz(sKelwin: Double) -> Double {
  let temp = round((sKelwin-273.15)*100)/100
  return temp
}
func CelsjuszNaKelwin(sCelsjusz: Double) -> Double {
  let temp = round((sCelsjusz+273.15)*100)/100
  return temp
}
let temp1 = CelsjuszNaFahrenhait(sCelsjusz: 0)
SprawdzWode(temp: temp1)
let temp2 = CelsjuszNaFahrenhait(sCelsjusz: +50)
SprawdzWode(temp: temp2)
let temp3 = CelsjuszNaFahrenhait(sCelsjusz: +100)
SprawdzWode(temp: temp3)

let test1 = KelwinNaFahrenheit(sKelwin: 100.0)
print(test1)
let test2 = FahrenheitNaKelwin(sFahrenheit: -150)
print(test2)
let test3 = KelwinNaCelsjusz(sKelwin: 310.15)
print(test3)
let test4 = CelsjuszNaKelwin(sCelsjusz: 100.0)
print(test4)