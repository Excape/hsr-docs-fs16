# AD1 Formeln
## Arithmetische Folgen
- **Rekursiv**: $$a_1 = c, a_n = a_{n-1}+d$$
- **Iterativ**: $$a_n = a_1 + \sum_{i=2}^n d$$
- **Explizit**: $$a_n = f(n)$$

- **Lineare Progression**: 
$$\sum_{i=1}^n i = \frac{n(n+1)}2 = \frac{n^2 + n}2 $$
- **Allgemeine Summenformel** mit \(s_n = \sum_{i=1}^n a_i\)
$$ s_n = \frac{n(a_1 + a_n)}2 $$
- **Summe mit Abstand \(d\)**, obere Schranke (os) und untere Schranke (us): 
$$ \sum_{\text{us}}^{\text{os}} a_i = a_1 m + \frac{m(m-1)}2 d$$

## Big-Oh
$$ f(n) \in O(g(n)) \Rightarrow f(n) \le cg(n) \text{ mit } n \ge n_0 $$
$$ f(n) \in \Omega(g(n)) \Rightarrow f(n) \ge cg(n) \text{ mit } n \ge n_0 $$
$$ f(n) \in \Theta(g(n)) \Rightarrow f(n) \in O(g(n)) \land f(n) \in \Omega(g(n)) $$
  
  
### Rechnungen
Vorgehen bei Beweisen: Terme mit \(n\) möglichst trennen um Konstanten zu bekommen, diese = c setzen

**Bestimmung \(c\) und \(n_0\)**: \(c\) muss mindestens so gross sein wie der Koeffizient des höchsten Grades.  
Bsp: \(7n-2 \rightarrow c=7, n_0 = 1\)

Wenn Polynom Additionen hat, ist \(c\) meist der Koeffizent + 1  
Bsp: \(3n^3 + 20n^2 + 5 \rightarrow c=4, n_0 = 21\)  
Test: \(3n^3 + 20n^2 + 5 \le 4\cdot n^3 \text{ mit } n \ge 21\)
