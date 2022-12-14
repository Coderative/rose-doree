<!-- LTeX:language=fr -->
# La Rose dorée (Gilded Rose)

## Installation

- `bundle install`
- `bin/rails db:setup`
- `bin/dev`
- visiter [localhost:3000/items](http://localhost:3000/items),
- vous pouvez cliquer sur "Reset items" pour (re)généré une liste d'items,
- vous pouvez cliquer sur "Update quality" pour voir la qualité des articles
  évoluer avec le temps.

![image](https://user-images.githubusercontent.com/6866370/204418268-8bdffb1c-2d2c-4357-bb4c-3b9904cb4d25.png)

## Spécification

Bonjour et bienvenue dans l'équipe de la Rose dorée.

![image](https://static.wikia.nocookie.net/wowpedia/images/8/8b/The_Gilded_Rose.jpg/revision/latest?cb=20071222074445)

Comme vous le savez, [notre petite taverne](https://wowpedia.fandom.com/wiki/Gilded_Rose) située à proximité d'une cité importante est dirigée par l'aubergiste amicale Allison.

Nous achetons et vendons uniquement les meilleurs produits.
Malheureusement, la qualité de nos marchandises se dégrade constamment à l'approche de leur date de péremption.

Un système a été mis en place pour mettre à jour notre inventaire.
Il a été développé par Leeroy, une personne pleine de bon sens qui est partie pour de nouvelles aventures.

Votre mission est d'ajouter une nouvelle fonctionnalité à notre système pour que nous puissions commencer à vendre un nouveau type de produits.

Mais d'abord, laissez-moi vous présenter notre système :

- Tous les éléments ont une valeur `sell_in` qui désigne le nombre de jours restant pour vendre l'article.
- Tous les articles ont une valeur `quality` qui dénote combien l'article est précieux.
- À la fin de chaque journée, notre système diminue ces deux valeurs pour chaque produit.

Plutôt simple, non ?

Attendez, ça devient intéressant :

- Une fois que la date de péremption est passée, la qualité se dégrade deux fois plus rapidement.
- La qualité (`quality`) d'un produit ne peut jamais être négative.
- "Aged Brie" augmente sa qualité (`quality`) plus le temps passe.
- La qualité d'un produit n'est jamais de plus de 50.
- "Sulfuras", étant un objet légendaire, n'a pas de date de péremption et ne perd jamais en qualité (`quality`)
- "Backstage passes", comme le "Aged Brie", augmente sa qualité (`quality`) plus le temps passe (`sell_in`) ; La qualité augmente de 2 quand il reste 10 jours ou moins et de 3 quand il reste 5 jours ou moins, mais la qualité tombe à 0 après le concert.

Nous avons récemment signé un partenariat avec un fournisseur de produit invoqué ("Conjured").
Cela nécessite une mise à jour de notre système :

- Les éléments "Conjured" voient leur qualité se dégrader de deux fois plus vite que les objets normaux.

Vous pouvez faire les changements que vous voulez à la méthode `Item.update_quality` et ajouter autant de code que vous voulez, tant que tout fonctionne correctement.
Cependant, nous devons vous prévenir, vous ne devez en aucun cas modifier les attributs du modèle `Item`, car cette classe appartient au gobelin à l'étage qui entrerait dans une rage instantanée et vous tuerait sans délai : il ne croit pas au partage du code.
(Vous pouvez ajouter des méthodes ou créer de nouvelles classes si vous voulez, nous vous couvrirons)

Juste une précision, un produit ne peut jamais voir sa qualité augmenter au-dessus de 50, cependant "Sulfuras" est un objet légendaire et comme tel sa qualité est de 80 et elle ne change jamais.

Source : [Gilded Rose](https://github.com/emilybache/GildedRose-Refactoring-Kata/)
