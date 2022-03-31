import Foundation
// Zad. 1
for i in 1...100 {
   if i % 8 == 0{
       print(i)
   }
}
// Zad. 2
var wartosc: Int = Int(readLine()!)!
for i in (0...wartosc).reversed(){
   if i % 6 == 0 && i % 9 == 0{
       print(i)
   }
}
// Zad. 3
for i in (100...200){
   if i % 2 != 0 && i % 3 != 0{
       print(i)
   }
}
// Zad. 4
var silnia = 3
var suma = 1
for i in (1...silnia){
   suma = suma * i
}
print(suma)
// Zad. 5
var n: Int = 3
for i in (0...n){
   print(pow(2, Double(i)))
}
// Zad. 6
var liczby = [Int]()
var wylosowane = [Int]()
print("Podaj 5 liczb z zakresu 1-42:")
for _ in (1...6){
   liczby.append(Int(readLine()!)!)
   wylosowane.append(Int.random(in: 1...50))
}
var trafione: Int = 0
for i in liczby{
   for j in wylosowane{
       if i == j{
           trafione += 1
       }
   }
}
print("Podane liczby:", liczby)
print("Wylosowane:", wylosowane)
print("Trafione:", trafione)
// Zad. 7
var podanaLiczba: Int = 0
var liczby = [Int]()
var wylosowane = [Int]()
print("Podaj liczbę liczb(1-10): ")
var liczba = Int(readLine()!)!
for i in (1...liczba){
   print("Podaj \(i) liczbę: ")
   podanaLiczba = Int(readLine()!)!
   liczby.append(podanaLiczba)
}
for _ in (1...20){
   wylosowane.append(Int.random(in: 1...80))
}
var trafione: Int = 0
for i in liczby{
   for j in wylosowane{
       if i == j{
           trafione += 1
       }
   }
}
print("Podane liczby:", liczby)
print("Wylosowane:", wylosowane)
print("Trafione:", trafione)
// Zad. 8
var liczby = [Int]()
var wylosowane = [Int]()
print("Podaj 5 liczb z zakresu 1-42:")
for _ in (1...5){
   liczby.append(Int(readLine()!)!)
   wylosowane.append(Int.random(in: 1...42))
}
var trafione: Int = 0
for i in liczby{
   for j in wylosowane{
       if i == j{
           trafione += 1
       }
   }
}
print("Podane liczby:", liczby)
print("Wylosowane:", wylosowane)
print("Trafione:", trafione)
// Zad. 9
var wylosowane = [Int]()
for _ in (1...50){
   wylosowane.append(Int.random(in: 0...1))
}
for i in wylosowane{
   if i == 0{
       print("orzel")
   }
   else if i == 1 {
       print("reszka")
   }
}