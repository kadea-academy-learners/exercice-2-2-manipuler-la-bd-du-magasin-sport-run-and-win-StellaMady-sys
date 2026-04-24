
--REQUETES SQL - MAGASIN DE SPORT RUN & WIN
--Data analyst : Stella MADY
--Date : 23/04/2026

--QUESTION I : Articles Tennis à plus de 100$

SELECT nom_produit, prix
FROM produits
WHERE categorie = 'Tennis' AND prix > 100;


--QUESTION II : Produits avec le mot "Rando" dans le nom et le stock < 5

SELECT nom_produit, stock, prix
FROM produits
WHERE LOWER(nom_produit) LIKE '%rando%' AND stock < 5;

--QUESTION III : le filtrage de clients Bukavu ou Matadi

SELECT nom, prenom, email
FROM clients
WHERE ville IN ('Bukavu', 'Matadi');

--QUESTION IV : La traque des articles combat entre 20$ et 50$

SELECT nom_produit, prix, categorie
FROM produits
WHERE categorie = 'Combat' AND prix BETWEEN 20 AND 50;

--QUESTION V : Clients Lubumbashi inscrits avant 2025

SELECT nom, ville, date_inscription
FROM clients
WHERE ville = 'Lubumbashi' AND date_inscription < '2025-01-01';



