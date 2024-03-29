Title: Is Three the Only Prime Number Followed by a Perfect Square?
Created: 2023-02-24
Updated: 2023-02-24
Updated: 2023-06-16
Updated: 2023-08-30
Tag: Math
Tag: Proofs
=== markdown ===

A friend of mine recently posed a question for me to solve after I had
mentioned to him that I had been wanting to get back into mathematics: Can you
show that 3 is the only prime number followed by a perfect square? A prime
number being an integer with only two factors, one and itself. A perfect square
being an integer $s$ that is equal to another integer $z$ multiplied by itself.

To answer this question it must be shown that the following does not hold:

Let $p \in \mathbb{P}$, $p > 3$

Let $z \in \mathbb{N}$

$p + 1 = z ^ 2$

Proof:

1. Rewrite the equation

	$p + 1 = z^2$

	$p = z^2 - 1$

	$p = (z + 1)(z - 1)$

2. Show that $z + 1 > 1$ when $z > 2$

	This is trivial, as any integer greater than 2 added to one will be greater
	than one.

3. Show that $z - 1 > 1$ when $z > 2$

	If z = 3, then $z - 1 = 2$ and $2 > 1$.

Since neither $(z + 1)$ or $(z - 1)$ can be $1$ when $z > 2$, this violates the definition
of a prime number. A prime number only has two factors: itself and the number
$1$.

This shows that $\forall p \in \mathbb{P} > 3$, the following number $p + 1$ is
not a perfect square.

QED
