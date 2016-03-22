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
Merkmalsträger: zb. Maschine mit diesem Merkmal  
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
