# Algoritmo QR
Determina todos os autovalores de uma matriz.

- Seja $A$ uma matriz quadrada de ordem $n$.
- Consiste em construir uma sequência de matrizes $\{A_k\}$

Iteração 0: 
- Faça $A_0 = A$
- Obtenha a decomposição QR de $A_0$
$$A_0 = Q_1R_1$$

Para $k$ iterações, faça:

- Faça $A_k = R_kQ_k$
- Obtenha a decomposição QR de $A_k$
$$A_k = Q_{k+1}R_{k+1}$$

# Decomposição QR

**Deﬁnição:** Seja A uma matriz de ordem n. Então, a decomposição
QR, também conhecida como fatoração QR, de A é a decomposição 
de A num produto de uma matriz ortogonal Q e uma matriz
triangular superior R, isto é:
$$A = QR$$

OBS: A _decomposição QR_ de uma matriz é única

- $Q$ - matriz ortogonal
- $R$ - triangular superior

## Obter a decomposição QR
