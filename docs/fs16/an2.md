#Analysis 2 Formelsammlung

## Unbestimmte Integrale

### Definition / Eigenschaften
**Definition:** Die Menge aller Stammfunktionen des Integranden
$$f(x) = \frac d{dx} F(x)$$
$$\int f(x) dx = F(x) + const$$

Die Ableitung macht die Integration rückgängig:
$$f(x) = \frac d{dx} \left(\int f(x) dx\right)$$

Das Integral macht die Ableitung rückgängig, **bis auf die Konstante**
$$f(x) + const = \int f'(x) dx$$

### Wichtigste Integrale

!!! attention "Achtung"
    Spezialfall für \(x = -1\):
    $$\int\frac 1x = \ln (|x|) + const$$

Integral  |  Regel | Bemerkung 
--|---|--
 $$\int x^a\,dx$$ | $$\frac 1{a+1}\,x^{a+1} + const$$ | für alle \(a \in \mathbb R \setminus \{-1\}\)
  $$\int K\,dx$$ | $$K \cdot x + const $$  |  Spezialfall mit \(a=0\)
  $$\int x\,dx$$ | $$\frac 12\,x^2 + const $$  |  Spezialfall mit \(a=1\)
  $$\int \sqrt x\,dx$$ | $$\frac 23\,x^{3/2} + const $$ | Spezialfall mit \(a=\frac 12\)
  $$\int \frac 1{\sqrt x}\,dx$$ | $$2\sqrt x + const $$ | Spezialfall mit \(a=-\frac 12\) 
  $$\int e^x\,dx$$ | $$ e^x + const $$ |  
  $$\int a^x\,dx$$ | $$ \frac 1{\ln(a)}\,a^x + const $$ | Spezialfall, wegen \(a^x = e^{\ln(a)\,\cdot\,x}\)  
  $$\int \sin (x)\,dx$$ | $$ -\,\cos (x) + const $$ |  
  $$\int \cos (x)\,dx$$ | $$ \sin (x) + const $$ |
  
!!! note
    Folgende Integrale werden an der Prüfung angegeben:
    $$\int \frac 1 {\sqrt {1 - x^2}}\,dx = \arcsin(x) + const$$
    $$\int\frac1{1+x^2}\,dx = \arctan(x)+const$$
    $$\int\ln(x)\,dx = x\cdot\ln(x)-x+const$$

### Integrationsregeln
#### Linearitätsregel
Durch Plus und Minus getrennte Terme dürfen **komponentenweise** integriert werden
$$\int\alpha f(x)+\beta g(x)\,dx = \alpha\int f(x)\,dx+\beta\int g(x)\,dx$$

#### Substitutionsregeln
Der Integrand ist ein Produkt zweier Funktionen \(f(x)\) und \(g'(x)\).
**Voraussetzungen:**

1. \(g(x)\) ist in \(f(x)\) verschachtelt: \(f(g(x))\)
2. Die Ableitung der inneren Funktion \(g(x)\) ist der zweite Faktor
3. Benötigt wird die Stammfunktion \(F\) der äusseren Funktion \(f\)

$$\int f(g(x))\cdot g'(x)\,dx = F(g(x)) + const$$

##### Spezialfälle der Substitutionsregel

* Das Argument der Funktion ist ein *linearer Term*:
    $$\int f(ax+b)\,dx = \frac 1a F(ax+b) + const$$
* Der Integrand ist das Produkt aus einer Potenz und der Ableitung des Arguments der Potenz
$$\int (g(x))^q\cdot g'(x)\,dx = \begin{cases} \frac 1{q+1}g^{q+1} (x) + const & \text{für}\; q \not = -1 \\ \ln (|g(x)|) + const & \text{für}\; q = -1 \end{cases}$$

* Die Potenz ist im Fall \(q = 1\) ("Funktion mal Ableitung") nicht zu erkennen:
    $$\int g(x)\cdot g'(x)\,dx = \int (g(x))^1\cdot g'(x)\, dx$$
* Ein Integrand als Bruch kann umgeschrieben werden
    $$\int\frac{g'(x)}{(g(x))^q}\,dx = \int (g(x))^{-q}\cdot g'(x)\,dx$$
* "Ableitung durch Funktion" kann ohne integrieren gelöst werden:
    $$\int\frac{g'(x)}{g(x)}\,dx = \ln(|f(x)|) + const$$
    
#### Partielle Integration
**Voraussetzung:** Der Integrand ist ein Produkt.  
Ist nur nützlich, wenn das verbleibende Integral einfacher zu berechnen ist, als das ursprüngliche. Dies z.B. wenn \(g(x)\) ein Polynom ist und \(f(x)\) einer der Funktionen \(e^x, \sin(x) \cos(x)\).

$$\int f(x)\,g(x)\, = F(x)\,g(x) - \int F(x)\,g'(x)\, dx$$

Vorgehen am Beispiel:

\(\int \underbrace{e^x}_{\int\cdot}\cdot\underbrace{x^2+3x}_{\frac d{dx}\left(\cdot\right) }\, dx = e^x \cdot (x^2+3x) - \int \underbrace{e^x}_{\int\cdot}\cdot\underbrace{(2x+3)}_{\frac d{dx}\cdot}\,dx\)  
\(\quad e^x\;\cdot\;(2x+3)\qquad\qquad\qquad\qquad\quad \underbrace{e^x\quad\cdot\quad 2}_{\text{Verbleibendes Integral}}\)  
\(=e^x\cdot (x^2+3x) - \left(e^x\cdot(2x+3)-\int e^x \cdot 2\, dx\right)\)  
\(=e^x\cdot (x^2+3x) - e^x\cdot(2x+3)+2e^x + const\)  
\(\underline{= e^x(x^2+x - 1) + const}\)
