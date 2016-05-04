# Algorithmen und Datenstrukturen

## Prüfungsinfo

* Alle Unterlagen erlaubt

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

---
## Vorlesung 8 - Lists (1)

Unterschied zu Qeues:

* Positionsangabe
* Implementation kann verschieden sein

* **Folie 3**
    * `E set(i, e)` gibt das alte Element zurück
    * Ebenso `E remove(i)`
    * Fehler in Folie: add(i, e) wirf nur eine Exception wenn \(i \notin [0, size()]\)
* **Folie 5**
    * Achtung bei `set(2, C)`, es kann mit set() nichts hinten an der Liste angehängt werden

* **Folie 10**
    * Dies ist nicht java.util.ArrayList!
    * Size-Attribut für schnellere Performance
* **Folie 20**
    * Für Array-Kopieren `java.lang.System.arracopy` verwenden (Native C-Funktion)
* **Folie 23**
    * k ist die Anzahl Umkopierungen
    * \(n + \frac{c*k*(k+1)}{2}\) (Arithmetische Reihe)
* **Folie 25**
$$1 + (c+1) + 2(c+1) + 3(c+1)...$$
    * \(c+1\) auf \(c\) vereinfachen
* **Folie 26**
$$ 2^{\log(n)+1} = 2^{\log(n)}*2^1 = n\cdot2 $$
* **Folie 30**
    * Hier wird das Array jeweils um 1.5x vergrössert
    * Ammortisierungszeit auch \(\frac{O(n)}n = O(1)\)
* **Folie 37**
    * p, q, r, usw. sind Positions-Objekte, die Zahlen die Inhalte davon (mit `Position.getElement()` darauf zugreifen)
    * Vorteil mit Positionsobjekte: Set(), remove() etc. sind \(O(1)\), da nur das Objekt verändert werden muss, nicht durchiteriert bis zur entsprechenden Position in der Liste

* **Folie 46**
    * trailer und header nodes sind nicht Teil der liste, es werden nur die Elemente dazwischen zurück gegeben

---
## Vorlesung 9 - Lists & Trees

### Lists
* **Folie 50**
    * addBetween() ist eine private Method
    * Weil node davor und danach stimmen muss; gefährlich, wenn Klasse public wäre
    
* Das Position Interface wird verwendet, damit für den Benutzer nur `getElement()` exposed wird, und nicht Node-Operationen wie `getNext()` oder `getPrevious()`. So wird die interne Struktur isoliert

* `validate()` stellt sicher, dass die Position eine Node ist und noch in der Liste ist (noch ein `next` hat). Voraussetzung ist, dass die Referenzen bei remove() aus der Liste auf null gesetzt werden.

* **Folie 61**
    * Hier ist die Liste "zirkulär", d.h wenn mit header.getNext() durchiteriert wird, landet man irgendwann wieder auf dem header (darum der for-loop dementsprechend)
* **Folie 63**
    * Aus Performance-Gründen. Die Methoden werden für die entsprechenden Datenstrukturen optimiert. Funktionieren würde es auch ohne Überschreiben, aber viel langsamer

* **Folie 64**
    * Korrektur: `addFirst()` ist bei ArrayList \(O(n)\)
    * `indexOf(p)` ist bei ArrayList nur \(O(1)\) wenn "p" Positions-Objekte sind 


---
## Vorlesung 10 - Iteratoren & Trees
### Iterators
* **Iterator-Varianten**
    * Snapshot-Iterator
        * Vor dem Iterieren eine Kopie erstellen
        * \(O(n)\)
    * Lazy-Iterator
        * Direkt auf der Datenstruktur iterieren
        * Wenn Datenstruktur verändert wird, kann der Iterator unerwartet reagieren
        * Bei java api verwendet
        * Java Framework wirft exception bei `next()`, wenn Datenstruktur verändert wurde
        * Java hat Iterator.remove(), um das aktuelle Element zu löschen
        * \(O(1)\)
* **Implementierung**
    * `NoSuchElementException`
        * Wenn `next()` false ergibt, aber `next()` aufgerufen wird
    * `UnsupportedOperationException`
        * Iterator hat remove() nicht implementiert, zb. wenn Liste mit `Array.asList()` erstellt wird (AbstractList)
    * `IllegalStateException`
        * Wenn zwei mal hintereinander `remove()` aufgerufen wird

### Trees
Tress sind abstrakte, hierarchische Strukturen bestehend aus Knoten in Eltern-Kind Relationen

* **Eigenschaften**
    * Internene Knoten: Knoten mit mind. 1 Child
    * Externer Knoten: Blattknoten (Leaf-Nodes), Knoten ohne Kinder
    * Tiefe: Anzahl Vorgänger
    * Höhe eines Knotens: Höhe im Baum von oben. Leaf-Nodes: 0
    * Höhe eines Baums: Höhe der Wurzel (Root)
    * Sibling: Geschwisterknoten
* **Baum-Traversierung** (jeden Knoten "besuchen")
    * Preorder: Jeder Knoten vor seinen Childs besuchen, wie der Ausdruck eines Dokuments
    * Postorder: Jeder Knoten wird nach seinen Children besucht
* **Binäre Bäume**
    * Haben pro Knoten ein geordnetes Paar von children (left, right)
    * Jeder Knoten hat (in einem echten Binärbaum) ein Sibling (ausser root)
    * Balancierter, "Echter" Binärbaum: Jeder Knoten hat genau zwei Children
    * Unbalanciert: Das "Gewicht" liegt auf einer Seite
