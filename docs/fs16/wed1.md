# Web Engineering + Design
## Allgemein

---
## Vorlesung 5 - CSS (1)
* **Folie 8:**  
    [Erste Website von Cern](info.cern.ch)  
    HTML ist nicht entworfen, um Aussehen festzulegen, sondern nur, um Informationen zu **strukturieren**  
    Die Struktur wird von Styling getrennt

* **Folie 15**  
    * Cascading: Verhalten, wenn mehrere Styles auf das gleiche Element angewendet werden  
    * Seit CSS3 mit Modulen aufgebaut für Weiterentwicklungen, so können auch einzelne Module weiterentwickelt werden

* **Folie 18-27 - CSS anwenden**
    * Mit Attribut `style` (z.B. `style="color: red"`)
    * Zum ausprobieren: CSS-Styles in den Developer Tools ändern
    * Mit style-Tag im `<head>`:  
``` html
<style>
    p {
        color: red;
    }
</style>
```
Variante mit externem File:
``` html
<head>
    <link rel="stylesheet" href="file.css">
    <link rel="stylesheet" href="file.css" media="screen"> /* Für Unterscheidung Bildschirm / Ausdruck */
    <link rel="stylesheet" href="file-print.css" media="print">
</head>
```

* **Folie 33**  
    Eine `id` sollte im HTML-Dokument nur einmal vorkommen

* **Folie 35 - Kombinatoren**
    * Kindselektor: z.B. `body > ul` - Wird auf Kind von body angewendet
    * Nachfahrenselektor: `body ul` - Wird nur angewendet, wenn  oberhalb von ul ein Body steht.
    * [Wiki](https://wiki.selfhtml.org/wiki/CSS/Selektoren/Kombinator)

* **Folie 37**  
    1. Regel 1 und 2
    2. Regel 2 (weil `li` nicht direktes Kind von `ol` ist)
    3. Regel 1 und 2

* **Folie 38**
    1. Regel .1 & 3
    2. Regel 3
    3. Regeln 2 & 3
    4. Regeln 2 & 3

* **Folie 41**  
    * `li > *` selektiert alle Kinder von `li`
    * `body * span` selektiert `span`, denen `body` bevorsteht aber mind. 1 Tag dazwischen ist

* **Folie 46 - 47**  
    * `a[Attribute]` selektiert alle `a` Tags, die das Attribut `Attribute` gesetzt haben
    * Mit z.B. `a[href=v]` überprüft ob der Wert des Attributs = `v` ist

* **Folie 48**
    * Regel 1 gilt für "Absenden"-Button
    * Regel 2 gilt für alle `li` in der ersten Liste ausser das erste, da "Berlin" dort nich allein steht
    * Regel 3 gilt für die ersten beiden `li`, da `hreflang` mit `de` startet

* **Folie 49**
    * Regel 1 gilt für alle http-Links
    * Regel 2 gilt für alle link 2 (nicht 4, da es mit / anfängt)
    * Regel 3 gilt für Link 3 (`wiki.selfhtml.org`), aber nicht für link 4, da `wiki` case-sensitive ist

* **Folie 51**
    * Mit normalen Selektoren kann man keine Teile eines Elements selektieren, nicht z.B. nur den ersten Buchstaben
