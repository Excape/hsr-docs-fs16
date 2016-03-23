# Betriebssysteme 2
## Allgemein

---
## Vorlesung 1 - MS Windows GUI

Im Buch werden deutsche Begriffe verwendet, in der Vorlesung englische (Übersetzung im Anhang)

* **2 Programmiermodelle**
    * Lineare Programmierung: Programmgesteuert, zb. Skripte
    * Ereignisgesteuert (Event-driven): Programm reagiert auf Ereignisse (zb. Mausklick). Beispiel: Key-tool (zertifikate erzeugen). Benutzer sagt Appl., was sie tun soll (Inversion of Control)
        * Beim Start wird das GUI aufgebaut
        * In Endlosschleife wird Event verarbeitet
        * Blockieren und auf nächstes Event warten
        * Ein Spezielles Event bricht Programm ab

* **Folie 10:**  
    `hPrevInstance` ist normalerweise null

* **Folie 11**
    * Ein Thread wird zum GUI-Thread nach CreateWindow()
    * sollten keine Operationen ausgeführt werden, die blockieren
    * Pro Thread können mehrere Fenster erzeugt werden (Thread von winMain() muss mind. 1 Fenster erzeugen)

* **Folie 14**
    * Message Queues sind verkettete Listen
    * Betriebssystem begrenzt grösse auf 10'000
    * mit WP_PAINT wird Fenster neu gezeichnet

* **Folie 23**
    * GET_X_LPARAM() ist ein Makro
    * Makro-Aufruf ist Platzhalter für Code, der vom Compiler eingesetzt wird
    * Aufruf macht bei Funktion oder Makro kein Unterschied

* **Folie 36**: Fensterhierarchie
    * Controls sich auch immer Child Windows (zb. Buttons)

---
## Vorlesung 2 - X-Window
Q&A: <http://tinyurl.com/X-Win-FS16>

Der X-Server zeigt das Fenster an, der Client ist die Applikation

