#Experimentieren und Evaluieren

## Allgemein

---
## Vorlesung 1 - Einführung Experimentplanung / Statistik

**Hypothese**: kommt von "Unterstellung"

**Verifikation**: Formaler logischer Beweis (ist die Spezifikation richtig?)

**Validierung**: Prüfen des Modells (ist es im Wertebereich gültig?)  
    Bsp: Ein künstlicher Dummy für Crash-Tests. Ist der Dummy eine realistische Abbildung?

* Richtiges falsch implementiert -> nicht validiert
* Falsches richtig implementiert -> Spezifikation falsch - nicht verifiziert

* Folie 17  
    Dieser Fehler ist zufällig  
    Ein systematischer Fehler wäre zb. ein ungenaues Lineal

* Absoluter Fehler hat Masseinheit
* Relativer Fehler ist der Bezug des Fehler auf den gemessenen Wert

---
## Vorlesung 2 - Statistische Grundbegriffe und  Ablauf der statistischen Untersuchung

* Folie 3  
    Utilization: Verwendungsgrad der Maschine (0%-100%, bzw. 0 bis 1)  
    auch Blockierungs- bzw Wartewahrscheinlichkeit

**Grundgesamtheit**: zb. alle Maschinen in einer Produktionskette

**Merkmal**: Information
  
**Merkmalsträger:** zb. Maschine mit diesem Merkmal  

**Merkmalswert**: Wert der Messung

**Nominalskala**: Werte, die gleichbedeutend sind (zb. Geschlecht)

**Ordinalskala**: Werte mit Rang (zb. Schulnoten (=qualitative Merkmale))

**Metrische Skala**: Als reelle oder ganze Zahlen (diskret) abgetragen, immer quantitative Werte

* Folie 10:  
    Bsp. Temperatur: Celsius ist ein Intervall, "zufälliger" Nullpunkt.  
    Kelvin hat einen absoluten Nullpunkt -> Verhältnisskala

* Folie 12:  
    **Datenverarbeitung**:  
    - Sind die Daten korrekt, oder wurden grobe Fehler gemacht?  
    - Einschränkung der Datenmengen  
        zb. Mittelwert berechnen  
        Intervalle festlegen


* Folie 13:  
    relative Häufigkeit ist auch die Wahrscheinlichkeit  
    Summe der relativen Häufigkeiten = 1

* Folie 14:  
    **akkumulierte Häufigkeit**: von kleinen nach grösseren Werten immer die Werte zusammen addieren

* Fragen:  
Konkretisierung des Ziels: Problem ermitteln, Ziel festlegen, Messungen einschränken


---
## Vorlesung 3 - Häufigkeitsverteilung
* Folie 5: Median
    - Wenn Anzahl Merkmalswerte gerade, wird der Mittlerwert der beiden mittleren Werte genommen
    - Rechenansatz: Über Ähnlichkeit von kleinem Dreieck zum grossen Dreieck

!!! note "Literatur"
    Bourier Kapitel 3.1 und 3.2

---
## Vorlesung 4 - Zeitreihen, Regression, Korrelation

* Folie 5:  
    Gleitender Mittelwert:
    1. Mittelwert der ersten 3 Werte: 5, 8, 7 = 6.66 -> bei `t=2` eintragen
    2. Mittelwert Zahlen 2-4: 8 + 7 + 8 = 23/3 = 7.66 -> bei `t = 3` eintragen
    2. Mittelwert Zahlen 3-5: 7 + 8 + 9 = 8 -> bei `t = 4` eintragen  
    ...

    Je grösser das Messfenster (hier 3 Werte), desto mehr wird geglättet

* Folie 6:  
    Eine Funktion durch die punktewolke legen (bei linearer Regression eine lineare Funktion)  
    **Ziel**: Einen funktionalen Zusammenhang der Messwerte herausfinden, dass man auch Zwischenwerte ungefähr bestimmen kann

* Folie 13:
    - Wenn beide Werte xi und yi über oder unter dem Mittelwert sind, gibt es eine positive Korrelation. Wenn nur einer davon unter dem Mittelwert ist, gibt es eine negative Korrelation
    - Bild unten rechts: vollkommen unkorreliert

* Folie 15:  
    Wenn r = 0, heisst es nur, dass es keinen linearen Zusammenhang gibt

* Folie 16  
    \( \bar X = 0 \)  
    \( \bar Y = 2 \)

\( \sigma XY = 0 \)

\( \rightarrow r = 0 \)  
Es gibt aber trotzdem eine Korrelation, aber keine lineare!

**Kontrollfragen:**  
- Scheinkorrelation: Korrelation, die aber keine ist ("Correlation doesnt equal causation")  
- Gleitenden Durchschnitt: Glätten der Daten, um einen Trend zu erkennen

