# Web Engineering + Design
## Allgemein
---
## Vorlesung 1 - HTML p. 1
* **Folie 12** - Encoding
    * UTF-8 ist gleich wie ISO 8859-1, ausser es werden Sonderzeichen, z.B. Umlaute verwendet
    * Erstes Zeichen im UTF-8 File ist meist für Bytereihenfolge

---
## Vorlesung 2 - HTML p.2

"Fav-Icon" verlinken: 
```html
<link rel="icon" href="/icon.png" type="image/png" />
```
mit 32px x 32px

```html
<base href="http://www.my­page.tld" />
```
Relative Links werden an die Base angehängt

Empfohlene Metadaten: Autor, Beschreibung, Keywords

```html
<meta name="robots" content="noindex, nofollow" />
```
Crawler indexieren die Seite nicht (noindex) und folgen keinen Links (nofollow)

`http-equiv` Meta-Tags: header, die als HTTP-header ausgeliefert werden (zb. refresh, redirect, ...)  
Nicht geeignet für Produktion

Neue HTML5-Tags:  
`header`, `section`, `article`, `footer`  
Für Suchmaschinen / Accessibility Tools / ... zur besseren Auszeichnung

* **Folie 17:**
    * `aside`: Zusatzinformationen zur Seite (nichts mit dem Inhalt zu tun)
    * Eine Section braucht nicht zwingend ein header (validator gibt Warnung aus)
    * Header und Footer werden als header und footer der Seite gebraucht, aber auch pro Section 

* **Folie 20:**
    * Beispiel Time:  
        `<time datetime="2008-02-14 20:00">Valentines day</time>`
    * Beispiel abbr:  
        `<abbr title="World Health Organization">WHO</abbr>`

* **Folie 21:**  
    `<b>` und `<i>` wurden in html5 umdefiniert, damit es nicht mehr ein Aussehen beschreibt

* **Folie 22:**  
    Navigation nicht im Footer verwenden (stattdessen <aside> verwenden)

Mime-Types: <https://wiki.selfhtml.org/wiki/Referenz:MIME-Typen>

---
## Vorlesung 3 - HTML p. 3

Repetition Content model:

Table ist Flow-Content, p ebenfalls -> Table nicht in p verschachteln!

Prüfungsstoff: W3C-Spezifikation interpretieren können, welche Elemente verschachtelt werden können

HSR-WED1-HTML-4-Advanced.pdf

* **TABLE**
    * thead und tbody
    * caption für Beschriftung
    * colgroup: Spalten als klasse ansprechen (zb. für CSS)

* **IMG**
    * width, height als Original grössen angeben!
    * srcset für mehrere Bilder (zb. für Mobile), zusammen mit "sizes"

* **figure**
    * Beliebige Elemente verschachteln
    * mit `<figcaption>` eine Beschriftung darunter setzen

* **video**  
    mit "poster" ein Bild anzeigen lassen als Vorschaubild

* **form**  
    input in label verschachteln oder `<label for="id">` mit ID des input-fields

* **button**  
    statt input type=submit verwenden, damit kein Wert für den Button mitgeschickt wird (unnötig)

* **datalist:**  
    Werte als Autocomplete vorschlagen

* **pattern-Atrribut:**  
    Nach pattern der Wert des input-fields validieren
    
---
## Vorlesung 4 - Web Design / Usability

* **Folie 7:**  
    "Zufriedenheit" aufgeteilt in:
    * Fehlertolerant (u.a sinnvolle Fehlermeldung)
    * Ansprechend: Heisst auch vertrauensfördernd, hängt auch mit Effizienz zusammen
    * Lernfördernd

**"Effektiv"**: Kann ich mein Ziel erreichen? (egal wie)  
**"Effizienz"**: Ziel mit angemessenem Aufwand erreichen

* **Folie 9:**  
    Consistency: Heisst auch, die grossen Sites anzuschauen, damit die eigene Website "konsistent" ist mit anderen

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

---
## Vorlesung 6 - CSS (2)

* **Folie 65**
    * Box-Sizing: Padding und Border wird vom Content abgezogen. z.B. verwendet, um Elemente nebeneinander zu platzieren