* **Folie 119**:  
    Window Manager ist auf Folie remote, es kann aber mit dem XDMCP-Protokoll konfiguriert werden (kann auch neben X-Server laufen

* **Folie 133**:  
    Events werden von Root nach unten gereicht bis zum Zielfenster

* **Folie 135**:  
    Fensterrahmen werden vom Window manager gezeichnet

* **Folie 144**:
    Event muss zuerst von einem Fenster in event_mask aufgenommen werden, damit Events dieses Typs behandelt werden. Andere Events gehen jeweils an das übergeordnete Fenster (ausser es ist do_not_propagate_mask gesetzt)

---
## Vorlesung 3 - Speichersystem
**Ziel**: Mit Abwegung von Kosten und Leistung eine Speicherhieararchie wählen

**Thema**: Speicherhierarchie (Lokalitätseffekt), Hardwarestruktur (Cache Funktionsweise, grundlegende Speicherprinzipien)

* **Folie 2:**  
    Warum nicht überall den schnellsten Speicher benutzen?  Wäre zu teuer

* **Folie 6:**
    * CPU kann von Main Memory direkt lesen
    * Input/Output (-> zb. Harddisk) ist Sekundär-Speicher
    * Daten im Sekundärspeicher werden zuerst in den Hauptspeicher geladen, damit sie die CPU benutzen kann

* **Folie 9:**
    * Schieberegister-Speicher: Serialisierung mit Hilfe eines Schieberegisters (Parallel/Seriell-Umwandung)
    zb. bei S-ATA verwendet

* **Folie 10: Assoziativ Speicher**:  
    Speicherinhalte über Inhalt adressiert

* **Folie 11:**
    * Muster identifiziert Teilinformation (nur der Teil mit der Maske aus dem Speicher ist relevant)
    * Maske: Diese Bits müssen übereinstimmen
    * Für jede Zeile prüfen, ob jedes Bit in der Maske im Muster gleich ist. Wenn ja -> Trefferbit = 1


    * Die Zeilen wo Treffer erzielt sind Resultate (auch mehrere möglich)
    * Gültigkeitsbit: Wenn 0, wird nie Treffer erzielt (dort ist kein Eintrag). Sonst könnte die Zahl 0 nicht abgelegt werden

* **Folie 14:**
    * Lokalitätseffekt: Programme nützen oft Speicher in kleinem Adressbereich
    * Daher ist ein Cache nützlich, häufig genutzte Daten können dort abgelegt werden

* **Folie 15:**  
    Zeitliche Lokalität: z.B. Mehrfache Zugriffe auf die gleiche Variable

* **Folie 16:**  
    SRAM: Statischer RAM, wird für Cache verwendet

**Write-Through:** Alle Inhalte im Cache sind auch im hauptspeicher

**Write-Back:** Inhalte vom Cache werden in den Hauptspeicher zurück geschrieben, sobald er aus Cache entfernt wird

* **Folie 26** - Bsp:  
    * Cache-Grösse: 10Kb
    * Programm-Grösse: 5 Kb
    * Programm wird 20x durchlaufen
    * das erste Mal kein Cache, danach 19x über den Cache

$$h = \frac {19 * 5 kb}{20 * 5 kb} = 0.95$$
-> = 95% effizient

---
## Vorlesung 4 - Heap

**Dynamischer Speicher** (aus SW-sicht): Speicher, der nur von teilen des Programms zugreifbar sind

`malloc()`: Speicher auf Heap reservieren  
`calloc()`: speicher reservieren, aber initialisiert  
`free()`: Speicher freigeben

* **Folie 41:**  
    A: Reserviere genau so viel Speicher, wie die Applikation will. Im Heap muss bekannt sein, wie gross eine Variable ist  
    B: Variablen in Grössenklassen aufteilen ("Pools").

* **Folie 49:**  
    Beinflussen im Programm: Speicher in der Reihenfolge freigeben, in der er reserviert wurde

* **Folie 50**  
    Zersötrung bei Überlauf: Wenn zb. Bereich A weiter schreibt als der reservierte Bereich, werden dessen Metadaten überschrieben

* **Folie 55:**  
    Nicht sicher, da beim "reinschreiben" in Bereich B die magische Zahl nicht unbedingt überschrieben werden muss -> Überlauf wird nicht erkannt

---
## Vorlesung 5 - Prozessadressräume / Realer Speicher

### Prozessadressräume

* **Folie 86:**
    * Programmcode und vorinitialisierte Variablen werden bei Programmstart in den Speicher kopiert
    * Environment-Region: Kopie der Umgebungsvariablen (jeder Prozess hat eigene Umgebungsvariablen)
    * Argument-Region: zb. Aufruf-Parameter

* **Folie 88:**  
    Memory Mapped File: Ein Teil eines Files im Memory ablegen, das Programm schreibt dann in den Speicher. Nur die ÄNderungen werden dann zurück auf die Harddisk geschrieben (geht nur bei virtualisiertem Speicher)
    
### Realer Speicher

**Monoprogrammierung:** Nur ein Programm gleichzeitig ausführbar  
**Multiprogrammierung:** Speicher wird in Partitionen aufgeteilt, Programme könnnen parallel lab. zufen

* **Folie 104:**  
    Feste Partitonen: Bei Start des Rechners Grösse festgelegt, danach nicht mehr verändert

* **Folie 105:**  
    Speichernutzung schlecht: für kleine Programme wird ein grosser Platz reserviert, evtl. hat dann ein Prozess mit mehr Speicheranforderung kein Platz mehr in den anderen Partitionen

* **Folie 106:**  
    Problem: prozess kann Queue nicht wechseln, obwohl eine Partiton frei wäre

* **Folie 108:**  
    Pro Prozess ein Schlüssel (Zahl) in ein Register geladen. Ein schlüssel wurde einer Partition zugeteilt, dann bei jedem Zugriff auf Speicherschutz überprüft
