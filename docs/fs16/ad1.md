# Algorithmen und Datenstrukturen

## Allgemein

---
## Vorlesung 1 - Intro / OO-Design
* Error-Left  
    Error-Zeitpunkte: Compilation, Linking, Runtime  
    Ziel: zb. von Runtime zu Compilation Errors, zb. bei Generics: Vorher Runtime-Fehler, mit Generics Compilation-Errors

* Folie 7: Divide-and-conquer:
    Problem in einzelne Teilprobleme teilen und diese einzeln lösen

---

## Vorlesung 2 - Arrays / LinkedLists / Analyse von Algorithmen

* Arrays  
    \+ Schneller Zugriff (bei random access)  
    \- Feste Grösse

* Singly-Linked vs Doubly-Linked List  
    \- Im schlimmsten Fall braucht es nur halb so viel Such-Operationen bei der Doubly-linked-List (wenn Element in der Mitte)

---
## Vorlesung 3 - Algorithm Analysis / Rekursion

* Folie 30:  
    Big-Omega ist die Umkehrung von O(n): f(n) >= c * g(n)  
    big-Theta: "Bandbreite", in der Komplexität ist

* Folie 31:  
    Asympotisch: Für sehr grosse zahlen

### Rekursion
* Stack-Size ist in der JVM standardmässig 1MB, kann aber angepasst werden unter Run Configuration - Java-Argument: "-Xss2m" für 2 MB Stack-size

* Folie 12  
    Bei n=123 ist Ausgabe "321"

* Design-pattern  Adapter:
    1. Variante: Komposition: Interface implementieren, bestehende Klasse verwenden (Wrapper)
    2. Variante: Vererbung: Ein Interface implementieren und bestehende Klasse vererben (Klassen-Adapter)

---
## Vorlesung 4 - Rekursion
* Folie 28:  
    **Vorteil** von Klassen-Adapter hier: Weniger "boiler-plate" code, Methoden wie "size()" müssen nicht neu implementiert werden  
    Grosser **Nachteil**: Alle Methoden von Vector werden geerbt, also auch solche, die eigentlich nicht zu einem Stack gehören dürfen (zb. set(), removeElementAt(), ...)

* Objekt-Adapter für robuste Software

* Klassen-Adapter ist schneller (weniger boiler-plate), dafür hat man mehr Kontrolle über die verfügbaren Methoden

!!! note
    Vererbung wird zu Compile-Time festgelegt, bei der Komposition wird erst zur Runtime das objekt erstellt, es ist also flexibler

---
## Vorlesung 5 - Rekursion II
* Folie 41:
    Mit diesem Algorithmus gibt es weniger multiplikationen, da nicht von 1 bis n eine Multiplikation gemacht werden muss, sondern n wird jeweils halbiert:
    $$3^9 = 3^6 * 3^6$$
    $$3^{19} = 3 * 3^9 * 3^9$$
Dies ist **keine** Endrekursion!

* Folie 50:  
    Keine Endrekursion, da das Ergebnis erst beim Stack-Abbau berechnet wird

* Folie 52:  
    Dies ist Endrekursion, da das Ergebnis schon nach dem Aufbau der Rekursion feststeht

* Folie 66:  
    Dies ist \(O(n)\)! Weil die Lösungsmenge nicht aufgeteilt wird, sondern nur "divide and conquer" (zb. bei Parallelisierung sinnvoll)  
    **Keine** Endrekursion  
    \(1 + 2 + 4 ... + \frac n4 + \frac n2 + n = 2n -1\) rekursive Aufrufe

* Folie 68  
    Alternative mit Integer:
    $$floor: \frac n2$$
    $$ceil: \frac n2 + n % 2$$

---
## Vorlesung 6 - Stacks
* **Folie 5**
    * In diesem Beispiel gibt pop() bei leerem Stack *null* zurück
* **Folie 6**
    * *java.util.Stack<E>.push()* gibt das Item gleich wieder zurück
    * Gibt *EmptyStackException*, falls Stack leer ist (bei pop() und peek())
* **Folie 8**
    * EmptyStackException ist RuntimeException, also **unchecked** (Designfrage)
* **Folie 11**
    * PC (Programmzähler) zeigt auf Position nach dem Funktionsaufruf (Rücksprungadresse). Hier zb. zeigt PC = 1 auf die Zeile nach `bar (k);`
* **Folie 17**
    * Das gepopte Element wird auf *null* gesetzt, damit die Referenz entfernt wird und der GC aufräumen kann.
* **Folie 18**
    * list.addFirst() ist \(O(1)\), da einfach ein neues Element an den Anfang "gehängt" wird.
    * Würde das oberste Element als letztes angehängt, wäre es \(O(n)\), da die ganze Liste durchiteriert werden müsste
* **Folie 31**
    * Im Java Doc steht, dass statt java.util.Stack besser *Deque* benutzt werden soll
    * Problem: Der Stack erbt alle Methoden von *Vector* und kann somit auch zb. "SetElementAt", also mehr als ein Stack eigentlich können sollte
    * **Merksatz** Design: Wenn B von A erbt, fragen: Ist B auch ein A?
    * Hier: Ist Stack auch ein Vektor? <- Nein

---
## Vorlesung 7 - Queues

* "DeQueue", "Deque (sprich Decked)": Double ended Queue
* Nicht zu verwechseln mit der Operation "Dequeue"!
* NodeDequeue: Eine leere Queue hat trailer und header (2 Nodes)
    * Muss nicht immer auf null testen, sondern nur, ob man am "Rand" ist