* **Folie 66**
    * Outline verwenden, weil sie keine "Grösse" des Elements braucht
    * Oder wenn ein Element Border nicht unterstützt
    * Bsp: Outline bei mouse-hover hinzufügen, ohne die Grösse des Elements zu vergrössern
    * Border kann mit Bild erstellt werden mit `border-image`
* **Folie 67**
    * Reihenfolge: **top - right - left - bottom**
* **Folie 81**
    * Opacity = 0 ist noch erkennbar für zb. `hover`, bei visibility = hidden nicht
* **Folie 84**
    * `position: absolute` heisst absolute Werte relativ zum Parent, das ebenfalls `position: relative` oder `absolute` hat!
    * `relative`: Neuer "Nullpunkt", an dem es positioniert wird
* **Folie 92/93**
    * Styles mit höherer Spezifität werden bevorzugt
    * A ist spezifischer als B ist spezifischer als C
    * Inline-Style ist spezifischer als alles andere
* **Folie 97**
    * `1em`: Gleich gross wie Parent-Schriftgrösse
    * `1 rem`: Gleich gross wie Body-Schriftgrösse
    * `100 vh`: 100% der Viewport-Höhe
---
## Vorlesung 7 - Javascript (1)

* **Folie 11**
    * "Compiler" übersetzt ES6-Code in ES5
* **Folie 15**
    * Ausgabe: "Small"
* **Folie 18**
    * V8-Engine "kompiliert" Javascript, ansonsten wird grundsätzlich nur ein Interpreter benötigt
* **Folie 20**
    * Javascript ist "dynamic typed": Der Typ wird dynamisch festgelegt und kann verändert werden (kein guter Code!)
* **Folie 21**
    * Immutable: Primitve Typen können nicht verändert werden
* **Booleans**
    * Jeder Wert kann in ein boolean gewandelt werden
    * 0, false, "", null, undefined, NaN geben `false`
    * Alle anderen Werte ergeben `true`
    * Umwandlung mit `Boolean(value)` oder `!!(value)`
    * Rätsel: 
        * `1 && 2 && 3` = `3` 
        * `1 && false && 0` = `false`
        * `"Hallo" || 1 || false || xyz` = `"Hallo"`
        * Es gibt das erste Element aus, das nicht zutrifft
* **Number**
    * Mit `Number.isSafeInteger()` prüfen, ob die Zahl richtig interpretiert wird
    * NaN hat den Typ number
    * isNaN() zum überprüfen, NaN == NaN ist immer false!
    * `+()` schaut auf den ganzen Wert bei der Umwandlung, `parseInt()` parsed bis zum ersten Fehler
    * Rechenfehler: `0.1 + 0.2 != 3`, Rundungsfehler, ausser sie runden auf einen Integer auf (z.B. `0.1 + 0.9 == 1`)
    * Rätsel:
        * `3 > 2 > 1` = `false`
        * `3 > 2 >= 1` = `true`
        * Weil `3 > 2` wird auf `true` ausgewertet und `+(true)` ist 1
* **String**
    * Alles innerhalb `${}` wird interpretiert und als String ausgegeben
    * Ein String, der `${}` beinhaltet, muss mit Backticks eingeschlossen sein
* **Folie 31 Quiz**
    * 2
    * 2
    * 8
    * "42"
    * "30px"
    * NaN (Versucht von "px1" 2 zu subtrahieren)
    * Infinity
    * "3px63px"
    * "fooNaN" (+"abc" wird zur Zahl)
    * 3
* **Folie 37**
    * Testen auf undefined: `typeof variable == 'undefined'`
    * Testen eines Klassenattributs: `typoeof(class != 'undefined' && class.variable != undefined)`
* **Arrays**
    * `for (var x in arr)` iteriert nicht über die Werte, sondern nur über die Properties (bei einem "primitiven Array" der Index ab 0)
    * Wie erwwartet bei `for (z of arr)`
    * Diese Varianten sind erst ab ES6 unterstützt, arr.forEach(function) aber schon früher