---
## Vorlesung 5 - Wahrscheinlichkeit / Kombinatorik

* Folie 4:  
    2) Es gibt unendlich viele reelle Zahlen (\( \mathbb R\)) in einem Intervall (kontinuierlich)

* Folie 6:  
    Das Roulette bildet ein System mit 6 Ereignissen, jedes Ereignis ist eine Teilmenge von \(\Omega\)
    
---
## Vorlesung 6 - Zufallsvariable und Verteilungen
Kontrollfragen:

1. Funktion von Folge zufälliger Werte
2. stetig: unendlich viele zwischenwerte
3. seed = startwert, Zahlen haben statistische Eigenschaften, sind reproduzierbar
4. Sequenzlänge: Anzahl der Zufallszahlen
5. Weil unterschiedliche Prozesse simuliert werden, die unterschiedlich verteilt sind
6. Ja, hat grosse Auswirkungen. Wenn Fehler in Datenanalyse geschehen, gibt es auch Fehler im Resultat

!!! info "Literatur"
    Bourier 7.1.1 - 7.1.3, 7.2.1 - 7.2.3
    
---
## Vorlesung 7 - Grundlagen schliessende Statistik

* **Folie 4**
    * Schliessende Statistik: Man kennt die Realisierungen (durch Experiment), sucht aber die Verteilungsfunktion
    * Mit vielen Messungen nähert man sich charakteristischen Grössen an
* **Folie 5**
    * Charakteristische Grössen können errechnet werden. Ist das dann aber allgemeingültig?
    * Experimente sind nur Stichproben
    * Entscheidung durch Vergleich dieser errechneten Grössen und der Theorie
* **Folie 12**
    * t-Verteilung ist etwas "pessimistischer" als Normalverteilung
* **Folie 14**
    * Varianz: Wenn \(n \rightarrow \infty\), wird die Varianz gegen 0. D.h wenn die Stichprobe die gesamte Grundmenge erfasst, ist die Varianz 0

---
## Vorlesung 8 - schliessende Stat. & Schätzverfahren
### Folien 7. Grundlagen der schliessenden Statistik

Siehe Handnotizen

!!! info "Literatur"
    * Bourier Kapitel 8
    * Kommentierte Formelsammlung, Skripteserver
    
### Folien 8. Schätzverfahren
Verfahren, wenn \(\mu\) und \(\sigma\) unbekannt sind.

* **Folie 5**
    * \(\hat T\) ist der Schätzwert
    * \(T\) ist der richtige Wert
* **Folie 6**
    * Differenziere: \(\frac 1n \sum{(x_i^2 - 2x_i\hat\mu + \mu^2)}\)
    * \(-\frac 1n \sum{2x_i + 2\mu} = 0\)
    * \(\mu = \frac 1n \sum x_i = \overline x\)

## Vorlesung 9 - Schätzverfahren (2)
Geänderte Folien "8.Schätzverfahren+.pdf"

Siehe Handnotizen

!!! info "Literatur"
    Bourier Kapitel 9

---
## Vorlesung 10 - Testverfahren
Problem: Wenn ein zweites Experiment durchgeführt wird, sind die Ergebnisse dann tatsächlich besser? Sind sie  signifikant besser?

* **Verteilungs- bzw. Anpassungstest**
    * Bei Simulationen relevant, da die Zufallszahlen einer Verteilungsfunktion gehorchen sollen
* **Folie 5**
    * \(1 - \alpha\) ist die Wahrscheinlichkeit, dass die Zahl innerhalb des Intervalls ist, bzw \(\alpha\), dass sie ausserhalb ist
* **Fehlerarten**
    * Erste Art: Hypothese falscherweise ablehnen
    * Zweiter Art: Hypothese falscherweise annehmen
        * Je näher Hypothese und wahrer Wert zusammen liegen, desto höher ist die Fehlerwahrscheinlichkeit

Siehe Handnotizen

* Eine Signifikanz feststellen
* Nullhypothese: Annahme, die angenommen oder abgelehnt werden soll 
* Signifikanzzahl: Irrtumswahrscheinlichkeit. Bereich, in der wir die Hypothese an- oder ablehnen
* Testentscheidung: Wenn wir Annahmebereich verlassen, wird sie abgelehnt, sonst angenommen

* Fehlerarten: s. oben
* Einseitiger Parametertest: Nur auf untere oder obere Grenze überprüfen
* Gewisse Anzahl Stichproben nötig 

    
!!! info "Literatur"
    Bourier Kapitel 10
---   
## Vorlesung 11 - DoE Einführung

Übersicht der ganzen Zusammenhänge: siehe Handnotizen
