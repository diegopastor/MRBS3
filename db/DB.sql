/* ******************************************* DATABASE SETUP ********************************************* */

CREATE DATABASE MRBS3;
use MRBS3;
CREATE TABLE bases (id INT(3) AUTO_INCREMENT NOT NULL,base VARCHAR(200),used INT(3) NOT NULL DEFAULT '0' ,PRIMARY KEY (id));
CREATE TABLE objects (id INT(3) AUTO_INCREMENT NOT NULL,object VARCHAR(150),tag VARCHAR(22),PRIMARY KEY (id));
CREATE TABLE specials (id INT(3) AUTO_INCREMENT NOT NULL,special VARCHAR(300),tag VARCHAR(22),PRIMARY KEY (id));
CREATE TABLE verbs (id INT(3) AUTO_INCREMENT NOT NULL,verb VARCHAR(100),tag VARCHAR(22),PRIMARY KEY (id));
CREATE TABLE people (id INT(3) AUTO_INCREMENT NOT NULL,person VARCHAR(48),tag VARCHAR(22),PRIMARY KEY (id));
CREATE TABLE gender (gen_per VARCHAR(48),gender VARCHAR(1),PRIMARY KEY (gen_per));
CREATE TABLE adjectives (id INT(3) AUTO_INCREMENT NOT NULL,adjective VARCHAR(48),tag VARCHAR(22),PRIMARY KEY (id));

/* ******************************************* BASES and CHILDS********************************************* */
INSERT INTO bases VALUES (null, '$sp-political',0);

INSERT INTO specials VALUES(null,'En las próximas elecciones $per-politic va a votar por el $ob-feelinH','political');
INSERT INTO specials VALUES(null,'En las próximas elecciones $per-musician estará en la boleta','political');
INSERT INTO specials VALUES(null,'Se acercan las próximas elecciones de $ob-locality. Un $ob-thingH encabeza las encuestas','political');
INSERT INTO specials VALUES(null,'$ob-locality tiene un nuevo presidente: un $ob-thingH','political');
INSERT INTO specials VALUES(null,'El parlamento de $ob-locality quiere promulgar una ley para prohibir $ob-concept','political');

INSERT INTO bases VALUES (null, '$sp-wackyone',0);

INSERT INTO specials VALUES(null,'Una $ob-thingM consciente es la próxima Presidenta del mundo','wackyone');
INSERT INTO specials VALUES (null, 'En $ob-locality hay un $ob-thingH que $sp-miscella','wackyone');
INSERT INTO specials VALUES (null, 'En $ob-locality hay una $ob-thingM que $sp-miscella','wackyone');
INSERT INTO specials VALUES (null, 'Un $ob-animalH hecho de $ob-stuff ha nacido en $ob-locality','wackyone');
INSERT INTO specials VALUES (null, 'Una $ob-animalM hecha de $ob-stuff ha nacido en $ob-locality','wackyone');
INSERT INTO specials VALUES (null, 'Hay un mundo dónde todos los $ob-animalPH están hechos de $ob-thingP','wackyone');
INSERT INTO specials VALUES (null, 'Un $ob-jobH le pone a su cereal un $ob-thingH','wackyone');

INSERT INTO bases VALUES (null, '$sp-wackytwo',0);

INSERT INTO specials VALUES (null, 'En un olvidado lugar de $ob-locality un $ob-thingH $sp-miscella','wackytwo');
INSERT INTO specials VALUES (null, 'Un $ad-personalityH $ob-weirdjobH cuenta la historia de un águila que tiene $ob-thingP en vez de alas','wackytwo');
INSERT INTO specials VALUES (null, 'La $ob-feelinM por fin dejará de vivir con sus padres','wackytwo');
INSERT INTO specials VALUES (null, 'El próximo $ob-weekday se van a casar la $ob-feelinM y el $ob-feelinH','wackytwo');
INSERT INTO specials VALUES (null, 'En $ob-locality todavía se acuerdan del $ob-animalH hecho de $ob-stuff que sabía los secretos de todos','wackytwo');

INSERT INTO bases VALUES (null, '$sp-wackythree',0);

INSERT INTO specials VALUES (null, 'El $per-familyH de las $ob-insectPM descubrió que el alcoholismo controla la $ob-theoryM','wackythree');
INSERT INTO specials VALUES (null, 'Una $ob-insectM es capaz de mover la $ob-landmarkM con su mente','wackythree');
INSERT INTO specials VALUES (null, 'Un $ob-plantH le susurra al oído a $per-histfig: "$sp-saystuff"','wackythree');
INSERT INTO specials VALUES (null, 'Todos los $ob-jobHP de $ob-locality están viendo el mismo episodio de $ob-sitcom','wackythree');
INSERT INTO specials VALUES (null, 'Un $ad-personalityH maestro $ad-gentilicioH dirige una escuela para $ob-animalPH','wackythree');

INSERT INTO bases VALUES (null, '$sp-wackyfour',0);

INSERT INTO specials VALUES (null, '$per-histfig se dirige a $ob-locality en Uber. Se siente fuera de lugar','wackyfour');
INSERT INTO specials VALUES (null, '$sp-organizedToSpell deletrean la frase: $ob-consptheory','wackyfour');
INSERT INTO specials VALUES (null, 'Un día te despiertas y caes en la cuenta de que te convertiste en $per-politic','wackyfour');
INSERT INTO specials VALUES (null, 'El $ob-soccerteamH ganó un partido y llovieron $ob-thingP del cielo','wackyfour');
INSERT INTO specials VALUES (null, 'Se descubre una canción inédita de $per-musician. $sp-newArtQuirkMusic','wackyfour');
INSERT INTO specials VALUES (null, 'En $ob-locality se descubre una pintura inédita de $per-paintor. $sp-newArtQuirkPaint','wackyfour');
INSERT INTO specials VALUES (null, 'Un $ob-shipH $ver-sink un $ob-lakeH lleno de $ob-liquid','wackyfour');

INSERT INTO specials VALUES (null, 'Una serie de $ob-insectPM acomodadas estratégicamente','organizedToSpell');
INSERT INTO specials VALUES (null, 'Visitas $ob-locality y las nubes en el cielo','organizedToSpell');
INSERT INTO specials VALUES (null, '$per-memecelebritt está comiendo una sopa de letras y las letras en su cuchara ','organizedToSpell');
INSERT INTO specials VALUES (null, 'Sobrevuelas $ob-locality por la noche y puedes ver como las luces en la tierra','organizedToSpell');

INSERT INTO specials VALUES (null, 'Habla del amor entre $ob-thingP','sp-newArtQuirkMusic');
INSERT INTO specials VALUES (null, 'Habla de $ob-war','sp-newArtQuirkMusic');
INSERT INTO specials VALUES (null, 'Cuenta la historia de un $ob-thingH','sp-newArtQuirkMusic');

INSERT INTO specials VALUES (null, 'Retrata un $ob-landmarkH hecho de $ob-stuff','sp-newArtQuirkPaint');

INSERT INTO bases VALUES (null, 'Un $ob-thingH $sp-floatt $sp-leaftwo',0);

INSERT INTO specials VALUES (null, 'flota enfrente de ti.', 'floatt');
INSERT INTO specials VALUES (null, 'levita sobre ti.', 'floatt');
INSERT INTO specials VALUES (null, 'repentinamente aparece a tu lado.', 'floatt');
INSERT INTO specials VALUES (null, 'cae del cielo.', 'floatt');
INSERT INTO specials VALUES (null, 'surge del océano Atlántico.', 'floatt');
INSERT INTO specials VALUES (null, 'aparece en el bote de basura.', 'floatt');
INSERT INTO specials VALUES (null, 'pasa volando.', 'floatt');
INSERT INTO specials VALUES (null, 'sale arrastrándose de la boca de una $ob-animalM.', 'floatt');
INSERT INTO specials VALUES (null, 'aparece en la cima de un $ob-structureH hecho de $ad-mat.', 'floatt');
INSERT INTO specials VALUES (null, 'aparece en la cima de una $ob-structureM hecha de $ad-mat.', 'floatt');
INSERT INTO specials VALUES (null, 'Luego, aparece una bruja y dice: "Se preguntarán por qué los he reunido aquí"', 'leaftwo');
INSERT INTO specials VALUES (null, 'Una niña pequeña dice: "Nos va a matar a todos"', 'leaftwo');
INSERT INTO specials VALUES (null, 'Luego, un $ob-animalH dice: "Me pertenece a mí"', 'leaftwo');
INSERT INTO specials VALUES (null, 'Un señor que pasa por ahí dice: "Así es como termina todo"', 'leaftwo');
INSERT INTO specials VALUES (null, 'Se escapó del sueño de un $per-rulerH $ad-gentilicioH', 'leaftwo');
INSERT INTO specials VALUES (null, 'Se escapó del sueño de una $per-rulerM $ad-gentilicioM', 'leaftwo');


INSERT INTO bases VALUES (null, '$sp-commonconv $ob-smallNum $per-commonerPM que $sp-wackypastst. Tomaban $ob-drinkH mágico y $sp-deepdiscuss',0);

INSERT INTO specials VALUES (null, 'Se estaban dirigiendo a la misa del barrio', 'commonconv');
INSERT INTO specials VALUES (null, 'Iban camino al centro comercial', 'commonconv');
INSERT INTO specials VALUES (null, 'Se dirigian a desayunar tacos de canasta', 'commonconv');
INSERT INTO specials VALUES (null, 'Iban camino a sus hogares', 'commonconv');

INSERT INTO specials VALUES (null, 'venían de una noche de farra con $per-politic', 'wackypastst');
INSERT INTO specials VALUES (null, 'venían de cocinar un pastel de $ob-feelinH', 'wackypastst');
INSERT INTO specials VALUES (null, 'discutían del $ob-intellectualtopicH', 'deepdiscuss');
INSERT INTO specials VALUES (null, 'discutían de la $ob-intellectualtopicM', 'deepdiscuss');

INSERT INTO bases VALUES (null, '$sp-timetravel. $sp-timeresult',0);
INSERT INTO specials VALUES (null, 'Un $per-oldjobH $ad-oldnationality aparece $sp-modlocation', 'timetravel');
INSERT INTO specials VALUES (null, 'Un $ob-jobH aparece repentinamente $sp-oldlocation', 'timetravel');
INSERT INTO specials VALUES (null, 'Nadie le pone demasiada atención', 'timeresult');
INSERT INTO specials VALUES (null, 'Se siente fuera de lugar', 'timeresult');
INSERT INTO specials VALUES (null, 'Un anciano sabe perfectamente a que ha venido', 'timeresult');
INSERT INTO specials VALUES (null, 'La gente sabe perfectamente que tiene que hacer', 'timeresult');
INSERT INTO specials VALUES (null, 'Los observadores ríen', 'timeresult');
INSERT INTO specials VALUES (null, 'en una junta directiva de $ob-compani', 'modlocation');
INSERT INTO specials VALUES (null, 'en una $ob-structureM en $ob-locality', 'modlocation');
INSERT INTO specials VALUES (null, 'en una Apple Store en $ob-locality', 'modlocation');
INSERT INTO specials VALUES (null, 'en un Pizza Hut en $ob-locality', 'modlocation');
INSERT INTO specials VALUES (null, 'en un McDonald''s en $ob-locality', 'modlocation');
INSERT INTO specials VALUES (null, 'en una preparatoria en $ob-locality', 'modlocation');
INSERT INTO specials VALUES (null, 'en una estación del metro de la Ciudad de México', 'modlocation');
INSERT INTO specials VALUES (null, 'en la cubierta del Titanic', 'modlocation');
INSERT INTO specials VALUES (null, 'en el lobby de una Trump Tower', 'modlocation');
INSERT INTO specials VALUES (null, 'en las catacumbas de París', 'modlocation');
INSERT INTO specials VALUES (null, 'en el piso del Senado Romano', 'oldlocation');
INSERT INTO specials VALUES (null, 'en el antiguo ágora de Atenas', 'oldlocation');
INSERT INTO specials VALUES (null, 'en un combate de gladiadores en el Coliseo', 'oldlocation');
INSERT INTO specials VALUES (null, 'en la plaza del pueblo en la Florencia medieval', 'oldlocation');
INSERT INTO specials VALUES (null, 'en una góndola en Venecia del siglo XVIII', 'oldlocation');
INSERT INTO specials VALUES (null, 'en el campanario de Notre Dame en 1502', 'oldlocation');
INSERT INTO specials VALUES (null, 'en el Führerbunker', 'oldlocation');
INSERT INTO specials VALUES (null, 'en tierra de nadie durante la Batalla del Somme', 'oldlocation');
INSERT INTO specials VALUES (null, 'en la Batalla de Stalingrado', 'oldlocation');
INSERT INTO specials VALUES (null, 'en la Plaza Roja durante la Revolución Rusa', 'oldlocation');
INSERT INTO specials VALUES (null, 'en Sarajevo justo antes del asesinato de Franz Ferdinand', 'oldlocation');
INSERT INTO specials VALUES (null, 'a bordo del Apollo 11 mientras se acerca a la Luna', 'oldlocation');
INSERT INTO specials VALUES (null, 'en un pueblo en Francia durante la Peste Negra', 'oldlocation');

INSERT INTO bases VALUES (null, '$ob-sunn está $ver-burnverb en un $ob-garbagedumpH',0);

INSERT INTO bases VALUES (null, '$sp-groupa $sp-diversifyOne $sp-quest. Su objetivo es $sp-objective',0);

INSERT INTO specials VALUES (null, 'Un grupo de', 'groupa');
INSERT INTO specials VALUES (null, 'Una comunidad de', 'groupa');
INSERT INTO specials VALUES (null, 'Un grupo de doce', 'groupa');
INSERT INTO specials VALUES (null, 'Un grupo de nueve', 'groupa');

INSERT INTO specials VALUES (null, 'está por emprender un largo viaje', 'quest');
INSERT INTO specials VALUES (null, 'tiene una misión secreta que cumplir', 'quest');

INSERT INTO specials VALUES (null, 'pelear con un $ob-animalH gigante', 'objective');
INSERT INTO specials VALUES (null, 'robarse una rara copia de $ob-title', 'objective');
INSERT INTO specials VALUES (null, 'robarse un $ob-gemH gigante', 'objective');
INSERT INTO specials VALUES (null, 'derrotar a un $per-rulerH $ad-oldnationality', 'objective');
INSERT INTO specials VALUES (null, 'derrotar al monstruo que aterroriza $ob-locality', 'objective');
INSERT INTO specials VALUES (null, 'llegar a $ob-thepast', 'objective');
INSERT INTO specials VALUES (null, 'pelear en $ob-war', 'objective');
INSERT INTO specials VALUES (null, 'encontrar la $ob-jungleM de $ad-mat dónde se esconde un $ob-gemH mágico', 'objective');
INSERT INTO specials VALUES (null, 'encontrar $sp-diversifyTwo con el poder de crear $ob-lig', 'objective');
INSERT INTO specials VALUES (null, 'sitiar un $ob-structureH de $ad-mat', 'objective');
INSERT INTO specials VALUES (null, 'robarse una estatua de una $ob-animalM hecha de $ad-mat', 'objective');
INSERT INTO specials VALUES (null, 'encontrar un misterioso $ob-deviceH con el poder de destruir $ob-astP', 'objective');
INSERT INTO specials VALUES (null, 'encontrar a su $per-familyH perdido', 'objective');
INSERT INTO specials VALUES (null, 'encontrar al perdido rey de $ob-locality', 'objective');
INSERT INTO specials VALUES (null, 'liberar a un $per-rulerH encarcelado en una $ob-mazeM por un grupo de $ob-animalPH', 'objective');

INSERT INTO specials VALUES (null, '$ob-animalPH', 'diversifyOne');
INSERT INTO specials VALUES (null, '$ob-jobHP', 'diversifyOne');
INSERT INTO specials VALUES (null, 'un antiguo $ob-deviceH', 'diversifyTwo');
INSERT INTO specials VALUES (null, 'una antigua $ob-deviceM', 'diversifyTwo');


INSERT INTO bases VALUES (null, 'Una $ad-gen $per-rulerM $sp-gifted: $sp-thegift',0);

INSERT INTO specials VALUES (null, 'guarda una inusual posesión en una caja cerrada', 'gifted');
INSERT INTO specials VALUES (null, 'esconde algo inusual en su sótano', 'gifted');
INSERT INTO specials VALUES (null, 'recibe un inusual regalo de cumpleaños de parte de $sp-herse', 'gifted');
INSERT INTO specials VALUES (null, 'recibe un extraño regalo de Navidad', 'gifted');
INSERT INTO specials VALUES (null, 'recibe un extraño regalo de parte de $sp-herse', 'gifted');
INSERT INTO specials VALUES (null, 'recibe un extraño regalo en su baby shower', 'gifted');

INSERT INTO specials VALUES (null, 'un $ob-thingH cubierto de $ob-gems', 'thegift');
INSERT INTO specials VALUES (null, 'una $ob-candleM invisible', 'thegift');
INSERT INTO specials VALUES (null, 'un $ob-candleH invisible', 'thegift');
INSERT INTO specials VALUES (null, 'una $ob-landformM', 'thegift');
INSERT INTO specials VALUES (null, 'un $ob-landformH', 'thegift');
INSERT INTO specials VALUES (null, 'una $ob-thingM mágica', 'thegift');
INSERT INTO specials VALUES (null, '$ob-smallNum $ob-phenomentwo', 'thegift');
INSERT INTO specials VALUES (null, 'una $ob-thingM de $ad-mat', 'thegift');
INSERT INTO specials VALUES (null, 'una $ob-plantM capaz de $ver-poett', 'thegift');
INSERT INTO specials VALUES (null, 'un $ob-animalH capaz de $ver-poett', 'thegift');
INSERT INTO specials VALUES (null, 'una $ob-candleM capaz de $ver-poett', 'thegift');

INSERT INTO specials VALUES (null, 'su bebé', 'herse');
INSERT INTO specials VALUES (null, 'su hijo', 'herse');
INSERT INTO specials VALUES (null, 'su hija ', 'herse');
INSERT INTO specials VALUES (null, 'su madre', 'herse');
INSERT INTO specials VALUES (null, 'su padre', 'herse');
INSERT INTO specials VALUES (null, 'su abuela', 'herse');
INSERT INTO specials VALUES (null, 'su abuelo', 'herse');
INSERT INTO specials VALUES (null, 'su gato', 'herse');
INSERT INTO specials VALUES (null, 'su perro', 'herse');
INSERT INTO specials VALUES (null, 'su $ob-animalH', 'herse');

INSERT INTO bases VALUES (null, 'Un $per-rulerH está $ver-burnverb $sp-yolocation',0);

INSERT INTO specials VALUES (null, 'en el fondo $sp-ocean', 'yolocation');
INSERT INTO specials VALUES (null, 'adentro de un $ob-candleH', 'yolocation');
INSERT INTO specials VALUES (null, 'en la cima de un $ob-landformH', 'yolocation');
INSERT INTO specials VALUES (null, 'adentro de un $ob-ast', 'yolocation');

INSERT INTO specials VALUES (null, 'del océano', 'ocean');
INSERT INTO specials VALUES (null, 'del Mar Rojo', 'ocean');
INSERT INTO specials VALUES (null, 'del océano Pacífico', 'ocean');
INSERT INTO specials VALUES (null, 'del océano Atlántico', 'ocean');
INSERT INTO specials VALUES (null, 'de la fosa de las marianas', 'ocean');
INSERT INTO specials VALUES (null, 'de un volcán', 'ocean');

INSERT INTO bases VALUES (null, '$sp-recurfate',0);

INSERT INTO specials VALUES (null, 'Un $per-rulerH $ad-gentilicioH tiene un sueño recurrente en el que $sp-chase. $sp-outcome', 'recurfate');
INSERT INTO specials VALUES (null, '$sp-fated de $sp-diversifyThree', 'recurfate');
INSERT INTO specials VALUES (null, 'Un $ob-bookH $ad-era describe un universo donde $sp-nonex', 'recurfate');
INSERT INTO specials VALUES (null, 'Un $sp-diversifyFour en $ob-locality $sp-hatch $ob-tim por una $sp-diversifyFive', 'recurfate');
INSERT INTO specials VALUES (null, 'Una $per-genM $ver-disc que no existe. Lo único que existe $sp-diversifySix de $ad-mat', 'recurfate');
INSERT INTO specials VALUES (null, 'Una $sp-talgen arquitecta diseña un $ob-structureH hecho de $ob-stuff. $sp-short', 'recurfate');

INSERT INTO specials VALUES (null, 'es perseguido por una $ob-eater', 'chase');
INSERT INTO specials VALUES (null, 'es devorado por un $ob-animalH', 'chase');
INSERT INTO specials VALUES (null, 'es perseguido por $ob-concept', 'chase');
INSERT INTO specials VALUES (null, 'es asesinado por $ob-concept', 'chase');
INSERT INTO specials VALUES (null, 'es aplastado por un $ob-thingH gigante', 'chase');

INSERT INTO specials VALUES (null, 'Días después se vuelve realidad', 'outcome');
INSERT INTO specials VALUES (null, 'Secretamente espera que se vuelva verdad', 'outcome');

INSERT INTO specials VALUES (null, 'La vida de una $ad-gen $per-rulerM depende', 'fated');

INSERT INTO specials VALUES (null, 'un muy particular $ob-thingH', 'diversifyThree');
INSERT INTO specials VALUES (null, 'un muy particular $ob-animalH', 'diversifyThree');
INSERT INTO specials VALUES (null, 'un muy particular $ob-jobH', 'diversifyThree');
INSERT INTO specials VALUES (null, 'una muy particular $ob-thingM', 'diversifyThree');
INSERT INTO specials VALUES (null, 'una muy particular $ob-animalM', 'diversifyThree');
INSERT INTO specials VALUES (null, 'una muy particular $ob-jobM', 'diversifyThree');

INSERT INTO specials VALUES (null, 'el concepto de $ob-concept no existe', 'nonex');
INSERT INTO specials VALUES (null, 'todo está hecho de $ob-thingP', 'nonex');

INSERT INTO specials VALUES (null, 'crea un plan para reemplazar', 'hatch');
INSERT INTO specials VALUES (null, 'está planeando reemplazar', 'hatch');
INSERT INTO specials VALUES (null, 'sueña con reemplazar', 'hatch');
INSERT INTO specials VALUES (null, 'sueña con sustituir', 'hatch');
INSERT INTO specials VALUES (null, 'reemplazó', 'hatch');
INSERT INTO specials VALUES (null, 'ha reemplazado', 'hatch');
INSERT INTO specials VALUES (null, 'ha sustituido', 'hatch');

INSERT INTO specials VALUES (null, '$per-scholarH', 'diversifyFour');
INSERT INTO specials VALUES (null, '$per-genH', 'diversifyFour');

INSERT INTO specials VALUES (null, '$ob-thingM', 'diversifyFive');
INSERT INTO specials VALUES (null, '$ob-structureM', 'diversifyFive');

INSERT INTO specials VALUES (null, 'es un enorme $ob-structureH hecho', 'diversifySix');
INSERT INTO specials VALUES (null, 'es un enorme $ob-landformH hecho', 'diversifySix');
INSERT INTO specials VALUES (null, 'es un enorme $ob-oddlandH hecho', 'diversifySix');
INSERT INTO specials VALUES (null, 'es una enorme $ob-structureM hecha', 'diversifySix');
INSERT INTO specials VALUES (null, 'es una enorme $ob-landformM hecha', 'diversifySix');
INSERT INTO specials VALUES (null, 'es una enorme $ob-oddlandM hecha', 'diversifySix');

INSERT INTO specials VALUES (null, '$ad-gen', 'talgen');
INSERT INTO specials VALUES (null, '$ad-talentM', 'talgen');

INSERT INTO specials VALUES (null, 'Pero un comité decide que sería mejor construirlo con $ob-thingP', 'short');
INSERT INTO specials VALUES (null, 'Cuando acaba de construirla se siente $ad-emote', 'short');
INSERT INTO specials VALUES (null, 'Un $per-rulerH vive adentro', 'short');
INSERT INTO specials VALUES (null, 'Un $ob-animalH se va a vivir adentro', 'short');

INSERT INTO bases VALUES (null, '$sp-mid un $ob-messageH $sp-inscribed. Dice: "$sp-saystuff"',0);

INSERT INTO specials VALUES (null, 'Una noche', 'mid');
INSERT INTO specials VALUES (null, 'A la medianoche', 'mid');
INSERT INTO specials VALUES (null, 'Durante un eclipse solar', 'mid');
INSERT INTO specials VALUES (null, 'A la mitad de le noche', 'mid');
INSERT INTO specials VALUES (null, 'A las once de la noche', 'mid');
INSERT INTO specials VALUES (null, 'A las dos de la mañana', 'mid');
INSERT INTO specials VALUES (null, 'Al anochecer', 'mid');
INSERT INTO specials VALUES (null, 'En el crepúsculo', 'mid');
INSERT INTO specials VALUES (null, 'En la madrugada', 'mid');
INSERT INTO specials VALUES (null, 'Justo antes del amanecer', 'mid');
INSERT INTO specials VALUES (null, 'En la noche de la luna llena', 'mid');
INSERT INTO specials VALUES (null, 'Durante un eclipse lunar', 'mid');
INSERT INTO specials VALUES (null, 'Durante el solsticio de invierno', 'mid');
INSERT INTO specials VALUES (null, 'En la víspera de Todos los Santos', 'mid');
INSERT INTO specials VALUES (null, 'En la víspera de Navidad', 'mid');
INSERT INTO specials VALUES (null, 'En la víspera de año nuevo', 'mid');

INSERT INTO specials VALUES (null, 'aparece sobre los cielos de $ob-locality', 'inscribed');
INSERT INTO specials VALUES (null, 'aparece escrito en el cielo con $ob-phenomen', 'inscribed');

INSERT INTO bases VALUES (null, '$sp-diversifySeven $sp-hairbrush',0);

INSERT INTO specials VALUES (null, 'Un $per-genH', 'diversifySeven');
INSERT INTO specials VALUES (null, 'Un $per-rulerH', 'diversifySeven');

INSERT INTO specials VALUES (null, 'está sentando en el escusado. Cuando, repentinamente, el escusado se convierte en $per-except','hairbrush');
INSERT INTO specials VALUES (null, 'poda un rosal. De repente, el rosal se convierte en $per-except','hairbrush');
INSERT INTO specials VALUES (null, 'está cepillando su cabello. De repente, el cepillo se convierte en $per-except','hairbrush');
INSERT INTO specials VALUES (null, 'está preparando una taza de té. De repente, la taza se convierte en $per-except','hairbrush');
INSERT INTO specials VALUES (null, 'se está amarrando las agujetas. De repente, las agujetas se convierten en $per-except', 'hairbrush');
INSERT INTO specials VALUES (null, 'está decorando un pastel. De repente, el pastel se convierte en $per-except', 'hairbrush');
INSERT INTO specials VALUES (null, 'está jugando Xbox. De repente, el Xbox se convierte en $per-except', 'hairbrush');

INSERT INTO bases VALUES (null, '$sp-diversifyEight $sp-eggdo',0);

INSERT INTO specials VALUES (null, 'Un $ob-fruitH hecho de $ad-mat', 'diversifyEight');
INSERT INTO specials VALUES (null, 'Un huevo color $ad-color', 'diversifyEight');
INSERT INTO specials VALUES (null, '$Un talisman de $ad-mat', 'diversifyEight');
INSERT INTO specials VALUES (null, 'Existe un anillo que', 'diversifyEight');
INSERT INTO specials VALUES (null, 'Hay un $ob-gemH que', 'diversifyEight');
INSERT INTO specials VALUES (null, 'Existe un $ob-deviceH que', 'diversifyEight');
INSERT INTO specials VALUES (null, 'Un $ob-treeH', 'diversifyEight');
INSERT INTO specials VALUES (null, 'En $ob-locality se habla de la existencia de un $ob-thingH que', 'diversifyEight');
INSERT INTO specials VALUES (null, 'Hay un $ob-candleH que', 'diversifyEight');
INSERT INTO specials VALUES (null, 'Un pie de conejo muy particular', 'diversifyEight');
INSERT INTO specials VALUES (null, 'Un globo que vende un vendedor ambulante', 'diversifyEight');

INSERT INTO specials VALUES (null, 'crea sentimientos de $ob-feelinH en $sp-everyonec', 'eggdo');
INSERT INTO specials VALUES (null, 'tiene el poder de hacer a todos los $ob-jobHP invencibles','eggdo');
INSERT INTO specials VALUES (null, 'tiene el poder de hacer invisible a los $per-rulerPH','eggdo');
INSERT INTO specials VALUES (null, 'tiene el poder de hacer invisible a las $per-rulerPM','eggdo');
INSERT INTO specials VALUES (null, 'tiene el poder de permitir que las $ob-plantPM vuelen','eggdo');
INSERT INTO specials VALUES (null, 'es mágico. Si te lo comes, te conviertes en $per-genM','eggdo');
INSERT INTO specials VALUES (null, 'es mágico. Si te lo comes, te conviertes en $per-genH','eggdo');
INSERT INTO specials VALUES (null, 'es usado por un $per-rulerH para vivir más de cien años','eggdo');
INSERT INTO specials VALUES (null, 'te permite comprender el lenguaje de los $ob-animalPH','eggdo');
INSERT INTO specials VALUES (null, 'tiene el poder de teletransportarte a una $ob-garbagedumpM en $ob-locality','eggdo');
INSERT INTO specials VALUES (null, 'tiene el poder de teletransportarte a un $ob-garbagedumpH en $ob-locality','eggdo');

INSERT INTO specials VALUES (null, 'todos los que lo llegan a observar', 'everyonec');
INSERT INTO specials VALUES (null, 'todas las personas que se encuentran cerca de él', 'everyonec');
INSERT INTO specials VALUES (null, 'todas las personas de $ob-locality', 'everyonec');
INSERT INTO specials VALUES (null, 'todos los $ob-jobHP de $ob-locality', 'everyonec');
INSERT INTO specials VALUES (null, 'todos los que lo tocan', 'everyonec');
INSERT INTO specials VALUES (null, 'todas las personas que están a su alrededor', 'everyonec');

INSERT INTO bases VALUES (null, '$sp-lockaway',0);

INSERT INTO specials VALUES (null, 'Estás encerrado en el corazón de $sp-diversifyNine', 'lockaway');
INSERT INTO specials VALUES (null, 'Tienes un sueño en el que estás encarcelado en un enorme $ob-landformH hecho de $ad-mat', 'lockaway');
INSERT INTO specials VALUES (null, 'Eres enviado a $ob-locality. Ahí, comienzas tu nueva vida como $ob-weirdjobH', 'lockaway');
INSERT INTO specials VALUES (null, 'Eres transportado a una $ob-garbagedumpM en $ob-locality. Ahí, te vuelves amigo de $sp-diversifyTen', 'lockaway');
INSERT INTO specials VALUES (null, '$sp-diversifyEleven empieza a hablarte. Te dice: "$sp-saystuff"', 'lockaway');
INSERT INTO specials VALUES (null, 'Estás encerrado dentro de un $ob-oddlandH', 'lockaway');
INSERT INTO specials VALUES (null, 'Eres condenado por el crimen de matar a una $ob-landformM', 'lockaway');
INSERT INTO specials VALUES (null, 'Eres encarcelado en un $ob-mazeH por el crimen de robarte $ob-concept', 'lockaway');
INSERT INTO specials VALUES (null, 'En $ob-locality hay un $ob-deviceH con una $ob-animalM $ad-gentilicioM atrapada dentro', 'lockaway');
INSERT INTO specials VALUES (null, 'Un $per-genH atrapó a un $per-oldjobH $ad-oldnationality dentro de una $ob-deviceM', 'lockaway');

INSERT INTO specials VALUES (null, 'un $per-rulerH $ad-gentilicioH', 'diversifyNine');
INSERT INTO specials VALUES (null, 'un $per-scholarH $ad-gentilicioH', 'diversifyNine');
INSERT INTO specials VALUES (null, 'un $per-priestH $ad-gentilicioH', 'diversifyNine');
INSERT INTO specials VALUES (null, 'una $per-rulerM $ad-gentilicioM', 'diversifyNine');
INSERT INTO specials VALUES (null, 'una $per-scholarM $ad-gentilicioM', 'diversifyNine');
INSERT INTO specials VALUES (null, 'una $per-priestM $ad-gentilicioM', 'diversifyNine');

INSERT INTO specials VALUES (null, 'un $ob-animalH parlanchín', 'diversifyTen');
INSERT INTO specials VALUES (null, 'una $ob-animalM parlanchína', 'diversifyTen');
INSERT INTO specials VALUES (null, 'un $ob-fruitH parlanchín', 'diversifyTen');
INSERT INTO specials VALUES (null, 'una $ob-fruitM parlanchína', 'diversifyTen');
INSERT INTO specials VALUES (null, 'una $ob-plantM parlanchína', 'diversifyTen');

INSERT INTO specials VALUES (null, 'Un $ob-animalH', 'diversifyEleven');
INSERT INTO specials VALUES (null, 'Una $ob-fruitM', 'diversifyEleven');
INSERT INTO specials VALUES (null, 'Un $ob-fruitH', 'diversifyEleven');
INSERT INTO specials VALUES (null, 'Un $ob-plantH', 'diversifyEleven');

INSERT INTO bases VALUES (null, '$sp-reception',0);

INSERT INTO specials VALUES (null, '$sp-calmst recibes las memorias y recuerdos de $per-celebritt', 'reception');
INSERT INTO specials VALUES (null, '$sp-mid una $ad-gen $per-genM recibe las memorias de $per-celebritt', 'reception');
INSERT INTO specials VALUES (null, '$sp-calmst el $ob-bodypartH de $per-celebritt aparece ante ti', 'reception');
INSERT INTO specials VALUES (null, '$sp-mid de repente te vuelves tan sabio como $per-philo', 'reception');
INSERT INTO specials VALUES (null, 'Existe un $per-genH que cada día se parece un poco más a $per-celebritt', 'reception');
INSERT INTO specials VALUES (null, 'En $ob-locality, empiezan a llover $sp-diversifyTwelve del cielo. Un $ob-animalH es el responsable', 'reception');
INSERT INTO specials VALUES (null, 'Una $per-rulerM $ad-gentilicioM $ver-own un espejo $ad-era que $sp-ref', 'reception');

INSERT INTO specials VALUES (null, 'Estás sentado viendo al horizonte cuando de pronto', 'calmst');
INSERT INTO specials VALUES (null, 'Tratas de recordar que comiste hoy y de la nada', 'calmst');
INSERT INTO specials VALUES (null, 'Tropiezas, te golpeas la cabeza y mágicamente', 'calmst');
INSERT INTO specials VALUES (null, 'Tomas un sorbo de tu $ob-drinkM y', 'calmst');
INSERT INTO specials VALUES (null, 'Despiertas de un extraño sueño y mágicamente', 'calmst');
INSERT INTO specials VALUES (null, 'Alguien llama tu nombre y de la nada', 'calmst');

INSERT INTO specials VALUES (null, '$ob-gems', 'diversifyTwelve');
INSERT INTO specials VALUES (null, '$ob-plantPM', 'diversifyTwelve');
INSERT INTO specials VALUES (null, '$ob-fruitPM', 'diversifyTwelve');
INSERT INTO specials VALUES (null, '$ob-fruitPH', 'diversifyTwelve');
INSERT INTO specials VALUES (null, '$ob-thingP', 'diversifyTwelve');

INSERT INTO specials VALUES (null, 'refleja $ob-concept', 'ref');
INSERT INTO specials VALUES (null, 'solamente refleja $ob-thingP', 'ref');

INSERT INTO bases VALUES (null, '$sp-bigbrain',0);

INSERT INTO specials VALUES (null, 'Un $per-genH está escalando $ob-brainH. $sp-topp', 'bigbrain');
INSERT INTO specials VALUES (null, 'Una $per-genM está escalando $ob-brainH. $sp-topp', 'bigbrain');
INSERT INTO specials VALUES (null, '$sp-diversifyThirteen de repente cae del cielo en $ob-locality', 'bigbrain');
INSERT INTO specials VALUES (null, 'Un $ob-flyerH y un $per-priestH $sp-custody', 'bigbrain');

INSERT INTO specials VALUES (null, 'Le tomará un par de años alcanzar la cima', 'topp');
INSERT INTO specials VALUES (null, 'Siempre fue su $sp-lifel', 'topp');
INSERT INTO specials VALUES (null, 'Sabe que nunca llegará a la cima', 'topp');

INSERT INTO specials VALUES (null, 'sueño de la infancia', 'lifel');
INSERT INTO specials VALUES (null, 'más grande meta', 'lifel');
INSERT INTO specials VALUES (null, 'propósito de vida', 'lifel');
INSERT INTO specials VALUES (null, 'misión en está vida', 'lifel');

INSERT INTO specials VALUES (null, 'Un $ob-garbagedumpH', 'diversifyThirteen');
INSERT INTO specials VALUES (null, 'Una $ob-garbagedumpM', 'diversifyThirteen');
INSERT INTO specials VALUES (null, 'Un $ob-landformH', 'diversifyThirteen');
INSERT INTO specials VALUES (null, 'Una $ob-landformM', 'diversifyThirteen');
INSERT INTO specials VALUES (null, 'Un $ob-structureH', 'diversifyThirteen');
INSERT INTO specials VALUES (null, 'Una $ob-structureM', 'diversifyThirteen');

INSERT INTO specials VALUES (null, 'están arreglando su divorcio', 'custody');
INSERT INTO specials VALUES (null, 'están arreglando su matrimonio', 'custody');
INSERT INTO specials VALUES (null, 'están peleando por la custodia de sus hijos', 'custody');
INSERT INTO specials VALUES (null, 'están coqueteando entre ellos', 'custody');
INSERT INTO specials VALUES (null, 'están peleando a muerte en un $ob-garbagedumpH en $ob-locality', 'custody');
INSERT INTO specials VALUES (null, 'están perdiendo el amor entre ellos', 'custody');
INSERT INTO specials VALUES (null, 'se están enamorando. Sus padres no aprueban la relación', 'custody');

INSERT INTO bases VALUES (null, '$sp-walkone',0);

INSERT INTO specials VALUES (null, 'Estás caminando a través de $sp-ruined, $sp-litgir', 'walkone');
INSERT INTO specials VALUES (null, 'Estás parado en una $ob-jungleM de $ad-mat, $sp-litgir', 'walkone');
INSERT INTO specials VALUES (null, 'Despiertas en un $ob-garbagedumpH, $sp-litgir', 'walkone');
INSERT INTO specials VALUES (null, 'Te despiertas en $sp-ruined, $sp-litgir', 'walkone');
INSERT INTO specials VALUES (null, 'Eres transportado a $sp-ruined, $sp-litgir', 'walkone');

INSERT INTO specials VALUES (null, 'una ciudad desierta', 'ruined');
INSERT INTO specials VALUES (null, 'una ciudad en ruinas', 'ruined');
INSERT INTO specials VALUES (null, 'una ciudad inundada', 'ruined');
INSERT INTO specials VALUES (null, 'una ciudad hecha de $ob-stuff', 'ruined');
INSERT INTO specials VALUES (null, 'una $ob-jungleM', 'ruined');
INSERT INTO specials VALUES (null, 'una ciudad parecida a $ob-city, pero todo es color $ad-color', 'ruined');
INSERT INTO specials VALUES (null, 'una ciudad parecida a $ob-city, pero todo está al revés', 'ruined');
INSERT INTO specials VALUES (null, '$ob-city, que yace en ruinas', 'ruined');
INSERT INTO specials VALUES (null, '$ob-city, está inundada de $ob-liquid', 'ruined');
INSERT INTO specials VALUES (null, '$ob-city', 'ruined');
INSERT INTO specials VALUES (null, 'una tierra gobernada por un $ob-animalH parlanchín', 'ruined');

INSERT INTO specials VALUES (null, 'una $per-girM aparece y te da $sp-diversifyFourteen', 'litgir');
INSERT INTO specials VALUES (null, 'una $per-genM aparece y te entrega $sp-diversifyFourteen', 'litgir');
INSERT INTO specials VALUES (null, 'cerca, una $per-girM está sonando una campana', 'litgir');
INSERT INTO specials VALUES (null, 'delante de ti hay un camino pavimentado con $ob-thingP', 'litgir');
INSERT INTO specials VALUES (null, 'puedes escuchar a lo lejos el débil sonido de $ob-meow', 'litgir');
INSERT INTO specials VALUES (null, '$ob-liquid comienza a caer del cielo', 'litgir');
INSERT INTO specials VALUES (null, '$ob-thingP comienzan a caer del cielo', 'litgir');

INSERT INTO specials VALUES (null, 'una $ob-plantM', 'diversifyFourteen');
INSERT INTO specials VALUES (null, 'un $ob-candleH', 'diversifyFourteen');
INSERT INTO specials VALUES (null, 'un $ob-ast', 'diversifyFourteen');
INSERT INTO specials VALUES (null, 'una $ob-candleM', 'diversifyFourteen');
INSERT INTO specials VALUES (null, 'una $ob-bookM', 'diversifyFourteen');
INSERT INTO specials VALUES (null, 'un $ob-bookH', 'diversifyFourteen');

INSERT INTO bases VALUES (null, '$sp-wackyseven',0);

INSERT INTO specials VALUES (null, '$sp-mid todos los $ob-thingPH que hay $ob-locality desaparecen repentinamente', 'wackyseven');
INSERT INTO specials VALUES (null, '$sp-mid todas las $ob-thingPM que hay $ob-locality desaparecen repentinamente', 'wackyseven');
INSERT INTO specials VALUES (null, '$sp-mid todos los $ob-structurePH que hay en $ob-locality empiezan a caminar', 'wackyseven');
INSERT INTO specials VALUES (null, '$sp-mid todos los relojes se paran y un $ob-thingH aparece en el cielo', 'wackyseven');
INSERT INTO specials VALUES (null, '$sp-mid $ob-animalPH miniatura recorren las calles de $ob-city', 'wackyseven');
INSERT INTO specials VALUES (null, '$sp-mid una $ob-animalM gigante surge $sp-ocean', 'wackyseven');
INSERT INTO specials VALUES (null, 'Un $per-crim que viaja en el tiempo desde $sp-oldlocationtwo aparece ante ti. Él te entrega un $ob-thingH y te dice: "$sp-saystuff"', 'wackyseven');
INSERT INTO specials VALUES (null, 'Un viajero en el tiempo que viene desde $sp-oldlocationtwo aparece. Te entrega un $ob-thingH y te dice: "$sp-saystuff"', 'wackyseven');
INSERT INTO specials VALUES (null, 'Un viajero en el tiempo salta desde $sp-oldlocationtwo al presente. Te entrega una $ob-thingM y te dice: "$sp-saystuff"', 'wackyseven');
INSERT INTO specials VALUES (null, 'Una $per-fem que viaja en el tiempo desde $sp-oldlocationtwo se materializa frente a ti. Dice: "Estoy aquí para darte un $ob-gemH"', 'wackyseven');

INSERT INTO specials VALUES (null, 'la Atenas antigua', 'oldlocationtwo');
INSERT INTO specials VALUES (null, 'la antigua Roma', 'oldlocationtwo');
INSERT INTO specials VALUES (null, 'el antiguo Egipto', 'oldlocationtwo');
INSERT INTO specials VALUES (null, 'la Florencia medieval', 'oldlocationtwo');
INSERT INTO specials VALUES (null, 'Venecia del siglo XVIII', 'oldlocationtwo');
INSERT INTO specials VALUES (null, 'la época de la peste negra', 'oldlocationtwo');
INSERT INTO specials VALUES (null, 'la guerra de los pasteles', 'oldlocationtwo');
INSERT INTO specials VALUES (null, 'la revolución Mexicana', 'oldlocationtwo');
INSERT INTO specials VALUES (null, 'el París medieval', 'oldlocationtwo');
INSERT INTO specials VALUES (null, 'la Rusia zarista', 'oldlocationtwo');
INSERT INTO specials VALUES (null, 'la dinastía Ming', 'oldlocationtwo');
INSERT INTO specials VALUES (null, 'el año 2100', 'oldlocationtwo');
INSERT INTO specials VALUES (null, 'el Porfiriato', 'oldlocationtwo');
INSERT INTO specials VALUES (null, 'la Decena Trágica', 'oldlocationtwo');
INSERT INTO specials VALUES (null, 'la Guerra Cristera', 'oldlocationtwo');
INSERT INTO specials VALUES (null, 'la batalla de Puebla', 'oldlocationtwo');

INSERT INTO bases VALUES (null, '$sp-wackyfifteen',0);

INSERT INTO specials VALUES (null, 'Si le pagas a un $ob-beingH con un par de $ob-phenomentwo, destruye una $ob-universeM de tu elección', 'wackyfifteen');
INSERT INTO specials VALUES (null, 'Si le pagas a una $ob-beingM en $ob-stateu la gran cantidad de $ob-bigNum $ob-currency, destruirá $sp-fate', 'wackyfifteen');
INSERT INTO specials VALUES (null, 'Un $ad-genH $ob-jobH de $ob-stateu le suplica a un $ob-beingH que le ayude a destruir $ob-sunntwo', 'wackyfifteen');
INSERT INTO specials VALUES (null, 'Una $per-rulerM reconstruye la $ob-landmarkM con $ob-phenomentwo', 'wackyfifteen');
INSERT INTO specials VALUES (null, 'En $ob-stateu, un $per-genH está construyendo una copia exacta de la $ob-landmarkM con $ob-phenomentwo', 'wackyfifteen');
INSERT INTO specials VALUES (null, 'Una $per-rulerM empieza a construir una replica de la $ob-landmarkM con $ob-phenomentwo, pero se le acaban', 'wackyfifteen');
INSERT INTO specials VALUES (null, '$sp-diversifyFifteen secuestra a un $per-rulerH. Exige un rescate de $ob-bigNum $ob-phenomentwo', 'wackyfifteen');
INSERT INTO specials VALUES (null, '$sp-diversifyFifteen del futuro aparece $ob-ceremony de un $per-rulerH $ad-gentilicioH. $sp-actione', 'wackyfifteen');

INSERT INTO specials VALUES (null, 'la humanidad', 'fate');
INSERT INTO specials VALUES (null, 'el mundo', 'fate');
INSERT INTO specials VALUES (null, 'el universo ', 'fate');
INSERT INTO specials VALUES (null, 'el mundo entero', 'fate');
INSERT INTO specials VALUES (null, 'la raza humana', 'fate');
INSERT INTO specials VALUES (null, 'el tiempo y el espacio', 'fate');
INSERT INTO specials VALUES (null, 'la vida en la tierra', 'fate');
INSERT INTO specials VALUES (null, 'todos los gatos del mundo', 'fate');
INSERT INTO specials VALUES (null, 'todos los niños del mundo', 'fate');
INSERT INTO specials VALUES (null, 'todos los niños de la tierra', 'fate');
INSERT INTO specials VALUES (null, 'a todos los primogénitos del mundo', 'fate');

INSERT INTO specials VALUES (null, 'Un $ob-animalH', 'diversifyFifteen');
INSERT INTO specials VALUES (null, 'Una $ob-animalM', 'diversifyFifteen');
INSERT INTO specials VALUES (null, 'Un $ob-beingH', 'diversifyFifteen');
INSERT INTO specials VALUES (null, 'Una $ob-beingM', 'diversifyFifteen');

INSERT INTO specials VALUES (null, 'Dice: "Estoy aquí para $ver-tran"', 'actione');
INSERT INTO specials VALUES (null, 'Dice: "Vine a $ver-tran"', 'actione');

INSERT INTO bases VALUES (null, '$sp-wackynine',0);

INSERT INTO specials VALUES (null, 'Un enorme $sp-slenderguy $sp-roamy $sp-towno. $sp-giantdo', 'wackynine');
INSERT INTO specials VALUES (null, 'Una $per-genM disfrazada de $ob-animalH $sp-roamy $sp-towno. $sp-giantdo', 'wackynine');
INSERT INTO specials VALUES (null, 'El fantasma de un $per-genH $sp-roamy $sp-towno. $sp-giantdo', 'wackynine');
INSERT INTO specials VALUES (null, 'Un $ob-thingH consciente $sp-roamy $sp-towno. $sp-giantdo', 'wackynine');
INSERT INTO specials VALUES (null, 'Una $ob-structureM con la mente de una $per-genM $sp-roamy $sp-towno. $sp-giantdo', 'wackynine');
INSERT INTO specials VALUES (null, 'Un $ob-structureH con la mente de una $per-genH $sp-roamy $sp-towno. $sp-giantdo', 'wackynine');

INSERT INTO specials VALUES (null, 'deambula por las calles de', 'roamy');
INSERT INTO specials VALUES (null, 'camina por las calles de', 'roamy');
INSERT INTO specials VALUES (null, 'visita', 'roamy');

INSERT INTO specials VALUES (null, 'un pequeño poblado en $ob-stateu', 'towno');
INSERT INTO specials VALUES (null, '$ob-city', 'towno');

INSERT INTO specials VALUES (null, '$sp-mid coloca $sp-scarythi $sp-kidear', 'giantdo');
INSERT INTO specials VALUES (null, 'Viene a robarse $ob-concept', 'giantdo');
INSERT INTO specials VALUES (null, 'Viene a $ver-traninf', 'giantdo');

INSERT INTO specials VALUES (null, '$ob-beingH', 'slenderguy');
INSERT INTO specials VALUES (null, '$ob-animalH', 'slenderguy');

INSERT INTO specials VALUES (null, 'arañas', 'scarythi');
INSERT INTO specials VALUES (null, 'sueños malos', 'scarythi');
INSERT INTO specials VALUES (null, '$ob-thingP', 'scarythi');
INSERT INTO specials VALUES (null, 'un $ob-ast', 'scarythi');
INSERT INTO specials VALUES (null, 'pequeños $ob-animalPH', 'scarythi');
INSERT INTO specials VALUES (null, 'una canción', 'scarythi');
INSERT INTO specials VALUES (null, 'un sueño sobre $ob-animalPH', 'scarythi');
INSERT INTO specials VALUES (null, 'serpientes', 'scarythi');
INSERT INTO specials VALUES (null, 'un $ob-structureH', 'scarythi');
INSERT INTO specials VALUES (null, 'el color $ad-color', 'scarythi');
INSERT INTO specials VALUES (null, 'una $ob-fruitM', 'scarythi');
INSERT INTO specials VALUES (null, 'un $ob-fruitH', 'scarythi');
INSERT INTO specials VALUES (null, 'un $ob-candleH', 'scarythi');
INSERT INTO specials VALUES (null, 'una $ob-candleM', 'scarythi');
INSERT INTO specials VALUES (null, 'un pequeño $ob-landformH', 'scarythi');

INSERT INTO specials VALUES (null, 'en las mentes de todos', 'kidear');
INSERT INTO specials VALUES (null, 'en los cerebros de todos', 'kidear');
INSERT INTO specials VALUES (null, 'en las mentes de todos los niños pequeños', 'kidear');
INSERT INTO specials VALUES (null, 'en las mentes de todas las niñas pequeñas', 'kidear');

INSERT INTO bases VALUES (null, '$ob-soc $per-scholarPH $sp-decidefate',0);

INSERT INTO specials VALUES (null, 'se reúne una vez al año $sp-ruin para decidir el destino $sp-fatetwo', 'decidefate');
INSERT INTO specials VALUES (null, 'une fuerzas para destruir a un $ob-beingH', 'decidefate');
INSERT INTO specials VALUES (null, 'vive adentro de una enorme $ob-oddlandM de $ad-mat', 'decidefate');
INSERT INTO specials VALUES (null, 'se reúne para adorar a $sp-diversifySixteen', 'decidefate');

INSERT INTO specials VALUES (null, 'adentro de una $ob-structureM en ruinas', 'ruin');
INSERT INTO specials VALUES (null, 'en un $ob-structureH de $ad-mat', 'ruin');
INSERT INTO specials VALUES (null, 'adentro de un $ob-landformH', 'ruin');
INSERT INTO specials VALUES (null, 'adentro de una $ob-landformM', 'ruin');
INSERT INTO specials VALUES (null, 'en la cima de una montaña de $ad-mat', 'ruin');

INSERT INTO specials VALUES (null, 'de la humanidad', 'fatetwo');
INSERT INTO specials VALUES (null, 'del mundo', 'fatetwo');
INSERT INTO specials VALUES (null, 'del universo ', 'fatetwo');
INSERT INTO specials VALUES (null, 'del mundo entero', 'fatetwo');
INSERT INTO specials VALUES (null, 'de la raza humana', 'fatetwo');
INSERT INTO specials VALUES (null, 'del tiempo y el espacio', 'fatetwo');
INSERT INTO specials VALUES (null, 'de la vida en la tierra', 'fatetwo');
INSERT INTO specials VALUES (null, 'de todos los gatos del mundo', 'fatetwo');
INSERT INTO specials VALUES (null, 'de todos los $ob-animalPH del mundo', 'fatetwo');
INSERT INTO specials VALUES (null, 'de todos los niños del mundo', 'fatetwo');
INSERT INTO specials VALUES (null, 'de todos los niños de la tierra', 'fatetwo');
INSERT INTO specials VALUES (null, 'de todos los primogénitos del mundo', 'fatetwo');

INSERT INTO specials VALUES (null, '$ob-space', 'diversifySixteen');
INSERT INTO specials VALUES (null, '$ob-concept', 'diversifySixteen');
INSERT INTO specials VALUES (null, 'los $ob-dulceP', 'diversifySixteen');

INSERT INTO bases VALUES (null, '$sp-painting',0);

INSERT INTO specials VALUES (null, 'Un $per-rulerH ve un $ob-flyerH con $ob-artH pintado en sus alas', 'painting');
INSERT INTO specials VALUES (null, 'Un $per-rulerH ve un $ob-flyerH con $ob-artM pintada en sus alas', 'painting');
INSERT INTO specials VALUES (null, 'Una $per-fem está viendo $sp-pttt y se ve a sí misma en el fondo', 'painting');
INSERT INTO specials VALUES (null, 'Un $per-genH $ad-gentilicioH planta una semilla. Una $ob-structureM crece de ella', 'painting');
INSERT INTO specials VALUES (null, 'Un bebe nace en $ob-locality con $ob-artH pintado en su $ob-face', 'painting');
INSERT INTO specials VALUES (null, 'Un bebe nace en $ob-locality con $ob-artM pintada en su $ob-face', 'painting');

INSERT INTO specials VALUES (null, '$ob-artH', 'pttt');
INSERT INTO specials VALUES (null, '$ob-artM', 'pttt');
INSERT INTO specials VALUES (null, '$ob-artPM', 'pttt');
INSERT INTO specials VALUES (null, '$ob-artPH', 'pttt');

INSERT INTO bases VALUES (null, '$sp-genrulerHorM se entera de la existencia de $sp-struc',0);

INSERT INTO specials VALUES (null, 'un $per-rulerH', 'genrulerHorM');
INSERT INTO specials VALUES (null, 'una $per-rulerM', 'genrulerHorM');
INSERT INTO specials VALUES (null, 'un $per-genH', 'genrulerHorM');
INSERT INTO specials VALUES (null, 'una $per-genM', 'genrulerHorM');

INSERT INTO specials VALUES (null, '$sp-diversifySeventeen hecho de $ob-frag y $sp-send $sp-smash', 'struc');
INSERT INTO specials VALUES (null, 'un $ob-lakeH lleno de $ob-liquid, desea navegar su $ob-shipH a través de él', 'struc');
INSERT INTO specials VALUES (null, 'un $ob-lakeH lleno de $ob-liquid, desea bebérselo todo', 'struc');
INSERT INTO specials VALUES (null, 'una ciudad gobernada por $ob-animalPH, $sp-send colonizarla', 'struc');
INSERT INTO specials VALUES (null, 'un $ob-treeH que da $ob-gems como frutos, decide robárselo', 'struc');
INSERT INTO specials VALUES (null, 'un $ob-treeH que da $ob-gems como frutos, decide quemarlo', 'struc');
INSERT INTO specials VALUES (null, '$sp-diversifySeventeen hecho de $ob-dulceP, planea comérselo', 'struc');
INSERT INTO specials VALUES (null, '$sp-diversifySeventeen hecho de $ob-stuff, decide escribir un $ob-bookH sobre él', 'struc');

INSERT INTO specials VALUES (null, 'manda un ejercito a', 'send');
INSERT INTO specials VALUES (null, 'decide', 'send');
INSERT INTO specials VALUES (null, 'desea', 'send');
INSERT INTO specials VALUES (null, 'envía un secuaz a', 'send');
INSERT INTO specials VALUES (null, 'manda a su guardaespaldas a', 'send');

INSERT INTO specials VALUES (null, 'destrozarlo', 'smash');
INSERT INTO specials VALUES (null, 'hacerlo pedazos', 'smash');
INSERT INTO specials VALUES (null, 'destuirlo en mil pedazos', 'smash');
INSERT INTO specials VALUES (null, 'destruirlo a martillazos', 'smash');
INSERT INTO specials VALUES (null, 'partirlo en un millón de pedazos', 'smash');

INSERT INTO specials VALUES (null, 'un $ob-structureH', 'diversifySeventeen');
INSERT INTO specials VALUES (null, 'un $ob-landformH', 'diversifySeventeen');
INSERT INTO specials VALUES (null, 'un $ob-oddlandH', 'diversifySeventeen');


INSERT INTO bases VALUES (null, '$ob-conceptaux $sp-cold',0);

INSERT INTO specials VALUES (null, 'actualmente fuera de la oficina', 'cold');
INSERT INTO specials VALUES (null, 'acutalmente viviendo en $ob-locality', 'cold');
INSERT INTO specials VALUES (null, 'atravezando una crisis de alcoholismo', 'cold');
INSERT INTO specials VALUES (null, 'embarazada', 'cold');
INSERT INTO specials VALUES (null, 'dando a luz a un bebé: un $ob-thingH', 'cold');
INSERT INTO specials VALUES (null, 'viendo porno gay', 'cold');
INSERT INTO specials VALUES (null, 'viendo videos de YouTube', 'cold');
INSERT INTO specials VALUES (null, 'jugando golf en $ob-locality', 'cold');
INSERT INTO specials VALUES (null, 'jugando $ob-game', 'cold');
INSERT INTO specials VALUES (null, 'por casarse con $ob-concept', 'cold');
INSERT INTO specials VALUES (null, 'sintiéndose $ad-emote', 'cold');
INSERT INTO specials VALUES (null, 'sintiéndose $ad-emote el día de hoy', 'cold');
INSERT INTO specials VALUES (null, 'sintiéndose extremadamente $ad-emote el día de hoy', 'cold');
INSERT INTO specials VALUES (null, 'leyendo $ob-title', 'cold');
INSERT INTO specials VALUES (null, 'de vacaciones en $ob-locality', 'cold');
INSERT INTO specials VALUES (null, 'en una relación poliamorosa con $ob-concept y una $ob-thingM', 'cold');
INSERT INTO specials VALUES (null, 'en una relación con $ob-concept', 'cold');
INSERT INTO specials VALUES (null, 'enamorada de $ob-concept', 'cold');

INSERT INTO bases VALUES (null, '$sp-devourzodiac',0);

INSERT INTO specials VALUES (null, 'Una $per-scholarM $sp-readi una historia sobre $ob-locality que describe una guerra entre $ob-thingP que ocurrió en el año $ob-smallNum Antes de Cristo', 'devourzodiac');
INSERT INTO specials VALUES (null, 'Una $per-rulerM decreta que habrá un nuevo signo del zodíaco: la $ob-thingM', 'devourzodiac');
INSERT INTO specials VALUES (null, 'Un juez $ad-gentilicioH sentencia a un $per-crim a ser devorado por $sp-eaty', 'devourzodiac');
INSERT INTO specials VALUES (null, 'Un $ob-diary $ad-text describe un mundo donde $sp-happ', 'devourzodiac');
INSERT INTO specials VALUES (null, 'Un $per-rulerH $ad-gentilicioH $sp-stea todas las $ob-thingPM que hay en $ob-locality', 'devourzodiac');
INSERT INTO specials VALUES (null, 'Un $per-genH asesina a una $per-genM con una inusual arma: $sp-murderweapon', 'devourzodiac');

INSERT INTO specials VALUES (null, 'está escribiendo', 'readi');
INSERT INTO specials VALUES (null, 'está leyendo', 'readi');
INSERT INTO specials VALUES (null, 'descubre', 'readi');

INSERT INTO specials VALUES (null, 'una $ob-eater', 'eaty');
INSERT INTO specials VALUES (null, 'un $ob-animalH gigante', 'eaty');
INSERT INTO specials VALUES (null, '$ob-concept', 'eaty');

INSERT INTO specials VALUES (null, 'todo está hecho de $ob-stuff', 'happ');
INSERT INTO specials VALUES (null, 'todo está hecho de $ob-thingP', 'happ');
INSERT INTO specials VALUES (null, 'la única cosa que existe es una enorme $ob-structureM hecha de $ad-mat', 'happ');
INSERT INTO specials VALUES (null, '$ob-concept no existe', 'happ');
INSERT INTO specials VALUES (null, 'todo el mundo es $ad-affect', 'happ');
INSERT INTO specials VALUES (null, 'las $ob-thingPM no existen', 'happ');
INSERT INTO specials VALUES (null, 'todo existe en todas partes, simultáneamente', 'happ');

INSERT INTO specials VALUES (null, 'desea robarse', 'stea');
INSERT INTO specials VALUES (null, 'construye un plan para robarse', 'stea');
INSERT INTO specials VALUES (null, 'quiere robarse', 'stea');
INSERT INTO specials VALUES (null, 'está planeando robarse', 'stea');
INSERT INTO specials VALUES (null, 'quiere destruir', 'stea');
INSERT INTO specials VALUES (null, 'está planeando destruir', 'stea');

INSERT INTO specials VALUES (null, 'un $ob-thingH', 'murderweapon');
INSERT INTO specials VALUES (null, 'un $ob-oddlandH', 'murderweapon');
INSERT INTO specials VALUES (null, 'un $ob-landformH', 'murderweapon');
INSERT INTO specials VALUES (null, '$ob-concept', 'murderweapon');

INSERT INTO bases VALUES (null, '$sp-priestandsociety',0);

INSERT INTO specials VALUES (null, '$sp-mid $ob-locality se inunda con $ob-liquid', 'priestandsociety');
INSERT INTO specials VALUES (null, 'Un $per-priestH construye una $ob-churM enorme y la llena de $sp-diversifyEighteen', 'priestandsociety');
INSERT INTO specials VALUES (null, '$ob-soc $per-scholarPH se imagina una $sp-diversifyNineteen hasta que empieza a existir', 'priestandsociety');
INSERT INTO specials VALUES (null, 'Un $per-genH tiene $sp-headache. $sp-andfind un $ob-thingH adentro de su $ob-skull', 'priestandsociety');
INSERT INTO specials VALUES (null, 'Una $per-genM tiene $sp-headache. $sp-andfind un $ob-thingH adentro de su $ob-skull', 'priestandsociety');

INSERT INTO specials VALUES (null, '$ob-thingP', 'diversifyEighteen');
INSERT INTO specials VALUES (null, '$ob-gems', 'diversifyEighteen');
INSERT INTO specials VALUES (null, '$ob-animalPH', 'diversifyEighteen');

INSERT INTO specials VALUES (null, '$ob-structureM', 'diversifyNineteen');
INSERT INTO specials VALUES (null, '$ob-landformM', 'diversifyNineteen');
INSERT INTO specials VALUES (null, '$ob-oddlandM', 'diversifyNineteen');

INSERT INTO specials VALUES (null, 'una terrible migraña', 'headache');
INSERT INTO specials VALUES (null, 'un terrible dolor de cabeza', 'headache');
INSERT INTO specials VALUES (null, 'dolor de cabeza', 'headache');
INSERT INTO specials VALUES (null, 'migraña', 'headache');

INSERT INTO specials VALUES (null, 'Descubre que es', 'andfind');
INSERT INTO specials VALUES (null, 'Un doctor descubre que es', 'andfind');
INSERT INTO specials VALUES (null, 'Resultó ser que era', 'andfind');

INSERT INTO bases VALUES (null, 'Existe una profecía $ad-oldnationalityM que dice que $sp-imprison',0);

INSERT INTO specials VALUES (null, 'serás $ver-passive por $sp-diversifyTwenty', 'imprison');
INSERT INTO specials VALUES (null, '$ver-tranIndic un $ob-thingH', 'imprison');

INSERT INTO specials VALUES (null, 'un $ob-animalH', 'diversifyTwenty');
INSERT INTO specials VALUES (null, 'un $ob-structureH', 'diversifyTwenty');
INSERT INTO specials VALUES (null, 'un $ob-landformH', 'diversifyTwenty');
INSERT INTO specials VALUES (null, 'un $ob-gemH', 'diversifyTwenty');
INSERT INTO specials VALUES (null, 'un $ob-treeH', 'diversifyTwenty');
INSERT INTO specials VALUES (null, 'una bolsa de $ob-dulceP', 'diversifyTwenty');
INSERT INTO specials VALUES (null, 'una $ob-eater', 'diversifyTwenty');
INSERT INTO specials VALUES (null, 'una $ob-eater', 'diversifyTwenty');
INSERT INTO specials VALUES (null, 'una $ob-animalM', 'diversifyTwenty');
INSERT INTO specials VALUES (null, 'una $ob-structureM', 'diversifyTwenty');
INSERT INTO specials VALUES (null, 'una $ob-landformM', 'diversifyTwenty');

INSERT INTO bases VALUES (null, '$sp-deformity',0);

INSERT INTO specials VALUES (null, 'Un $ad-genH $per-genH tiene $sp-diversifyTwentyone en vez de un $ob-bodypartH', 'deformity');
INSERT INTO specials VALUES (null, 'En $ob-locality vive una $per-genM que tiene $sp-diversifyTwentyone en vez de un $ob-bodypartH', 'deformity');
INSERT INTO specials VALUES (null, 'Existe una $per-genM en $ob-locality que tiene $sp-defo', 'deformity');

INSERT INTO specials VALUES (null, '$ob-smallNum $ob-bodypartPH', 'defo');
INSERT INTO specials VALUES (null, '$ob-smallNum $ob-bodypartPM', 'defo');
INSERT INTO specials VALUES (null, 'un $ob-bodypartH de $ad-mat', 'defo');
INSERT INTO specials VALUES (null, 'un $ob-thingH en vez de una $ob-bodypartM', 'defo');

INSERT INTO specials VALUES (null, 'un $ob-thingH', 'diversifyTwentyone');
INSERT INTO specials VALUES (null, 'una $ob-thingM', 'diversifyTwentyone');
INSERT INTO specials VALUES (null, 'una $ob-structureM', 'diversifyTwentyone');
INSERT INTO specials VALUES (null, 'un $ob-structureH', 'diversifyTwentyone');
INSERT INTO specials VALUES (null, 'un $ob-treeH', 'diversifyTwentyone');
INSERT INTO specials VALUES (null, 'un $ob-gemH', 'diversifyTwentyone');

INSERT INTO bases VALUES (null, '$sp-airshow $sp-laast',0);

INSERT INTO specials VALUES (null, 'Un maestro $ad-gentilicioH conduce $ob-moz', 'airshow');
INSERT INTO specials VALUES (null, 'Un director de teatro escenifica una obra sobre $ob-concept', 'airshow');
INSERT INTO specials VALUES (null, 'Una estación de televisión $ad-gentilicioM transmite un programa sobre $ob-concept', 'airshow');
INSERT INTO specials VALUES (null, 'Una oficina de gobierno $sp-meee', 'airshow');
INSERT INTO specials VALUES (null, 'Un $per-rulerH escribe un discurso sobre $ob-concept', 'airshow');

INSERT INTO specials VALUES (null, 'y dura $ob-singleNum millones de años', 'laast');
INSERT INTO specials VALUES (null, 'y continúa por $ob-singleNum billones de años', 'laast');
INSERT INTO specials VALUES (null, 'y dura veinte años', 'laast');

INSERT INTO specials VALUES (null, 'tiene una reunión sobre $ob-concept', 'meee');
INSERT INTO specials VALUES (null, 'convoca a una junta para hablar sobre $ob-concept', 'meee');

INSERT INTO bases VALUES (null, '$sp-milestone',0);

INSERT INTO specials VALUES (null, '$ob-concept está celebrando su cumpleaños $sp-birthdayceleb', 'milestone');
INSERT INTO specials VALUES (null, 'Una $per-genH le hace una fiesta sorpresa a $ob-concept', 'milestone');
INSERT INTO specials VALUES (null, 'Un $per-rulerH celebra su aniversario de $ob-smallNum años de casado con $sp-diversifySeventeen', 'milestone');
INSERT INTO specials VALUES (null, '$sp-genrulerHorM le propone matrimonio a $ob-concept', 'milestone');
INSERT INTO specials VALUES (null, '$sp-diversifySeventeen celebra haberse graduado de la universidad', 'milestone');
INSERT INTO specials VALUES (null, '$sp-diversifySeventeen celebra el natalicio de Benito Juárez', 'milestone');
INSERT INTO specials VALUES (null, '$sp-diversifySeventeen se piensa disfrazar de $ob-animalH para Halloween', 'milestone');
INSERT INTO specials VALUES (null, '$sp-diversifySeventeen va disfrazado de $ob-thingH a una fiesta de disfraces', 'milestone');
INSERT INTO specials VALUES (null, 'Un $per-genH va a una fiesta de disfraces vestido de $ob-concept', 'milestone');

INSERT INTO specials VALUES (null, 'con un pastel de $ob-sabor color $ad-color', 'birthdayceleb');
INSERT INTO specials VALUES (null, 'con todos sus amigos de la primaria', 'birthdayceleb');
INSERT INTO specials VALUES (null, 'con todos sus amigos de la escuela', 'birthdayceleb');

INSERT INTO bases VALUES (null, '$sp-boy $sp-croc',0);

INSERT INTO specials VALUES (null, 'En $ob-locality hay', 'boy');
INSERT INTO specials VALUES (null, 'Un $per-genH conoce a', 'boy');
INSERT INTO specials VALUES (null, 'Un $ob-bookH $ad-era describe un', 'boy');
INSERT INTO specials VALUES (null, 'Un $per-rulerH $ad-gentilicioH cuenta la historia de un', 'boy');
INSERT INTO specials VALUES (null, 'Una $per-rulerM ve a', 'boy');

INSERT INTO specials VALUES (null, 'un cocodrilo con $sp-thingsandmore en vez de dientes', 'croc');
INSERT INTO specials VALUES (null, 'un tiburón con $sp-thingsandmore en vez de dientes', 'croc');
INSERT INTO specials VALUES (null, 'un leopardo con $sp-thingsandmore en vez de manchas', 'croc');
INSERT INTO specials VALUES (null, 'un reno con $sp-thingsandmore en vez de cuernos', 'croc');
INSERT INTO specials VALUES (null, 'un buho con $sp-thingsandmore en vez de ojos', 'croc');
INSERT INTO specials VALUES (null, 'un puplo con $sp-thingsandmore en vez de tentáculos', 'croc');
INSERT INTO specials VALUES (null, 'un rinoceronte con un $ob-thingH en vez de cuerno', 'croc');
INSERT INTO specials VALUES (null, 'una ballena tan grande como $ob-city', 'croc');
INSERT INTO specials VALUES (null, 'un oso polar cubierto en $ob-stuff en vez de piel', 'croc');
INSERT INTO specials VALUES (null, 'una araña con $ob-thingP en vez de piernas', 'croc');

INSERT INTO specials VALUES (null, '$ob-thingP', 'thingsandmore');
INSERT INTO specials VALUES (null, '$ob-gems', 'thingsandmore');
INSERT INTO specials VALUES (null, '$ob-fruitPM', 'thingsandmore');
INSERT INTO specials VALUES (null, '$ob-fruitPH', 'thingsandmore');
INSERT INTO specials VALUES (null, '$ob-structurePH', 'thingsandmore');
INSERT INTO specials VALUES (null, '$ob-structurePM', 'thingsandmore');

INSERT INTO bases VALUES (null, 'Un $per-cookH $sp-bake',0);

INSERT INTO specials VALUES (null, 'está escuchando un $ob-loudthingH que toca $sp-song', 'sonic');
INSERT INTO specials VALUES (null, 'escucha $ob-meow que suena como $ob-concept', 'sonic');
INSERT INTO specials VALUES (null, 'hace un licuado sazonado con $ob-space', 'bake');
INSERT INTO specials VALUES (null, 'hace un smoothie con $ob-fruitPM, $ob-fruitPH y $ob-space', 'bake');
INSERT INTO specials VALUES (null, 'hornea un pastel hecho de $ob-stuff', 'bake');
INSERT INTO specials VALUES (null, 'hace una tarta. Adentro tiene lo que parece ser $ob-concept', 'bake');
INSERT INTO specials VALUES (null, 'le hornea un pastel de cumpleaños a $ob-concept', 'bake');
INSERT INTO specials VALUES (null, 'hace una deliciosa sopa con $ob-liquid y $ob-thingP', 'bake');

INSERT INTO specials VALUES (null, 'todos los $ob-echoH que jamás se esucharon en $ob-locality', 'song');
INSERT INTO specials VALUES (null, 'el sonido de $ob-concept', 'song');

INSERT INTO bases VALUES (null, 'Un $per-genH $ver-third $sp-diversifySeventeen hecho de $ad-mat',0);
INSERT INTO bases VALUES (null, 'Un $per-rulerH $ad-genH $ver-third $sp-accu',0);

INSERT INTO specials VALUES (null, '$ob-concept', 'accu');
INSERT INTO specials VALUES (null, 'una enorme $ob-animalM hecha de $ad-mat', 'accu');
INSERT INTO specials VALUES (null, 'un enorme $ob-structureH hecho de $ad-mat', 'accu');

INSERT INTO bases VALUES (null, '$sp-assa $sp-killer $sp-kille',0);

INSERT INTO specials VALUES (null, 'Una $ob-mysteryM en la que', 'assa');
INSERT INTO specials VALUES (null, 'Un $per-rulerH es asesinado y', 'assa');
INSERT INTO specials VALUES (null, 'Un $per-genH es asesinado y', 'assa');

INSERT INTO specials VALUES (null, 'se revela que el asesino es', 'killer');
INSERT INTO specials VALUES (null, 'se revela que el homicida es', 'killer');
INSERT INTO specials VALUES (null, 'el asesino resulta ser', 'killer');
INSERT INTO specials VALUES (null, 'el homicida resulta ser', 'killer');

INSERT INTO specials VALUES (null, '$ad-affect', 'kille');
INSERT INTO specials VALUES (null, 'un $ob-thingH', 'kille');
INSERT INTO specials VALUES (null, '$ob-act', 'kille');

INSERT INTO bases VALUES (null, '$sp-manifold',0);

INSERT INTO specials VALUES (null, 'Hay un departamento secreto en $ob-compani que $sp-weirdplan', 'manifold');
INSERT INTO specials VALUES (null, '$ob-compani $sp-weirdplan', 'manifold');
INSERT INTO specials VALUES (null, 'En $ob-locality, $ob-lifespan $ob-animalPH $sp-tuckk', 'manifold');
INSERT INTO specials VALUES (null, 'Un $ob-bodypartH crece y crece hasta que es del tamaño de $ob-locality', 'manifold');
INSERT INTO specials VALUES (null, '$sp-reali eres capaz de controlar el $ob-bodypartH de un $per-rulerH', 'manifold');

INSERT INTO specials VALUES(null,'está investigando como generar pedazos de $ob-feelinH','weirdplan');
INSERT INTO specials VALUES(null,'está investigando como convertir a las personas en $ob-thingP','weirdplan');
INSERT INTO specials VALUES (null, 'descubrió una nueva manera para crear $ob-feelinH', 'weirdplan');
INSERT INTO specials VALUES (null, 'descubrió una manera para crear $ob-lig', 'weirdplan');
INSERT INTO specials VALUES (null, 'está desarrollando un $ob-deviceH que puede destruir $ob-law', 'weirdplan');

INSERT INTO specials VALUES (null, 'se sienten $ad-emoteP', 'tuckk');
INSERT INTO specials VALUES (null, 'están $ver-burnverb', 'tuckk');
INSERT INTO specials VALUES (null, 'hicieron una reunión para hablar de $ob-concept', 'tuckk');
INSERT INTO specials VALUES (null, 'van a asistir a una conferencia', 'tuckk');

INSERT INTO specials VALUES (null, 'te enteras de que', 'reali');
INSERT INTO specials VALUES (null, 'descubres que', 'reali');
INSERT INTO specials VALUES (null, 'un día despiertas y te das cuenta de que', 'reali');
INSERT INTO specials VALUES (null, 'de repente te das cuenta de que', 'reali');
INSERT INTO specials VALUES (null, 'un extraño te dice que', 'reali');
INSERT INTO specials VALUES (null, 'tu padre te dice que', 'reali');
INSERT INTO specials VALUES (null, 'tu madre te dice que', 'reali');
INSERT INTO specials VALUES (null, 'lees en un libro $ad-era que', 'reali');

INSERT INTO bases VALUES (null, '$sp-wackyten',0);

INSERT INTO specials VALUES (null, '$sp-parallelUniverse $sp-minorDifference','wackyten');
INSERT INTO specials VALUES (null, 'En $ob-locality vive un $per-commonerH tan hipster que $sp-hipsterst','wackyten');
INSERT INTO specials VALUES (null, 'Existe una secuela oscura de $ob-movieseries $sp-secualstory','wackyten');
INSERT INTO specials VALUES (null, 'Un $per-genH cambia de cuerpo con un $ob-beingH', 'wackyten');

INSERT INTO specials VALUES (null, 'Existe un mundo paralelo en el que', 'parallelUniverse');
INSERT INTO specials VALUES (null, 'En una realidad alterna en la que', 'parallelUniverse');
INSERT INTO specials VALUES (null, 'Hay un universo paralelo en el que', 'parallelUniverse');

INSERT INTO specials VALUES (null, 'las semanas empiezan en $ob-weekdayNoMon y terminan en Lunes', 'minorDifference');
INSERT INTO specials VALUES (null, 'el $ob-soccerteamH juega en tercera división', 'minorDifference');
INSERT INTO specials VALUES (null, 'todo el mundo tiene $ob-brainH', 'minorDifference');
INSERT INTO specials VALUES (null, 'la titularidad del poder en $ob-locality se decide con $ob-game', 'minorDifference');
INSERT INTO specials VALUES (null, 'está prohibido $ver-burnverbInf', 'minorDifference');
INSERT INTO specials VALUES (null, 'el color $ad-color no existe', 'minorDifference');
INSERT INTO specials VALUES (null, 'no existen los $ob-thingPH', 'minorDifference');
INSERT INTO specials VALUES (null, 'está prohibido $ver-poett', 'minorDifference');
INSERT INTO specials VALUES (null, '$per-celebritt no tiene página de Wikipedia', 'minorDifference');
INSERT INTO specials VALUES (null, 'nadie conoce $ob-locality', 'minorDifference');
INSERT INTO specials VALUES (null, '$ob-war nunca sucedió', 'minorDifference');
INSERT INTO specials VALUES (null, 'la $ob-landmarkM nunca se construyó', 'minorDifference');
INSERT INTO specials VALUES (null, 'solamente existe un $ob-structureH', 'minorDifference');
INSERT INTO specials VALUES (null, '$ob-natTeam ganó $ob-worldEv', 'minorDifference');
INSERT INTO specials VALUES (null, '$ob-natTeamtwo ganó $ob-worldEvtwo $sp-wackyTweak', 'minorDifference');
INSERT INTO specials VALUES (null, '$ob-title nunca se escribió', 'minorDifference');

INSERT INTO specials VALUES (null, 'pero los $ob-dulceP no existen', 'wackyTweak');

INSERT INTO specials VALUES (null, 'tiene un $ob-extinctanimalH de mascota', 'hipsterst');
INSERT INTO specials VALUES (null, 'tiene un $ob-animalH bicéfalo de mascota', 'hipsterst');
INSERT INTO specials VALUES (null, 'toma $ob-drinkH en tazas hechas de $ob-stuff', 'hipsterst');
INSERT INTO specials VALUES (null, 'viaja al trabajo en $ob-shipH', 'hipsterst');

INSERT INTO specials VALUES (null, 'que solamente venden en $ob-locality', 'secualstory');
INSERT INTO specials VALUES (null, 'que nadie ha visto', 'secualstory');
INSERT INTO specials VALUES (null, 'en la que Stan Lee hace un cameo', 'secualstory');
INSERT INTO specials VALUES (null, 'en la que $per-politic hace un personaje', 'secualstory');
INSERT INTO specials VALUES (null, 'en la que todos mueren', 'secualstory');
INSERT INTO specials VALUES (null, 'en la que $per-musician hizo el soundtrack', 'secualstory');
INSERT INTO specials VALUES (null, 'que solamente ha visto un $per-rulerH', 'secualstory');

INSERT INTO bases VALUES (null, 'Un $per-genH $ver-sneez. Durante ese $ad-quickt momento, $sp-whole como $sp-otherlife',0);

INSERT INTO specials VALUES (null, 'un $per-scholarH $ad-gentilicioH', 'otherlife');
INSERT INTO specials VALUES (null, 'un $per-rulerH $ad-gentilicioH', 'otherlife');
INSERT INTO specials VALUES (null, 'un $ob-animalH', 'otherlife');
INSERT INTO specials VALUES (null, 'una $ob-thingM consciente', 'otherlife');
INSERT INTO specials VALUES (null, 'un $ob-jobH en $ob-stateu', 'otherlife');

INSERT INTO specials VALUES (null, 'vive una vida completamente diferente', 'whole');
INSERT INTO specials VALUES (null, 'vive otra vida', 'whole');
INSERT INTO specials VALUES (null, 'vive $ob-smallNum años', 'whole');

INSERT INTO bases VALUES (null, '$sp-magicinvention $sp-magicbenefit. $sp-tragicunlikely',0);

INSERT INTO specials VALUES (null, 'Se inventa un $ob-deviceH mágico', 'magicinvention');
INSERT INTO specials VALUES (null, 'Descubren un mágico $ob-gemH $ad-era', 'magicinvention');
INSERT INTO specials VALUES (null, 'Un mago en $ob-locality hace un potaje mágico', 'magicinvention');
INSERT INTO specials VALUES (null, 'Se dice que en $ob-locality hay $sp-diversifyTwentytwo', 'magicinvention');
INSERT INTO specials VALUES (null, 'Un $ob-bookH $ad-era describe $sp-diversifyTwentytwo', 'magicinvention');

INSERT INTO specials VALUES (null, 'capaz de crear $ob-currency', 'magicbenefit');
INSERT INTO specials VALUES (null, 'capaz de mejorar la inteligencia de quién lo use', 'magicbenefit');
INSERT INTO specials VALUES (null, 'capaz de hacer más atractivas a las personas', 'magicbenefit')
INSERT INTO specials VALUES (null, 'capaz de cumplir tres deseos', 'magicbenefit');
INSERT INTO specials VALUES (null, 'capaz de cumplir tres deseos', 'magicbenefit');
INSERT INTO specials VALUES (null, 'que puede hacerte invisible', 'magicbenefit');
INSERT INTO specials VALUES (null, 'que puede hacerte ser capaz de volar', 'magicbenefit');
INSERT INTO specials VALUES (null, 'con el que puedes parar el tiempo', 'magicbenefit');
INSERT INTO specials VALUES (null, 'con el que puedes hacer viajes en el tiempo', 'magicbenefit');

INSERT INTO specials VALUES (null, 'Lo único malo es que con cada uso hay una pequeña posibilidad de que te mate', 'tragicunlikely');
INSERT INTO specials VALUES (null, 'Sin embargo, usarlo puede convertirte en $ob-animalH', 'tragicunlikely');
INSERT INTO specials VALUES (null, 'Un $per-genH $ad-gentilicioH lo usa para hacerse millonario', 'tragicunlikely');
INSERT INTO specials VALUES (null, 'Usarlo puede retrasar el tiempo $ob-smallNum años', 'tragicunlikely');
INSERT INTO specials VALUES (null, 'Tiene un efecto secundario: usarlo te puede dejar calvo', 'tragicunlikely');
INSERT INTO specials VALUES (null, 'Tiene un efecto secundario: usarlo puede causar disfunción eréctil', 'tragicunlikely');
INSERT INTO specials VALUES (null, 'Usarlo puede transportarte a un universo paralelo', 'tragicunlikely');
INSERT INTO specials VALUES (null, 'Tiene un defecto: desaparece a la persona que más quieres al ser usado', 'tragicunlikely');

INSERT INTO specials VALUES (null, 'un $ob-thingH perdido', 'diversifyTwentytwo');
INSERT INTO specials VALUES (null, 'un $ob-candleH perdido', 'diversifyTwentytwo');
INSERT INTO specials VALUES (null, 'un $ob-candleH mágico', 'diversifyTwentytwo');
INSERT INTO specials VALUES (null, 'un $ob-gemH mágico', 'diversifyTwentytwo');
INSERT INTO specials VALUES (null, 'un $ob-fruitH mágico', 'diversifyTwentytwo');
INSERT INTO specials VALUES (null, 'un vaso con $ob-drinkH', 'diversifyTwentytwo');
INSERT INTO specials VALUES (null, 'un vaso con $ob-drinkM', 'diversifyTwentytwo');
INSERT INTO specials VALUES (null, 'un vaso con $ob-liquid', 'diversifyTwentytwo');
INSERT INTO specials VALUES (null, 'un vaso con $ob-alco', 'diversifyTwentytwo');
INSERT INTO specials VALUES (null, 'un $ob-bodypartH disecado', 'diversifyTwentytwo');

INSERT INTO bases VALUES (null, '$sp-wackyeleven',0);

INSERT INTO specials VALUES (null, '$sp-oldprophecy $sp-humanshad','wackyeleven');
INSERT INTO specials VALUES (null, 'Un $per-paranormaljobH $ad-gentilicioH tiene una habilidad especial: $sp-specialability','wackyeleven');
INSERT INTO specials VALUES (null, '$sp-rankedobjects súbitamente cambian. Ahora muestran el ranking mundial verdadero','wackyeleven');

INSERT INTO specials VALUES (null, 'Un $ob-bookH $ad-era describe una historia en la que', 'oldprophecy');
INSERT INTO specials VALUES (null, 'Una pintura rupestre en una antigua cueva describe un mundo en el que', 'oldprophecy');
INSERT INTO specials VALUES (null, 'Un $per-paranormaljobH cuenta que ve un pasado en el que', 'oldprophecy');
INSERT INTO specials VALUES (null, 'Una anciana cuenta que cuando era pequeña', 'oldprophecy');
INSERT INTO specials VALUES (null, 'El más antiguo habitante de $ob-locality cuenta que cuando era niño', 'oldprophecy');
INSERT INTO specials VALUES (null, 'los humanos tenían $ob-bodypartPH gigantes', 'humanshad');
INSERT INTO specials VALUES (null, 'los humanos eran incapaces de observar el color $ad-color', 'humanshad');
INSERT INTO specials VALUES (null, 'los humanos eran capaces de volar', 'humanshad');
INSERT INTO specials VALUES (null, 'los humanos tuvieron contacto con seres extraterrestres', 'humanshad');

INSERT INTO specials VALUES (null, 'puede ver la edad de las personas como un número invisible flotando sobre sus cabezas', 'specialability');
INSERT INTO specials VALUES (null, 'sabe cuantos $ob-dulceP se ha comido a lo largo de su vida una persona con solo verla', 'specialability');
INSERT INTO specials VALUES (null, 'es capaz de comunicarse con los $ob-animalPH', 'specialability');
INSERT INTO specials VALUES (null, 'puede hacer invisible uno de sus brazos', 'specialability');
INSERT INTO specials VALUES (null, 'puede hacerse invisible cuando nadie lo está viendo', 'specialability');
INSERT INTO specials VALUES (null, 'puede convertir el oro en plata', 'specialability');
INSERT INTO specials VALUES (null, 'puede convertir el oro en bronce', 'specialability');
INSERT INTO specials VALUES (null, 'puede teletransportarse al lugar en donde se encuentra', 'specialability');
INSERT INTO specials VALUES (null, 'puede avanzar en el tiempo un segundo cada día', 'specialability');
INSERT INTO specials VALUES (null, 'puede abrir puertas automáticas dos segundos antes que los demás', 'specialability');
INSERT INTO specials VALUES (null, 'puede acelerar la velocidad de las escaleras automáticas por dos segundos cada día', 'specialability');
INSERT INTO specials VALUES (null, 'puede acelerar la velocidad de las escaleras automáticas por dos segundos cada día', 'specialability');

INSERT INTO specials VALUES (null, 'Todas las tazas que dicen "El Papá Número Uno"','rankedobjects');
INSERT INTO specials VALUES (null, 'Todas las tazas que dicen: "El Jefe Número Uno"','rankedobjects');
INSERT INTO specials VALUES (null, 'Todas las camisas que dicen "La Mejor Novia"','rankedobjects');
INSERT INTO specials VALUES (null, 'Todas las camisas que dicen "El Mejor Novio"','rankedobjects');
INSERT INTO specials VALUES (null, 'Todas las tazas que dicen: "El Mejor Maestro"','rankedobjects');
INSERT INTO specials VALUES (null, 'Todas las tazas que dicen: "La Mejor Maestra"','rankedobjects');
INSERT INTO specials VALUES (null, 'Todas las tazas que dicen: "El mejor $ob-jobH"','rankedobjects');

INSERT INTO bases VALUES (null, '$sp-genrulerHorM inventa una mejor versión de $ob-love: $sp-alterno',0);

INSERT INTO specials VALUES (null, '$ver-burnverbInf', 'alterno');
INSERT INTO specials VALUES (null, '$ver-part $sp-diversifyTwentythree', 'alterno');

INSERT INTO specials VALUES (null, '$ob-thingP', 'diversifyTwentythree');
INSERT INTO specials VALUES (null, '$ob-jobHP', 'diversifyTwentythree');
INSERT INTO specials VALUES (null, '$ob-structurePH', 'diversifyTwentythree');
INSERT INTO specials VALUES (null, '$ob-landformHP', 'diversifyTwentythree');
INSERT INTO specials VALUES (null, '$ob-fruitPM', 'diversifyTwentythree');

INSERT INTO bases VALUES (null, '$sp-alternoz',0);

INSERT INTO specials VALUES (null, 'Un $per-rulerH $ad-gentilicioH se casa con $sp-chaser. Eventualmente dan a luz a una niña hecha de $sp-diversifyTwentyfour', 'alternoz');
INSERT INTO specials VALUES (null, '$ob-soc $per-scholarPH se imagina una $ob-structureM y se materializa en la vida real', 'alternoz');
INSERT INTO specials VALUES (null, '$sp-mid $sp-star reemplazados por $ob-thingP', 'alternoz');

INSERT INTO specials VALUES (null, 'un $ob-thingH', 'chaser');
INSERT INTO specials VALUES (null, 'un $ob-thingM', 'chaser');
INSERT INTO specials VALUES (null, '$ob-space', 'chaser');
INSERT INTO specials VALUES (null, '$ob-sunntwo', 'chaser');
INSERT INTO specials VALUES (null, 'un $ob-fruitH gigante', 'chaser');
INSERT INTO specials VALUES (null, 'un $ob-dulceH gigante', 'chaser');
INSERT INTO specials VALUES (null, 'un $ob-oddlandH', 'chaser');
INSERT INTO specials VALUES (null, 'un $ob-animalH hecho de $ob-stuff', 'chaser');
INSERT INTO specials VALUES (null, '$ob-concept', 'chaser');
INSERT INTO specials VALUES (null, 'una $per-rulerM $ad-gen', 'chaser');

INSERT INTO specials VALUES (null, '$ob-lig', 'diversifyTwentyfour');
INSERT INTO specials VALUES (null, '$ob-phenomentwo', 'diversifyTwentyfour');

INSERT INTO specials VALUES (null, 'todas las estrellas son', 'star');
INSERT INTO specials VALUES (null, 'todos los humanos en la tierra son', 'star');
INSERT INTO specials VALUES (null, 'todos los hombres y mujeres de $ob-locality son', 'star');
INSERT INTO specials VALUES (null, 'todos los $ob-animalPH del mundo son', 'star');
INSERT INTO specials VALUES (null, 'todos los $per-genH en el mundo son', 'star');
INSERT INTO specials VALUES (null, 'todos los $per-genH en $ob-locality son', 'star');
INSERT INTO specials VALUES (null, 'todos los $ob-animalPH en $ob-locality son', 'star');
INSERT INTO specials VALUES (null, 'los planetas son', 'star');
INSERT INTO specials VALUES (null, 'el Sol y la Luna son', 'star');
INSERT INTO specials VALUES (null, 'todos los niños de $ob-locality son', 'star');

INSERT INTO bases VALUES (null, '$sp-wackytwelve',0);

INSERT INTO specials VALUES (null, 'En $ob-locality hay $sp-placewhere $sp-diversifySeventeen','wackytwelve');
INSERT INTO specials VALUES (null, 'Un $ob-shipH $ad-gentilicioH hecho de $ad-mat $sp-sai de $ob-stuff','wackytwelve');
INSERT INTO specials VALUES (null, '$ob-soc $per-scholarPH $sp-cre donde todo es $ob-shape','wackytwelve');
INSERT INTO specials VALUES (null, 'Un $per-scholarH $sp-disco $sp-lostbook $per-philo sobre el tema de $ob-concept','wackytwelve');

INSERT INTO specials VALUES (null, 'un desierto en el que cada grano de arena es', 'placewhere');
INSERT INTO specials VALUES (null, 'una playa en la que cada grano de arena es', 'placewhere');
INSERT INTO specials VALUES (null, 'un $ob-treeH en el que cada hoja es', 'placewhere');
INSERT INTO specials VALUES (null, 'un alfabeto en el que cada letra es', 'placewhere');
INSERT INTO specials VALUES (null, 'un lago en el que cada gota de agua es', 'placewhere');
INSERT INTO specials VALUES (null, 'un bosque en el que cada árbol es', 'placewhere');
INSERT INTO specials VALUES (null, 'un $ob-animalH que se tragó', 'placewhere');
INSERT INTO specials VALUES (null, 'un $ob-bookH en el que cada página es', 'placewhere');

INSERT INTO specials VALUES (null, 'navega en un océano', 'sai');
INSERT INTO specials VALUES (null, 'navega en un lago', 'sai');
INSERT INTO specials VALUES (null, 'navega en un mar', 'sai');
INSERT INTO specials VALUES (null, 'está navegando en un mar', 'sai');
INSERT INTO specials VALUES (null, 'está navegando en un océano', 'sai');

INSERT INTO specials VALUES (null, 'planea crear un universo', 'cre');
INSERT INTO specials VALUES (null, 'planea crear un mundo', 'cre');
INSERT INTO specials VALUES (null, 'inventa un mundo', 'cre');
INSERT INTO specials VALUES (null, 'inventa un mundo paralelo', 'cre');

INSERT INTO specials VALUES (null, 'descubre', 'disco');
INSERT INTO specials VALUES (null, 'encuentra', 'disco');
INSERT INTO specials VALUES (null, 'está leyendo', 'disco');
INSERT INTO specials VALUES (null, 'es dueño de', 'disco');

INSERT INTO specials VALUES (null, 'un libro que se creía perdido de', 'lostbook');
INSERT INTO specials VALUES (null, 'un libro perdido de', 'lostbook');
INSERT INTO specials VALUES (null, 'un libro olvidado de', 'lostbook');
INSERT INTO specials VALUES (null, 'un libreta de', 'lostbook');
INSERT INTO specials VALUES (null, 'una carta de', 'lostbook');
INSERT INTO specials VALUES (null, 'un ensayo de', 'lostbook');

INSERT INTO bases VALUES (null, '$sp-concen una $ob-candleM, un $per-rulerH $ad-genH, $sp-ableto',0);

INSERT INTO specials VALUES (null, 'concentrándose en', 'concen');
INSERT INTO specials VALUES (null, 'centrando su atención en', 'concen');
INSERT INTO specials VALUES (null, 'concentrándose muy duro en', 'concen');
INSERT INTO specials VALUES (null, 'viendo fijamente', 'concen');
INSERT INTO specials VALUES (null, 'pensando en', 'concen');
INSERT INTO specials VALUES (null, 'imaginándose', 'concen');

INSERT INTO specials VALUES (null, 'es capaz de convertirse en un $ob-animalH', 'ableto');
INSERT INTO specials VALUES (null, 'es capaz de materializar $ob-stuff de la nada', 'ableto');
INSERT INTO specials VALUES (null, 'es capaz de crear $ob-concept', 'ableto');
INSERT INTO specials VALUES (null, 'es capaz de matar a un $per-genH en $ob-locality', 'ableto');
INSERT INTO specials VALUES (null, 'es capaz de destruir $ob-space', 'ableto');

INSERT INTO bases VALUES (null, '$sp-wackythirteen',0);

INSERT INTO specials VALUES (null, '$sp-portal llegas a $ob-paral. $sp-worldlike','wackythirteen');
INSERT INTO specials VALUES (null, 'Hay una $sp-longshort','wackythirteen');
INSERT INTO specials VALUES (null, 'En $ob-locality hay un $sp-diversifyTwentyfive $sp-privatehistory','wackythirteen');

INSERT INTO specials VALUES (null, 'Si te comes una cierta $ob-fruitM', 'portal');
INSERT INTO specials VALUES (null, 'Si te comes un cierto $ob-dulceH', 'portal');
INSERT INTO specials VALUES (null, 'Si tocas un muy particular $ob-thingH que está en $ob-locality', 'portal');
INSERT INTO specials VALUES (null, 'Si entras en un $ob-structureH que está en $ob-locality', 'portal');
INSERT INTO specials VALUES (null, 'Si escalas a la cima de un cierto $ob-structureH', 'portal');
INSERT INTO specials VALUES (null, 'Si tocas una cierta $ob-thingM', 'portal');
INSERT INTO specials VALUES (null, 'Existe un $ob-deviceH que si usas', 'portal');

INSERT INTO specials VALUES (null, 'Está lleno de $ob-thingP', 'worldlike');
INSERT INTO specials VALUES (null, 'Es gobernado por un $ob-animalH ancestral', 'worldlike');
INSERT INTO specials VALUES (null, 'Se encuentra dentro de un $ob-gemH', 'worldlike');
INSERT INTO specials VALUES (null, 'Es como $ob-locality pero todo está hecho de $ob-gems', 'worldlike');
INSERT INTO specials VALUES (null, 'Es como $ob-locality, pero con más $ob-thingP', 'worldlike');
INSERT INTO specials VALUES (null, 'Está hecho de $ob-stuff', 'worldlike');
INSERT INTO specials VALUES (null, 'En ese lugar, los $ob-thingPH no existen', 'worldlike');
INSERT INTO specials VALUES (null, 'Ahí, nadie sabe nada acerca de $ob-concept', 'worldlike');
INSERT INTO specials VALUES (null, 'Se encuentra en $ob-space', 'worldlike');

INSERT INTO specials VALUES (null, '$ob-longM en $ob-locality que es infinitamente larga', 'longshort');
INSERT INTO specials VALUES (null, '$ob-plantM en $ob-locality que es infinitamente hermosa', 'longshort');
INSERT INTO specials VALUES (null, '$ob-thingM en $ob-locality que se siente $ad-emote', 'longshort');
INSERT INTO specials VALUES (null, '$ob-structureM de $ad-mat en $ob-locality que se siente $ad-emote', 'longshort');
INSERT INTO specials VALUES (null, '$ob-landformM en $ob-locality que se siente $ad-emote', 'longshort');

INSERT INTO specials VALUES (null, 'que solía ser una $per-rulerM $ad-gentilicioM', 'privatehistory');
INSERT INTO specials VALUES (null, 'que solía trabajar como $ob-jobH', 'privatehistory');
INSERT INTO specials VALUES (null, 'que está enamorado de una $ob-landformM', 'privatehistory');
INSERT INTO specials VALUES (null, 'al que le gustaría jugar $ob-game', 'privatehistory');
INSERT INTO specials VALUES (null, 'al que le gusta comer $ob-dulceP', 'privatehistory');
INSERT INTO specials VALUES (null, 'al que le gusta beber $ob-alco', 'privatehistory');
INSERT INTO specials VALUES (null, 'que está usando un $ob-clothH', 'privatehistory');
INSERT INTO specials VALUES (null, 'que está atrapado dentro de una $ob-mazeM', 'privatehistory');

INSERT INTO specials VALUES (null, '$ob-animalH', 'diversifyTwentyfive');
INSERT INTO specials VALUES (null, '$ob-treeH', 'diversifyTwentyfive');
INSERT INTO specials VALUES (null, '$ob-landformH', 'diversifyTwentyfive');
INSERT INTO specials VALUES (null, '$ob-structureH', 'diversifyTwentyfive');

INSERT INTO bases VALUES (null, '$sp-school $sp-student',0);

INSERT INTO specials VALUES (null, 'Una maestra $ad-gentilicioM $ver-establish una escuela para', 'school');
INSERT INTO specials VALUES (null, 'Una enfermera $ad-gentilicioM $ver-establish una clínica para tratar', 'school');
INSERT INTO specials VALUES (null, 'Un psiquiatra $ad-gentilicioH $ver-establish una clínica para', 'school');
INSERT INTO specials VALUES (null, 'Un doctor $ad-gentilicioH $ver-establish un hospital para', 'school');
INSERT INTO specials VALUES (null, 'Un cura $ad-gentilicioH $ver-establish una iglesia especial para', 'school');
INSERT INTO specials VALUES (null, 'Un comité de acción política $ad-gentilicioH busca donaciones de', 'school');
INSERT INTO specials VALUES (null, 'Un partido político $ad-gentilicioH defiende los derechos de', 'school');
INSERT INTO specials VALUES (null, 'Un grupo de presión $ad-gentilicioH aboga por los intereses de', 'school');
INSERT INTO specials VALUES (null, 'Un abogado $ad-gentilicioH $ver-establish un bufete de abogados que da consejos a', 'school');
INSERT INTO specials VALUES (null, 'Un contador $ad-gentilicioH $ver-establish una firma para asesorar', 'school');
INSERT INTO specials VALUES (null, 'Un terapeuta $ad-gentilicioH da sesiones únicamente a', 'school');
INSERT INTO specials VALUES (null, 'Un entrenador personal $ad-gentilicioH $ver-establish un negocio para entrenar', 'school');
INSERT INTO specials VALUES (null, 'Un homeópata $ad-gentilicioH $ver-establish una clínica para tratar', 'school');

INSERT INTO specials VALUES (null, '$ob-beingMP', 'student');
INSERT INTO specials VALUES (null, '$ob-beingHP', 'student');
INSERT INTO specials VALUES (null, '$ob-animalPH', 'student');
INSERT INTO specials VALUES (null, '$ob-landformMP', 'student');
INSERT INTO specials VALUES (null, '$ob-landformHP', 'student');
INSERT INTO specials VALUES (null, '$ob-beingMP $ad-genP', 'student');
INSERT INTO specials VALUES (null, '$ob-beingHP $ad-genHP', 'student');
INSERT INTO specials VALUES (null, '$ob-thingP', 'student');
INSERT INTO specials VALUES (null, '$ob-concept', 'student');

INSERT INTO bases VALUES (null, '$sp-wackyfourteen',0);

INSERT INTO specials VALUES (null, 'Un $per-rulerH $ad-genH $ver-pa que dice que todo el mundo $sp-bethisthing','wackyfourteen');
INSERT INTO specials VALUES (null, 'Un $per-scholarH está $ver-burning $sp-crystal','wackyfourteen');

INSERT INTO specials VALUES (null, 'tiene que ser $ad-affect', 'bethisthing');
INSERT INTO specials VALUES (null, 'tiene que ser $ad-emote', 'bethisthing');
INSERT INTO specials VALUES (null, 'tiene que ser $ad-emoteP', 'bethisthing');
INSERT INTO specials VALUES (null, 'debe convertirse en un $per-genH', 'bethisthing');
INSERT INTO specials VALUES (null, 'debe convertirse en una $per-genM', 'bethisthing');
INSERT INTO specials VALUES (null, 'debe emigrar a $ob-locality', 'bethisthing');
INSERT INTO specials VALUES (null, 'tiene que empezar a $ver-burnverbInf', 'bethisthing');
INSERT INTO specials VALUES (null, 'tiene que estar hecho de $ob-stuff', 'bethisthing');
INSERT INTO specials VALUES (null, 'debe beber $ob-liquid', 'bethisthing');
INSERT INTO specials VALUES (null, 'debe beber $ob-alco', 'bethisthing');
INSERT INTO specials VALUES (null, 'tiene que adoptar a un $ob-animalH', 'bethisthing');
INSERT INTO specials VALUES (null, 'tiene que adoptar a una $ob-animalM', 'bethisthing');
INSERT INTO specials VALUES (null, 'tiene que ser color $ad-color', 'bethisthing');

INSERT INTO specials VALUES (null, 'en un $ob-mazeH de $ad-mat', 'crystal');
INSERT INTO specials VALUES (null, 'en una $ob-landformM de $ad-mat', 'crystal');
INSERT INTO specials VALUES (null, 'en una $ob-oddlandM', 'crystal');
INSERT INTO specials VALUES (null, 'en el estómago de un $ob-animalH', 'crystal');
INSERT INTO specials VALUES (null, 'en una $ob-jungleM hecha de $ob-stuff', 'crystal');

INSERT INTO bases VALUES (null, 'Un $per-genH $sp-realitwo $sp-live $ver-controlled $sp-princessi',0);

INSERT INTO specials VALUES (null, 'se entera de que', 'realitwo');
INSERT INTO specials VALUES (null, 'descubre que', 'realitwo');
INSERT INTO specials VALUES (null, 'despierta un día y se da cuenta de que', 'realitwo');
INSERT INTO specials VALUES (null, 'de repente se da cuenta de que', 'realitwo');
INSERT INTO specials VALUES (null, 'recibe un extraño mensaje que dice que', 'realitwo');
INSERT INTO specials VALUES (null, 'lee en un libro $ad-era que', 'realitwo');

INSERT INTO specials VALUES (null, 'la sociedad está', 'live');
INSERT INTO specials VALUES (null, 'la economia está', 'live');
INSERT INTO specials VALUES (null, 'una sociedad $ad-gentilicioM está', 'live');
INSERT INTO specials VALUES (null, 'la economia $ad-gentilicioM está', 'live');
INSERT INTO specials VALUES (null, 'la vida de $per-politic está', 'live');
INSERT INTO specials VALUES (null, 'la vida de $per-celebritt está', 'live');
INSERT INTO specials VALUES (null, 'la Premier League está', 'live');
INSERT INTO specials VALUES (null, 'La Liga Santander está', 'live');
INSERT INTO specials VALUES (null, 'La Liga MX está', 'live');

INSERT INTO specials VALUES (null, 'una $ob-eater', 'princessi');
INSERT INTO specials VALUES (null, 'un $ob-oddlandH', 'princessi');
INSERT INTO specials VALUES (null, '$ob-concept', 'princessi');
INSERT INTO specials VALUES (null, '$ob-soc $per-scholarPH', 'princessi');
INSERT INTO specials VALUES (null, 'un $per-rulerH $ad-gentilicioH', 'princessi');
INSERT INTO specials VALUES (null, 'un enorme $ob-animalH', 'princessi');
INSERT INTO specials VALUES (null, 'una $per-rulerM que vive en un $ob-structureH de $ad-mat', 'princessi');

INSERT INTO bases VALUES (null, '$sp-wackysixteen',0);

INSERT INTO specials VALUES (null, 'Un $per-psych voltea una carta del tarot con un $ob-thingH en ella. "$sp-fortu", te dice','$wackysixteen');
INSERT INTO specials VALUES (null, 'Una $per-genM $sp-comple $ob-actP que han ocurrido en $ob-locality','wackysixteen');

INSERT INTO specials VALUES (null, 'veo $ob-concept en tu futuro', 'fortu');
INSERT INTO specials VALUES (null, 'serás asesinado por un $per-genH $ad-gentilicioH', 'fortu');
INSERT INTO specials VALUES (null, 'te casarás con un $per-genH $ad-gentilicioH', 'fortu');
INSERT INTO specials VALUES (null, 'ten cuidado de las $ob-thingPM', 'fortu');
INSERT INTO specials VALUES (null, 'tu destino es convertirte en un $per-rulerH', 'fortu');
INSERT INTO specials VALUES (null, 'tu destino es ser devorado por una $ob-eater', 'fortu');

INSERT INTO specials VALUES (null, 'sueña con', 'comple');
INSERT INTO specials VALUES (null, 'se acuerda de', 'comple');
INSERT INTO specials VALUES (null, 'puede ver', 'comple');
INSERT INTO specials VALUES (null, 'mira $ob-viewer y ve', 'comple');
INSERT INTO specials VALUES (null, '$sp-dedi escribiendo la historia completa de', 'comple');
INSERT INTO specials VALUES (null, '$sp-dedi haciendo una lista de', 'comple');
INSERT INTO specials VALUES (null, 'escribe una tesis de doctorado acerca de', 'comple');
INSERT INTO specials VALUES (null, 'escribe un poema sobre', 'comple');

INSERT INTO specials VALUES (null, 'decide pasar su vida', 'dedi');
INSERT INTO specials VALUES (null, 'decide pasar todo su tiempo libre', 'dedi');

INSERT INTO bases VALUES (null, '$sp-wackyseventeen',0);

INSERT INTO specials VALUES (null, 'Un $per-rulerH tiene un $ob-candleH que le permite $sp-everr en $ob-locality al mismo tiempo','wackyseventeen');
INSERT INTO specials VALUES (null, '$sp-specmaze','wackyseventeen');
INSERT INTO specials VALUES (null, '$sp-reali $sp-mouse','wackyseventeen');

INSERT INTO specials VALUES (null, 'besar a todas las personas que hay', 'everr');
INSERT INTO specials VALUES (null, 'escalar todos $ob-treeHP que hay', 'everr');
INSERT INTO specials VALUES (null, 'oler todas las $ob-plantMP que hay', 'everr');
INSERT INTO specials VALUES (null, 'leer todos los $ob-bookHP que hay', 'everr');
INSERT INTO specials VALUES (null, 'tener sexo con todos los $per-genHP que hay', 'everr');

INSERT INTO specials VALUES (null, 'Un enorme $ob-mazeH cubre la totalidad de $ob-locality. $sp-centre en el centro', 'specmaze');
INSERT INTO specials VALUES (null, 'Una enorme $ob-structureM cubre la totalidad de $ob-locality', 'specmaze');
INSERT INTO specials VALUES (null, 'En $ob-locality súbitamente aparece una enorme $ob-structureM. Un $per-rulerH está dentro', 'specmaze');
INSERT INTO specials VALUES (null, 'En una $ob-jungleM de $ad-mat hay una enorme $ob-candleM que causa $ob-feelinH en quien la ve', 'specmaze');

INSERT INTO specials VALUES (null, 'Hay un $ob-thingH de $ad-mat', 'centre');
INSERT INTO specials VALUES (null, 'Una $ob-animalM de $ad-mat está', 'centre');
INSERT INTO specials VALUES (null, 'Un $ob-jobH está', 'centre');
INSERT INTO specials VALUES (null, 'Una $ob-thingM está', 'centre');

INSERT INTO specials VALUES (null, 'eres un $ob-treeH', 'mouse');
INSERT INTO specials VALUES (null, 'eres un $ob-dulceH', 'mouse');
INSERT INTO specials VALUES (null, 'eres un $ob-landformH', 'mouse');
INSERT INTO specials VALUES (null, 'eres una $ob-landformM', 'mouse');
INSERT INTO specials VALUES (null, 'estás hecho de $ob-stuff', 'mouse');
INSERT INTO specials VALUES (null, 'estás hecho de $ob-gems', 'mouse');
INSERT INTO specials VALUES (null, 'eres un $per-rulerH $ad-gentilicioH $ad-era', 'mouse');
INSERT INTO specials VALUES (null, 'eres una $per-rulerM $ad-gentilicioM $ad-era', 'mouse');
INSERT INTO specials VALUES (null, 'eres un $per-rulerH atrapado en un $ob-mazeH de $ad-mat', 'mouse');
INSERT INTO specials VALUES (null, 'eres en realidad un $ob-animalH', 'mouse');
INSERT INTO specials VALUES (null, 'eres un $ob-moverH', 'mouse');
INSERT INTO specials VALUES (null, 'eres una $ob-moverM', 'mouse');
INSERT INTO specials VALUES (null, 'eres un $ob-moverH', 'mouse');
INSERT INTO specials VALUES (null, 'eres un $ob-thingH con forma de humano', 'mouse');

INSERT INTO bases VALUES (null, '$sp-wackyeightteen',0);

INSERT INTO specials VALUES (null, '$sp-caminador $sp-wal','wackyeightteen');
INSERT INTO specials VALUES (null, '$sp-caminador $ver-transport $sp-destination','wackyeightteen');
INSERT INTO specials VALUES (null, 'Un $per-genH en $ob-locality $sp-drea','wackyeightteen');

INSERT INTO specials VALUES (null, 'Un $per-rulerH', 'caminador');
INSERT INTO specials VALUES (null, 'Un $per-rulerH $ad-gentilicioH', 'caminador');
INSERT INTO specials VALUES (null, 'Un $per-scholarH', 'caminador');
INSERT INTO specials VALUES (null, 'Un $per-scholarH $ad-gentilicioH', 'caminador');
INSERT INTO specials VALUES (null, 'Una $per-scholarM $ad-gentilicioM', 'caminador');
INSERT INTO specials VALUES (null, 'Una $per-scholarM', 'caminador');
INSERT INTO specials VALUES (null, 'Una $per-rulerM', 'caminador');
INSERT INTO specials VALUES (null, 'Una $per-rulerM $ad-gentilicioM', 'caminador');
INSERT INTO specials VALUES (null, 'Un $per-genH', 'caminador');
INSERT INTO specials VALUES (null, 'Una $per-genM', 'caminador');
INSERT INTO specials VALUES (null, 'Un $ob-animalH', 'caminador');
INSERT INTO specials VALUES (null, 'Una $ob-animalM', 'caminador');

INSERT INTO specials VALUES (null, '$ver-walka a través de $ob-flat', 'wal');
INSERT INTO specials VALUES (null, 'se sienta en $ob-flat gigante', 'wal');
INSERT INTO specials VALUES (null, 'se duerme en $ob-flat', 'wal');

INSERT INTO specials VALUES (null, 'un $ob-oddlandH', 'destination');
INSERT INTO specials VALUES (null, '$ob-concept', 'destination');
INSERT INTO specials VALUES (null, 'una $ob-structureM de $ad-mat', 'destination');
INSERT INTO specials VALUES (null, '$ob-thepast', 'destination');

INSERT INTO specials VALUES (null, 'es famoso por $ver-part $ob-thingP', 'drea');
INSERT INTO specials VALUES (null, 'fantasea sobre $ver-part $ob-thingP', 'drea');
INSERT INTO specials VALUES (null, 'escribe un libro sobre como $ver-burnverbInf', 'drea');

INSERT INTO bases VALUES (null, '$sp-wackynineteen',0);

INSERT INTO specials VALUES (null, '$sp-ga en el cual $sp-win','wackynineteen');
INSERT INTO specials VALUES (null, '$sp-gdn en un jardín $ad-gentilicioH. $sp-gardenplot','wackynineteen');

INSERT INTO specials VALUES (null, 'Existe un reality show $ad-gentilicioH', 'ga');
INSERT INTO specials VALUES (null, 'Un $per-genH inventa un juego de mesa', 'ga');
INSERT INTO specials VALUES (null, 'Un $ob-diary $ad-era describe un juego', 'ga');
INSERT INTO specials VALUES (null, '$ob-smallNum niños juegan un juego', 'ga');
INSERT INTO specials VALUES (null, 'Un $per-genH y una $per-genM juegan un juego', 'ga');

INSERT INTO specials VALUES (null, 'los participantes deben contar todas las $ob-thingPM que hay en $ob-locality', 'win');
INSERT INTO specials VALUES (null, 'los jugadores deben escalar a la cima de una $ob-landformM de $ad-mat', 'win');
INSERT INTO specials VALUES (null, 'los participantes tienen que encontrar un $ob-thingH en $ob-locality', 'win');
INSERT INTO specials VALUES (null, 'los participantes tienen que destuir el concepto de $ob-concept', 'win');
INSERT INTO specials VALUES (null, 'los participantes deben pelear a muerte contra un $ob-animalH', 'win');
INSERT INTO specials VALUES (null, 'los participantes tienen que pelear a golpes contra $ob-stuff', 'win');
INSERT INTO specials VALUES (null, 'los participantes tienen que pelear a golpes contra $ob-space', 'win');
INSERT INTO specials VALUES (null, 'el objetivo es ser tan $ad-affect como sea posible', 'win');
INSERT INTO specials VALUES (null, 'el objetivo es convertirse en un $ob-thingH', 'win');
INSERT INTO specials VALUES (null, 'los jugadores tienen que $ver-burnverbInf', 'win');

INSERT INTO specials VALUES (null, 'Una $ob-fruitM $sp-made está creciendo', 'gdn');
INSERT INTO specials VALUES (null, 'Una $ob-animalM de $ad-mat está durmiendo', 'gdn');
INSERT INTO specials VALUES (null, 'Una $ob-oddlandM miniatura está', 'gdn');
INSERT INTO specials VALUES (null, 'Una $ob-fruitM tan hermosa como $ob-space crece', 'gdn');
INSERT INTO specials VALUES (null, 'Una $ob-plantM capaz de $ver-trancan el concepto de $ob-concept crece', 'gdn');

INSERT INTO specials VALUES (null, 'Un $per-rulerH quiere robársela', 'gardenplot');
INSERT INTO specials VALUES (null, 'Un $per-scholarH escribe un $ob-bookH sobre ella', 'gardenplot');
INSERT INTO specials VALUES (null, 'Un $per-genH la está buscando', 'gardenplot');

INSERT INTO specials VALUES (null, 'hecha de $ob-gems', 'made');
INSERT INTO specials VALUES (null, 'hecha de $ob-stuff', 'made');

INSERT INTO bases VALUES (null, '$sp-wackytwenty',0);

INSERT INTO specials VALUES (null, 'Un $ob-bookH $ad-gentilicioH describe $sp-sex que $sp-booksex','wackytwenty');
INSERT INTO specials VALUES (null, 'Un $per-genH $ver-disc que $sp-controller controlando $ob-economy','wackytwenty');

INSERT INTO specials VALUES (null, 'es capaz de destruir $ob-law', 'booksex');
INSERT INTO specials VALUES (null, 'te permite controlar $ob-law', 'booksex'); 
INSERT INTO specials VALUES (null, 'te da poder sobre $ob-law', 'booksex');
INSERT INTO specials VALUES (null, 'te convierte en un $ob-thingH', 'booksex');
INSERT INTO specials VALUES (null, 'mata a todos los que se sienten $ad-affectP', 'booksex');

INSERT INTO specials VALUES (null, 'un método para tener relaciones sexuales', 'sex');
INSERT INTO specials VALUES (null, 'un $ob-animalH', 'sex');
INSERT INTO specials VALUES (null, 'una $ob-thingM', 'sex');
INSERT INTO specials VALUES (null, 'una manera de hacer nudos', 'sex');
INSERT INTO specials VALUES (null, 'un $ob-gemH', 'sex');
INSERT INTO specials VALUES (null, 'un $ob-deviceH', 'sex');

INSERT INTO specials VALUES (null, 'un $ob-animalH está', 'controller');
INSERT INTO specials VALUES (null, '$ob-smallNum $ob-animalPH están', 'controller');
INSERT INTO specials VALUES (null, 'un $ob-animalH de $ad-mat está', 'controller');
INSERT INTO specials VALUES (null, 'un $per-rulerH $ad-gentilicioH está', 'controller');
INSERT INTO specials VALUES (null, 'una $ob-landformM en $ob-locality está', 'controller');
INSERT INTO specials VALUES (null, 'una $ob-thingM está', 'controller');
INSERT INTO specials VALUES (null, 'un $ob-thingH está', 'controller');
INSERT INTO specials VALUES (null, '$ob-soctwo $per-scholarPH están', 'controller');

INSERT INTO bases VALUES (null, '$sp-wackytwentyone',0);

INSERT INTO specials VALUES (null, '$sp-genrulerHorM está haciendo $sp-list','wackytwentyone');
INSERT INTO specials VALUES (null, 'Un $ad-genH $per-genH $sp-sixth: $ver-sense','wackytwentyone');
INSERT INTO specials VALUES (null, 'Un $ad-genH $per-genH cae en un $ob-lakeH lleno de $ob-vari. $sp-drown','wackytwentyone');

INSERT INTO specials VALUES (null, 'una lista para el supermercado. $sp-three', 'list');
INSERT INTO specials VALUES (null, 'una lista. $sp-three', 'list');
INSERT INTO specials VALUES (null, 'una lista de personas que van a ser salvadas: un $per-scholarH, una $ob-jobM y una $per-fem', 'list');
INSERT INTO specials VALUES (null, 'una lista de personas que planea matar: un $per-scholarH, un $ob-jobH y una $per-fem', 'list');

INSERT INTO specials VALUES (null, 'Lleva tres cosas: un $ob-thingH, una $ob-thingH, y $ob-concept', 'three');
INSERT INTO specials VALUES (null, 'Lleva cuatro cosas: una $ob-thingM, un $ob-thingH, un $ob-candleH y $ob-concept', 'three');

INSERT INTO specials VALUES (null, 'tiene un sexto sentido', 'sixth');
INSERT INTO specials VALUES (null, 'tiene una habilidad inusual', 'sixth');
INSERT INTO specials VALUES (null, 'posee una habilidad única', 'sixth');
INSERT INTO specials VALUES (null, 'tiene un raro don', 'sixth');

INSERT INTO specials VALUES (null, 'Se ahoga', 'drown');
INSERT INTO specials VALUES (null, 'Nunca naide lo vuelve a ver', 'drown');
INSERT INTO specials VALUES (null, 'Pasan los años y nadie lo extraña', 'drown');
INSERT INTO specials VALUES (null, 'Nadie se da cuenta', 'drown');
INSERT INTO specials VALUES (null, 'Un $ob-animalH observa el hecho', 'drown');
INSERT INTO specials VALUES (null, 'Una $per-genM lo intenta salvar', 'drown');
INSERT INTO specials VALUES (null, 'Una $ob-animalM salta para salvarlo', 'drown');
INSERT INTO specials VALUES (null, 'Una $per-genM salta para salvarlo', 'drown');

INSERT INTO bases VALUES (null, '$sp-wackytwentytwo',0);

INSERT INTO specials VALUES (null, 'Una $per-genM $ver-chased $sp-chaser $sp-forest','wackytwentytwo');
INSERT INTO specials VALUES (null, 'Todos los $per-genHP en $ob-locality $sp-evsingle','wackytwentytwo');
INSERT INTO specials VALUES (null, 'Un $per-rulerH $ad-gentilicioH $sp-splaw','wackytwentytwo');

INSERT INTO specials VALUES (null, 'en un bosque que está en $ob-locality', 'forest');
INSERT INTO specials VALUES (null, 'en un bosque de $ad-mat', 'forest');
INSERT INTO specials VALUES (null, 'en un desierto de $ad-mat', 'forest');
INSERT INTO specials VALUES (null, 'en un jardín de $ad-mat', 'forest');
INSERT INTO specials VALUES (null, 'en una montaña de $ad-mat', 'forest');
INSERT INTO specials VALUES (null, 'en una $ob-landformM de $ad-mat', 'forest');
INSERT INTO specials VALUES (null, 'en una $ob-landformH de $ad-mat', 'forest');
INSERT INTO specials VALUES (null, 'adentro de una $ob-structureM de $ad-mat', 'forest');
INSERT INTO specials VALUES (null, 'adentro de un $ob-structureH de $ad-mat', 'forest');

INSERT INTO specials VALUES (null, 'son $ad-affectP', 'evsingle');
INSERT INTO specials VALUES (null, 'están $ver-burningP', 'evsingle');
INSERT INTO specials VALUES (null, 'se convierten en $ob-animalPH', 'evsingle');

INSERT INTO specials VALUES (null, 'aprueba una ley en contra de $ob-concept', 'splaw');
INSERT INTO specials VALUES (null, 'prohibe que las personas posean $ob-thingP', 'splaw');
INSERT INTO specials VALUES (null, 'le declara la guerra a $ob-concept', 'splaw');

INSERT INTO bases VALUES (null, '$sp-wackytwentythree',0);

INSERT INTO specials VALUES (null, 'Un $per-genH $sp-rich $sp-buysa','wackytwentythree');
INSERT INTO specials VALUES (null, '$sp-cause $ver-hallu','wackytwentythree');
INSERT INTO specials VALUES (null, '$sp-float $ob-locality. $sp-control','wackytwentythree');

INSERT INTO specials VALUES (null, 'se vuelve rico vendiendo', 'rich');
INSERT INTO specials VALUES (null, 'abre una tienda que vende', 'rich');
INSERT INTO specials VALUES (null, 'emprende un negocio en el que vende', 'rich');
INSERT INTO specials VALUES (null, 'se vuelve millonario comprando y vendiendo', 'rich');
INSERT INTO specials VALUES (null, 'hace una fortuna comerciando con', 'rich');
INSERT INTO specials VALUES (null, 'ahorra durante muchos años para comprar', 'rich');

INSERT INTO specials VALUES (null, '$ob-concept', 'buysa');
INSERT INTO specials VALUES (null, '$ob-space', 'buysa');
INSERT INTO specials VALUES (null, '$ob-landformMP', 'buysa');

INSERT INTO specials VALUES (null, 'Una botella de $ob-wine $ad-era hace que cualquiera que beba de ella', 'cause');
INSERT INTO specials VALUES (null, 'Una $ob-structureM hace que cualquiera que entre', 'cause');
INSERT INTO specials VALUES (null, 'Un $ob-thingH hace que cualquier observador', 'cause');
INSERT INTO specials VALUES (null, 'Un $per-rulerH hace que cualquiera que haga contacto visual con él', 'cause');
INSERT INTO specials VALUES (null, 'Una $ob-plantM hace que cualquiera que la huela', 'cause');
INSERT INTO specials VALUES (null, 'Un $ob-fruitH hace que cualquiera que se lo coma', 'cause');
INSERT INTO specials VALUES (null, 'Un $ob-dulceH hace que cualquiera que se lo coma', 'cause');
INSERT INTO specials VALUES (null, 'Un $ob-loudthingH hace que cualquiera que lo escuche', 'cause');
INSERT INTO specials VALUES (null, 'Una $ob-loudthingM hace que cualquiera que lo escuche', 'cause');
INSERT INTO specials VALUES (null, 'Un $ob-bookH hace que cualquiera que lo lea', 'cause');
INSERT INTO specials VALUES (null, 'Una $ob-clothM hace que cualquiera que se la ponga', 'cause');

INSERT INTO specials VALUES (null, '$sp-diversifySeventeen flota sobre', 'float');
INSERT INTO specials VALUES (null, 'Un $ob-candleH levita sobre', 'float');
INSERT INTO specials VALUES (null, 'Un $ob-structureH de $ad-mat aparece sobre', 'float');
INSERT INTO specials VALUES (null, 'Un $ob-landformH aparece sobre', 'float');

INSERT INTO specials VALUES (null, 'Es controlado por un $ob-animalH', 'control');
INSERT INTO specials VALUES (null, 'Una $per-genM le está hablando', 'control');
INSERT INTO specials VALUES (null, 'Un $per-genH voltea a verlo', 'control');
INSERT INTO specials VALUES (null, 'Una $per-genM sabe porque ha venido', 'control');

INSERT INTO bases VALUES (null, '$sp-wackytwentyfour',0);

INSERT INTO specials VALUES (null, '$sp-cathed le susurra al oído a $sp-genrulerHorM: "$sp-quot"','wackytwentyfour');
INSERT INTO specials VALUES (null, 'Un $ad-genH $per-rulerH $sp-snea relaciones sexuales con $sp-concthings','wackytwentyfour');
INSERT INTO specials VALUES (null, 'Una $per-scholarM $ad-gentilicioM $sp-wri $sp-theory $sp-concthings','wackytwentyfour'); 

INSERT INTO specials VALUES (null, 'Un $ob-structureH de $ad-mat', 'cathed');
INSERT INTO specials VALUES (null, 'Un $ob-animalH', 'cathed');
INSERT INTO specials VALUES (null, 'Un $ob-landformH', 'cathed');
INSERT INTO specials VALUES (null, 'Un $ob-thingH', 'cathed');
INSERT INTO specials VALUES (null, 'Un $ob-bookH', 'cathed');

INSERT INTO specials VALUES (null, 'Me siento $ad-emote', 'quot');
INSERT INTO specials VALUES (null, 'Desearía ser $sp-tran', 'quot');

INSERT INTO specials VALUES (null, 'una $ob-structureM', 'tran');
INSERT INTO specials VALUES (null, 'una $ob-landformM', 'tran');
INSERT INTO specials VALUES (null, 'una $ob-oddlandM', 'tran');
INSERT INTO specials VALUES (null, 'una $ob-thingM', 'tran');
INSERT INTO specials VALUES (null, 'una $ob-animalM', 'tran');

INSERT INTO specials VALUES (null, 'se escapa de la cama todas las noches para tener', 'snea');
INSERT INTO specials VALUES (null, 'se escapa de la cama a la medianoche para tener', 'snea');
INSERT INTO specials VALUES (null, 'secretamente sale de su palacio cada noche para tener', 'snea');
INSERT INTO specials VALUES (null, 'se despierta a la medianoche todas las noches para tener', 'snea');
INSERT INTO specials VALUES (null, 'se despierta antes del amanecer para tener', 'snea');
INSERT INTO specials VALUES (null, 'secretamente desea tener', 'snea');
INSERT INTO specials VALUES (null, 'atrapa a su pareja teniendo', 'snea');
INSERT INTO specials VALUES (null, 'se obsesiona con tener', 'snea');
INSERT INTO specials VALUES (null, 'anuncia que desea tener', 'snea');
INSERT INTO specials VALUES (null, 'inventa una máquina que le permitirá tener', 'snea');
INSERT INTO specials VALUES (null, 'tiene', 'snea');
INSERT INTO specials VALUES (null, 'decreta que todo el mundo debe tener', 'snea');

INSERT INTO specials VALUES (null, '$ob-concept', 'concthings');
INSERT INTO specials VALUES (null, '$ob-thingPH', 'concthings');
INSERT INTO specials VALUES (null, '$ob-thingPM', 'concthings');

INSERT INTO specials VALUES (null, 'está escribiendo', 'wri');
INSERT INTO specials VALUES (null, 'dedica su vida entera a escribir', 'wri');
INSERT INTO specials VALUES (null, 'dedica todo su tiempo a escribir', 'wri');

INSERT INTO specials VALUES (null, 'una teoría imposiblemente compleja acerca de', 'theory');
INSERT INTO specials VALUES (null, 'una tesis de docotrado acerca de', 'theory');
INSERT INTO specials VALUES (null, 'una ópear acerca de', 'theory');
INSERT INTO specials VALUES (null, 'un poema épico sobre', 'theory');

INSERT INTO bases VALUES (null, '$sp-wackytwentyfive',0);

INSERT INTO specials VALUES (null, 'Una $per-genM $ad-gentilicioM inventa $sp-ast basándose en el movimiento de $ob-movers','wackytwentyfive');
INSERT INTO specials VALUES (null, 'Un $per-rulerH es dueño de $ob-artwork que representa $ob-actP $sp-timeframe','wackytwentyfive');
INSERT INTO specials VALUES (null, 'Un $per-rulerH $sp-wishe $sp-doi todos los $ob-thingPH que hay en $ob-locality','wackytwentyfive');

INSERT INTO specials VALUES (null, 'una nueva forma de astrología', 'ast');
INSERT INTO specials VALUES (null, 'un nuevo tipo de reloj', 'ast');
INSERT INTO specials VALUES (null, 'un nuevo método de adivinación', 'ast'); 
INSERT INTO specials VALUES (null, 'una nueva teoría de la economía', 'ast'); 
INSERT INTO specials VALUES (null, 'una nueva forma de bailar', 'ast');
INSERT INTO specials VALUES (null, 'un nuevo tipo de aritmética', 'ast');
INSERT INTO specials VALUES (null, 'una nueva forma de música', 'ast');
INSERT INTO specials VALUES (null, 'una nueva teoría de colores', 'ast'); 
INSERT INTO specials VALUES (null, 'una nueva teoría del arte', 'ast'); 
INSERT INTO specials VALUES (null, 'una nueva manera de pensar', 'ast');
INSERT INTO specials VALUES (null, 'una nueva filosofía', 'ast');
INSERT INTO specials VALUES (null, 'una nueva epistemología', 'ast'); 
INSERT INTO specials VALUES (null, 'una nueva cosmología', 'ast'); 
INSERT INTO specials VALUES (null, 'una nueva teoría cosmológica', 'ast'); 
INSERT INTO specials VALUES (null, 'una nueva forma de $ob-concept', 'ast');
INSERT INTO specials VALUES (null, 'un nuevo tipo de $ob-animalH', 'ast'); 

INSERT INTO specials VALUES (null, 'que han ocurrido en la historia de la humanidad', 'timeframe');
INSERT INTO specials VALUES (null, 'que han ocurrido desde que comenzó el universo', 'timeframe');
INSERT INTO specials VALUES (null, 'que han ocurrido desde el comienzo de los tiempos', 'timeframe');
INSERT INTO specials VALUES (null, 'que jamás han ocurrido', 'timeframe');
INSERT INTO specials VALUES (null, 'que han ocurrido en $ob-locality', 'timeframe');

INSERT INTO specials VALUES (null, 'quiere', 'wishe');
INSERT INTO specials VALUES (null, 'desea', 'wishe');
INSERT INTO specials VALUES (null, 'planea', 'wishe');
INSERT INTO specials VALUES (null, 'decide', 'wishe');

INSERT INTO specials VALUES (null, 'robar', 'doi');
INSERT INTO specials VALUES (null, 'tener relaciones sexuales con', 'doi');
INSERT INTO specials VALUES (null, 'casarse con', 'doi');
INSERT INTO specials VALUES (null, 'destruir', 'doi');
INSERT INTO specials VALUES (null, 'catalogar', 'doi');
INSERT INTO specials VALUES (null, 'escribir un poema sobre', 'doi');
INSERT INTO specials VALUES (null, 'encarcelar', 'doi');
INSERT INTO specials VALUES (null, 'hacer amistad con', 'doi');

INSERT INTO bases VALUES (null, '$sp-wackytwentysix',0);

INSERT INTO specials VALUES (null, '$sp-dreammm','wackytwentysix');
INSERT INTO specials VALUES (null, '$sp-sauna','wackytwentysix');

INSERT INTO specials VALUES (null, 'Hay una biblioteca en $ob-locality dónde puedes tomar prestado $sp-diversifyTwentysix en lugar de libros', 'sauna');
INSERT INTO specials VALUES (null, 'Hay un sauna gay en $ob-city. Todas las personas que van ahí son $ob-astP', 'sauna');
INSERT INTO specials VALUES (null, 'Hay un supermercado peculiar en $ob-city. En vez de comida venden $sp-diversifyTwentysix', 'sauna');
INSERT INTO specials VALUES (null, 'Hay un muy peculiar cajero en $ob-locality que te permite retirar $sp-diversifyTwentysix', 'sauna');
INSERT INTO specials VALUES (null, 'Hay un hospital en $ob-locality para $sp-diversifyTwentysix con alguna enfermedad', 'sauna');
INSERT INTO specials VALUES (null, 'Hay un club de strippers en $ob-locality dónde $sp-diversifyTwentysix se quitan la ropa', 'sauna');
INSERT INTO specials VALUES (null, 'Hay un salón de masajes en $ob-locality dónde puedes tener relaciones sexuales con $sp-diversifyTwentysix', 'sauna');
INSERT INTO specials VALUES (null, 'Existe un $ad-gen narcotraficante en $ob-city que puede drogarte con $sp-diversifyTwentysix', 'sauna');
INSERT INTO specials VALUES (null, 'Hay un desarrollador de videojuegos en $ob-locality que le da trabajo a $ob-animalPH', 'sauna');
INSERT INTO specials VALUES (null, 'En $ob-city hay una famosa compañía de ballet en la que bailan $sp-diversifyTwentysix', 'sauna');

INSERT INTO specials VALUES (null, '$ob-thingPH', 'diversifyTwentysix');
INSERT INTO specials VALUES (null, '$ob-astP', 'diversifyTwentysix');
INSERT INTO specials VALUES (null, '$ob-phenomentwo', 'diversifyTwentysix');
INSERT INTO specials VALUES (null, '$ob-bodypartPH', 'diversifyTwentysix');
INSERT INTO specials VALUES (null, '$ob-universeHP', 'diversifyTwentysix');

INSERT INTO specials VALUES (null, 'Una $per-granny súbitamente aparece y te da una $ob-universeM', 'dreammm');
INSERT INTO specials VALUES (null, 'Esta noche, una $per-granny aparecerá y de dará $ob-heartdesi', 'dreammm');
INSERT INTO specials VALUES (null, 'Una $per-granny toca a tu puerta. Abres y pone en tus manos $ob-space', 'dreammm');
INSERT INTO specials VALUES (null, 'Esta noche soñarás con un $ob-thingH. Adentro del $ob-thingH hay una $ob-thingM. Adentro de la $ob-thingM está $ob-heartdesi', 'dreammm');
INSERT INTO specials VALUES (null, 'Esta noche soñarás con una $ob-structureH. Adentro de la $ob-structureM hay un $ob-gemH. Adentro del $ob-gemH está $ob-heartdesi', 'dreammm');
INSERT INTO specials VALUES (null, 'Esta noche soñaras con una $ob-garbagedumpM. Justo antes de despertar, la $ob-garbagedumpM va a $ver-tran', 'dreammm');
INSERT INTO specials VALUES (null, 'Esta noche soñaras con $ob-space. Justo antes de despertar, $ob-space va a $ver-tran', 'dreammm');

INSERT INTO bases VALUES (null, '$sp-wackytwentyseven',0);

INSERT INTO specials VALUES (null, 'Un $sp-diversifyTwentyfive $sp-presidente','wackytwentyseven');
INSERT INTO specials VALUES (null, 'Hay $sp-stormrain $sp-thingsanimalsH','wackytwentyseven');
INSERT INTO specials VALUES (null, 'Un $per-scholarH $ad-genH $sp-fall $ob-title','wackytwentyseven');

INSERT INTO specials VALUES (null, 'es elegido presidente de los Estados Unidos Mexicanos', 'presidente');
INSERT INTO specials VALUES (null, 'está volando en $ob-cla hacia $ob-locality', 'presidente');
INSERT INTO specials VALUES (null, 'es nombrado rector de la Universidad Nacional Autónoma de México', 'presidente');
INSERT INTO specials VALUES (null, 'es elegido para ser el CEO de $ob-compani', 'presidente');
INSERT INTO specials VALUES (null, 'es promovido al puesto de editor de $ob-newspaper', 'presidente');
INSERT INTO specials VALUES (null, 'es elegido como Gobernador de $ob-stateu', 'presidente');
INSERT INTO specials VALUES (null, 'está jugando en una máquina tragamonedas en las Vegas', 'presidente');
INSERT INTO specials VALUES (null, 'está volando en globo aerostático hacia $ob-locality', 'presidente');
INSERT INTO specials VALUES (null, 'está internado en un hospital psiquiátrico en $ob-locality', 'presidente');
INSERT INTO specials VALUES (null, 'es diagnosticado con $ob-illtwo', 'presidente');

INSERT INTO specials VALUES (null, 'una tormenta en $ob-locality. Están lloviendo', 'stormrain');
INSERT INTO specials VALUES (null, 'una torménta eléctrica en $ob-locality. En vez de truenos, caen', 'stormrain');
INSERT INTO specials VALUES (null, 'una granizada en $ob-locality. Están granizando', 'stormrain');
INSERT INTO specials VALUES (null, 'una nevada en $ob-locality. Están nevando', 'stormrain');
INSERT INTO specials VALUES (null, 'un tsunami en $ob-locality. Está lleno de', 'stormrain');
INSERT INTO specials VALUES (null, 'un huracán en $ob-locality. Está hecho de', 'stormrain');

INSERT INTO specials VALUES (null, '$ob-thingPH', 'thingsanimalsH');
INSERT INTO specials VALUES (null, '$ob-animalPH', 'thingsanimalsH');

INSERT INTO specials VALUES (null, 'se enamora de', 'fall');
INSERT INTO specials VALUES (null, 'tiene relaciones sexuales con', 'fall');
INSERT INTO specials VALUES (null, 'pasa su vida entera reescribiendo', 'fall');

/* ************************************************ SPECIALS *********************************************** */

INSERT INTO specials VALUES (null, 'está leyendo el periódico','miscella');
INSERT INTO specials VALUES (null, 'está comprando un coche usado','miscella');
INSERT INTO specials VALUES (null, 'está leyendo a $per-philo','miscella');
INSERT INTO specials VALUES (null, 'está besando a un $ob-jobH','miscella');
INSERT INTO specials VALUES (null, 'está besando a una $ob-jobM','miscella');
INSERT INTO specials VALUES (null, 'está leyendo $ob-title','miscella');
INSERT INTO specials VALUES (null, 'está escuchando el audiolibro de $ob-title','miscella');
INSERT INTO specials VALUES (null, 'está escribiendo un $ob-bookH acerca de $ob-thingP','miscella');
INSERT INTO specials VALUES (null, 'está llevando a sus hijos a su clase de fútbol', 'miscella');
INSERT INTO specials VALUES (null, 'está obsesionado con la idea de coleccionar $ob-thingPH', 'miscella');

INSERT INTO specials VALUES (null, 'Esto nunca funcionará', 'saystuff');
INSERT INTO specials VALUES (null, 'Te dije que volvería', 'saystuff');
INSERT INTO specials VALUES (null, 'He vuelto', 'saystuff');
INSERT INTO specials VALUES (null, 'Espero que te acuerdes de mí', 'saystuff');
INSERT INTO specials VALUES (null, 'Cásate conmigo', 'saystuff');
INSERT INTO specials VALUES (null, 'Estoy enamorado de ti', 'saystuff');
INSERT INTO specials VALUES (null, 'Todo va a estar bien', 'saystuff');
INSERT INTO specials VALUES (null, 'Relájate', 'saystuff');
INSERT INTO specials VALUES (null, 'Nunca funcionará', 'saystuff');
INSERT INTO specials VALUES (null, 'Soy tu papá', 'saystuff');
INSERT INTO specials VALUES (null, 'Soy tu más grande admirador', 'saystuff');
INSERT INTO specials VALUES (null, 'Espero que te gusten los $ob-dulceP', 'saystuff');
INSERT INTO specials VALUES (null, 'No lo hagas', 'saystuff');
INSERT INTO specials VALUES (null, 'Me encanta $ver-burnverbInf', 'saystuff');
INSERT INTO specials VALUES (null, 'Tienes que robar $ob-thingP', 'saystuff');
INSERT INTO specials VALUES (null, 'Tienes que poseer $ob-thingP', 'saystuff');
INSERT INTO specials VALUES (null, 'Tienes que destruir $ob-thingP', 'saystuff');
INSERT INTO specials VALUES (null, 'Hoy bailarás toda la noche con $ob-thingP', 'saystuff');
INSERT INTO specials VALUES (null, 'Si ya saben cómo me pongo ¿Pa qué me invitan?', 'saystuff');
INSERT INTO specials VALUES (null, 'Wey!!! Acapulco wey!', 'saystuff');
INSERT INTO specials VALUES (null, 'Tengo todo excepto a ti', 'saystuff');
INSERT INTO specials VALUES (null, 'Imaginemos cosas chingonas', 'saystuff');
INSERT INTO specials VALUES (null, 'ELLA ES CALLAITA!', 'saystuff');
INSERT INTO specials VALUES (null, 'Baby, la vida es un ciclo', 'saystuff');
INSERT INTO specials VALUES (null, 'Ya quiero que sea viernes de ahorcar rucas', 'saystuff');

/* ************************************************** VERBS ************************************************ */

INSERT INTO verbs VALUES (null, 'pide un taxi de $ob-locality a', 'transporte');

INSERT INTO verbs VALUES (null, 'convertirse en', 'part');
INSERT INTO verbs VALUES (null, 'robar', 'part');
INSERT INTO verbs VALUES (null, 'matar', 'part');
INSERT INTO verbs VALUES (null, 'besar', 'part');
INSERT INTO verbs VALUES (null, 'tener sexo con', 'part');
INSERT INTO verbs VALUES (null, 'destruir', 'part');
INSERT INTO verbs VALUES (null, 'envenenar', 'part');
INSERT INTO verbs VALUES (null, 'casarse con', 'part');
INSERT INTO verbs VALUES (null, 'enamorarse de', 'part');
INSERT INTO verbs VALUES (null, 'acordarse de', 'part');
INSERT INTO verbs VALUES (null, 'bailar toda la noche con', 'part');
INSERT INTO verbs VALUES (null, 'comer', 'part');
INSERT INTO verbs VALUES (null, 'torturar', 'part');
INSERT INTO verbs VALUES (null, 'proponerle matrimonio a', 'part');
INSERT INTO verbs VALUES (null, 'hablar con', 'part');
INSERT INTO verbs VALUES (null, 'vender', 'part');
INSERT INTO verbs VALUES (null, 'olvidar', 'part');
INSERT INTO verbs VALUES (null, 'jugar $ob-game con', 'part');
INSERT INTO verbs VALUES (null, 'pintar cuadros de', 'part');
INSERT INTO verbs VALUES (null, 'abrazar', 'part');
INSERT INTO verbs VALUES (null, 'tener una apasionada historia de amor con', 'part');

INSERT INTO verbs VALUES (null, 'cantando el Cara al Sol', 'burnverb');
INSERT INTO verbs VALUES (null, 'fumando metanfetaminas', 'burnverb');
INSERT INTO verbs VALUES (null, 'esnifando cocaína', 'burnverb');
INSERT INTO verbs VALUES (null, 'checando Tinder', 'burnverb');
INSERT INTO verbs VALUES (null, 'checando Facebook', 'burnverb');
INSERT INTO verbs VALUES (null, 'cantando José Alfredo Jiménez', 'burnverb');
INSERT INTO verbs VALUES (null, 'riéndose de la idea de $ob-concept', 'burnverb');
INSERT INTO verbs VALUES (null, 'pensando en $ob-thingP', 'burnverb');
INSERT INTO verbs VALUES (null, 'pensando sobre el color $ad-color', 'burnverb');
INSERT INTO verbs VALUES (null, 'leyendo el Manifesto Comunista', 'burnverb');
INSERT INTO verbs VALUES (null, 'fumando cigarillos', 'burnverb');
INSERT INTO verbs VALUES (null, 'drogándose', 'burnverb');
INSERT INTO verbs VALUES (null, 'teniendo relaciones sexuales', 'burnverb');
INSERT INTO verbs VALUES (null, 'masturbándose', 'burnverb');
INSERT INTO verbs VALUES (null, 'bailando', 'burnverb');
INSERT INTO verbs VALUES (null, 'mascando chicle', 'burnverb');
INSERT INTO verbs VALUES (null, 'comiéndose unos $ob-dulceP', 'burnverb');
INSERT INTO verbs VALUES (null, 'vomitando', 'burnverb');
INSERT INTO verbs VALUES (null, 'rezando', 'burnverb');
INSERT INTO verbs VALUES (null, 'fumando marihuana', 'burnverb');
INSERT INTO verbs VALUES (null, 'emborrachándose con $ob-alco', 'burnverb');
INSERT INTO verbs VALUES (null, 'bebiendo $ob-alco', 'burnverb');
INSERT INTO verbs VALUES (null, 'haciendo absolutamente nada', 'burnverb');
INSERT INTO verbs VALUES (null, 'jugando golf', 'burnverb');
INSERT INTO verbs VALUES (null, 'chiflando', 'burnverb');
INSERT INTO verbs VALUES (null, 'llorando', 'burnverb');
INSERT INTO verbs VALUES (null, 'hablando por teléfono', 'burnverb');
INSERT INTO verbs VALUES (null, 'jugando ajedrez', 'burnverb');
INSERT INTO verbs VALUES (null, 'durmiendo', 'burnverb');

INSERT INTO verbs VALUES (null, 'cantar el Cara al Sol', 'burnverbInf');
INSERT INTO verbs VALUES (null, 'fumar metanfetaminas', 'burnverbInf');
INSERT INTO verbs VALUES (null, 'esnifar cocaína', 'burnverbInf');
INSERT INTO verbs VALUES (null, 'checar Tinder', 'burnverbInf');
INSERT INTO verbs VALUES (null, 'checar Facebook', 'burnverbInf');
INSERT INTO verbs VALUES (null, 'cantar José Alfredo Jiménez', 'burnverbInf');
INSERT INTO verbs VALUES (null, 'pensar en $ob-concept', 'burnverbInf');
INSERT INTO verbs VALUES (null, 'pensar en $ob-thingP', 'burnverbInf');
INSERT INTO verbs VALUES (null, 'pensar sobre el color $ad-color', 'burnverbInf');
INSERT INTO verbs VALUES (null, 'leer el Manifesto Comunista', 'burnverbInf');
INSERT INTO verbs VALUES (null, 'fumar cigarillos', 'burnverbInf');
INSERT INTO verbs VALUES (null, 'tener relaciones sexuales', 'burnverbInf');
INSERT INTO verbs VALUES (null, 'bailar', 'burnverbInf');
INSERT INTO verbs VALUES (null, 'mascar chicle', 'burnverbInf');
INSERT INTO verbs VALUES (null, 'comer $ob-dulceP', 'burnverbInf');
INSERT INTO verbs VALUES (null, 'vomitar', 'burnverbInf');
INSERT INTO verbs VALUES (null, 'rezar', 'burnverbInf');
INSERT INTO verbs VALUES (null, 'fumar marihuana', 'burnverbInf');
INSERT INTO verbs VALUES (null, 'beber $ob-alco', 'burnverbInf');
INSERT INTO verbs VALUES (null, 'beber $ob-alco', 'burnverbInf');
INSERT INTO verbs VALUES (null, 'hacer absolutamente nada', 'burnverbInf');
INSERT INTO verbs VALUES (null, 'jugar golf', 'burnverbInf');
INSERT INTO verbs VALUES (null, 'chiflar', 'burnverbInf');
INSERT INTO verbs VALUES (null, 'llorar', 'burnverbInf');
INSERT INTO verbs VALUES (null, 'hablar por teléfono', 'burnverbInf');
INSERT INTO verbs VALUES (null, 'jugar ajedrez', 'burnverbInf');
INSERT INTO verbs VALUES (null, 'dormir', 'burnverbInf');

INSERT INTO verbs VALUES (null, 'escribir poesía', 'poett');
INSERT INTO verbs VALUES (null, 'cantar y bailar', 'poett');
INSERT INTO verbs VALUES (null, 'bailar flamenco', 'poett');
INSERT INTO verbs VALUES (null, 'componer operas', 'poett');
INSERT INTO verbs VALUES (null, 'escribir sonetos', 'poett');
INSERT INTO verbs VALUES (null, 'improvisar fugas a seis voces', 'poett');
INSERT INTO verbs VALUES (null, 'pintar murales', 'poett');

INSERT INTO verbs VALUES (null, 'se da cuenta', 'disc');
INSERT INTO verbs VALUES (null, 'descubre', 'disc');
INSERT INTO verbs VALUES (null, 'se entera', 'disc');

INSERT INTO verbs VALUES (null, 'encuentra', 'own');
INSERT INTO verbs VALUES (null, 'descubre', 'own');
INSERT INTO verbs VALUES (null, 'es dueña de', 'own');
INSERT INTO verbs VALUES (null, 'compra', 'own');
INSERT INTO verbs VALUES (null, 'está buscando', 'own');

INSERT INTO verbs VALUES (null, 'tener una historia de amor apasionada contigo', 'tran');
INSERT INTO verbs VALUES (null, 'robarte', 'tran');
INSERT INTO verbs VALUES (null, 'besarte', 'tran');
INSERT INTO verbs VALUES (null, 'tener relaciones sexuales contigo', 'tran');
INSERT INTO verbs VALUES (null, 'destruirte', 'tran');
INSERT INTO verbs VALUES (null, 'envenenarte', 'tran');
INSERT INTO verbs VALUES (null, 'casarme contigo', 'tran');
INSERT INTO verbs VALUES (null, 'escribir un $ob-bookH sobre ti', 'tran');
INSERT INTO verbs VALUES (null, 'enamorárme de ti', 'tran');
INSERT INTO verbs VALUES (null, 'bailar toda la noche contigo', 'tran');
INSERT INTO verbs VALUES (null, 'comerte', 'tran');
INSERT INTO verbs VALUES (null, 'proponerte matrimonio', 'tran');
INSERT INTO verbs VALUES (null, 'hablar contigo', 'tran');
INSERT INTO verbs VALUES (null, 'venderte', 'tran');
INSERT INTO verbs VALUES (null, 'emborrachárme contigo', 'tran');
INSERT INTO verbs VALUES (null, 'jugar $ob-game contigo', 'tran');
INSERT INTO verbs VALUES (null, 'tomarte una fotografía', 'tran');
INSERT INTO verbs VALUES (null, 'pintar un cuadro de ti', 'tran');
INSERT INTO verbs VALUES (null, 'abrazarte', 'tran');
INSERT INTO verbs VALUES (null, 'tragarte', 'tran');
INSERT INTO verbs VALUES (null, 'adorarte', 'tran');
INSERT INTO verbs VALUES (null, 'hacerte cosquillas', 'tran');
INSERT INTO verbs VALUES (null, 'acuchillarte', 'tran');
INSERT INTO verbs VALUES (null, 'hablar sobre nosotros', 'tran');

INSERT INTO verbs VALUES (null, 'tener una historia de amor apasionada', 'traninf');
INSERT INTO verbs VALUES (null, 'robar', 'traninf');
INSERT INTO verbs VALUES (null, 'besar', 'traninf');
INSERT INTO verbs VALUES (null, 'tener relaciones sexuales', 'traninf');
INSERT INTO verbs VALUES (null, 'destruir', 'traninf');
INSERT INTO verbs VALUES (null, 'casarse con quien pueda', 'traninf');
INSERT INTO verbs VALUES (null, 'escribir un $ob-bookH', 'traninf');
INSERT INTO verbs VALUES (null, 'buscar el amor', 'traninf');
INSERT INTO verbs VALUES (null, 'bailar toda la noche', 'traninf');
INSERT INTO verbs VALUES (null, 'comer nuevos platillos', 'traninf');
INSERT INTO verbs VALUES (null, 'proponerle matrimonio a alguien', 'traninf');
INSERT INTO verbs VALUES (null, 'hablar con alguien', 'traninf');
INSERT INTO verbs VALUES (null, 'emborrachárse', 'traninf');
INSERT INTO verbs VALUES (null, 'jugar $ob-game con alguien', 'traninf');
INSERT INTO verbs VALUES (null, 'tomar una fotografía', 'traninf');
INSERT INTO verbs VALUES (null, 'pintar un cuadro', 'traninf');

INSERT INTO verbs VALUES (null, 'tendrás una historia de amor apasionada con', 'tranIndic');
INSERT INTO verbs VALUES (null, 'te robarás', 'tranIndic');
INSERT INTO verbs VALUES (null, 'vas a besar a', 'tranIndic');
INSERT INTO verbs VALUES (null, 'tendrás relaciones sexuales con', 'tranIndic');
INSERT INTO verbs VALUES (null, 'destruirás', 'tranIndic');
INSERT INTO verbs VALUES (null, 'te casarás con', 'tranIndic');
INSERT INTO verbs VALUES (null, 'escribiras un $ob-bookH sobre', 'tranIndic');
INSERT INTO verbs VALUES (null, 'te enamorarás de', 'tranIndic');
INSERT INTO verbs VALUES (null, 'bailaras toda la noche con', 'tranIndic');
INSERT INTO verbs VALUES (null, 'te comerás', 'tranIndic');
INSERT INTO verbs VALUES (null, 'le propondrás matrimonio a', 'tranIndic');
INSERT INTO verbs VALUES (null, 'hablarás con', 'tranIndic');
INSERT INTO verbs VALUES (null, 'vas a vender', 'tranIndic');
INSERT INTO verbs VALUES (null, 'te vas a emborrachar con', 'tranIndic');
INSERT INTO verbs VALUES (null, 'jugarás $ob-game con', 'tranIndic');
INSERT INTO verbs VALUES (null, 'le tomarás una fotografía a', 'tranIndic');
INSERT INTO verbs VALUES (null, 'pintarás un cuadro de', 'tranIndic');
INSERT INTO verbs VALUES (null, 'abrazarás a', 'tranIndic');
INSERT INTO verbs VALUES (null, 'te vas a tragar', 'tranIndic');
INSERT INTO verbs VALUES (null, 'le harás cosquillas a', 'tranIndic');
INSERT INTO verbs VALUES (null, 'vas a acuchuillar a', 'tranIndic');
INSERT INTO verbs VALUES (null, 'hablarás sobre nosotros con', 'tranIndic');

INSERT INTO verbs VALUES (null, 'se convierte en', 'third');
INSERT INTO verbs VALUES (null, 'se roba', 'third');
INSERT INTO verbs VALUES (null, 'tiene relaciones sexuales con', 'third');
INSERT INTO verbs VALUES (null, 'se casa con', 'third');
INSERT INTO verbs VALUES (null, 'se enamora de', 'third');
INSERT INTO verbs VALUES (null, 'baila toda la noche con', 'third');
INSERT INTO verbs VALUES (null, 'le propone matrimonio a', 'third');
INSERT INTO verbs VALUES (null, 'le habla a', 'third');
INSERT INTO verbs VALUES (null, 'se emborracha con', 'third');
INSERT INTO verbs VALUES (null, 'juega $ob-game con', 'third');
INSERT INTO verbs VALUES (null, 'pinta un cuadro de', 'third');
INSERT INTO verbs VALUES (null, 'trata de olvidarse de', 'third');

INSERT INTO verbs VALUES (null, 'asesinado', 'passive');
INSERT INTO verbs VALUES (null, 'destruido', 'passive');
INSERT INTO verbs VALUES (null, 'envenenado', 'passive');
INSERT INTO verbs VALUES (null, 'abrazado', 'passive');
INSERT INTO verbs VALUES (null, 'tragado', 'passive');
INSERT INTO verbs VALUES (null, 'adorado', 'passive');
INSERT INTO verbs VALUES (null, 'encarcelado', 'passive');
INSERT INTO verbs VALUES (null, 'secuestrado', 'passive');
INSERT INTO verbs VALUES (null, 'drogado', 'passive');

INSERT INTO verbs VALUES (null, 'se hunde en', 'sink');
INSERT INTO verbs VALUES (null, 'cae en', 'sink');
INSERT INTO verbs VALUES (null, 'flota en', 'sink');

INSERT INTO verbs VALUES (null, 'estornuda', 'sneez');
INSERT INTO verbs VALUES (null, 'silva una canción', 'sneez');
INSERT INTO verbs VALUES (null, 'eructa', 'sneez');
INSERT INTO verbs VALUES (null, 'parpadea', 'sneez');
INSERT INTO verbs VALUES (null, 'pone a hervir agua para hacerse una taza de té', 'sneez');
INSERT INTO verbs VALUES (null, 'recita el Padrenuestro', 'sneez');
INSERT INTO verbs VALUES (null, 'lanza una bola al aire y la cacha', 'sneez');
INSERT INTO verbs VALUES (null, 'cuenta hasta diez', 'sneez');
INSERT INTO verbs VALUES (null, 'escucha una campana de iglesia', 'sneez');
INSERT INTO verbs VALUES (null, 'mira un episodio de $ob-sitcom', 'sneez');
INSERT INTO verbs VALUES (null, 'toma un autobús a $ob-locality', 'sneez');
INSERT INTO verbs VALUES (null, 'vuela en $ob-cla a $ob-locality', 'sneez');
INSERT INTO verbs VALUES (null, 'escucha el Claro de luna de Beethoven', 'sneez');
INSERT INTO verbs VALUES (null, 've la película de "Y tú Mamá También"', 'sneez');
INSERT INTO verbs VALUES (null, 've la película de "Amores Perros"', 'sneez');
INSERT INTO verbs VALUES (null, 've la película de "Rudo y Cursi"', 'sneez');
INSERT INTO verbs VALUES (null, 'escucha "Smells Like Teen Spirit" en su iPod', 'sneez');
INSERT INTO verbs VALUES (null, 'escucha "Hotel California" en su iPod', 'sneez');

INSERT INTO verbs VALUES (null, 'establece', 'establish');
INSERT INTO verbs VALUES (null, 'dirige', 'establish');
INSERT INTO verbs VALUES (null, 'organiza', 'establish');
INSERT INTO verbs VALUES (null, 'se encarga de', 'establish');
INSERT INTO verbs VALUES (null, 'se encarga de dirigir', 'establish');

INSERT INTO verbs VALUES (null, 'aprueba una ley', 'pa');
INSERT INTO verbs VALUES (null, 'decreta una ley', 'pa');
INSERT INTO verbs VALUES (null, 'introduce una ley', 'pa');

INSERT INTO verbs VALUES (null, 'riéndose', 'burning');
INSERT INTO verbs VALUES (null, 'fumando cigarros', 'burning');
INSERT INTO verbs VALUES (null, 'drogándose', 'burning');
INSERT INTO verbs VALUES (null, 'teniendo relaciones sexuales', 'burning');
INSERT INTO verbs VALUES (null, 'bailando', 'burning');
INSERT INTO verbs VALUES (null, 'masticando chicle', 'burning');
INSERT INTO verbs VALUES (null, 'comiéndose un $ob-dulceH', 'burning');
INSERT INTO verbs VALUES (null, 'vomitando', 'burning');
INSERT INTO verbs VALUES (null, 'parado en perfecta quietud', 'burning');
INSERT INTO verbs VALUES (null, 'sudando', 'burning');
INSERT INTO verbs VALUES (null, 'empapado de sudor', 'burning');
INSERT INTO verbs VALUES (null, 'completamente solo', 'burning');
INSERT INTO verbs VALUES (null, 'rezando', 'burning');
INSERT INTO verbs VALUES (null, 'fumando marihuana', 'burning');
INSERT INTO verbs VALUES (null, 'desnudo', 'burning');
INSERT INTO verbs VALUES (null, 'silbando', 'burning');
INSERT INTO verbs VALUES (null, 'cantando', 'burning');
INSERT INTO verbs VALUES (null, 'susurrando obscenidades', 'burning');
INSERT INTO verbs VALUES (null, 'llorando', 'burning');
INSERT INTO verbs VALUES (null, 'teniendo una conversación por teléfono', 'burning');
INSERT INTO verbs VALUES (null, 'jugando ajedrez', 'burning');
INSERT INTO verbs VALUES (null, 'perdido', 'burning');
INSERT INTO verbs VALUES (null, 'borracho', 'burning');
INSERT INTO verbs VALUES (null, 'roncando', 'burning');
INSERT INTO verbs VALUES (null, 'durmiendo', 'burning');
INSERT INTO verbs VALUES (null, 'bebiendo $ob-alco', 'burning');

INSERT INTO verbs VALUES (null, 'riéndose', 'burningP');
INSERT INTO verbs VALUES (null, 'fumando cigarros', 'burningP');
INSERT INTO verbs VALUES (null, 'drogándose', 'burningP');
INSERT INTO verbs VALUES (null, 'teniendo relaciones sexuales', 'burningP');
INSERT INTO verbs VALUES (null, 'bailando', 'burningP');
INSERT INTO verbs VALUES (null, 'masticando chicle', 'burningP');
INSERT INTO verbs VALUES (null, 'comiéndose un $ob-dulceH', 'burningP');
INSERT INTO verbs VALUES (null, 'vomitando', 'burningP');
INSERT INTO verbs VALUES (null, 'parados en perfecta quietud', 'burningP');
INSERT INTO verbs VALUES (null, 'sudando', 'burningP');
INSERT INTO verbs VALUES (null, 'empapados de sudor', 'burningP');
INSERT INTO verbs VALUES (null, 'completamente solos', 'burningP');
INSERT INTO verbs VALUES (null, 'rezando', 'burningP');
INSERT INTO verbs VALUES (null, 'fumando marihuana', 'burningP');
INSERT INTO verbs VALUES (null, 'desnudos', 'burningP');
INSERT INTO verbs VALUES (null, 'silbando', 'burningP');
INSERT INTO verbs VALUES (null, 'cantando', 'burningP');
INSERT INTO verbs VALUES (null, 'susurrando obscenidades', 'burningP');
INSERT INTO verbs VALUES (null, 'llorando', 'burningP');
INSERT INTO verbs VALUES (null, 'teniendo conversaciones por teléfono', 'burningP');
INSERT INTO verbs VALUES (null, 'jugando ajedrez', 'burningP');
INSERT INTO verbs VALUES (null, 'perdidos', 'burningP');
INSERT INTO verbs VALUES (null, 'borrachos', 'burningP');
INSERT INTO verbs VALUES (null, 'roncandos', 'burningP');
INSERT INTO verbs VALUES (null, 'durmiendo', 'burningP');
INSERT INTO verbs VALUES (null, 'bebiendo $ob-alco', 'burningP');

INSERT INTO verbs VALUES (null, 'siendo planeada por', 'controlled');
INSERT INTO verbs VALUES (null, 'siendo controlada por', 'controlled');
INSERT INTO verbs VALUES (null, 'bajo el control de', 'controlled');
INSERT INTO verbs VALUES (null, 'bajo el hechizo de', 'controlled');
INSERT INTO verbs VALUES (null, 'bajo el hechizo de', 'controlled');
INSERT INTO verbs VALUES (null, 'siendo secretamente controlada por', 'controlled');
INSERT INTO verbs VALUES (null, 'siendo secretamente manipulada por', 'controlled');

INSERT INTO verbs VALUES (null, 'camina', 'walka');
INSERT INTO verbs VALUES (null, 'corre', 'walka');
INSERT INTO verbs VALUES (null, 'va dando saltos', 'walka');
INSERT INTO verbs VALUES (null, 'va bailando', 'walka');
INSERT INTO verbs VALUES (null, 'se arrastra', 'walka');
INSERT INTO verbs VALUES (null, 'va en bicicleta', 'walka');

INSERT INTO verbs VALUES (null, 'está viajando de $ob-locality a', 'transport');
INSERT INTO verbs VALUES (null, 'está navegando en $ob-shipH hacia', 'transport');
INSERT INTO verbs VALUES (null, 'se embarca en un viaje a', 'transport');
INSERT INTO verbs VALUES (null, 'se dirige en Uber a', 'transport');
INSERT INTO verbs VALUES (null, 'agarró un taxi para ir a', 'transport');
INSERT INTO verbs VALUES (null, 'está andando en bicicleta desde $ob-locality para ir a', 'transport');
INSERT INTO verbs VALUES (null, 'está caminando desde $ob-locality para ir a', 'transport');

INSERT INTO verbs VALUES (null, 'destruir', 'trancan');
INSERT INTO verbs VALUES (null, 'crear', 'trancan');

INSERT INTO verbs VALUES (null, 'se da cuenta', 'disc');
INSERT INTO verbs VALUES (null, 'descubre', 'disc');
INSERT INTO verbs VALUES (null, 'se entera', 'disc');

INSERT INTO verbs VALUES (null, 'puede oler el concepto de $ob-concept', 'sense');
INSERT INTO verbs VALUES (null, 'puede sentir la presencia de $ob-flyerPM', 'sense');
INSERT INTO verbs VALUES (null, 'puede sentir la presencia de $ob-beingMP', 'sense');
INSERT INTO verbs VALUES (null, 'puede entender el lenguaje de los $ob-animalPH', 'sense');

INSERT INTO verbs VALUES (null, 'está siendo seguida por', 'chased');
INSERT INTO verbs VALUES (null, 'está siendo perseguida por', 'chased');
INSERT INTO verbs VALUES (null, 'está cazando', 'chased');
INSERT INTO verbs VALUES (null, 'está hablándole a', 'chased');
INSERT INTO verbs VALUES (null, 'mira', 'chased');
INSERT INTO verbs VALUES (null, 'observa a', 'chased');
INSERT INTO verbs VALUES (null, 'está buscando', 'chased');
INSERT INTO verbs VALUES (null, 'baila con', 'chased');

INSERT INTO verbs VALUES (null, 'dando a luz a', 'part');
INSERT INTO verbs VALUES (null, 'convirtiéndose en', 'part');
INSERT INTO verbs VALUES (null, 'teniendo relaciones sexuales con', 'part');
INSERT INTO verbs VALUES (null, 'enamorándose de', 'part');
INSERT INTO verbs VALUES (null, 'acordándose de', 'part');
INSERT INTO verbs VALUES (null, 'comiéndose', 'part');
INSERT INTO verbs VALUES (null, 'torturando', 'part');
INSERT INTO verbs VALUES (null, 'proponiéndole matrimonio a', 'part');
INSERT INTO verbs VALUES (null, 'hablando con', 'part');

INSERT INTO verbs VALUES (null, 'se convierta en un $ob-thingH', 'hallu');
INSERT INTO verbs VALUES (null, 'se convierta en una $ob-thingM', 'hallu');
INSERT INTO verbs VALUES (null, 'crea que es una $ob-thingM', 'hallu');
INSERT INTO verbs VALUES (null, 'piense que es un $ob-animalH', 'hallu');
INSERT INTO verbs VALUES (null, 'desaparezca y aparezca en $ob-locality', 'hallu');

/* *********************************************** ADJECTIVES ********************************************** */

INSERT INTO adjectives VALUES (null, 'rojo', 'color');
INSERT INTO adjectives VALUES (null, 'azul', 'color');
INSERT INTO adjectives VALUES (null, 'fucsia', 'color');
INSERT INTO adjectives VALUES (null, 'índigo', 'color');
INSERT INTO adjectives VALUES (null, 'marrón', 'color');
INSERT INTO adjectives VALUES (null, 'salmón', 'color');
INSERT INTO adjectives VALUES (null, 'dorado', 'color');
INSERT INTO adjectives VALUES (null, 'crema', 'color');
INSERT INTO adjectives VALUES (null, 'esmeralda', 'color');
INSERT INTO adjectives VALUES (null, 'jade', 'color');
INSERT INTO adjectives VALUES (null, 'plata', 'color');
INSERT INTO adjectives VALUES (null, 'aguamarina', 'color');
INSERT INTO adjectives VALUES (null, 'turquesa', 'color');
INSERT INTO adjectives VALUES (null, 'cobalto', 'color');
INSERT INTO adjectives VALUES (null, 'violeta', 'color');
INSERT INTO adjectives VALUES (null, 'magenta', 'color');
INSERT INTO adjectives VALUES (null, 'rosa', 'color');
INSERT INTO adjectives VALUES (null, 'blanco', 'color');
INSERT INTO adjectives VALUES (null, 'marfil', 'color');
INSERT INTO adjectives VALUES (null, 'azabache', 'color');
INSERT INTO adjectives VALUES (null, 'negro', 'color');
INSERT INTO adjectives VALUES (null, 'gris', 'color');
INSERT INTO adjectives VALUES (null, 'arcoíris', 'color');

INSERT INTO adjectives VALUES (null, 'famosa', 'gen');
INSERT INTO adjectives VALUES (null, 'solitaria', 'gen');
INSERT INTO adjectives VALUES (null, 'deprimida', 'gen');
INSERT INTO adjectives VALUES (null, 'borracha', 'gen');
INSERT INTO adjectives VALUES (null, 'malvada', 'gen');
INSERT INTO adjectives VALUES (null, 'nihilista', 'gen');
INSERT INTO adjectives VALUES (null, 'adolescente', 'gen');
INSERT INTO adjectives VALUES (null, 'ansiosa', 'gen');
INSERT INTO adjectives VALUES (null, 'melancólica', 'gen');
INSERT INTO adjectives VALUES (null, 'sexualmente frustrada', 'gen');
INSERT INTO adjectives VALUES (null, 'serena', 'gen');
INSERT INTO adjectives VALUES (null, 'constipada', 'gen');
INSERT INTO adjectives VALUES (null, 'irritable', 'gen');
INSERT INTO adjectives VALUES (null, 'hermosa', 'gen');
INSERT INTO adjectives VALUES (null, 'cansada', 'gen');
INSERT INTO adjectives VALUES (null, 'amargada', 'gen');
INSERT INTO adjectives VALUES (null, 'cínica', 'gen');
INSERT INTO adjectives VALUES (null, 'insensible', 'gen');
INSERT INTO adjectives VALUES (null, 'arrogante', 'gen');
INSERT INTO adjectives VALUES (null, 'ambiciosa', 'gen');
INSERT INTO adjectives VALUES (null, 'valiente', 'gen');

INSERT INTO adjectives VALUES (null, 'famoso', 'genH');
INSERT INTO adjectives VALUES (null, 'solitario', 'genH');
INSERT INTO adjectives VALUES (null, 'deprimido', 'genH');
INSERT INTO adjectives VALUES (null, 'borracho', 'genH');
INSERT INTO adjectives VALUES (null, 'malvado', 'genH');
INSERT INTO adjectives VALUES (null, 'nihilista', 'genH');
INSERT INTO adjectives VALUES (null, 'adolescente', 'genH');
INSERT INTO adjectives VALUES (null, 'ansioso', 'genH');
INSERT INTO adjectives VALUES (null, 'melancólico', 'genH');
INSERT INTO adjectives VALUES (null, 'sexualmente frustrado', 'genH');
INSERT INTO adjectives VALUES (null, 'sereno', 'genH');
INSERT INTO adjectives VALUES (null, 'constipado', 'genH');
INSERT INTO adjectives VALUES (null, 'irritable', 'genH');
INSERT INTO adjectives VALUES (null, 'hermoso', 'genH');
INSERT INTO adjectives VALUES (null, 'cansado', 'genH');
INSERT INTO adjectives VALUES (null, 'amargado', 'genH');
INSERT INTO adjectives VALUES (null, 'cínico', 'genH');
INSERT INTO adjectives VALUES (null, 'insensible', 'genH');
INSERT INTO adjectives VALUES (null, 'arrogante', 'genH');
INSERT INTO adjectives VALUES (null, 'ambicioso', 'genH');
INSERT INTO adjectives VALUES (null, 'valiente', 'genH');

INSERT INTO adjectives VALUES (null, 'famosas', 'genP');
INSERT INTO adjectives VALUES (null, 'solitarias', 'genP');
INSERT INTO adjectives VALUES (null, 'deprimidas', 'genP');
INSERT INTO adjectives VALUES (null, 'borrachas', 'genP');
INSERT INTO adjectives VALUES (null, 'malvadas', 'genP');
INSERT INTO adjectives VALUES (null, 'nihilistas', 'genP');
INSERT INTO adjectives VALUES (null, 'adolescentes', 'genP');
INSERT INTO adjectives VALUES (null, 'ansiosas', 'genP');
INSERT INTO adjectives VALUES (null, 'melancólicas', 'genP');
INSERT INTO adjectives VALUES (null, 'sexualmente frustradas', 'genP');
INSERT INTO adjectives VALUES (null, 'serenas', 'genP');
INSERT INTO adjectives VALUES (null, 'constipadas', 'genP');
INSERT INTO adjectives VALUES (null, 'irritables', 'genP');
INSERT INTO adjectives VALUES (null, 'hermosas', 'genP');
INSERT INTO adjectives VALUES (null, 'cansadas', 'genP');
INSERT INTO adjectives VALUES (null, 'amargadas', 'genP');
INSERT INTO adjectives VALUES (null, 'cínicas', 'genP');
INSERT INTO adjectives VALUES (null, 'insensibles', 'genP');
INSERT INTO adjectives VALUES (null, 'arrogantes', 'genP');
INSERT INTO adjectives VALUES (null, 'ambiciosas', 'genP');
INSERT INTO adjectives VALUES (null, 'valientes', 'genP');

INSERT INTO adjectives VALUES (null, 'famosos', 'genHP');
INSERT INTO adjectives VALUES (null, 'solitarios', 'genHP');
INSERT INTO adjectives VALUES (null, 'deprimidos', 'genHP');
INSERT INTO adjectives VALUES (null, 'borrachos', 'genHP');
INSERT INTO adjectives VALUES (null, 'malvados', 'genHP');
INSERT INTO adjectives VALUES (null, 'nihilistas', 'genHP');
INSERT INTO adjectives VALUES (null, 'adolescentes', 'genHP');
INSERT INTO adjectives VALUES (null, 'ansiosos', 'genHP');
INSERT INTO adjectives VALUES (null, 'melancólicos', 'genHP');
INSERT INTO adjectives VALUES (null, 'sexualmente frustrados', 'genHP');
INSERT INTO adjectives VALUES (null, 'serenos', 'genHP');
INSERT INTO adjectives VALUES (null, 'constipados', 'genHP');
INSERT INTO adjectives VALUES (null, 'irritables', 'genHP');
INSERT INTO adjectives VALUES (null, 'hermosos', 'genHP');
INSERT INTO adjectives VALUES (null, 'cansados', 'genHP');
INSERT INTO adjectives VALUES (null, 'amargados', 'genHP');
INSERT INTO adjectives VALUES (null, 'cínicos', 'genHP');
INSERT INTO adjectives VALUES (null, 'insensibles', 'genHP');
INSERT INTO adjectives VALUES (null, 'arrogantes', 'genHP');
INSERT INTO adjectives VALUES (null, 'ambiciosos', 'genHP');
INSERT INTO adjectives VALUES (null, 'valientes', 'genHP');

INSERT INTO adjectives VALUES (null, 'brillante', 'talentM');
INSERT INTO adjectives VALUES (null, 'talentosa', 'talentM');
INSERT INTO adjectives VALUES (null, 'dotada', 'talentM');
INSERT INTO adjectives VALUES (null, 'ilustre', 'talentM');
INSERT INTO adjectives VALUES (null, 'famosa', 'talentM');

INSERT INTO adjectives VALUES (null, 'brillante', 'talentH');
INSERT INTO adjectives VALUES (null, 'talentoso', 'talentH');
INSERT INTO adjectives VALUES (null, 'dotado', 'talentH');
INSERT INTO adjectives VALUES (null, 'ilustre', 'talentH');
INSERT INTO adjectives VALUES (null, 'famoso', 'talentH');

INSERT INTO adjectives VALUES (null, 'Egipcio', 'oldnationality');
INSERT INTO adjectives VALUES (null, 'Maya', 'oldnationality');
INSERT INTO adjectives VALUES (null, 'Sumerio', 'oldnationality');
INSERT INTO adjectives VALUES (null, 'Azteca', 'oldnationality');
INSERT INTO adjectives VALUES (null, 'Vikingo', 'oldnationality');
INSERT INTO adjectives VALUES (null, 'Inca', 'oldnationality');
INSERT INTO adjectives VALUES (null, 'Bizantino', 'oldnationality');

INSERT INTO adjectives VALUES (null, 'simpático', 'personalityH');
INSERT INTO adjectives VALUES (null, 'maquiavélico', 'personalityH');
INSERT INTO adjectives VALUES (null, 'ambicioso', 'personalityH');
INSERT INTO adjectives VALUES (null, 'apasionado', 'personalityH');
INSERT INTO adjectives VALUES (null, 'amargado', 'personalityH');
INSERT INTO adjectives VALUES (null, 'beligerante', 'personalityH');
INSERT INTO adjectives VALUES (null, 'cordial', 'personalityH');
INSERT INTO adjectives VALUES (null, 'deprimido', 'personalityH');
INSERT INTO adjectives VALUES (null, 'educado', 'personalityH');
INSERT INTO adjectives VALUES (null, 'egoísta', 'personalityH');
INSERT INTO adjectives VALUES (null, 'energético', 'personalityH');
INSERT INTO adjectives VALUES (null, 'entrometido', 'personalityH');
INSERT INTO adjectives VALUES (null, 'excéntrico', 'personalityH');
INSERT INTO adjectives VALUES (null, 'fervoroso', 'personalityH');
INSERT INTO adjectives VALUES (null, 'impulsivo', 'personalityH');
INSERT INTO adjectives VALUES (null, 'perturbador', 'personalityH');
INSERT INTO adjectives VALUES (null, 'pícaro', 'personalityH');
INSERT INTO adjectives VALUES (null, 'somnoliento', 'personalityH');

INSERT INTO adjectives VALUES (null, 'triste', 'emote'); 
INSERT INTO adjectives VALUES (null, 'iluminado', 'emoteH'); 
INSERT INTO adjectives VALUES (null, 'arrepentido', 'emoteH'); 
INSERT INTO adjectives VALUES (null, 'amargado', 'emoteH'); 
INSERT INTO adjectives VALUES (null, 'iluminada', 'emoteM'); 
INSERT INTO adjectives VALUES (null, 'arrepentida', 'emoteM'); 
INSERT INTO adjectives VALUES (null, 'amargada', 'emoteM'); 
INSERT INTO adjectives VALUES (null, 'limpio', 'emoteH'); 
INSERT INTO adjectives VALUES (null, 'limpia', 'emoteM'); 
INSERT INTO adjectives VALUES (null, 'resentido', 'emoteH'); 
INSERT INTO adjectives VALUES (null, 'resentida', 'emoteM'); 
INSERT INTO adjectives VALUES (null, 'alarmado', 'emoteH'); 
INSERT INTO adjectives VALUES (null, 'alarmada', 'emoteM'); 
INSERT INTO adjectives VALUES (null, 'joven', 'emote'); 
INSERT INTO adjectives VALUES (null, 'deprimido', 'emoteH'); 
INSERT INTO adjectives VALUES (null, 'deprimida', 'emoteM'); 
INSERT INTO adjectives VALUES (null, 'cauteloso', 'emoteH'); 
INSERT INTO adjectives VALUES (null, 'cautelosa', 'emoteM'); 
INSERT INTO adjectives VALUES (null, 'homosexual', 'emote'); 
INSERT INTO adjectives VALUES (null, 'débil', 'emote'); 
INSERT INTO adjectives VALUES (null, 'pobre', 'emote'); 
INSERT INTO adjectives VALUES (null, 'mediocre', 'emote'); 
INSERT INTO adjectives VALUES (null, 'viva', 'emoteM'); 
INSERT INTO adjectives VALUES (null, 'vivo', 'emoteH'); 
INSERT INTO adjectives VALUES (null, 'tridimensional', 'emote'); 
INSERT INTO adjectives VALUES (null, 'sexy', 'emote'); 

INSERT INTO adjectives VALUES (null, 'tristes', 'emoteP'); 
INSERT INTO adjectives VALUES (null, 'iluminados', 'emotePH'); 
INSERT INTO adjectives VALUES (null, 'arrepentidos', 'emotePH'); 
INSERT INTO adjectives VALUES (null, 'amargados', 'emotePH'); 
INSERT INTO adjectives VALUES (null, 'iluminadas', 'emotePM'); 
INSERT INTO adjectives VALUES (null, 'arrepentidas', 'emotePM'); 
INSERT INTO adjectives VALUES (null, 'amargadas', 'emotePM'); 
INSERT INTO adjectives VALUES (null, 'limpios', 'emotePH'); 
INSERT INTO adjectives VALUES (null, 'limpias', 'emotePM'); 
INSERT INTO adjectives VALUES (null, 'resentidos', 'emotePH'); 
INSERT INTO adjectives VALUES (null, 'resentidas', 'emotePM'); 
INSERT INTO adjectives VALUES (null, 'alarmados', 'emotePH'); 
INSERT INTO adjectives VALUES (null, 'alarmadas', 'emotePM'); 
INSERT INTO adjectives VALUES (null, 'jovenes', 'emoteP'); 
INSERT INTO adjectives VALUES (null, 'deprimidos', 'emotePH'); 
INSERT INTO adjectives VALUES (null, 'deprimidas', 'emotePM'); 
INSERT INTO adjectives VALUES (null, 'cautelosos', 'emotePH'); 
INSERT INTO adjectives VALUES (null, 'cautelosas', 'emotePM'); 
INSERT INTO adjectives VALUES (null, 'homosexuales', 'emoteP'); 
INSERT INTO adjectives VALUES (null, 'débiles', 'emoteP'); 
INSERT INTO adjectives VALUES (null, 'pobres', 'emoteP'); 
INSERT INTO adjectives VALUES (null, 'mediocres', 'emoteP'); 
INSERT INTO adjectives VALUES (null, 'vivas', 'emotePM'); 
INSERT INTO adjectives VALUES (null, 'vivos', 'emotePH'); 
INSERT INTO adjectives VALUES (null, 'tridimensionales', 'emoteP'); 
INSERT INTO adjectives VALUES (null, 'sexys', 'emoteP'); 


/* MATERIAL */

INSERT INTO adjectives VALUES (null, 'porcelana', 'mat');
INSERT INTO adjectives VALUES (null, 'terracota', 'mat');
INSERT INTO adjectives VALUES (null, 'vidrio', 'mat');
INSERT INTO adjectives VALUES (null, 'cristal', 'mat');
INSERT INTO adjectives VALUES (null, 'diamante', 'mat');
INSERT INTO adjectives VALUES (null, 'plata', 'mat');
INSERT INTO adjectives VALUES (null, 'oro', 'mat');
INSERT INTO adjectives VALUES (null, 'mármol', 'mat');
INSERT INTO adjectives VALUES (null, 'platino', 'mat');
INSERT INTO adjectives VALUES (null, 'ébano', 'mat');
INSERT INTO adjectives VALUES (null, 'marfil', 'mat');
INSERT INTO adjectives VALUES (null, 'jade', 'mat');
INSERT INTO adjectives VALUES (null, 'esmeralda', 'mat');
INSERT INTO adjectives VALUES (null, 'chocolate', 'mat');
INSERT INTO adjectives VALUES (null, 'papel', 'mat');
INSERT INTO adjectives VALUES (null, 'plata', 'mat');
INSERT INTO adjectives VALUES (null, 'bronce', 'mat');
INSERT INTO adjectives VALUES (null, 'hielo', 'mat');
INSERT INTO adjectives VALUES (null, 'plástico', 'mat');
INSERT INTO adjectives VALUES (null, 'cartón', 'mat');
INSERT INTO adjectives VALUES (null, 'unicel', 'mat');


/* GENTILICIOS*/


INSERT INTO adjectives VALUES (null, 'catalán', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'alemán', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'argentino', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'australiano', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'austriaco', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'belga', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'boliviano', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'bosnio', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'botsuano', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'búlgaro', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'canadiense', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'chino', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'colombiano', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'norcoreano', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'surcoreano', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'croata', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'cubano', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'ecuatoriano', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'egipcio', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'español', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'estadounidense', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'filipino', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'finlandés', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'francés', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'parisino', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'griego', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'húngaro', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'israelí', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'italiano', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'keniano', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'libanés', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'marroquí', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'nicaragüense', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'paraguayo', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'británico', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'peruano', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'portugés', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'polaco', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'londinense', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'sueco', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'uruguayo', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'madrileño', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'chilango', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'aragonés', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'asturiano', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'bilbaíno', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'cordobés', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'gallego', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'riojano', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'mallorquín', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'murciano', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'navarro', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'valenciano', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'nayarita', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'zacatecano', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'yucateco', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'chiapaneco', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'queretano', 'gentilicioH');
INSERT INTO adjectives VALUES (null, 'potosino', 'gentilicioH');


INSERT INTO adjectives VALUES (null, 'catalána', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'alemána', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'argentina', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'australiana', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'austriaca', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'belga', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'boliviana', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'bosnia', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'botsuana', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'búlgara', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'canadiense', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'china', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'colombiana', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'norcoreana', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'surcoreana', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'croata', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'cubana', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'ecuatoriana', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'egipcia', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'española', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'estadounidense', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'filipina', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'finlandésa', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'francésa', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'parisina', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'griega', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'húngara', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'israelí', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'italiana', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'keniana', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'libanésa', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'marroquí', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'nicaragüense', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'paraguaya', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'británica', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'peruana', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'portugésa', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'polaca', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'londinense', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'sueca', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'uruguaya', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'madrileña', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'chilanga', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'aragonésa', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'asturiana', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'bilbaína', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'cordobésa', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'gallega', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'riojana', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'mallorquína', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'murciana', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'navarra', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'valenciana', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'nayarita', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'zacatecana', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'yucateca', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'chiapaneca', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'queretana', 'gentilicioM');
INSERT INTO adjectives VALUES (null, 'potosina', 'gentilicioM');


/* GENTILICIO ANTIGüO */

INSERT INTO adjectives VALUES (null, 'Maya', 'oldnationalityM');
INSERT INTO adjectives VALUES (null, 'Sumeria', 'oldnationalityM');
INSERT INTO adjectives VALUES (null, 'Azteca', 'oldnationalityM');
INSERT INTO adjectives VALUES (null, 'Vikinga', 'oldnationalityM');
INSERT INTO adjectives VALUES (null, 'Inca', 'oldnationalityM');
INSERT INTO adjectives VALUES (null, 'Bizantina', 'oldnationalityM');
INSERT INTO adjectives VALUES (null, 'medieval', 'oldnationalityM');
INSERT INTO adjectives VALUES (null, 'ancestral', 'oldnationalityM');
INSERT INTO adjectives VALUES (null, 'Egipcia', 'oldnationalityM');


INSERT INTO adjectives VALUES (null, 'del siglo XVII', 'era');
INSERT INTO adjectives VALUES (null, 'medieval', 'era');
INSERT INTO adjectives VALUES (null, 'antiguo', 'era');
INSERT INTO adjectives VALUES (null, 'del siglo XVI', 'era');
INSERT INTO adjectives VALUES (null, 'del siglo XIV', 'era');
INSERT INTO adjectives VALUES (null, 'del siglo XV', 'era');
INSERT INTO adjectives VALUES (null, 'del siglo V Antes de Cristo', 'era');

INSERT INTO adjectives VALUES (null, 'encuadernado en piel', 'text');
INSERT INTO adjectives VALUES (null, 'escrito a mano', 'text');
INSERT INTO adjectives VALUES (null, 'místico', 'text');
INSERT INTO adjectives VALUES (null, 'legendario', 'text');
INSERT INTO adjectives VALUES (null, 'ancestral', 'text');
INSERT INTO adjectives VALUES (null, 'del Renacimiento', 'text');

INSERT INTO adjectives VALUES (null, 'republicano', 'affect'); 
INSERT INTO adjectives VALUES (null, 'priista', 'affect'); 
INSERT INTO adjectives VALUES (null, 'panista', 'affect'); 
INSERT INTO adjectives VALUES (null, 'perredista', 'affect'); 
INSERT INTO adjectives VALUES (null, 'limpio', 'affect'); 
INSERT INTO adjectives VALUES (null, 'cauteloso', 'affect'); 
INSERT INTO adjectives VALUES (null, 'narcisista', 'affect'); 
INSERT INTO adjectives VALUES (null, 'hermoso', 'affect'); 
INSERT INTO adjectives VALUES (null, 'débil', 'affect'); 
INSERT INTO adjectives VALUES (null, 'ancioso', 'affect'); 
INSERT INTO adjectives VALUES (null, 'egoísta', 'affect'); 
INSERT INTO adjectives VALUES (null, '$ob-jobH', 'affect'); 
INSERT INTO adjectives VALUES (null, 'millonario', 'affect'); 
INSERT INTO adjectives VALUES (null, 'rico', 'affect'); 
INSERT INTO adjectives VALUES (null, 'pobre', 'affect'); 
INSERT INTO adjectives VALUES (null, 'capitalista', 'affect'); 
INSERT INTO adjectives VALUES (null, 'mujer', 'affect'); 
INSERT INTO adjectives VALUES (null, 'viejo', 'affect'); 
INSERT INTO adjectives VALUES (null, 'joven', 'affect'); 
INSERT INTO adjectives VALUES (null, 'mediocre', 'affect'); 
INSERT INTO adjectives VALUES (null, 'mantequilloso', 'affect'); 
INSERT INTO adjectives VALUES (null, 'enorme', 'affect'); 
INSERT INTO adjectives VALUES (null, 'avaricioso', 'affect'); 
INSERT INTO adjectives VALUES (null, 'bueno para las matemáticas', 'affect'); 
INSERT INTO adjectives VALUES (null, 'ordinario', 'affect'); 
INSERT INTO adjectives VALUES (null, 'triangular', 'affect'); 
INSERT INTO adjectives VALUES (null, 'rectangular', 'affect'); 
INSERT INTO adjectives VALUES (null, 'silencioso', 'affect'); 
INSERT INTO adjectives VALUES (null, 'circular', 'affect'); 
INSERT INTO adjectives VALUES (null, 'sucio', 'affect'); 
INSERT INTO adjectives VALUES (null, 'calvo', 'affect'); 

INSERT INTO adjectives VALUES (null, 'republicanos', 'affectP'); 
INSERT INTO adjectives VALUES (null, 'priistas', 'affectP'); 
INSERT INTO adjectives VALUES (null, 'panistas', 'affectP'); 
INSERT INTO adjectives VALUES (null, 'perredistas', 'affectP'); 
INSERT INTO adjectives VALUES (null, 'limpios', 'affectP'); 
INSERT INTO adjectives VALUES (null, 'cautelosos', 'affectP'); 
INSERT INTO adjectives VALUES (null, 'narcisistas', 'affectP'); 
INSERT INTO adjectives VALUES (null, 'hermosos', 'affectP'); 
INSERT INTO adjectives VALUES (null, 'débiles', 'affectP'); 
INSERT INTO adjectives VALUES (null, 'anciosos', 'affectP'); 
INSERT INTO adjectives VALUES (null, 'egoístas', 'affectP'); 
INSERT INTO adjectives VALUES (null, '$ob-jobHP', 'affectP'); 
INSERT INTO adjectives VALUES (null, 'millonarios', 'affectP'); 
INSERT INTO adjectives VALUES (null, 'ricos', 'affectP'); 
INSERT INTO adjectives VALUES (null, 'pobres', 'affectP'); 
INSERT INTO adjectives VALUES (null, 'capitalistas', 'affectP'); 
INSERT INTO adjectives VALUES (null, 'viejos', 'affectP'); 
INSERT INTO adjectives VALUES (null, 'jovenes', 'affectP'); 
INSERT INTO adjectives VALUES (null, 'mediocres', 'affectP'); 
INSERT INTO adjectives VALUES (null, 'mantequillosos', 'affectP'); 
INSERT INTO adjectives VALUES (null, 'enormes', 'affectP'); 
INSERT INTO adjectives VALUES (null, 'avariciosos', 'affectP'); 
INSERT INTO adjectives VALUES (null, 'buenos para las matemáticas', 'affectP'); 
INSERT INTO adjectives VALUES (null, 'ordinarios', 'affectP'); 
INSERT INTO adjectives VALUES (null, 'triangulares', 'affectP'); 
INSERT INTO adjectives VALUES (null, 'rectangulares', 'affectP'); 
INSERT INTO adjectives VALUES (null, 'silenciosos', 'affectP'); 
INSERT INTO adjectives VALUES (null, 'circulares', 'affectP'); 
INSERT INTO adjectives VALUES (null, 'sucios', 'affectP'); 
INSERT INTO adjectives VALUES (null, 'calvos', 'affectP'); 


INSERT INTO adjectives VALUES (null, 'efímero', 'quickt');
INSERT INTO adjectives VALUES (null, 'cortísimo', 'quickt');
INSERT INTO adjectives VALUES (null, 'corto', 'quickt');
INSERT INTO adjectives VALUES (null, 'pequeño', 'quickt');
INSERT INTO adjectives VALUES (null, 'aparentemente corto', 'quickt');
INSERT INTO adjectives VALUES (null, 'fugaz', 'quickt');

/* ************************************************* GENDER ************************************************ */

INSERT INTO gender VALUES ('Isaac Newton', 'h'); 

/* ************************************************ PEOPLE ************************************************* */

/* POLITICOS */

INSERT INTO people VALUES (null, 'Andrés Manuel López Obrador', 'politic');
INSERT INTO people VALUES (null, 'Felipe Calderón', 'politic');
INSERT INTO people VALUES (null, 'Ricardo Anaya', 'politic');
INSERT INTO people VALUES (null, 'El Bronco', 'politic');
INSERT INTO people VALUES (null, 'Mariano Rajoy', 'politic');
INSERT INTO people VALUES (null, 'Pablo Iglesias', 'politic');
INSERT INTO people VALUES (null, 'Enrique Peña Nieto', 'politic');
INSERT INTO people VALUES (null, 'Javier Duarte', 'politic');
INSERT INTO people VALUES (null, 'Donald Trump', 'politic');
INSERT INTO people VALUES (null, 'Vicente Fox', 'politic');
INSERT INTO people VALUES (null, 'Salinas de Gortari', 'politic');
INSERT INTO people VALUES (null, 'Jair Bolsonaro', 'politic');
INSERT INTO people VALUES (null, 'Emmanuel Macron', 'politic');
INSERT INTO people VALUES (null, 'Pedro Sánchez', 'politic');
INSERT INTO people VALUES (null, 'Angela Merkel', 'politic');

/* FILOSOFOS */

INSERT INTO people VALUES (null, 'Platón', 'philo');
INSERT INTO people VALUES (null, 'Aristóteles', 'philo');
INSERT INTO people VALUES (null, 'Nietzsche', 'philo');
INSERT INTO people VALUES (null, 'Kant', 'philo');
INSERT INTO people VALUES (null, 'Descartes', 'philo');
INSERT INTO people VALUES (null, 'Marx', 'philo');
INSERT INTO people VALUES (null, 'Confucio', 'philo');
INSERT INTO people VALUES (null, 'Voltaire', 'philo');
INSERT INTO people VALUES (null, 'Simone de Beauvoir', 'philo');
INSERT INTO people VALUES (null, 'Sor Juana', 'philo');
INSERT INTO people VALUES (null, 'Nezahualcóyotl', 'philo');
INSERT INTO people VALUES (null, 'Alan Watts', 'philo');
INSERT INTO people VALUES (null, 'Jordan Peterson', 'philo');
INSERT INTO people VALUES (null, 'Carl Jung', 'philo');
INSERT INTO people VALUES (null, 'Dostoevsky', 'philo');

/* FIGURAS */

INSERT INTO people VALUES (null, 'Albert Einstein', 'histfig');
INSERT INTO people VALUES (null, 'Martin Luther King', 'histfig');
INSERT INTO people VALUES (null, 'Karl Marx', 'histfig');
INSERT INTO people VALUES (null, 'Adam Smith', 'histfig');
INSERT INTO people VALUES (null, 'William Shakespeare', 'histfig');
INSERT INTO people VALUES (null, 'Napoleon Bonaparte', 'histfig');
INSERT INTO people VALUES (null, 'John F. Kennedy', 'histfig');
INSERT INTO people VALUES (null, 'Henry Ford', 'histfig');
INSERT INTO people VALUES (null, 'Genghis Khan', 'histfig');
INSERT INTO people VALUES (null, 'Jesús de Nazaret', 'histfig');

INSERT INTO people VALUES (null, 'Jim Morrison', 'celebritt');
INSERT INTO people VALUES (null, 'Ronald McDonald', 'celebritt');
INSERT INTO people VALUES (null, 'Sailor Moon', 'celebritt');
INSERT INTO people VALUES (null, 'Pikachu', 'celebritt');
INSERT INTO people VALUES (null, 'la Rana René', 'celebritt');
INSERT INTO people VALUES (null, 'Hillary Clinton', 'celebritt');
INSERT INTO people VALUES (null, 'Bernie Sanders', 'celebritt');
INSERT INTO people VALUES (null, 'Kim Kardashian', 'celebritt');
INSERT INTO people VALUES (null, 'Taylor Swift', 'celebritt');
INSERT INTO people VALUES (null, 'Beyoncé', 'celebritt');
INSERT INTO people VALUES (null, 'Kanye West', 'celebritt');
INSERT INTO people VALUES (null, 'Donald Trump', 'celebritt');
INSERT INTO people VALUES (null, 'Oscar Wilde', 'celebritt');
INSERT INTO people VALUES (null, 'Confucio', 'celebritt');
INSERT INTO people VALUES (null, 'Truman Capote', 'celebritt');
INSERT INTO people VALUES (null, 'Mussolini', 'celebritt');
INSERT INTO people VALUES (null, 'Pablo Picasso', 'celebritt');
INSERT INTO people VALUES (null, 'Miles Davis', 'celebritt');
INSERT INTO people VALUES (null, 'Ronald Reagan', 'celebritt');
INSERT INTO people VALUES (null, 'Vladimir Putin', 'celebritt');
INSERT INTO people VALUES (null, 'Marie Curie', 'celebritt');
INSERT INTO people VALUES (null, 'David Bowie', 'celebritt');
INSERT INTO people VALUES (null, 'Marilyn Monroe', 'celebritt');
INSERT INTO people VALUES (null, 'Werner Herzog', 'celebritt');
INSERT INTO people VALUES (null, 'Albert Einstein', 'celebritt');
INSERT INTO people VALUES (null, 'Nikola Tesla', 'celebritt');
INSERT INTO people VALUES (null, 'Britney Spears', 'celebritt');
INSERT INTO people VALUES (null, 'Michael Jackson', 'celebritt');
INSERT INTO people VALUES (null, 'Cleopatra', 'celebritt');
INSERT INTO people VALUES (null, 'Martin Luther King', 'celebritt');
INSERT INTO people VALUES (null, 'Mahatma Gandhi', 'celebritt');
INSERT INTO people VALUES (null, 'Alejandro Magno', 'celebritt');
INSERT INTO people VALUES (null, 'Alan Turing', 'celebritt');
INSERT INTO people VALUES (null, 'Tutankamón', 'celebritt');
INSERT INTO people VALUES (null, 'Zeus', 'celebritt');
INSERT INTO people VALUES (null, 'William Shakespeare', 'celebritt');
INSERT INTO people VALUES (null, 'Platón', 'celebritt');
INSERT INTO people VALUES (null, 'Sócrates', 'celebritt');
INSERT INTO people VALUES (null, 'Abraham Lincoln', 'celebritt');
INSERT INTO people VALUES (null, 'George Washington', 'celebritt');
INSERT INTO people VALUES (null, 'Eleanor Roosevelt', 'celebritt');
INSERT INTO people VALUES (null, 'Aristóteles', 'celebritt');
INSERT INTO people VALUES (null, 'Josef Stalin', 'celebritt');
INSERT INTO people VALUES (null, 'Mozart', 'celebritt');
INSERT INTO people VALUES (null, 'Leonardo da Vinci', 'celebritt');
INSERT INTO people VALUES (null, 'Johann Sebastian Bach', 'celebritt');
INSERT INTO people VALUES (null, 'Vincent van Gogh', 'celebritt');
INSERT INTO people VALUES (null, 'René Descartes', 'celebritt');
INSERT INTO people VALUES (null, 'Juana de Arco', 'celebritt');
INSERT INTO people VALUES (null, 'Julio César', 'celebritt');
INSERT INTO people VALUES (null, 'Henry Ford', 'celebritt');
INSERT INTO people VALUES (null, 'Walt Disney', 'celebritt');
INSERT INTO people VALUES (null, 'Lionel Messi', 'celebritt');
INSERT INTO people VALUES (null, 'Cristiano Ronaldo', 'celebritt');

INSERT INTO people VALUES (null, 'Roberto Palazuelos', 'memecelebritt');
INSERT INTO people VALUES (null, 'Alfredo Adame', 'memecelebritt');
INSERT INTO people VALUES (null, 'Carlos Trejo', 'memecelebritt');
INSERT INTO people VALUES (null, 'Lady Cien Pesos', 'memecelebritt');
INSERT INTO people VALUES (null, 'Yorsh de Polanco', 'memecelebritt');
INSERT INTO people VALUES (null, 'Luisito Comunica', 'memecelebritt');

/* NEXOS FAMILIARES*/

INSERT INTO people VALUES (null, 'tío', 'familyH');
INSERT INTO people VALUES (null, 'abuelo', 'familyH');
INSERT INTO people VALUES (null, 'padre', 'familyH');
INSERT INTO people VALUES (null, 'hermano', 'familyH');
INSERT INTO people VALUES (null, 'primo', 'familyH');
INSERT INTO people VALUES (null, 'bisabuelo', 'familyH');
INSERT INTO people VALUES (null, 'cuñado', 'familyH');


INSERT INTO people VALUES (null, 'anciana', 'granny');
INSERT INTO people VALUES (null, '$per-genM', 'granny');
INSERT INTO people VALUES (null, 'niña pequeña', 'granny');
INSERT INTO people VALUES (null, 'hermosa mujer con ojos color $ad-color', 'granny');
INSERT INTO people VALUES (null, 'bruja', 'granny');


/* PUESTOS DE ALTA JERARQUÍA*/

INSERT INTO people VALUES (null, 'bruja', 'rulerM');
INSERT INTO people VALUES (null, 'arcángel', 'rulerH');
INSERT INTO people VALUES (null, 'ángel', 'rulerH');
INSERT INTO people VALUES (null, 'sirena', 'rulerM');
INSERT INTO people VALUES (null, 'presidente', 'rulerH');
INSERT INTO people VALUES (null, 'dictador', 'rulerH');
INSERT INTO people VALUES (null, 'vicepresidente', 'rulerH');
INSERT INTO people VALUES (null, 'político', 'rulerH');
INSERT INTO people VALUES (null, 'senador', 'rulerH');
INSERT INTO people VALUES (null, 'senadora', 'rulerM');
INSERT INTO people VALUES (null, 'diputado', 'rulerH');
INSERT INTO people VALUES (null, 'diputada', 'rulerM');
INSERT INTO people VALUES (null, 'hechicero', 'rulerH');
INSERT INTO people VALUES (null, 'nigromante', 'rulerH');
INSERT INTO people VALUES (null, 'hechicera', 'rulerM');
INSERT INTO people VALUES (null, 'reina', 'rulerM');
INSERT INTO people VALUES (null, 'emperatriz', 'rulerM');
INSERT INTO people VALUES (null, 'príncipe', 'rulerH');
INSERT INTO people VALUES (null, 'primer ministro', 'rulerH');
INSERT INTO people VALUES (null, 'sultán', 'rulerH');
INSERT INTO people VALUES (null, 'zar', 'rulerH');
INSERT INTO people VALUES (null, 'zarina', 'rulerM');
INSERT INTO people VALUES (null, 'archiduque', 'rulerH');
INSERT INTO people VALUES (null, 'virrey', 'rulerH');
INSERT INTO people VALUES (null, 'maharajá', 'rulerH');
INSERT INTO people VALUES (null, 'emperador', 'rulerH');
INSERT INTO people VALUES (null, 'rey', 'rulerH');
INSERT INTO people VALUES (null, 'jeque', 'rulerH');
INSERT INTO people VALUES (null, 'califa', 'rulerH');
INSERT INTO people VALUES (null, 'condesa', 'rulerM');
INSERT INTO people VALUES (null, 'baronesa', 'rulerM');
INSERT INTO people VALUES (null, 'princesa', 'rulerM');
INSERT INTO people VALUES (null, 'duque', 'rulerH');
INSERT INTO people VALUES (null, 'duquesa', 'rulerM');

INSERT INTO people VALUES (null, 'brujas', 'rulerPM');
INSERT INTO people VALUES (null, 'arcángeles', 'rulerPH');
INSERT INTO people VALUES (null, 'ángeles', 'rulerPH');
INSERT INTO people VALUES (null, 'sirenas', 'rulerPM');
INSERT INTO people VALUES (null, 'presidentes', 'rulerPH');
INSERT INTO people VALUES (null, 'dictadores', 'rulerPH');
INSERT INTO people VALUES (null, 'vicepresidentes', 'rulerPH');
INSERT INTO people VALUES (null, 'políticos', 'rulerPH');
INSERT INTO people VALUES (null, 'senadores', 'rulerPH');
INSERT INTO people VALUES (null, 'senadoras', 'rulerPM');
INSERT INTO people VALUES (null, 'diputados', 'rulerPH');
INSERT INTO people VALUES (null, 'diputadas', 'rulerPM');
INSERT INTO people VALUES (null, 'hechiceros', 'rulerPH');
INSERT INTO people VALUES (null, 'nigromantes', 'rulerPH');
INSERT INTO people VALUES (null, 'hechiceras', 'rulerPM');
INSERT INTO people VALUES (null, 'reinas', 'rulerPM');
INSERT INTO people VALUES (null, 'emperatrices', 'rulerPM');
INSERT INTO people VALUES (null, 'príncipes', 'rulerPH');
INSERT INTO people VALUES (null, 'sultánes', 'rulerPH');
INSERT INTO people VALUES (null, 'zares', 'rulerPH');
INSERT INTO people VALUES (null, 'zarinas', 'rulerPM');
INSERT INTO people VALUES (null, 'archiduques', 'rulerPH');
INSERT INTO people VALUES (null, 'virreyes', 'rulerPH');
INSERT INTO people VALUES (null, 'maharajás', 'rulerPH');
INSERT INTO people VALUES (null, 'emperadores', 'rulerPH');
INSERT INTO people VALUES (null, 'reyes', 'rulerPH');
INSERT INTO people VALUES (null, 'jeques', 'rulerPH');
INSERT INTO people VALUES (null, 'califas', 'rulerPH');
INSERT INTO people VALUES (null, 'condesas', 'rulerPM');
INSERT INTO people VALUES (null, 'baronesas', 'rulerPM');
INSERT INTO people VALUES (null, 'princesas', 'rulerPM');
INSERT INTO people VALUES (null, 'duques', 'rulerPH');
INSERT INTO people VALUES (null, 'duquesas', 'rulerPM');

INSERT INTO people VALUES (null, 'hechicero', 'paranormaljobH');
INSERT INTO people VALUES (null, 'mago', 'paranormaljobH');
INSERT INTO people VALUES (null, 'sabio barbado', 'paranormaljobH');
INSERT INTO people VALUES (null, 'elfo', 'paranormaljobH');
INSERT INTO people VALUES (null, 'dragonólogo', 'paranormaljobH');
INSERT INTO people VALUES (null, 'fabricante de varitas mágicas', 'paranormaljobH');
INSERT INTO people VALUES (null, 'encantador de serpientes', 'paranormaljobH');
INSERT INTO people VALUES (null, 'hechicera', 'paranormaljobM');
INSERT INTO people VALUES (null, 'médium', 'paranormaljobM');
INSERT INTO people VALUES (null, 'clarividente', 'paranormaljobM');
INSERT INTO people VALUES (null, 'exorcista', 'paranormaljobM');
INSERT INTO people VALUES (null, 'exorcista', 'paranormaljobH');

INSERT INTO people VALUES (null, 'psíquico', 'psych');
INSERT INTO people VALUES (null, 'clarividente', 'psych');
INSERT INTO people VALUES (null, 'adivino', 'psych');

INSERT INTO people VALUES (null, 'criminal', 'crim');
INSERT INTO people VALUES (null, 'asesino', 'crim');
INSERT INTO people VALUES (null, 'ladrón', 'crim');
INSERT INTO people VALUES (null, 'prisionero', 'crim');
INSERT INTO people VALUES (null, 'traidor', 'crim');
INSERT INTO people VALUES (null, 'conspirador', 'crim');
INSERT INTO people VALUES (null, 'asesino serial', 'crim');
INSERT INTO people VALUES (null, 'preso político', 'crim');
INSERT INTO people VALUES (null, 'terrorista', 'crim');

INSERT INTO people VALUES (null, 'reina', 'fem');
INSERT INTO people VALUES (null, 'emperatriz', 'fem');
INSERT INTO people VALUES (null, 'condesa', 'fem');
INSERT INTO people VALUES (null, 'baronesa', 'fem');
INSERT INTO people VALUES (null, 'princesa', 'fem');
INSERT INTO people VALUES (null, 'institutriz', 'fem');
INSERT INTO people VALUES (null, 'madre', 'fem');
INSERT INTO people VALUES (null, 'mujer', 'fem');
INSERT INTO people VALUES (null, 'poeta', 'fem');
INSERT INTO people VALUES (null, 'cantante de ópera', 'fem');
INSERT INTO people VALUES (null, 'abuela', 'fem');
INSERT INTO people VALUES (null, 'duquesa', 'fem');

INSERT INTO people VALUES (null, 'sacerdote', 'priestH');
INSERT INTO people VALUES (null, 'obispo', 'priestH');
INSERT INTO people VALUES (null, 'arzobispo', 'priestH');
INSERT INTO people VALUES (null, 'párroco', 'priestH');
INSERT INTO people VALUES (null, 'monja', 'priestM');
INSERT INTO people VALUES (null, 'monje', 'priestH');
INSERT INTO people VALUES (null, 'madre superiora', 'priestM');
INSERT INTO people VALUES (null, '$per-genH', 'priestH');
INSERT INTO people VALUES (null, '$per-genM', 'priestM');

/* CIUDADANOS  Y PERSONAS COMUNES*/

INSERT INTO people VALUES (null, 'señoras', 'commonerPM');
INSERT INTO people VALUES (null, 'personas', 'commonerPM');
INSERT INTO people VALUES (null, 'ciclistas', 'commonerPM');
INSERT INTO people VALUES (null, 'niñas', 'commonerPM');
INSERT INTO people VALUES (null, 'mujeres', 'commonerPM');

INSERT INTO people VALUES (null, 'señores', 'commonerPH');
INSERT INTO people VALUES (null, 'peatones', 'commonerPH');
INSERT INTO people VALUES (null, 'ciclistas', 'commonerPH');
INSERT INTO people VALUES (null, 'niños', 'commonerPH');
INSERT INTO people VALUES (null, 'hombres', 'commonerPH');

INSERT INTO people VALUES (null, 'señor', 'commonerH');
INSERT INTO people VALUES (null, 'ciclista', 'commonerH');
INSERT INTO people VALUES (null, 'niño', 'commonerH');
INSERT INTO people VALUES (null, 'hombre', 'commonerH');


/* ARTISTS */

INSERT INTO people VALUES (null, 'Paquita la del Barrio', 'musician');
INSERT INTO people VALUES (null, 'Joan Sebastian', 'musician');
INSERT INTO people VALUES (null, 'Luis Miguel', 'musician');
INSERT INTO people VALUES (null, 'Juan Gabriel', 'musician');
INSERT INTO people VALUES (null, 'Evlis Presley', 'musician');
INSERT INTO people VALUES (null, 'Michael Jackson', 'musician');
INSERT INTO people VALUES (null, 'Britney Spears', 'musician');
INSERT INTO people VALUES (null, 'David Bowie', 'musician');
INSERT INTO people VALUES (null, 'Frank Sinatra', 'musician');
INSERT INTO people VALUES (null, 'Prince', 'musician');
INSERT INTO people VALUES (null, 'Shakira', 'musician');
INSERT INTO people VALUES (null, 'Queen', 'musician');
INSERT INTO people VALUES (null, 'Joaquín Sabina', 'musician');
INSERT INTO people VALUES (null, 'Plácido Domingo', 'musician');
INSERT INTO people VALUES (null, 'Mónica Naranjo', 'musician');
INSERT INTO people VALUES (null, 'Amaia Montero', 'musician');
INSERT INTO people VALUES (null, 'David Bisbal', 'musician');
INSERT INTO people VALUES (null, 'Alejandro Sanz', 'musician');
INSERT INTO people VALUES (null, 'Enrique Bunbury', 'musician');
INSERT INTO people VALUES (null, 'Marta Sánchez', 'musician');
INSERT INTO people VALUES (null, 'Thalia', 'musician');
INSERT INTO people VALUES (null, 'Belinda', 'musician');
INSERT INTO people VALUES (null, 'Julieta Venegas', 'musician');
INSERT INTO people VALUES (null, 'Vicente Fernández', 'musician');
INSERT INTO people VALUES (null, 'Alejandro Fernández', 'musician');
INSERT INTO people VALUES (null, 'Jenni Rivera', 'musician');
INSERT INTO people VALUES (null, 'Alejandra Guzman', 'musician');
INSERT INTO people VALUES (null, 'Lucero', 'musician');
INSERT INTO people VALUES (null, 'Espinoza Paz', 'musician');
INSERT INTO people VALUES (null, 'Cristian Castro', 'musician');

INSERT INTO people VALUES (null, 'Pollock', 'paintor');
INSERT INTO people VALUES (null, 'Picasso', 'paintor');
INSERT INTO people VALUES (null, 'Rothko', 'paintor');
INSERT INTO people VALUES (null, 'Warhol', 'paintor');
INSERT INTO people VALUES (null, 'Kandinsky', 'paintor');
INSERT INTO people VALUES (null, 'Mondrian', 'paintor');
INSERT INTO people VALUES (null, 'Basquiat', 'paintor');
INSERT INTO people VALUES (null, 'Monet', 'paintor');
INSERT INTO people VALUES (null, 'Miró', 'paintor');
INSERT INTO people VALUES (null, 'Dali', 'paintor');
INSERT INTO people VALUES (null, 'Klimt', 'paintor');
INSERT INTO people VALUES (null, 'Goya', 'paintor');
INSERT INTO people VALUES (null, 'El Greco', 'paintor');
INSERT INTO people VALUES (null, 'Velázquez', 'paintor');
INSERT INTO people VALUES (null, 'Botticelli', 'paintor');
INSERT INTO people VALUES (null, 'Vermeer', 'paintor');

/* TRABAJOS ANTIGUOS */

INSERT INTO people VALUES (null, 'ballestero', 'oldjobH');
INSERT INTO people VALUES (null, 'maestro armero', 'oldjobH');
INSERT INTO people VALUES (null, 'hortelano', 'oldjobH');
INSERT INTO people VALUES (null, 'auriga', 'oldjobH');
INSERT INTO people VALUES (null, 'escriba', 'oldjobH');
INSERT INTO people VALUES (null, 'emperador', 'oldjobH');
INSERT INTO people VALUES (null, 'soldado', 'oldjobH');
INSERT INTO people VALUES (null, 'esclavo', 'oldjobH');
INSERT INTO people VALUES (null, 'cortesano', 'oldjobH');
INSERT INTO people VALUES (null, 'pescador', 'oldjobH');
INSERT INTO people VALUES (null, 'cabrero', 'oldjobH');
INSERT INTO people VALUES (null, 'poeta', 'oldjobH');
INSERT INTO people VALUES (null, 'pastor', 'oldjobH');
INSERT INTO people VALUES (null, 'gladiador', 'oldjobH');
INSERT INTO people VALUES (null, 'marinero', 'oldjobH');

INSERT INTO people VALUES (null, 'hombre', 'scholarH');
INSERT INTO people VALUES (null, 'estudiante universitario', 'scholarH');
INSERT INTO people VALUES (null, 'monje', 'scholarH');
INSERT INTO people VALUES (null, 'profesor', 'scholarH');
INSERT INTO people VALUES (null, 'académico', 'scholarH');
INSERT INTO people VALUES (null, 'profesor universitario', 'scholarH');
INSERT INTO people VALUES (null, 'estudiante de doctorado', 'scholarH');
INSERT INTO people VALUES (null, 'alquimista', 'scholarH');
INSERT INTO people VALUES (null, 'metafísico', 'scholarH');
INSERT INTO people VALUES (null, 'Marxista', 'scholarH');
INSERT INTO people VALUES (null, 'escritor', 'scholarH');
INSERT INTO people VALUES (null, 'filósofo', 'scholarH');
INSERT INTO people VALUES (null, 'Cienciólogo', 'scholarH');
INSERT INTO people VALUES (null, 'psicólogo', 'scholarH');
INSERT INTO people VALUES (null, 'psicóloga', 'scholarM');
INSERT INTO people VALUES (null, 'erudito', 'scholarH');
INSERT INTO people VALUES (null, 'teólogo', 'scholarH');
INSERT INTO people VALUES (null, 'crítico literario', 'scholarH');
INSERT INTO people VALUES (null, 'físico cuántico', 'scholarH');
INSERT INTO people VALUES (null, 'matemático', 'scholarH');
INSERT INTO people VALUES (null, 'científico', 'scholarH');
INSERT INTO people VALUES (null, 'coleccionista de libros', 'scholarH');
INSERT INTO people VALUES (null, 'poeta', 'scholarH');
INSERT INTO people VALUES (null, 'archivista', 'scholarH');

INSERT INTO people VALUES (null, 'mujer', 'scholarM');
INSERT INTO people VALUES (null, 'estudiante universitaria', 'scholarM');
INSERT INTO people VALUES (null, 'profesora', 'scholarM');
INSERT INTO people VALUES (null, 'académica', 'scholarM');
INSERT INTO people VALUES (null, 'profesora universitaria', 'scholarM');
INSERT INTO people VALUES (null, 'estudiante de doctorado', 'scholarM');
INSERT INTO people VALUES (null, 'alquimista', 'scholarM');
INSERT INTO people VALUES (null, 'metafísica', 'scholarM');
INSERT INTO people VALUES (null, 'Marxista', 'scholarM');
INSERT INTO people VALUES (null, 'escritora', 'scholarM');
INSERT INTO people VALUES (null, 'filósofa', 'scholarM');
INSERT INTO people VALUES (null, 'Ciencióloga', 'scholarM');
INSERT INTO people VALUES (null, 'psicóloga', 'scholarM');
INSERT INTO people VALUES (null, 'erudita', 'scholarM');
INSERT INTO people VALUES (null, 'teóloga', 'scholarM');
INSERT INTO people VALUES (null, 'crítica literaria', 'scholarM');
INSERT INTO people VALUES (null, 'física cuántica', 'scholarM');
INSERT INTO people VALUES (null, 'matemática', 'scholarM');
INSERT INTO people VALUES (null, 'científica', 'scholarM');
INSERT INTO people VALUES (null, 'coleccionista de libros', 'scholarM');
INSERT INTO people VALUES (null, 'poeta', 'scholarM');
INSERT INTO people VALUES (null, 'archivista', 'scholarM');

INSERT INTO people VALUES (null, 'hombres', 'scholarPH');
INSERT INTO people VALUES (null, 'estudiantes universitarios', 'scholarPH');
INSERT INTO people VALUES (null, 'monjes', 'scholarPH');
INSERT INTO people VALUES (null, 'profesores', 'scholarPH');
INSERT INTO people VALUES (null, 'académicos', 'scholarPH');
INSERT INTO people VALUES (null, 'profesores universitarios', 'scholarPH');
INSERT INTO people VALUES (null, 'estudiantes de doctorado', 'scholarPH');
INSERT INTO people VALUES (null, 'alquimistas', 'scholarPH');
INSERT INTO people VALUES (null, 'metafísicos', 'scholarPH');
INSERT INTO people VALUES (null, 'Marxistas', 'scholarPH');
INSERT INTO people VALUES (null, 'escritores', 'scholarPH');
INSERT INTO people VALUES (null, 'filósofos', 'scholarPH');
INSERT INTO people VALUES (null, 'Cienciólogos', 'scholarPH');
INSERT INTO people VALUES (null, 'psicólogos', 'scholarPH');
INSERT INTO people VALUES (null, 'eruditos', 'scholarPH');
INSERT INTO people VALUES (null, 'teólogos', 'scholarPH');
INSERT INTO people VALUES (null, 'críticos literarios', 'scholarPH');
INSERT INTO people VALUES (null, 'físicos cuánticos', 'scholarPH');
INSERT INTO people VALUES (null, 'matemáticos', 'scholarPH');
INSERT INTO people VALUES (null, 'científicos', 'scholarPH');
INSERT INTO people VALUES (null, 'coleccionistas de libros', 'scholarPH');
INSERT INTO people VALUES (null, 'poetas', 'scholarPH');
INSERT INTO people VALUES (null, 'archivistas', 'scholarPH');

INSERT INTO people VALUES (null, 'monja', 'genM');
INSERT INTO people VALUES (null, 'niño', 'genH');
INSERT INTO people VALUES (null, 'cazador', 'genH');
INSERT INTO people VALUES (null, 'sociólogo', 'genH');
INSERT INTO people VALUES (null, 'socióloga', 'genM');
INSERT INTO people VALUES (null, 'antropóloga', 'genM');
INSERT INTO people VALUES (null, 'artista', 'genM');
INSERT INTO people VALUES (null, 'profesor de literatura inglesa', 'genH');
INSERT INTO people VALUES (null, 'profesora de literatura inglesa', 'genM');
INSERT INTO people VALUES (null, 'economista', 'genH');
INSERT INTO people VALUES (null, 'economista', 'genM');
INSERT INTO people VALUES (null, 'arquitecto', 'genH');
INSERT INTO people VALUES (null, 'repostera', 'genM');
INSERT INTO people VALUES (null, 'repostero', 'genH');
INSERT INTO people VALUES (null, 'sobrecargo de American Airlines', 'genH');
INSERT INTO people VALUES (null, 'artista de circo', 'genM');
INSERT INTO people VALUES (null, 'escultor', 'genH');
INSERT INTO people VALUES (null, 'enfermera', 'genM');
INSERT INTO people VALUES (null, 'embajador', 'genH');
INSERT INTO people VALUES (null, 'albañil', 'genH');
INSERT INTO people VALUES (null, 'comerciante de especias', 'genM');
INSERT INTO people VALUES (null, 'soldado', 'genH');
INSERT INTO people VALUES (null, 'eunuco', 'genH');
INSERT INTO people VALUES (null, 'ermitaño', 'genH');
INSERT INTO people VALUES (null, 'geisha', 'genM');
INSERT INTO people VALUES (null, 'fisioterapeuta', 'genM');
INSERT INTO people VALUES (null, 'burócrata', 'genM');
INSERT INTO people VALUES (null, 'drag queen', 'genM');
INSERT INTO people VALUES (null, 'estrella de YouTube', 'genM');
INSERT INTO people VALUES (null, 'celebridad de Instagram', 'genM');
INSERT INTO people VALUES (null, 'supermodelo', 'genM');
INSERT INTO people VALUES (null, 'cabaretera', 'genM');
INSERT INTO people VALUES (null, 'bailarina exótica', 'genM');
INSERT INTO people VALUES (null, 'estrella porno', 'genM');
INSERT INTO people VALUES (null, 'secretaria', 'genM');
INSERT INTO people VALUES (null, 'vagabunda', 'genM');
INSERT INTO people VALUES (null, 'pirata', 'genH');
INSERT INTO people VALUES (null, 'hacker', 'genH');
INSERT INTO people VALUES (null, 'neurocirujano', 'genH');
INSERT INTO people VALUES (null, 'mayordomo', 'genH');
INSERT INTO people VALUES (null, 'cantante de ópera', 'genM');
INSERT INTO people VALUES (null, 'carpintero', 'genH');
INSERT INTO people VALUES (null, 'relojero', 'genH');
INSERT INTO people VALUES (null, 'samurai', 'genH');

INSERT INTO people VALUES (null, 'monjas', 'genMP');
INSERT INTO people VALUES (null, 'niños', 'genHP');
INSERT INTO people VALUES (null, 'cazadores', 'genHP');
INSERT INTO people VALUES (null, 'sociólogos', 'genHP');
INSERT INTO people VALUES (null, 'sociólogas', 'genMP');
INSERT INTO people VALUES (null, 'antropólogas', 'genMP');
INSERT INTO people VALUES (null, 'artistas', 'genMP');
INSERT INTO people VALUES (null, 'profesores de literatura inglesa', 'genHP');
INSERT INTO people VALUES (null, 'profesoras de literatura inglesa', 'genMP');
INSERT INTO people VALUES (null, 'economistas', 'genHP');
INSERT INTO people VALUES (null, 'economistas', 'genMP');
INSERT INTO people VALUES (null, 'arquitectos', 'genHP');
INSERT INTO people VALUES (null, 'reposteras', 'genMP');
INSERT INTO people VALUES (null, 'reposteros', 'genHP');
INSERT INTO people VALUES (null, 'sobrecargos de American Airlines', 'genHP');
INSERT INTO people VALUES (null, 'artistas de circo', 'genMP');
INSERT INTO people VALUES (null, 'escultores', 'genHP');
INSERT INTO people VALUES (null, 'enfermeras', 'genMP');
INSERT INTO people VALUES (null, 'embajadores', 'genHP');
INSERT INTO people VALUES (null, 'albañiles', 'genHP');
INSERT INTO people VALUES (null, 'comerciantes de especias', 'genMP');
INSERT INTO people VALUES (null, 'soldados', 'genHP');
INSERT INTO people VALUES (null, 'eunucos', 'genHP');
INSERT INTO people VALUES (null, 'ermitaños', 'genHP');
INSERT INTO people VALUES (null, 'geishas', 'genMP');
INSERT INTO people VALUES (null, 'fisioterapeutas', 'genMP');
INSERT INTO people VALUES (null, 'burócratas', 'genMP');
INSERT INTO people VALUES (null, 'drag queens', 'genMP');
INSERT INTO people VALUES (null, 'estrellas de YouTube', 'genMP');
INSERT INTO people VALUES (null, 'celebridades de Instagram', 'genMP');
INSERT INTO people VALUES (null, 'supermodelos', 'genMP');
INSERT INTO people VALUES (null, 'cabareteras', 'genMP');
INSERT INTO people VALUES (null, 'bailarinas exóticas', 'genMP');
INSERT INTO people VALUES (null, 'estrellas porno', 'genMP');
INSERT INTO people VALUES (null, 'secretarias', 'genMP');
INSERT INTO people VALUES (null, 'vagabundas', 'genMP');
INSERT INTO people VALUES (null, 'piratas', 'genHP');
INSERT INTO people VALUES (null, 'hackers', 'genHP');
INSERT INTO people VALUES (null, 'neurocirujanos', 'genHP');
INSERT INTO people VALUES (null, 'mayordomos', 'genHP');
INSERT INTO people VALUES (null, 'cantantes de ópera', 'genMP');
INSERT INTO people VALUES (null, 'carpinteros', 'genHP');
INSERT INTO people VALUES (null, 'relojeros', 'genHP');
INSERT INTO people VALUES (null, 'samurais', 'genHP');

INSERT INTO people VALUES (null, 'niña pequeña', 'girM');
INSERT INTO people VALUES (null, 'niño pequeño', 'girH');
INSERT INTO people VALUES (null, 'bruja', 'girM');
INSERT INTO people VALUES (null, 'princesa', 'girM');
INSERT INTO people VALUES (null, 'león', 'girH');
INSERT INTO people VALUES (null, 'sirena', 'girM');

INSERT INTO people VALUES (null, 'un $ob-thingH','except');
INSERT INTO people VALUES (null, 'una $ob-thingM','except');
INSERT INTO people VALUES (null, 'un $ob-structureH','except');
INSERT INTO people VALUES (null, 'un $ob-mazeH','except');
INSERT INTO people VALUES (null, 'una $ob-mazeM','except');
INSERT INTO people VALUES (null, 'un $ob-animalH','except');
INSERT INTO people VALUES (null, 'una $ob-landformM','except');
INSERT INTO people VALUES (null, 'un $ob-landformH','except');

INSERT INTO people VALUES (null, 'restaurantero', 'cookH');
INSERT INTO people VALUES (null, '$ad-talentH cocinero', 'cookH');
INSERT INTO people VALUES (null, '$ad-talentH chef', 'cookH');
INSERT INTO people VALUES (null, 'cocinero', 'cookH');
INSERT INTO people VALUES (null, 'chef', 'cookH');
INSERT INTO people VALUES (null, 'chef $ad-gentilicioH', 'cookH');
INSERT INTO people VALUES (null, 'cocinero $ad-gentilicioH', 'cookH');
INSERT INTO people VALUES (null, '$ad-genH cocinero', 'cookH');
INSERT INTO people VALUES (null, '$ad-genH chef', 'cookH');
INSERT INTO people VALUES (null, '$per-genH', 'cookH');

/* ************************************************ OBJECTS ************************************************ */


/*SENTIMIENTOS*/

INSERT INTO objects VALUES (null, 'amor', 'feelinH');
INSERT INTO objects VALUES (null, 'optimismo', 'feelinH');
INSERT INTO objects VALUES (null, 'respeto', 'feelinH');
INSERT INTO objects VALUES (null, 'coraje', 'feelinH');
INSERT INTO objects VALUES (null, 'conocimiento', 'feelinH');
INSERT INTO objects VALUES (null, 'mediocridad', 'feelinM');
INSERT INTO objects VALUES (null, 'arrepentimiento', 'feelinH');
INSERT INTO objects VALUES (null, 'patriotismo', 'feelinH');
INSERT INTO objects VALUES (null, 'fracaso', 'feelinH');
INSERT INTO objects VALUES (null, 'fastidio', 'feelinH');
INSERT INTO objects VALUES (null, 'pena', 'feelinM');
INSERT INTO objects VALUES (null, 'lujuria', 'feelinM');
INSERT INTO objects VALUES (null, 'orgullo', 'feelinH');
INSERT INTO objects VALUES (null, 'éxtasis', 'feelinH');
INSERT INTO objects VALUES (null, 'desesperación', 'feelinM');
INSERT INTO objects VALUES (null, 'sabiduría', 'feelinM');
INSERT INTO objects VALUES (null, 'esperanza', 'feelinM');
INSERT INTO objects VALUES (null, 'euforia', 'feelinM');
INSERT INTO objects VALUES (null, 'honorabilidad', 'feelinM');
INSERT INTO objects VALUES (null, 'hostilidad', 'feelinM');
INSERT INTO objects VALUES (null, 'injusticia', 'feelinM');
INSERT INTO objects VALUES (null, 'paciencia', 'feelinM');
INSERT INTO objects VALUES (null, 'rabia', 'feelinM');
INSERT INTO objects VALUES (null, 'satisfacción', 'feelinM');
INSERT INTO objects VALUES (null, 'ternura', 'feelinM');
INSERT INTO objects VALUES (null, 'vergüenza', 'feelinM');
INSERT INTO objects VALUES (null, 'tolerancia', 'feelinM');

/*DIAS*/

INSERT INTO objects VALUES (null, 'Lunes', 'weekday');
INSERT INTO objects VALUES (null, 'Martes', 'weekday');
INSERT INTO objects VALUES (null, 'Miércoles', 'weekday');
INSERT INTO objects VALUES (null, 'Jueves', 'weekday');
INSERT INTO objects VALUES (null, 'Viernes', 'weekday');
INSERT INTO objects VALUES (null, 'Sábado', 'weekday');
INSERT INTO objects VALUES (null, 'Domingo', 'weekday');

INSERT INTO objects VALUES (null, 'Lunes', 'weekdayP');
INSERT INTO objects VALUES (null, 'Martes', 'weekdayP');
INSERT INTO objects VALUES (null, 'Miércoles', 'weekdayP');
INSERT INTO objects VALUES (null, 'Jueves', 'weekdayP');
INSERT INTO objects VALUES (null, 'Viernes', 'weekdayP');
INSERT INTO objects VALUES (null, 'Sábados', 'weekdayP');
INSERT INTO objects VALUES (null, 'Domingos', 'weekdayP');

INSERT INTO objects VALUES (null, 'Martes', 'weekdayNoMon');
INSERT INTO objects VALUES (null, 'Miércoles', 'weekdayNoMon');
INSERT INTO objects VALUES (null, 'Jueves', 'weekdayNoMon');
INSERT INTO objects VALUES (null, 'Viernes', 'weekdayNoMon');
INSERT INTO objects VALUES (null, 'Sábado', 'weekdayNoMon');
INSERT INTO objects VALUES (null, 'Domingo', 'weekdayNoMon');


/*LUGARES*/

INSERT INTO objects VALUES (null, 'Manhattan', 'locality');
INSERT INTO objects VALUES (null, 'Cambodia', 'locality');
INSERT INTO objects VALUES (null, 'Bangkok', 'locality');
INSERT INTO objects VALUES (null, 'Sevilla', 'locality');
INSERT INTO objects VALUES (null, 'Barcelona', 'locality');
INSERT INTO objects VALUES (null, 'Venecia', 'locality');
INSERT INTO objects VALUES (null, 'Florencia', 'locality');
INSERT INTO objects VALUES (null, 'Shanghai', 'locality');
INSERT INTO objects VALUES (null, 'Kiev', 'locality');
INSERT INTO objects VALUES (null, 'Tasmania', 'locality');
INSERT INTO objects VALUES (null, 'Australia', 'locality');
INSERT INTO objects VALUES (null, 'La Antártida', 'locality');
INSERT INTO objects VALUES (null, 'Kyoto', 'locality');
INSERT INTO objects VALUES (null, 'China', 'locality');
INSERT INTO objects VALUES (null, 'Nueva York', 'locality');
INSERT INTO objects VALUES (null, 'Londres', 'locality');
INSERT INTO objects VALUES (null, 'Alemania', 'locality');
INSERT INTO objects VALUES (null, 'Francia', 'locality');
INSERT INTO objects VALUES (null, 'Egipto', 'locality');
INSERT INTO objects VALUES (null, 'Rusia', 'locality');
INSERT INTO objects VALUES (null, 'París', 'locality');
INSERT INTO objects VALUES (null, 'Roma','locality');
INSERT INTO objects VALUES (null, 'Japón', 'locality');
INSERT INTO objects VALUES (null, 'Tokyo', 'locality');
INSERT INTO objects VALUES (null, 'Jerusalén', 'locality');
INSERT INTO objects VALUES (null, 'África', 'locality');
INSERT INTO objects VALUES (null, 'el Imperio Romano', 'locality');
INSERT INTO objects VALUES (null, 'el infierno', 'locality');
INSERT INTO objects VALUES (null, 'el jardín del Edén', 'locality');
INSERT INTO objects VALUES (null, 'Beijing', 'locality');
INSERT INTO objects VALUES (null, 'la Ciudad de México', 'locality');
INSERT INTO objects VALUES (null, 'Buenos Aires', 'locality');
INSERT INTO objects VALUES (null, 'Nueva Orleans', 'locality');
INSERT INTO objects VALUES (null, 'Madagascar', 'locality');
INSERT INTO objects VALUES (null, 'Finlandia', 'locality');
INSERT INTO objects VALUES (null, 'Sri Lanka', 'locality');
INSERT INTO objects VALUES (null, 'Siberia', 'locality');
INSERT INTO objects VALUES (null, 'El Tíbet', 'locality');
INSERT INTO objects VALUES (null, 'Nepal', 'locality');
INSERT INTO objects VALUES (null, 'Canada', 'locality');
INSERT INTO objects VALUES (null, 'Toronto', 'locality');
INSERT INTO objects VALUES (null, 'Montreal', 'locality');
INSERT INTO objects VALUES (null, 'Quebec', 'locality');
INSERT INTO objects VALUES (null, 'Vancouver', 'locality');
INSERT INTO objects VALUES (null, 'Las Vegas', 'locality');
INSERT INTO objects VALUES (null, 'San Francisco', 'locality');
INSERT INTO objects VALUES (null, 'Silicon Valley', 'locality');
INSERT INTO objects VALUES (null, 'Querétaro', 'locality');
INSERT INTO objects VALUES (null, 'Guadalajara', 'locality');
INSERT INTO objects VALUES (null, 'Monterrey', 'locality');
INSERT INTO objects VALUES (null, 'Yucatán', 'locality');
INSERT INTO objects VALUES (null, 'Sayulita', 'locality');
INSERT INTO objects VALUES (null, 'Oaxaca', 'locality');
INSERT INTO objects VALUES (null, 'Sonora', 'locality');
INSERT INTO objects VALUES (null, 'Tamaulipas', 'locality');
INSERT INTO objects VALUES (null, 'Baja California', 'locality');
INSERT INTO objects VALUES (null, 'Durango', 'locality');
INSERT INTO objects VALUES (null, 'Andalucía', 'locality');
INSERT INTO objects VALUES (null, 'Cataluña', 'locality');
INSERT INTO objects VALUES (null, 'Mallorca', 'locality');
INSERT INTO objects VALUES (null, 'Asturias', 'locality');
INSERT INTO objects VALUES (null, 'La Rioja', 'locality');
INSERT INTO objects VALUES (null, 'Extremadura', 'locality');

INSERT INTO objects VALUES (null, 'Nueva York', 'city');
INSERT INTO objects VALUES (null, 'Beijing', 'city');
INSERT INTO objects VALUES (null, 'Shanghai', 'city');
INSERT INTO objects VALUES (null, 'Los Angeles', 'city');
INSERT INTO objects VALUES (null, 'Toronto', 'city');
INSERT INTO objects VALUES (null, 'París', 'city');
INSERT INTO objects VALUES (null, 'Budapest', 'city');
INSERT INTO objects VALUES (null, 'Praga', 'city');
INSERT INTO objects VALUES (null, 'Jerusalén', 'city');
INSERT INTO objects VALUES (null, 'San Francisco', 'city');
INSERT INTO objects VALUES (null, 'París', 'city');
INSERT INTO objects VALUES (null, 'Berlin', 'city');
INSERT INTO objects VALUES (null, 'Mumbai', 'city');
INSERT INTO objects VALUES (null, 'Bangkok', 'city');
INSERT INTO objects VALUES (null, 'Sydney', 'city');
INSERT INTO objects VALUES (null, 'Moscú', 'city');
INSERT INTO objects VALUES (null, 'Hong Kong', 'city');
INSERT INTO objects VALUES (null, 'Sao Paulo', 'city');
INSERT INTO objects VALUES (null, 'Manchester', 'city');
INSERT INTO objects VALUES (null, 'Birmingham', 'city');
INSERT INTO objects VALUES (null, 'Liverpool', 'city');
INSERT INTO objects VALUES (null, 'Newcastle', 'city');
INSERT INTO objects VALUES (null, 'Glasgow', 'city');
INSERT INTO objects VALUES (null, 'Cardiff', 'city');
INSERT INTO objects VALUES (null, 'Madrid', 'city');
INSERT INTO objects VALUES (null, 'Barcelona', 'city');

INSERT INTO objects VALUES (null, 'Querétaro', 'stateu');
INSERT INTO objects VALUES (null, 'Tijuana', 'stateu');
INSERT INTO objects VALUES (null, 'Sonora', 'stateu');
INSERT INTO objects VALUES (null, 'Aguascalientes', 'stateu');
INSERT INTO objects VALUES (null, 'Baja California', 'stateu');
INSERT INTO objects VALUES (null, 'Yucatán', 'stateu');
INSERT INTO objects VALUES (null, 'Quintana Roo', 'stateu');
INSERT INTO objects VALUES (null, 'Oaxaca', 'stateu');
INSERT INTO objects VALUES (null, 'Tamaulipas', 'stateu');
INSERT INTO objects VALUES (null, 'Nuevo León', 'stateu');
INSERT INTO objects VALUES (null, 'Zacatecas', 'stateu');
INSERT INTO objects VALUES (null, 'Veracruz', 'stateu');
INSERT INTO objects VALUES (null, 'Tlaxcala', 'stateu');
INSERT INTO objects VALUES (null, 'Tabasco', 'stateu');
INSERT INTO objects VALUES (null, 'Puebla', 'stateu');
INSERT INTO objects VALUES (null, 'Nayarit', 'stateu');
INSERT INTO objects VALUES (null, 'Jalisco', 'stateu');
INSERT INTO objects VALUES (null, 'Hidalgo', 'stateu');
INSERT INTO objects VALUES (null, 'Colima', 'stateu');
INSERT INTO objects VALUES (null, 'Durango', 'stateu');
INSERT INTO objects VALUES (null, 'Chiapas', 'stateu');
INSERT INTO objects VALUES (null, 'Campeche', 'stateu');
INSERT INTO objects VALUES (null, 'Andalucía', 'stateu');
INSERT INTO objects VALUES (null, 'Aragón', 'stateu');
INSERT INTO objects VALUES (null, 'Asturias', 'stateu');
INSERT INTO objects VALUES (null, 'Madrid', 'stateu');
INSERT INTO objects VALUES (null, 'Valencia', 'stateu');
INSERT INTO objects VALUES (null, 'Cantabria', 'stateu');
INSERT INTO objects VALUES (null, 'Navarra', 'stateu');
INSERT INTO objects VALUES (null, 'Galicia', 'stateu');
INSERT INTO objects VALUES (null, 'Cataluña', 'stateu');
INSERT INTO objects VALUES (null, 'La Rioja', 'stateu');
INSERT INTO objects VALUES (null, 'Extremadura', 'stateu');
INSERT INTO objects VALUES (null, 'Castilla y León', 'stateu');

INSERT INTO objects VALUES (null, 'el jardín del Edén', 'thepast');
INSERT INTO objects VALUES (null, 'la edad media', 'thepast');
INSERT INTO objects VALUES (null, 'el centro de la tierra', 'thepast');
INSERT INTO objects VALUES (null, 'la luna', 'thepast');
INSERT INTO objects VALUES (null, 'el siglo XVI', 'thepast');
INSERT INTO objects VALUES (null, 'la era de bronze', 'thepast');
INSERT INTO objects VALUES (null, 'la era de piedra', 'thepast');
INSERT INTO objects VALUES (null, 'el fin del mundo', 'thepast');

INSERT INTO objects VALUES (null, 'la primera guerra mundial', 'war');
INSERT INTO objects VALUES (null, 'la segunda guerra mundial', 'war');
INSERT INTO objects VALUES (null, 'la guerra de Crimea', 'war');
INSERT INTO objects VALUES (null, 'la Revolución Rusa', 'war');
INSERT INTO objects VALUES (null, 'la Revolución Francesa', 'war');
INSERT INTO objects VALUES (null, 'la Revolución Mexicana', 'war');
INSERT INTO objects VALUES (null, 'la independencia de México', 'war');

INSERT INTO objects VALUES (null, 'jungla', 'jungleM');
INSERT INTO objects VALUES (null, 'selva tropical', 'jungleM');
INSERT INTO objects VALUES (null, 'selva', 'jungleM');
INSERT INTO objects VALUES (null, 'ciudad', 'jungleM');

INSERT INTO objects VALUES (null, 'laberinto', 'mazeH');
INSERT INTO objects VALUES (null, 'cárcel', 'mazeM');
INSERT INTO objects VALUES (null, 'panóptico', 'mazeH');
INSERT INTO objects VALUES (null, 'palacio', 'mazeH');
INSERT INTO objects VALUES (null, 'catedral', 'mazeM');
INSERT INTO objects VALUES (null, 'iglesia', 'mazeM');
INSERT INTO objects VALUES (null, 'casa de espejos', 'mazeM');

/* LANDMARKS*/

INSERT INTO objects VALUES (null, 'torre Eiffel', 'landmarkM');
INSERT INTO objects VALUES (null, 'torre de Pisa', 'landmarkM');
INSERT INTO objects VALUES (null, 'gran muralla China', 'landmarkM');
INSERT INTO objects VALUES (null, 'catedral de Milán', 'landmarkM');
INSERT INTO objects VALUES (null, 'Puerta del Sol', 'landmarkM');
INSERT INTO objects VALUES (null, 'Puerta de Alcalá', 'landmarkM');
INSERT INTO objects VALUES (null, 'Sagrada Familia', 'landmarkM');
INSERT INTO objects VALUES (null, 'Ciudad Prohibida', 'landmarkM');
INSERT INTO objects VALUES (null, 'basílica de Santa María de Guadalupe', 'landmarkM');
INSERT INTO objects VALUES (null, 'Ángel de la Independencia', 'landmarkH');
INSERT INTO objects VALUES (null, 'Palacio de Bellas Artes', 'landmarkH');
INSERT INTO objects VALUES (null, 'Taj Mahal', 'landmarkH');
INSERT INTO objects VALUES (null, 'Coliseo Romano', 'landmarkH');
INSERT INTO objects VALUES (null, 'Guggenheim de Bilbao', 'landmarkH');

/* EDIFICACIONES */

INSERT INTO objects VALUES (null, 'montaña rusa', 'structureM');
INSERT INTO objects VALUES (null, 'cementerio', 'structureH');
INSERT INTO objects VALUES (null, 'motel', 'structureH');
INSERT INTO objects VALUES (null, 'zigurat', 'structureH');
INSERT INTO objects VALUES (null, 'templo', 'structureH');
INSERT INTO objects VALUES (null, 'hospital', 'structureH');
INSERT INTO objects VALUES (null, 'supermercado', 'structureH');
INSERT INTO objects VALUES (null, 'ciudad', 'structureM');
INSERT INTO objects VALUES (null, 'torre', 'structureM');
INSERT INTO objects VALUES (null, 'castillo', 'structureH');
INSERT INTO objects VALUES (null, 'laberinto', 'structureH');
INSERT INTO objects VALUES (null, 'casa del faro', 'structureM');
INSERT INTO objects VALUES (null, 'palacio', 'structureH');
INSERT INTO objects VALUES (null, 'librería', 'structureM');
INSERT INTO objects VALUES (null, 'catedral', 'structureM');
INSERT INTO objects VALUES (null, 'iglesia', 'structureM');
INSERT INTO objects VALUES (null, 'sinagoga', 'structureM');
INSERT INTO objects VALUES (null, 'mansión', 'structureM');
INSERT INTO objects VALUES (null, 'pirámide', 'structureM');

INSERT INTO objects VALUES (null, 'montañas rusas', 'structurePM');
INSERT INTO objects VALUES (null, 'cementerios', 'structurePH');
INSERT INTO objects VALUES (null, 'moteles', 'structurePH');
INSERT INTO objects VALUES (null, 'zigurats', 'structurePH');
INSERT INTO objects VALUES (null, 'templos', 'structurePH');
INSERT INTO objects VALUES (null, 'hospitales', 'structurePH');
INSERT INTO objects VALUES (null, 'supermercados', 'structurePH');
INSERT INTO objects VALUES (null, 'ciudades', 'structurePM');
INSERT INTO objects VALUES (null, 'torres', 'structurePM');
INSERT INTO objects VALUES (null, 'castillos', 'structurePH');
INSERT INTO objects VALUES (null, 'laberintos', 'structurePH');
INSERT INTO objects VALUES (null, 'casas del faro', 'structurePM');
INSERT INTO objects VALUES (null, 'palacios', 'structurePH');
INSERT INTO objects VALUES (null, 'librerías', 'structurePM');
INSERT INTO objects VALUES (null, 'catedrales', 'structurePM');
INSERT INTO objects VALUES (null, 'iglesias', 'structurePM');
INSERT INTO objects VALUES (null, 'sinagogas', 'structurePM');
INSERT INTO objects VALUES (null, 'mansiónes', 'structurePM');
INSERT INTO objects VALUES (null, 'pirámides', 'structurePM');

/* CUERPOS CELESTES  Y MATERIA*/

INSERT INTO objects VALUES (null, 'El Sol', 'sunn');
INSERT INTO objects VALUES (null, 'La Luna', 'sunn');
INSERT INTO objects VALUES (null, 'La estación espacial internacional', 'sunn');
INSERT INTO objects VALUES (null, 'Un arcoíris', 'sunn');
INSERT INTO objects VALUES (null, 'Un cometa', 'sunn');
INSERT INTO objects VALUES (null, 'Una nube', 'sunn');
INSERT INTO objects VALUES (null, 'Una estrella', 'sunn');
INSERT INTO objects VALUES (null, 'Un planeta', 'sunn');

INSERT INTO objects VALUES (null, 'el Sol', 'sunntwo');
INSERT INTO objects VALUES (null, 'la Luna', 'sunntwo');
INSERT INTO objects VALUES (null, 'la estación espacial internacional', 'sunntwo');
INSERT INTO objects VALUES (null, 'un arcoíris', 'sunntwo');
INSERT INTO objects VALUES (null, 'un cometa', 'sunntwo');
INSERT INTO objects VALUES (null, 'una nube', 'sunntwo');
INSERT INTO objects VALUES (null, 'una estrella', 'sunntwo');
INSERT INTO objects VALUES (null, 'un planeta', 'sunntwo');

INSERT INTO objects VALUES (null, 'planetas', 'astP');
INSERT INTO objects VALUES (null, 'estrellas', 'astP');
INSERT INTO objects VALUES (null, 'galaxias', 'astP');
INSERT INTO objects VALUES (null, 'universos', 'astP');
INSERT INTO objects VALUES (null, 'cometas', 'astP');
INSERT INTO objects VALUES (null, 'agujeros negros', 'astP');
INSERT INTO objects VALUES (null, 'supernovas', 'astP');

INSERT INTO objects VALUES (null, 'planeta', 'ast');
INSERT INTO objects VALUES (null, 'universo', 'ast');
INSERT INTO objects VALUES (null, 'cometa', 'ast');
INSERT INTO objects VALUES (null, 'agujero negro', 'ast');

INSERT INTO objects VALUES (null, 'energía pura', 'lig');
INSERT INTO objects VALUES (null, 'capitalismo', 'lig');
INSERT INTO objects VALUES (null, 'lingotes de oro', 'lig');
INSERT INTO objects VALUES (null, 'gravedad', 'lig');
INSERT INTO objects VALUES (null, 'sonido', 'lig');
INSERT INTO objects VALUES (null, 'luz', 'lig');
INSERT INTO objects VALUES (null, 'eternidades', 'lig');
INSERT INTO objects VALUES (null, 'filosofía', 'lig');
INSERT INTO objects VALUES (null, 'oscuridad', 'lig');
INSERT INTO objects VALUES (null, 'tiempo', 'lig');

INSERT INTO objects VALUES (null, 'universo', 'universeH');
INSERT INTO objects VALUES (null, 'galaxia', 'universeM');
INSERT INTO objects VALUES (null, 'planeta', 'universeH');
INSERT INTO objects VALUES (null, 'luna', 'universeM');
INSERT INTO objects VALUES (null, 'estrella', 'universeM');
INSERT INTO objects VALUES (null, 'supernova', 'universeM');

INSERT INTO objects VALUES (null, 'universos', 'universeHP');
INSERT INTO objects VALUES (null, 'galaxias', 'universeMP');
INSERT INTO objects VALUES (null, 'planetas', 'universeHP');
INSERT INTO objects VALUES (null, 'lunas', 'universeMP');
INSERT INTO objects VALUES (null, 'estrellas', 'universeMP');
INSERT INTO objects VALUES (null, 'supernovas', 'universeMP');

INSERT INTO objects VALUES (null, 'el Sol', 'space');
INSERT INTO objects VALUES (null, 'la Luna', 'space');
INSERT INTO objects VALUES (null, 'la Estrella Polar', 'space');
INSERT INTO objects VALUES (null, 'el Cometa Halley', 'space');
INSERT INTO objects VALUES (null, 'la Vía Láctea', 'space');
INSERT INTO objects VALUES (null, 'Marte', 'space');
INSERT INTO objects VALUES (null, 'el universo', 'space');
INSERT INTO objects VALUES (null, 'la luz de las esrellas', 'space');
INSERT INTO objects VALUES (null, 'la luz de la Luna', 'space');

INSERT INTO objects VALUES (null, 'un universo paralelo', 'paral');
INSERT INTO objects VALUES (null, 'otro universo', 'paral');
INSERT INTO objects VALUES (null, 'otro mundo', 'paral');

/* COSAS */

INSERT INTO objects VALUES (null, 'arcoiris', 'thingH');
INSERT INTO objects VALUES (null, 'sueño', 'thingH');
INSERT INTO objects VALUES (null, 'pesadilla', 'thingM');
INSERT INTO objects VALUES (null, 'paracaídas', 'thingH');
INSERT INTO objects VALUES (null, 'despertador', 'thingH');
INSERT INTO objects VALUES (null, 'ano', 'thingH');
INSERT INTO objects VALUES (null, 'seno', 'thingH');
INSERT INTO objects VALUES (null, 'pezón', 'thingH');
INSERT INTO objects VALUES (null, 'testículo', 'thingH');
INSERT INTO objects VALUES (null, 'bong', 'thingH');
INSERT INTO objects VALUES (null, 'guitarra eléctrica', 'thingM');
INSERT INTO objects VALUES (null, 'búho', 'thingH');
INSERT INTO objects VALUES (null, 'pavo real', 'thingH');
INSERT INTO objects VALUES (null, 'piña', 'thingM');
INSERT INTO objects VALUES (null, 'sándwich', 'thingH');
INSERT INTO objects VALUES (null, 'emparedado', 'thingH');
INSERT INTO objects VALUES (null, 'patito de hule', 'thingH');
INSERT INTO objects VALUES (null, 'cuchillo', 'thingH');
INSERT INTO objects VALUES (null, 'cadáver', 'thingH');
INSERT INTO objects VALUES (null, 'fotografía', 'thingM');
INSERT INTO objects VALUES (null, 'plátano', 'thingH');
INSERT INTO objects VALUES (null, 'enciclopedia', 'thingM');
INSERT INTO objects VALUES (null, 'diamante', 'thingH');
INSERT INTO objects VALUES (null, 'reloj', 'thingH');
INSERT INTO objects VALUES (null, 'mono de nieve', 'thingH');
INSERT INTO objects VALUES (null, 'cerebro', 'thingH');
INSERT INTO objects VALUES (null, 'barco pirata', 'thingH');
INSERT INTO objects VALUES (null, 'espejo', 'thingH');
INSERT INTO objects VALUES (null, 'mapa', 'thingH');
INSERT INTO objects VALUES (null, 'diccionario', 'thingH');
INSERT INTO objects VALUES (null, 'palabra', 'thingM');
INSERT INTO objects VALUES (null, 'lingote de oro', 'thingH');
INSERT INTO objects VALUES (null, 'violín Stradivarius', 'thingH');
INSERT INTO objects VALUES (null, 'piano', 'thingH');
INSERT INTO objects VALUES (null, 'crucifijo', 'thingH');
INSERT INTO objects VALUES (null, 'catedral', 'thingM');
INSERT INTO objects VALUES (null, 'dragón', 'thingH');
INSERT INTO objects VALUES (null, 'centauro', 'thingH');
INSERT INTO objects VALUES (null, 'sirena', 'thingM');
INSERT INTO objects VALUES (null, 'unicornio', 'thingH');
INSERT INTO objects VALUES (null, 'pastel de cumpleaños', 'thingH');
INSERT INTO objects VALUES (null, 'cigarro', 'thingH');
INSERT INTO objects VALUES (null, 'colilla de cigarro', 'thingM');
INSERT INTO objects VALUES (null, 'pétalo de rosa', 'thingH');
INSERT INTO objects VALUES (null, 'huevo de pato', 'thingH');
INSERT INTO objects VALUES (null, 'grano de arena', 'thingH');
INSERT INTO objects VALUES (null, 'corazón', 'thingH');
INSERT INTO objects VALUES (null, 'ojo', 'thingH');
INSERT INTO objects VALUES (null, 'globo', 'thingH');
INSERT INTO objects VALUES (null, 'pieza de ajedrez', 'thingH');
INSERT INTO objects VALUES (null, 'collar de diamantes', 'thingH');
INSERT INTO objects VALUES (null, 'perla', 'thingM');
INSERT INTO objects VALUES (null, 'sombrilla', 'thingM');
INSERT INTO objects VALUES (null, 'burbuja', 'thingM');
INSERT INTO objects VALUES (null, 'lobo', 'thingH');
INSERT INTO objects VALUES (null, 'espantapájaros', 'thingH');
INSERT INTO objects VALUES (null, 'zanahoria', 'thingM');
INSERT INTO objects VALUES (null, 'hongo', 'thingH');
INSERT INTO objects VALUES (null, 'gramófono', 'thingH');
INSERT INTO objects VALUES (null, 'fósil de dinosaurio', 'thingH');
INSERT INTO objects VALUES (null, 'videocasetera', 'thingM');
INSERT INTO objects VALUES (null, 'disco de Justin Bieber', 'thingH');
INSERT INTO objects VALUES (null, 'burrito del oxxo', 'thingH');
INSERT INTO objects VALUES (null, 'universo', 'thingH');
INSERT INTO objects VALUES (null, 'galaxia', 'thingH');
INSERT INTO objects VALUES (null, 'estrella', 'thingM');
INSERT INTO objects VALUES (null, 'luna', 'thingM');
INSERT INTO objects VALUES (null, 'cometa', 'thingH');
INSERT INTO objects VALUES (null, 'supernova', 'thingM');
INSERT INTO objects VALUES (null, 'carta de amor', 'thingM');
INSERT INTO objects VALUES (null, 'violonchelo', 'thingH');
INSERT INTO objects VALUES (null, 'pizza', 'thingM');
INSERT INTO objects VALUES (null, 'ukulele', 'thingH');
INSERT INTO objects VALUES (null, 'banjo', 'thingH');
INSERT INTO objects VALUES (null, 'condón', 'thingH');
INSERT INTO objects VALUES (null, 'tampón', 'thingH');
INSERT INTO objects VALUES (null, 'cola de kanguro', 'thingM');
INSERT INTO objects VALUES (null, 'bolsa de plástico', 'thingM');
INSERT INTO objects VALUES (null, 'rayo de luz', 'thingH');
INSERT INTO objects VALUES (null, 'bola de energía', 'thingM');
INSERT INTO objects VALUES (null, 'ojo de cristal', 'thingH');
INSERT INTO objects VALUES (null, 'hamburguesa de queso', 'thingM');
INSERT INTO objects VALUES (null, 'barra de chocolate', 'thingH');
INSERT INTO objects VALUES (null, 'esmeralda', 'thingM');
INSERT INTO objects VALUES (null, 'calavera', 'thingM');
INSERT INTO objects VALUES (null, 'triángulo', 'thingH');
INSERT INTO objects VALUES (null, 'cuadrado', 'thingH');
INSERT INTO objects VALUES (null, 'rectángulo', 'thingH');
INSERT INTO objects VALUES (null, 'paralelogramo', 'thingH');
INSERT INTO objects VALUES (null, 'pene', 'thingH');
INSERT INTO objects VALUES (null, 'peluca', 'thingM');
INSERT INTO objects VALUES (null, 'esfera', 'thingM');
INSERT INTO objects VALUES (null, 'biblioteca', 'thingM');
INSERT INTO objects VALUES (null, 'número primo', 'thingH');
INSERT INTO objects VALUES (null, 'hexagono', 'thingH');
INSERT INTO objects VALUES (null, 'panal de abejas', 'thingH');
INSERT INTO objects VALUES (null, 'joya', 'thingM');
INSERT INTO objects VALUES (null, 'vestido de bodas', 'thingH');
INSERT INTO objects VALUES (null, 'tomate', 'thingH');
INSERT INTO objects VALUES (null, 'cucaracha', 'thingM');
INSERT INTO objects VALUES (null, 'malteada', 'thingM');
INSERT INTO objects VALUES (null, 'langosta', 'thingM');
INSERT INTO objects VALUES (null, 'dinosaurio', 'thingH');
INSERT INTO objects VALUES (null, 'bigote', 'thingH');
INSERT INTO objects VALUES (null, 'ametralladora', 'thingM');
INSERT INTO objects VALUES (null, 'girasol', 'thingH');
INSERT INTO objects VALUES (null, 'cascada', 'thingM');
INSERT INTO objects VALUES (null, 'bola de billar', 'thingM');
INSERT INTO objects VALUES (null, 'escusado', 'thingH');
INSERT INTO objects VALUES (null, 'letrina', 'thingM');
INSERT INTO objects VALUES (null, 'galleta', 'thingM');
INSERT INTO objects VALUES (null, 'escorpion', 'thingH');
INSERT INTO objects VALUES (null, 'delfín', 'thingH');
INSERT INTO objects VALUES (null, 'estrella fugaz', 'thingM');
INSERT INTO objects VALUES (null, 'reloj de arena', 'thingH');
INSERT INTO objects VALUES (null, 'caleidoscopio', 'thingH');
INSERT INTO objects VALUES (null, 'trumpeta', 'thingM');
INSERT INTO objects VALUES (null, 'muñeca Barbie', 'thingM');
INSERT INTO objects VALUES (null, 'Cajita Feliz', 'thingM');
INSERT INTO objects VALUES (null, 'Big Mac', 'thingM');
INSERT INTO objects VALUES (null, 'signo de exclamación', 'thingH');
INSERT INTO objects VALUES (null, 'signo de interrogación', 'thingH');
INSERT INTO objects VALUES (null, 'croissant', 'thingH');
INSERT INTO objects VALUES (null, 'asiento reclinable', 'thingH');
INSERT INTO objects VALUES (null, 'iPhone 7s', 'thingH');
INSERT INTO objects VALUES (null, 'Nokia 3310', 'thingH');
INSERT INTO objects VALUES (null, 'algoritmo recursivo', 'thingH');
INSERT INTO objects VALUES (null, 'inyección SQL', 'thingM');

INSERT INTO objects VALUES (null, 'muñecas Barbie', 'thingP');
INSERT INTO objects VALUES (null, 'Cajitas Felices', 'thingP');
INSERT INTO objects VALUES (null, 'Big Macs', 'thingP');
INSERT INTO objects VALUES (null, 'signos de exclamación', 'thingP');
INSERT INTO objects VALUES (null, 'signos de interrogación', 'thingP');
INSERT INTO objects VALUES (null, 'croissants', 'thingP');
INSERT INTO objects VALUES (null, 'asientos reclinables', 'thingP');
INSERT INTO objects VALUES (null, 'iPhones 7', 'thingP');
INSERT INTO objects VALUES (null, 'Nokias 3310', 'thingP');
INSERT INTO objects VALUES (null, 'números primos', 'thingP');
INSERT INTO objects VALUES (null, 'bolas de billar', 'thingP');
INSERT INTO objects VALUES (null, 'tuercas', 'thingP');
INSERT INTO objects VALUES (null, 'burritos del oxxo', 'thingP');
INSERT INTO objects VALUES (null, 'discos de Justin Bieber', 'thingP');
INSERT INTO objects VALUES (null, 'hielocos', 'thingP');
INSERT INTO objects VALUES (null, 'takis fuego', 'thingP');
INSERT INTO objects VALUES (null, 'dados', 'thingP');
INSERT INTO objects VALUES (null, 'canicas', 'thingP');
INSERT INTO objects VALUES (null, 'lentes de sol', 'thingP');
INSERT INTO objects VALUES (null, 'billetes de 20 pesos', 'thingP');
INSERT INTO objects VALUES (null, 'tarjetas de crédito', 'thingP');
INSERT INTO objects VALUES (null, 'USBs', 'thingP');
INSERT INTO objects VALUES (null, 'biblias', 'thingP');
INSERT INTO objects VALUES (null, 'diccionarios', 'thingP');
INSERT INTO objects VALUES (null, 'tampones', 'thingP');
INSERT INTO objects VALUES (null, 'taparroscas', 'thingP');
INSERT INTO objects VALUES (null, 'latas de atún', 'thingP');
INSERT INTO objects VALUES (null, 'pruebas de embarazo', 'thingP');
INSERT INTO objects VALUES (null, 'guitarras', 'thingP');
INSERT INTO objects VALUES (null, 'botellas de tequila', 'thingP');
INSERT INTO objects VALUES (null, 'cinturones gucci falsos', 'thingP');
INSERT INTO objects VALUES (null, 'latas de red bull', 'thingP');
INSERT INTO objects VALUES (null, 'cajas fuertes', 'thingP');
INSERT INTO objects VALUES (null, 'peines de bigote', 'thingP');

INSERT INTO objects VALUES (null, 'muñecas Barbie', 'thingPM');
INSERT INTO objects VALUES (null, 'Cajitas Felices', 'thingPM');
INSERT INTO objects VALUES (null, 'Big Macs', 'thingPM');
INSERT INTO objects VALUES (null, 'signos de exclamación', 'thingPH');
INSERT INTO objects VALUES (null, 'signos de interrogación', 'thingPH');
INSERT INTO objects VALUES (null, 'croissants', 'thingPH');
INSERT INTO objects VALUES (null, 'asientos reclinables', 'thingPH');
INSERT INTO objects VALUES (null, 'iPhones 7', 'thingPH');
INSERT INTO objects VALUES (null, 'Nokias 3310', 'thingPH');
INSERT INTO objects VALUES (null, 'números primos', 'thingPH');
INSERT INTO objects VALUES (null, 'bolas de billar', 'thingPM');
INSERT INTO objects VALUES (null, 'tuercas', 'thingPM');
INSERT INTO objects VALUES (null, 'burritos del oxxo', 'thingPH');
INSERT INTO objects VALUES (null, 'discos de Justin Bieber', 'thingPH');
INSERT INTO objects VALUES (null, 'hielocos', 'thingPH');
INSERT INTO objects VALUES (null, 'takis fuego', 'thingPH');
INSERT INTO objects VALUES (null, 'dados', 'thingPH');
INSERT INTO objects VALUES (null, 'canicas', 'thingPM');
INSERT INTO objects VALUES (null, 'lentes de sol', 'thingPH');
INSERT INTO objects VALUES (null, 'billetes de 20 pesos', 'thingPH');
INSERT INTO objects VALUES (null, 'tarjetas de crédito', 'thingPM');
INSERT INTO objects VALUES (null, 'USBs', 'thingPH');
INSERT INTO objects VALUES (null, 'biblias', 'thingPM');
INSERT INTO objects VALUES (null, 'diccionarios', 'thingPH');
INSERT INTO objects VALUES (null, 'tampones', 'thingPH');
INSERT INTO objects VALUES (null, 'taparroscas', 'thingPM');
INSERT INTO objects VALUES (null, 'latas de atún', 'thingPM');
INSERT INTO objects VALUES (null, 'pruebas de embarazo', 'thingPM');
INSERT INTO objects VALUES (null, 'guitarras', 'thingPM');
INSERT INTO objects VALUES (null, 'botellas de tequila', 'thingPM');
INSERT INTO objects VALUES (null, 'cinturones gucci falsos', 'thingPH');
INSERT INTO objects VALUES (null, 'latas de red bull', 'thingPM');
INSERT INTO objects VALUES (null, 'cajas fuertes', 'thingPM');
INSERT INTO objects VALUES (null, 'palabras', 'thingPM');
INSERT INTO objects VALUES (null, 'peines de bigote', 'thingPH');
INSERT INTO objects VALUES (null, 'tazos de pokémon', 'thingPH');

INSERT INTO objects VALUES (null, 'bailarín', 'moverH');
INSERT INTO objects VALUES (null, 'bailarina de ballet', 'moverM');
INSERT INTO objects VALUES (null, 'góndola', 'moverM');
INSERT INTO objects VALUES (null, 'papalote', 'moverH');
INSERT INTO objects VALUES (null, 'patito de hule', 'moverH');
INSERT INTO objects VALUES (null, 'velero', 'moverH');
INSERT INTO objects VALUES (null, 'espejo', 'moverH');
INSERT INTO objects VALUES (null, 'lágrima', 'moverM');
INSERT INTO objects VALUES (null, 'globo', 'moverH');
INSERT INTO objects VALUES (null, 'globo de helio', 'moverH');
INSERT INTO objects VALUES (null, 'pieza de ajedrez', 'moverM');
INSERT INTO objects VALUES (null, 'avión', 'mover');
INSERT INTO objects VALUES (null, 'tren de vapor', 'moverH');
INSERT INTO objects VALUES (null, 'hoja de otoño', 'moverM');
INSERT INTO objects VALUES (null, 'zeppelin', 'moverH');
INSERT INTO objects VALUES (null, 'pulga', 'moverM');
INSERT INTO objects VALUES (null, 'nube tormentosa', 'moverM');
INSERT INTO objects VALUES (null, 'aspiradora', 'moverM');
INSERT INTO objects VALUES (null, 'rana', 'moverM');
INSERT INTO objects VALUES (null, 'moneda de oro', 'moverM');
INSERT INTO objects VALUES (null, 'tabla de surf', 'moverM'); 
INSERT INTO objects VALUES (null, 'sombra', 'moverM'); 
INSERT INTO objects VALUES (null, 'marioneta', 'moverM');

INSERT INTO objects VALUES (null, 'bailarines', 'movers');
INSERT INTO objects VALUES (null, 'bailarines de ballet', 'movers');
INSERT INTO objects VALUES (null, 'góndolas', 'movers');
INSERT INTO objects VALUES (null, 'papalotes', 'movers');
INSERT INTO objects VALUES (null, 'patitos de hule', 'movers');
INSERT INTO objects VALUES (null, 'veleros', 'movers');
INSERT INTO objects VALUES (null, 'espejos', 'movers');
INSERT INTO objects VALUES (null, 'lágrimas', 'movers');
INSERT INTO objects VALUES (null, 'globos', 'movers');
INSERT INTO objects VALUES (null, 'piezas de ajedrez', 'movers');
INSERT INTO objects VALUES (null, 'aviones', 'movers');
INSERT INTO objects VALUES (null, 'trenes de vapor', 'movers');
INSERT INTO objects VALUES (null, 'nubes tormentosas', 'movers');
INSERT INTO objects VALUES (null, 'pulgas', 'movers');
INSERT INTO objects VALUES (null, 'aspiradoras', 'movers');
INSERT INTO objects VALUES (null, 'ranas', 'movers');
INSERT INTO objects VALUES (null, 'monedas de oro', 'movers');
INSERT INTO objects VALUES (null, 'copos de nieve', 'movers');
INSERT INTO objects VALUES (null, 'ballenas', 'movers'); 
INSERT INTO objects VALUES (null, 'dinosaurios', 'movers'); 
INSERT INTO objects VALUES (null, 'fuegos artificiales', 'movers'); 
INSERT INTO objects VALUES (null, 'mosquitos', 'movers'); 
INSERT INTO objects VALUES (null, 'olas', 'movers'); 
INSERT INTO objects VALUES (null, 'nubes', 'movers'); 
INSERT INTO objects VALUES (null, 'sombras', 'movers'); 

INSERT INTO objects VALUES (null, 'pene', 'longH');
INSERT INTO objects VALUES (null, 'escalera', 'longM');
INSERT INTO objects VALUES (null, 'escalera mécanica', 'longM');
INSERT INTO objects VALUES (null, 'libro', 'longH');
INSERT INTO objects VALUES (null, 'serpiente marina', 'longM');
INSERT INTO objects VALUES (null, 'río', 'longH');
INSERT INTO objects VALUES (null, 'hilo', 'longH');
INSERT INTO objects VALUES (null, 'nariz', 'longM');
INSERT INTO objects VALUES (null, 'lengua', 'longM');
INSERT INTO objects VALUES (null, 'salchicha', 'longM');
INSERT INTO objects VALUES (null, 'pista de carreras', 'longM');
INSERT INTO objects VALUES (null, 'poema', 'longH');
INSERT INTO objects VALUES (null, 'canción', 'longM');
INSERT INTO objects VALUES (null, 'ópera', 'longM');

INSERT INTO objects VALUES (null, 'bola de cristal', 'oddlandM');
INSERT INTO objects VALUES (null, 'grano de arena', 'oddlandH');
INSERT INTO objects VALUES (null, 'alberca semiolímpica', 'oddlandM');
INSERT INTO objects VALUES (null, 'cámara de tortura', 'oddlandM');
INSERT INTO objects VALUES (null, 'cerebro', 'oddlandH');
INSERT INTO objects VALUES (null, 'universo paralelo', 'oddlandH');
INSERT INTO objects VALUES (null, 'armario', 'oddlandH');
INSERT INTO objects VALUES (null, 'sandwich de jamón', 'oddlandH');
INSERT INTO objects VALUES (null, 'mota de polvo', 'oddlandM');
INSERT INTO objects VALUES (null, 'desert island', 'oddland');
INSERT INTO objects VALUES (null, 'anillo de diamantes', 'oddlandH');
INSERT INTO objects VALUES (null, 'orangután', 'oddlandH');
INSERT INTO objects VALUES (null, 'piano', 'oddlandH');
INSERT INTO objects VALUES (null, 'momia egipcia', 'oddlandM');
INSERT INTO objects VALUES (null, 'nido de pájaros', 'oddlandH');
INSERT INTO objects VALUES (null, 'sartén', 'oddlandM');
INSERT INTO objects VALUES (null, 'alfombra persa', 'oddlandM');
INSERT INTO objects VALUES (null, 'poema', 'oddlandH');
INSERT INTO objects VALUES (null, 'ojo de $ob-animalH', 'oddlandH');
INSERT INTO objects VALUES (null, 'mapa de $ob-locality', 'oddlandH');
INSERT INTO objects VALUES (null, 'nube con forma de $ob-thingM', 'oddlandM');
INSERT INTO objects VALUES (null, 'nube con forma de $ob-thingH', 'oddlandM');

INSERT INTO objects VALUES (null, 'vela', 'candleM');
INSERT INTO objects VALUES (null, 'pedazo de cuarzo rosa', 'candleH');
INSERT INTO objects VALUES (null, 'diminuta esfera de metal', 'candleM');
INSERT INTO objects VALUES (null, 'chimenea', 'candleM');
INSERT INTO objects VALUES (null, 'pedazo de carbón', 'candleH');
INSERT INTO objects VALUES (null, 'espejo', 'candleH');
INSERT INTO objects VALUES (null, 'rosa', 'candleM');
INSERT INTO objects VALUES (null, 'crucifijo', 'candleH');
INSERT INTO objects VALUES (null, 'pisapapeles de vidrio', 'candleH');
INSERT INTO objects VALUES (null, 'moneda de cobre', 'candleM');

INSERT INTO objects VALUES (null, 'pedazos de porcelana', 'frag');
INSERT INTO objects VALUES (null, 'pedazos de porcelana fina', 'frag');
INSERT INTO objects VALUES (null, 'pedazos de cristal', 'frag');
INSERT INTO objects VALUES (null, 'cristales de Swarovski', 'frag');
INSERT INTO objects VALUES (null, 'pedazos de cuarzo rosa', 'frag');

INSERT INTO objects VALUES (null, 'un par de binoculares', 'viewer');
INSERT INTO objects VALUES (null, 'un telescopio', 'viewer');
INSERT INTO objects VALUES (null, 'una bola de cristal', 'viewer');
INSERT INTO objects VALUES (null, 'un pequeño cristal', 'viewer');

INSERT INTO objects VALUES (null, 'montículo de termitas', 'landformH');
INSERT INTO objects VALUES (null, 'Secuoya gigante', 'landformM');
INSERT INTO objects VALUES (null, 'galería de arte', 'landformM');
INSERT INTO objects VALUES (null, 'mina de oro', 'landformM');
INSERT INTO objects VALUES (null, 'serpiente marina', 'landformM');
INSERT INTO objects VALUES (null, 'isla tropical', 'landformM');
INSERT INTO objects VALUES (null, 'cordillera', 'landformM');
INSERT INTO objects VALUES (null, 'arrecife de coral', 'landformH');
INSERT INTO objects VALUES (null, 'hormiguero', 'landformH');
INSERT INTO objects VALUES (null, 'pantano', 'landformH');
INSERT INTO objects VALUES (null, 'estrella fugaz', 'landformM');
INSERT INTO objects VALUES (null, 'supernova', 'landformM');
INSERT INTO objects VALUES (null, 'nube tormentosa', 'landformM');
INSERT INTO objects VALUES (null, 'rayo', 'landformH');
INSERT INTO objects VALUES (null, 'cascada', 'landformM');
INSERT INTO objects VALUES (null, 'estanque de patos', 'landformH');
INSERT INTO objects VALUES (null, 'isla', 'landformM');
INSERT INTO objects VALUES (null, 'lago', 'landformH');
INSERT INTO objects VALUES (null, 'bosque', 'landformH');
INSERT INTO objects VALUES (null, 'océano', 'landformH');
INSERT INTO objects VALUES (null, 'nube', 'landformM');
INSERT INTO objects VALUES (null, 'montaña', 'landformM');
INSERT INTO objects VALUES (null, 'volcán', 'landformH');
INSERT INTO objects VALUES (null, 'iceberg', 'landformH');
INSERT INTO objects VALUES (null, 'desierto', 'landformH');
INSERT INTO objects VALUES (null, 'glaciar', 'landformH');
INSERT INTO objects VALUES (null, 'planeta', 'landformH');
INSERT INTO objects VALUES (null, 'luna', 'landformM');

INSERT INTO objects VALUES (null, 'montículos de termitas', 'landformHP');
INSERT INTO objects VALUES (null, 'Secuoyas gigantes', 'landformMP');
INSERT INTO objects VALUES (null, 'galerías de arte', 'landformMP');
INSERT INTO objects VALUES (null, 'minas de oro', 'landformMP');
INSERT INTO objects VALUES (null, 'serpientes marinas', 'landformMP');
INSERT INTO objects VALUES (null, 'islas tropicales', 'landformMP');
INSERT INTO objects VALUES (null, 'cordilleras', 'landformMP');
INSERT INTO objects VALUES (null, 'arrecifes de coral', 'landformHP');
INSERT INTO objects VALUES (null, 'hormigueros', 'landformHP');
INSERT INTO objects VALUES (null, 'pantanos', 'landformHP');
INSERT INTO objects VALUES (null, 'estrellas fugaces ', 'landformMP');
INSERT INTO objects VALUES (null, 'supernovas', 'landformMP');
INSERT INTO objects VALUES (null, 'nubes tormentosas', 'landformMP');
INSERT INTO objects VALUES (null, 'rayos', 'landformHP');
INSERT INTO objects VALUES (null, 'cascadas', 'landformMP');
INSERT INTO objects VALUES (null, 'estanques de patos', 'landformHP');
INSERT INTO objects VALUES (null, 'islas', 'landformMP');
INSERT INTO objects VALUES (null, 'lagos', 'landformHP');
INSERT INTO objects VALUES (null, 'bosques', 'landformHP');
INSERT INTO objects VALUES (null, 'océanos', 'landformHP');
INSERT INTO objects VALUES (null, 'nubes', 'landformMP');
INSERT INTO objects VALUES (null, 'montañas', 'landformMP');
INSERT INTO objects VALUES (null, 'volcánes', 'landformHP');
INSERT INTO objects VALUES (null, 'icebergs', 'landformHP');
INSERT INTO objects VALUES (null, 'desiertos', 'landformHP');
INSERT INTO objects VALUES (null, 'glaciares', 'landformHP');
INSERT INTO objects VALUES (null, 'planetas', 'landformHP');
INSERT INTO objects VALUES (null, 'lunas', 'landformMP');

INSERT INTO objects VALUES (null, '$per-rulerM', 'eater');
INSERT INTO objects VALUES (null, 'estrella', 'eater');
INSERT INTO objects VALUES (null, 'corriente de lava', 'eater');
INSERT INTO objects VALUES (null, 'ballena', 'eater');
INSERT INTO objects VALUES (null, '$ob-animalM gigante', 'eater');
INSERT INTO objects VALUES (null, 'nube de oscuridad', 'eater');
INSERT INTO objects VALUES (null, 'leona mecánica', 'eater');
INSERT INTO objects VALUES (null, 'ballena', 'eater');
INSERT INTO objects VALUES (null, 'ostra', 'eater');
INSERT INTO objects VALUES (null, '$ob-animalM hambrienta', 'eater');
INSERT INTO objects VALUES (null, '$ob-structureM hambrienta', 'eater');
INSERT INTO objects VALUES (null, 'tormenta eléctrica', 'eater');
INSERT INTO objects VALUES (null, 'niña $ad-gentilicioM de dos años', 'eater');
INSERT INTO objects VALUES (null, 'océano', 'eater');

INSERT INTO objects VALUES (null, '$per-rulerPM', 'eaters');
INSERT INTO objects VALUES (null, 'estrellas', 'eaters');
INSERT INTO objects VALUES (null, 'corrientes de lava', 'eaters');
INSERT INTO objects VALUES (null, 'ballenas', 'eaters');
INSERT INTO objects VALUES (null, '$ob-animalPM gigantes', 'eaters');
INSERT INTO objects VALUES (null, 'nubes de oscuridad', 'eaters');
INSERT INTO objects VALUES (null, 'leonas mecánicas', 'eaters');
INSERT INTO objects VALUES (null, 'ballenas', 'eaters');
INSERT INTO objects VALUES (null, 'ostras', 'eaters');
INSERT INTO objects VALUES (null, '$ob-animalPM hambrientas', 'eaters');
INSERT INTO objects VALUES (null, '$ob-structurePM hambrientas', 'eaters');
INSERT INTO objects VALUES (null, 'tormentas eléctricas', 'eaters');
INSERT INTO objects VALUES (null, 'niñas $ad-gentilicioM de dos años', 'eaters');
INSERT INTO objects VALUES (null, 'océanos', 'eaters');

INSERT INTO objects VALUES (null, 'tratado', 'bookH');
INSERT INTO objects VALUES (null, 'almanaque', 'bookH');
INSERT INTO objects VALUES (null, 'cuaderno', 'bookH');
INSERT INTO objects VALUES (null, 'libro', 'bookH');
INSERT INTO objects VALUES (null, 'manuscrito', 'bookH');
INSERT INTO objects VALUES (null, 'libro de poesía', 'bookH');
INSERT INTO objects VALUES (null, 'novela', 'bookM');
INSERT INTO objects VALUES (null, 'tesis doctoral', 'bookM');
INSERT INTO objects VALUES (null, 'poema', 'bookH');
INSERT INTO objects VALUES (null, 'ensayo', 'bookH');
INSERT INTO objects VALUES (null, 'libro de texto', 'bookH');

INSERT INTO objects VALUES (null, 'tratados', 'bookHP');
INSERT INTO objects VALUES (null, 'almanaques', 'bookHP');
INSERT INTO objects VALUES (null, 'cuadernos', 'bookHP');
INSERT INTO objects VALUES (null, 'libros', 'bookHP');
INSERT INTO objects VALUES (null, 'manuscritos', 'bookHP');
INSERT INTO objects VALUES (null, 'libros de poesía', 'bookHP');
INSERT INTO objects VALUES (null, 'novelas', 'bookMP');
INSERT INTO objects VALUES (null, 'tesis doctorales', 'bookMP');
INSERT INTO objects VALUES (null, 'poemas', 'bookHP');
INSERT INTO objects VALUES (null, 'ensayos', 'bookHP');
INSERT INTO objects VALUES (null, 'libros de texto', 'bookHP');

INSERT INTO objects VALUES (null, 'libro', 'diary');
INSERT INTO objects VALUES (null, 'manuscrito', 'diary');
INSERT INTO objects VALUES (null, 'diario', 'diary');

INSERT INTO objects VALUES (null, 'novela policíaca', 'mysteryM');
INSERT INTO objects VALUES (null, 'novela de misterio', 'mysteryM');
INSERT INTO objects VALUES (null, 'asesinato misterioso', 'mysteryH');
INSERT INTO objects VALUES (null, 'novela de Agatha Christie', 'mysteryM');
INSERT INTO objects VALUES (null, 'misterio de Sherlock Holmes', 'mysteryH');
INSERT INTO objects VALUES (null, 'historia de Edgar Allan Poe', 'mysteryM');

INSERT INTO objects VALUES (null, 'una conversación', 'act');
INSERT INTO objects VALUES (null, 'un acto de bondad', 'act');
INSERT INTO objects VALUES (null, 'un nacimiento', 'act');
INSERT INTO objects VALUES (null, 'un casamiento', 'act');
INSERT INTO objects VALUES (null, 'una tormenta', 'act');
INSERT INTO objects VALUES (null, 'una felación', 'act');
INSERT INTO objects VALUES (null, 'la sonrisa del Chicharito', 'act');
INSERT INTO objects VALUES (null, 'un pensamiento', 'act');
INSERT INTO objects VALUES (null, 'una discusión marital', 'act');
INSERT INTO objects VALUES (null, 'un truco de magia', 'act');
INSERT INTO objects VALUES (null, 'un "one night stand"', 'act');

INSERT INTO objects VALUES (null, 'todas las conversaciones', 'actP');
INSERT INTO objects VALUES (null, 'todos los actos de bondad', 'actP');
INSERT INTO objects VALUES (null, 'todos los nacimientos', 'actP');
INSERT INTO objects VALUES (null, 'todos los casamientos', 'actP');
INSERT INTO objects VALUES (null, 'todas las tormentas', 'actP');
INSERT INTO objects VALUES (null, 'todas las felaciones', 'actP');
INSERT INTO objects VALUES (null, 'todas las sonrisas del Chicharito', 'actP');
INSERT INTO objects VALUES (null, 'todos los pensamientos', 'actP');
INSERT INTO objects VALUES (null, 'todas las discusiones maritales', 'actP');
INSERT INTO objects VALUES (null, 'todos los trucos de magia', 'actP');
INSERT INTO objects VALUES (null, 'todos los "one night stands"', 'actP');

INSERT INTO objects VALUES (null, 'el tiempo', 'tim');
INSERT INTO objects VALUES (null, 'el Sol', 'tim');
INSERT INTO objects VALUES (null, 'la Luna', 'tim');
INSERT INTO objects VALUES (null, 'Marte', 'tim');
INSERT INTO objects VALUES (null, 'Venus', 'tim');
INSERT INTO objects VALUES (null, 'todo lo que existe', 'tim');
INSERT INTO objects VALUES (null, 'el mundo', 'tim');

INSERT INTO objects VALUES (null, 'la filosofía', 'law');
INSERT INTO objects VALUES (null, 'la metafísica', 'law');
INSERT INTO objects VALUES (null, 'la realidad', 'law');
INSERT INTO objects VALUES (null, 'las leyes de la termodinámica', 'law');
INSERT INTO objects VALUES (null, 'las leyes de la física', 'law');
INSERT INTO objects VALUES (null, 'el universo', 'law');
INSERT INTO objects VALUES (null, 'toda la vida en la tierra', 'law');
INSERT INTO objects VALUES (null, 'el tiempo', 'law');
INSERT INTO objects VALUES (null, 'las estrellas', 'law');
INSERT INTO objects VALUES (null, 'el Sol', 'law');
INSERT INTO objects VALUES (null, 'todos los $ob-animalPH', 'law');
INSERT INTO objects VALUES (null, 'todos los $ob-jobHP', 'law');
INSERT INTO objects VALUES (null, 'la música', 'law');
INSERT INTO objects VALUES (null, '$ob-concept', 'law');
INSERT INTO objects VALUES (null, '$ob-space', 'law');
INSERT INTO objects VALUES (null, '$ob-tim', 'law');

INSERT INTO objects VALUES (null, 'tres', 'smallNum');
INSERT INTO objects VALUES (null, 'siete', 'smallNum');
INSERT INTO objects VALUES (null, 'doce', 'smallNum');
INSERT INTO objects VALUES (null, 'quince', 'smallNum');
INSERT INTO objects VALUES (null, 'dieciséis', 'smallNum');
INSERT INTO objects VALUES (null, 'veinte', 'smallNum');
INSERT INTO objects VALUES (null, 'veintiún', 'smallNum');
INSERT INTO objects VALUES (null, 'veintidos', 'smallNum');

INSERT INTO objects VALUES (null, 'ocho mil', 'bigNum');
INSERT INTO objects VALUES (null, 'nueve mil', 'bigNum');
INSERT INTO objects VALUES (null, 'diez mil quinientos', 'bigNum');
INSERT INTO objects VALUES (null, 'siete mil cuatroscientos', 'bigNum');
INSERT INTO objects VALUES (null, 'catorce mil doscientos quince', 'bigNum');

INSERT INTO objects VALUES (null, 'cien', 'singleNum');
INSERT INTO objects VALUES (null, 'cincuenta', 'singleNum');
INSERT INTO objects VALUES (null, 'setenta', 'singleNum');
INSERT INTO objects VALUES (null, 'ciento noventa', 'singleNum');
INSERT INTO objects VALUES (null, 'doscientos', 'singleNum');

INSERT INTO objects VALUES (null, 'veintiún', 'lifespan');
INSERT INTO objects VALUES (null, 'cuarenta', 'lifespan');
INSERT INTO objects VALUES (null, 'cincuenta y dos', 'lifespan');
INSERT INTO objects VALUES (null, 'veinte', 'lifespan');
INSERT INTO objects VALUES (null, 'treinta', 'lifespan');
INSERT INTO objects VALUES (null, 'sesenta', 'lifespan');
INSERT INTO objects VALUES (null, 'treinta y cuatro', 'lifespan');

INSERT INTO objects VALUES (null, 'arcoíris', 'phenomentwo');
INSERT INTO objects VALUES (null, 'nubes', 'phenomentwo');
INSERT INTO objects VALUES (null, 'estrellas', 'phenomentwo');
INSERT INTO objects VALUES (null, 'estrellas fugaces', 'phenomentwo');
INSERT INTO objects VALUES (null, 'cometas', 'phenomentwo');
INSERT INTO objects VALUES (null, 'supernovas', 'phenomentwo');
INSERT INTO objects VALUES (null, 'drones', 'phenomentwo');
INSERT INTO objects VALUES (null, 'mariposas', 'phenomentwo');
INSERT INTO objects VALUES (null, 'langostas voladoras', 'phenomentwo');
INSERT INTO objects VALUES (null, 'granizos', 'phenomentwo');
INSERT INTO objects VALUES (null, 'tumbas', 'phenomentwo');
INSERT INTO objects VALUES (null, 'planetas', 'phenomentwo');
INSERT INTO objects VALUES (null, 'universos', 'phenomentwo');
INSERT INTO objects VALUES (null, 'galaxias', 'phenomentwo');
INSERT INTO objects VALUES (null, 'numeros primos', 'phenomentwo');
INSERT INTO objects VALUES (null, 'parajodas', 'phenomentwo');
INSERT INTO objects VALUES (null, 'penes', 'phenomentwo');
INSERT INTO objects VALUES (null, 'Domingos', 'phenomentwo');
INSERT INTO objects VALUES (null, 'años', 'phenomentwo');
INSERT INTO objects VALUES (null, 'tornados', 'phenomentwo');
INSERT INTO objects VALUES (null, 'reactores nucleares', 'phenomentwo');
INSERT INTO objects VALUES (null, 'Navidades', 'phenomentwo');
INSERT INTO objects VALUES (null, 'sueños', 'phenomentwo');
INSERT INTO objects VALUES (null, 'pesadillas', 'phenomentwo');

INSERT INTO objects VALUES (null, 'nubes', 'phenomen');
INSERT INTO objects VALUES (null, 'estrellas', 'phenomen');
INSERT INTO objects VALUES (null, 'cometas', 'phenomen');
INSERT INTO objects VALUES (null, 'drones', 'phenomen');
INSERT INTO objects VALUES (null, 'mariposas', 'phenomen');
INSERT INTO objects VALUES (null, '$ob-animalPH voladores', 'phenomen');
INSERT INTO objects VALUES (null, 'lluvia', 'phenomen');
INSERT INTO objects VALUES (null, 'nieve', 'phenomen');

INSERT INTO objects VALUES (null, 'mensaje', 'messageH');
INSERT INTO objects VALUES (null, 'poema', 'messageH');

INSERT INTO objects VALUES (null, 'dispositivo mecánico', 'deviceH');
INSERT INTO objects VALUES (null, 'cristal', 'deviceH');
INSERT INTO objects VALUES (null, 'esfera de metal', 'deviceM');
INSERT INTO objects VALUES (null, 'máquina', 'deviceM');
INSERT INTO objects VALUES (null, 'imán', 'deviceH');
INSERT INTO objects VALUES (null, 'prisma', 'deviceH');
INSERT INTO objects VALUES (null, 'talismán', 'deviceH');
INSERT INTO objects VALUES (null, 'reloj suizo', 'deviceH');
INSERT INTO objects VALUES (null, 'moneda de cobre', 'deviceM');
INSERT INTO objects VALUES (null, 'perla', 'deviceM');
INSERT INTO objects VALUES (null, 'esmeralda', 'deviceM');
INSERT INTO objects VALUES (null, 'pedazo de vidrio', 'deviceH');
INSERT INTO objects VALUES (null, 'dedal de plata', 'deviceH');
INSERT INTO objects VALUES (null, 'anillo de diamantes', 'deviceH');
INSERT INTO objects VALUES (null, 'anillo', 'deviceH');
INSERT INTO objects VALUES (null, 'lampara de aceite', 'deviceM');
INSERT INTO objects VALUES (null, 'vela', 'deviceM');
INSERT INTO objects VALUES (null, 'tetera', 'deviceM');

INSERT INTO objects VALUES (null, 'diamante', 'gemH');
INSERT INTO objects VALUES (null, 'rubí', 'gemH');
INSERT INTO objects VALUES (null, 'zafiro', 'gemH');
INSERT INTO objects VALUES (null, 'topaz', 'gemH');
INSERT INTO objects VALUES (null, 'ópalo', 'gemH');

INSERT INTO objects VALUES (null, 'ópalos', 'gems');
INSERT INTO objects VALUES (null, 'rubíes', 'gems');
INSERT INTO objects VALUES (null, 'zafiros', 'gems');
INSERT INTO objects VALUES (null, 'esmeraldas', 'gems');
INSERT INTO objects VALUES (null, 'diamantes', 'gems');


/*TRABAJOS*/

INSERT INTO objects VALUES (null, 'dentista', 'jobH');
INSERT INTO objects VALUES (null, 'mariachi', 'jobH');
INSERT INTO objects VALUES (null, 'desarrollador de software', 'jobH');
INSERT INTO objects VALUES (null, 'homeópata', 'jobH');
INSERT INTO objects VALUES (null, 'profesor de cálculo', 'jobH');
INSERT INTO objects VALUES (null, 'veterinario', 'jobH');
INSERT INTO objects VALUES (null, 'mesero', 'jobH');
INSERT INTO objects VALUES (null, 'bartender', 'jobH');
INSERT INTO objects VALUES (null, 'vendedor ambulante', 'jobH');
INSERT INTO objects VALUES (null, 'plomero', 'jobH');
INSERT INTO objects VALUES (null, 'carpintero', 'jobH');
INSERT INTO objects VALUES (null, 'albañil', 'jobH');
INSERT INTO objects VALUES (null, 'corredor de bolsa', 'jobH');
INSERT INTO objects VALUES (null, 'psicólogo', 'jobH');
INSERT INTO objects VALUES (null, 'abogado', 'jobH');
INSERT INTO objects VALUES (null, 'diseñador', 'jobH');
INSERT INTO objects VALUES (null, 'arquitecto', 'jobH');
INSERT INTO objects VALUES (null, 'juez', 'jobH');
INSERT INTO objects VALUES (null, 'filósofo', 'jobH');
INSERT INTO objects VALUES (null, 'investigador', 'jobH');
INSERT INTO objects VALUES (null, 'traductor', 'jobH');
INSERT INTO objects VALUES (null, 'comediante', 'jobH');
INSERT INTO objects VALUES (null, 'escritor', 'jobH');
INSERT INTO objects VALUES (null, 'influencer', 'jobH');
INSERT INTO objects VALUES (null, 'comediante de stand up', 'jobH');

INSERT INTO objects VALUES (null, 'dentistas', 'jobHP');
INSERT INTO objects VALUES (null, 'mariachis', 'jobHP');
INSERT INTO objects VALUES (null, 'desarrolladores de software', 'jobHP');
INSERT INTO objects VALUES (null, 'homeópatas', 'jobHP');
INSERT INTO objects VALUES (null, 'profesores de cálculo', 'jobHP');
INSERT INTO objects VALUES (null, 'veterinarios', 'jobHP');
INSERT INTO objects VALUES (null, 'meseros', 'jobHP');
INSERT INTO objects VALUES (null, 'bartenders', 'jobHP');
INSERT INTO objects VALUES (null, 'vendedores ambulantes', 'jobHP');
INSERT INTO objects VALUES (null, 'plomeros', 'jobHP');
INSERT INTO objects VALUES (null, 'carpinteros', 'jobHP');
INSERT INTO objects VALUES (null, 'albañiles', 'jobHP');
INSERT INTO objects VALUES (null, 'corredores de bolsa', 'jobHP');
INSERT INTO objects VALUES (null, 'psicólogos', 'jobHP');
INSERT INTO objects VALUES (null, 'abogados', 'jobHP');
INSERT INTO objects VALUES (null, 'diseñadores', 'jobHP');
INSERT INTO objects VALUES (null, 'arquitectos', 'jobHP');
INSERT INTO objects VALUES (null, 'jueces', 'jobHP');
INSERT INTO objects VALUES (null, 'filósofos', 'jobHP');
INSERT INTO objects VALUES (null, 'investigadores', 'jobHP');
INSERT INTO objects VALUES (null, 'traductores', 'jobHP');
INSERT INTO objects VALUES (null, 'comediantes', 'jobHP');
INSERT INTO objects VALUES (null, 'escritores', 'jobHP');
INSERT INTO objects VALUES (null, 'jugadores de fútbol', 'jobHP');
INSERT INTO objects VALUES (null, 'comediantes de standup', 'jobHP');

INSERT INTO objects VALUES (null, 'maestra de kinder', 'jobM');
INSERT INTO objects VALUES (null, 'astrofísica', 'jobM');
INSERT INTO objects VALUES (null, 'física de partículas', 'jobM');
INSERT INTO objects VALUES (null, 'ingeniera química', 'jobM');
INSERT INTO objects VALUES (null, 'dentista', 'jobM');
INSERT INTO objects VALUES (null, 'desarrolladora de software', 'jobM');
INSERT INTO objects VALUES (null, 'homeópata', 'jobM');
INSERT INTO objects VALUES (null, 'profesora de cálculo', 'jobM');
INSERT INTO objects VALUES (null, 'veterinaria', 'jobM');
INSERT INTO objects VALUES (null, 'mesera', 'jobM');
INSERT INTO objects VALUES (null, 'vendedora ambulante', 'jobM');
INSERT INTO objects VALUES (null, 'carpintera', 'jobM');

/* TRABAJOS RAROS */

INSERT INTO objects VALUES (null, 'mago', 'weirdjobH');
INSERT INTO objects VALUES (null, 'alquimista', 'weirdjobH');
INSERT INTO objects VALUES (null, 'donante de esperma freelance', 'weirdjobH');
INSERT INTO objects VALUES (null, 'tatuador de pezones', 'weirdjobH');
INSERT INTO objects VALUES (null, 'místico', 'weirdjobH');
INSERT INTO objects VALUES (null, 'brujo', 'weirdjobH');
INSERT INTO objects VALUES (null, 'cuidador de hormigas', 'weirdjobH');
INSERT INTO objects VALUES (null, 'maestro jamonero', 'weirdjobH');


/*LIBROS*/

INSERT INTO objects VALUES (null, 'la Odisea de Homero', 'title');
INSERT INTO objects VALUES (null, 'Cien Años de Soledad', 'title');
INSERT INTO objects VALUES (null, 'la Divina Comedia', 'title');
INSERT INTO objects VALUES (null, 'la Metamorfósis', 'title');
INSERT INTO objects VALUES (null, 'El Principito', 'title');
INSERT INTO objects VALUES (null, 'Pedro Páramo', 'title');
INSERT INTO objects VALUES (null, 'El Laberinto de la Soledad', 'title');
INSERT INTO objects VALUES (null, 'el Cantar del Mío Sid', 'title');
INSERT INTO objects VALUES (null, 'La Sombra del Viento', 'title');
INSERT INTO objects VALUES (null, 'El Quijote', 'title');
INSERT INTO objects VALUES (null, 'Crimen y Castigo de Dostoievski', 'title');
INSERT INTO objects VALUES (null, 'El Nombre de la Rosa', 'title');
INSERT INTO objects VALUES (null, 'El Manifesto Comunista', 'title');
INSERT INTO objects VALUES (null, '1984 de George Orwell', 'title');

/*OBRAS DE ARTE*/

INSERT INTO objects VALUES (null, 'el "Venus de Urbino" de Tiziano', 'artH');
INSERT INTO objects VALUES (null, '"la Sagrada Familia" de Sebastiano del Piombo', 'artM');
INSERT INTO objects VALUES (null, '"Las bodas de Caná"" de Veronese', 'artPM');
INSERT INTO objects VALUES (null, 'el "Retrato de Giovanni Arnolfini y su esposa" de Jan van Eyck', 'artH');
INSERT INTO objects VALUES (null, '"Los embajadores" de Holbein', 'artPH');
INSERT INTO objects VALUES (null, 'el "Paisaje con la caída de Ícaro" de Brueghel', 'artH');
INSERT INTO objects VALUES (null, '"El 3 de mayo en Madrid" de Goya', 'artH');
INSERT INTO objects VALUES (null, '"La Libertad guiando al pueblo" de Delacroix', 'artM');
INSERT INTO objects VALUES (null, 'el "Olympia" de Manet', 'artH');
INSERT INTO objects VALUES (null, 'el "a Cézanne" de Maurice Denis', 'artH');
INSERT INTO objects VALUES (null, 'una pintura de El Greco', 'artM');
INSERT INTO objects VALUES (null, 'una pintura de Gerhard Richter', 'artM');
INSERT INTO objects VALUES (null, 'una pintura de Lucian Freud', 'artM');
INSERT INTO objects VALUES (null, 'un "fresco" de Fra Angelico', 'artH');
INSERT INTO objects VALUES (null, 'un Caravaggio', 'artH');
INSERT INTO objects VALUES (null, 'un Rembrandt', 'artH');
INSERT INTO objects VALUES (null, '"La Adoración de los Reyes Magos de" Gentile da Fabriano','artM');
INSERT INTO objects VALUES (null, 'la "Mona Lisa"', 'artM');
INSERT INTO objects VALUES (null, '"La Noche estrellada" de Van Gogh', 'artM');
INSERT INTO objects VALUES (null, '"La última cena" de da Vinci', 'artM');
INSERT INTO objects VALUES (null, '"El nacimiento de Venus" de Botticelli', 'artH');
INSERT INTO objects VALUES (null, 'el "Guernica" de Picasso', 'artH');
INSERT INTO objects VALUES (null, '"El Beso" de Klimt', 'artH');
INSERT INTO objects VALUES (null, '"Las Meninas" de Velázquez', 'artPM');

INSERT INTO objects VALUES (null, 'una pintura', 'artwork');
INSERT INTO objects VALUES (null, 'una escultura', 'artwork');
INSERT INTO objects VALUES (null, 'un hermoso vitral', 'artwork');
INSERT INTO objects VALUES (null, 'un legendario manuscrito', 'artwork');
INSERT INTO objects VALUES (null, 'una pintura de Michelangelo', 'artwork');
INSERT INTO objects VALUES (null, 'una alfombra Persa', 'artwork');
INSERT INTO objects VALUES (null, 'una pintura del Renacimiento', 'artwork');
INSERT INTO objects VALUES (null, 'una impresión xilográfica Japonesa', 'artwork');
INSERT INTO objects VALUES (null, 'un jardín topiario', 'artwork');
INSERT INTO objects VALUES (null, 'una escultura de hielo', 'artwork');
INSERT INTO objects VALUES (null, 'una fotografía', 'artwork');
INSERT INTO objects VALUES (null, 'una colección de figurines de porcelana', 'artwork');
INSERT INTO objects VALUES (null, 'un GIF animado', 'artwork');

INSERT INTO objects VALUES (null, 'una opera de Wagner que habla de $ob-thingP', 'moz');
INSERT INTO objects VALUES (null, 'una opera de Handel sobre $ob-thingP', 'moz');
INSERT INTO objects VALUES (null, 'una opera de Verdi sobre $ob-thingP', 'moz');
INSERT INTO objects VALUES (null, 'una opera de Puccini sobre $ob-thingP', 'moz');
INSERT INTO objects VALUES (null, 'una opera de Donizetti sobre $ob-thingP', 'moz');
INSERT INTO objects VALUES (null, 'una opera de Mozart sobre $ob-thingP', 'moz');
INSERT INTO objects VALUES (null, 'una sinfonía de Beethoven', 'moz');
INSERT INTO objects VALUES (null, 'una sinfonía de Brahms', 'moz');
INSERT INTO objects VALUES (null, 'una sinfonía de Mahler', 'moz');
INSERT INTO objects VALUES (null, 'una sinfonía de Dvorak', 'moz');
INSERT INTO objects VALUES (null, 'un concierto para piano', 'moz');
INSERT INTO objects VALUES (null, 'un concierto para violin', 'moz');

INSERT INTO objects VALUES (null, 'sonidos', 'echoH');
INSERT INTO objects VALUES (null, 'canciones', 'echoM');
INSERT INTO objects VALUES (null, 'cantos de pájaro', 'echoH');
INSERT INTO objects VALUES (null, 'gemidos lujuriosos', 'echoH');
INSERT INTO objects VALUES (null, 'ladridos', 'echo');

INSERT INTO objects VALUES (null, 'gramófono', 'loudthingH');
INSERT INTO objects VALUES (null, 'harpa', 'loudthingM');
INSERT INTO objects VALUES (null, 'violin Stradivarius', 'loudthingH');
INSERT INTO objects VALUES (null, 'acordeón', 'loudthing');
INSERT INTO objects VALUES (null, 'fonógrafo', 'loudthing');
INSERT INTO objects VALUES (null, 'jazz record', 'loudthing');
INSERT INTO objects VALUES (null, 'violonchelo', 'loudthing');
INSERT INTO objects VALUES (null, 'disco', 'loudthing');


/*ANIMALES*/

INSERT INTO objects VALUES (null, 'elefante', 'animalH');
INSERT INTO objects VALUES (null, 'tigre', 'animalH');
INSERT INTO objects VALUES (null, 'ornitorrinco', 'animalH');
INSERT INTO objects VALUES (null, 'pelicano', 'animalH');
INSERT INTO objects VALUES (null, 'hipopótamo', 'animalH');
INSERT INTO objects VALUES (null, 'armadillo', 'animalH');
INSERT INTO objects VALUES (null, 'hurón', 'animalH');
INSERT INTO objects VALUES (null, 'bisonte', 'animalH');
INSERT INTO objects VALUES (null, 'búfalo', 'animalH');
INSERT INTO objects VALUES (null, 'jaguar', 'animalH');
INSERT INTO objects VALUES (null, 'canguro', 'animalH');
INSERT INTO objects VALUES (null, 'camaleón', 'animalH');
INSERT INTO objects VALUES (null, 'lagarto', 'animalH');
INSERT INTO objects VALUES (null, 'cocodrilo', 'animalH');
INSERT INTO objects VALUES (null, 'gorila', 'animalH');
INSERT INTO objects VALUES (null, 'mosquito', 'animalH');
INSERT INTO objects VALUES (null, 'flamingo', 'animalH');

INSERT INTO objects VALUES (null, 'elefantes', 'animalPH');
INSERT INTO objects VALUES (null, 'tigres', 'animalPH');
INSERT INTO objects VALUES (null, 'ornitorrincos', 'animalPH');
INSERT INTO objects VALUES (null, 'pelicanos', 'animalPH');
INSERT INTO objects VALUES (null, 'hipopótamos', 'animalPH');
INSERT INTO objects VALUES (null, 'armadillos', 'animalPH');
INSERT INTO objects VALUES (null, 'hurónes', 'animalPH');
INSERT INTO objects VALUES (null, 'bisontes', 'animalPH');
INSERT INTO objects VALUES (null, 'búfalos', 'animalPH');
INSERT INTO objects VALUES (null, 'jaguares', 'animalPH');
INSERT INTO objects VALUES (null, 'canguros', 'animalPH');
INSERT INTO objects VALUES (null, 'camaleones', 'animalPH');
INSERT INTO objects VALUES (null, 'lagartos', 'animalPH');
INSERT INTO objects VALUES (null, 'cocodrilos', 'animalPH');
INSERT INTO objects VALUES (null, 'gorilas', 'animalPH');
INSERT INTO objects VALUES (null, 'mosquitos', 'animalPH');
INSERT INTO objects VALUES (null, 'flamingos', 'animalPH');

INSERT INTO objects VALUES (null, 'serpiente', 'animalM');
INSERT INTO objects VALUES (null, 'gaviota', 'animalM');
INSERT INTO objects VALUES (null, 'medusa', 'animalM');
INSERT INTO objects VALUES (null, 'gallina', 'animalM');
INSERT INTO objects VALUES (null, 'rana', 'animalM');
INSERT INTO objects VALUES (null, 'salamandra', 'animalM');
INSERT INTO objects VALUES (null, 'jirafa', 'animalM');
INSERT INTO objects VALUES (null, 'avestruz', 'animalM');
INSERT INTO objects VALUES (null, 'hiena', 'animalM');
INSERT INTO objects VALUES (null, 'rata', 'animalM');
INSERT INTO objects VALUES (null, 'paloma', 'animalM');
INSERT INTO objects VALUES (null, 'golondrina', 'animalM');
INSERT INTO objects VALUES (null, 'oveja', 'animalM');
INSERT INTO objects VALUES (null, 'ardilla', 'animalM');
INSERT INTO objects VALUES (null, 'zebra', 'animalM');
INSERT INTO objects VALUES (null, 'tortuga', 'animalM');

INSERT INTO objects VALUES (null, 'serpiente', 'animalPM');
INSERT INTO objects VALUES (null, 'gaviota', 'animalPM');
INSERT INTO objects VALUES (null, 'medusa', 'animalPM');
INSERT INTO objects VALUES (null, 'gallina', 'animalPM');
INSERT INTO objects VALUES (null, 'rana', 'animalPM');
INSERT INTO objects VALUES (null, 'salamandra', 'animalPM');
INSERT INTO objects VALUES (null, 'jirafa', 'animalPM');
INSERT INTO objects VALUES (null, 'avestruz', 'animalPM');
INSERT INTO objects VALUES (null, 'hiena', 'animalPM');
INSERT INTO objects VALUES (null, 'rata', 'animalPM');
INSERT INTO objects VALUES (null, 'paloma', 'animalPM');
INSERT INTO objects VALUES (null, 'golondrina', 'animalPM');
INSERT INTO objects VALUES (null, 'oveja', 'animalPM');
INSERT INTO objects VALUES (null, 'ardilla', 'animalPM');
INSERT INTO objects VALUES (null, 'zebra', 'animalPM');
INSERT INTO objects VALUES (null, 'tortuga', 'animalPM');

INSERT INTO objects VALUES (null, 'golondrina', 'flyerM');
INSERT INTO objects VALUES (null, 'mariposa', 'flyerM');
INSERT INTO objects VALUES (null, 'polilla', 'flyerM');
INSERT INTO objects VALUES (null, 'albatros', 'flyerH');
INSERT INTO objects VALUES (null, 'perico', 'flyerH');
INSERT INTO objects VALUES (null, 'libélula', 'flyerM');
INSERT INTO objects VALUES (null, 'águila', 'flyerM');
INSERT INTO objects VALUES (null, 'guacamayo', 'flyerH');
INSERT INTO objects VALUES (null, 'buitre', 'flyerH');
INSERT INTO objects VALUES (null, 'garza', 'flyerM');
INSERT INTO objects VALUES (null, 'colibrí', 'flyerH');
INSERT INTO objects VALUES (null, 'petirrojo', 'flyerH');
INSERT INTO objects VALUES (null, 'urraca', 'flyerM');
INSERT INTO objects VALUES (null, 'muercíelago', 'flyerH');
INSERT INTO objects VALUES (null, 'cuervo', 'flyerH');

INSERT INTO objects VALUES (null, 'golondrina', 'flyerPM');
INSERT INTO objects VALUES (null, 'mariposas', 'flyerPM');
INSERT INTO objects VALUES (null, 'polillas', 'flyerPM');
INSERT INTO objects VALUES (null, 'albatros', 'flyerPH');
INSERT INTO objects VALUES (null, 'pericos', 'flyerPH');
INSERT INTO objects VALUES (null, 'libélulas', 'flyerPM');
INSERT INTO objects VALUES (null, 'águila', 'flyerPM');
INSERT INTO objects VALUES (null, 'guacamayos', 'flyerPH');
INSERT INTO objects VALUES (null, 'buitres', 'flyerPH');
INSERT INTO objects VALUES (null, 'garzas', 'flyerPM');
INSERT INTO objects VALUES (null, 'colibríes', 'flyerPH');
INSERT INTO objects VALUES (null, 'petirrojos', 'flyerPH');
INSERT INTO objects VALUES (null, 'urracas', 'flyerPM');
INSERT INTO objects VALUES (null, 'muercíelagos', 'flyerPH');
INSERT INTO objects VALUES (null, 'cuervos', 'flyerPH');

INSERT INTO objects VALUES (null, 'Pájaro Dodo', 'extinctanimalH');
INSERT INTO objects VALUES (null, 'Tigre de Tasmania', 'extinctanimalH');
INSERT INTO objects VALUES (null, 'Mamut', 'extinctanimalH');
INSERT INTO objects VALUES (null, 'Velociraptor', 'extinctanimalH');
INSERT INTO objects VALUES (null, 'Triceratops', 'extinctanimalH');

/* SERES */

INSERT INTO objects VALUES (null, 'diosa', 'beingM');
INSERT INTO objects VALUES (null, 'demonio', 'beingH');
INSERT INTO objects VALUES (null, 'mago', 'beingH');
INSERT INTO objects VALUES (null, 'hobbit', 'beingH');
INSERT INTO objects VALUES (null, 'orco', 'beingH');
INSERT INTO objects VALUES (null, 'fantasma', 'beingH');
INSERT INTO objects VALUES (null, 'vampiro', 'beingH');
INSERT INTO objects VALUES (null, 'centauro', 'beingH');
INSERT INTO objects VALUES (null, 'ángel', 'beingH');
INSERT INTO objects VALUES (null, 'poltergeist', 'beingH');
INSERT INTO objects VALUES (null, 'hada', 'beingM');
INSERT INTO objects VALUES (null, 'genio de la lámpara', 'beingH');
INSERT INTO objects VALUES (null, 'gul', 'beingH');
INSERT INTO objects VALUES (null, 'hombre lobo', 'being');
INSERT INTO objects VALUES (null, 'duende', 'beingH');
INSERT INTO objects VALUES (null, 'unicornio', 'beingH');
INSERT INTO objects VALUES (null, 'súcubo', 'beingH');
INSERT INTO objects VALUES (null, 'golem', 'beingH');
INSERT INTO objects VALUES (null, 'elfo', 'beingH');
INSERT INTO objects VALUES (null, 'bruja', 'beingM');
INSERT INTO objects VALUES (null, 'zombie', 'beingH');
INSERT INTO objects VALUES (null, 'dragón', 'beingH');
INSERT INTO objects VALUES (null, 'sirena', 'beingM');

INSERT INTO objects VALUES (null, 'diosas', 'beingMP');
INSERT INTO objects VALUES (null, 'demonios', 'beingHP');
INSERT INTO objects VALUES (null, 'magos', 'beingHP');
INSERT INTO objects VALUES (null, 'hobbits', 'beingHP');
INSERT INTO objects VALUES (null, 'orcos', 'beingHP');
INSERT INTO objects VALUES (null, 'fantasmas', 'beingHP');
INSERT INTO objects VALUES (null, 'vampiros', 'beingHP');
INSERT INTO objects VALUES (null, 'centauros', 'beingHP');
INSERT INTO objects VALUES (null, 'ángeles', 'beingHP');
INSERT INTO objects VALUES (null, 'poltergeists', 'beingHP');
INSERT INTO objects VALUES (null, 'hadas', 'beingMP');
INSERT INTO objects VALUES (null, 'genios de la lámpara', 'beingHP');
INSERT INTO objects VALUES (null, 'hombres lobo', 'beingP');
INSERT INTO objects VALUES (null, 'duendes', 'beingHP');
INSERT INTO objects VALUES (null, 'unicornios', 'beingHP');
INSERT INTO objects VALUES (null, 'súcubos', 'beingHP');
INSERT INTO objects VALUES (null, 'golems', 'beingHP');
INSERT INTO objects VALUES (null, 'elfos', 'beingHP');
INSERT INTO objects VALUES (null, 'brujas', 'beingMP');
INSERT INTO objects VALUES (null, 'zombies', 'beingHP');
INSERT INTO objects VALUES (null, 'dragónes', 'beingHP');
INSERT INTO objects VALUES (null, 'sirenas', 'beingMP');

/* INSECTOS */


INSERT INTO objects VALUES (null, 'tarántulas', 'insectPM');
INSERT INTO objects VALUES (null, 'hormigas', 'insectPM');
INSERT INTO objects VALUES (null, 'cucarachas', 'insectPM');
INSERT INTO objects VALUES (null, 'mariposas', 'insectPM');
INSERT INTO objects VALUES (null, 'abejas', 'insectPM');
INSERT INTO objects VALUES (null, 'libélulas', 'insectPM');
INSERT INTO objects VALUES (null, 'termitas', 'insectPM');


INSERT INTO objects VALUES (null, 'araña', 'insectM');
INSERT INTO objects VALUES (null, 'tarántula', 'insectM');
INSERT INTO objects VALUES (null, 'hormiga', 'insectM');
INSERT INTO objects VALUES (null, 'cigarra', 'insectM');
INSERT INTO objects VALUES (null, 'cucaracha', 'insectM');
INSERT INTO objects VALUES (null, 'libélula', 'insectM');
INSERT INTO objects VALUES (null, 'termita', 'insectM');
INSERT INTO objects VALUES (null, 'abeja', 'insectM');
INSERT INTO objects VALUES (null, 'mariposa', 'insectM');

/* PLANTAS */

INSERT INTO objects VALUES (null, 'rosa', 'plantM');
INSERT INTO objects VALUES (null, 'orquídea', 'plantM');
INSERT INTO objects VALUES (null, 'amapola', 'plantM');
INSERT INTO objects VALUES (null, 'peonia', 'plantM');

INSERT INTO objects VALUES (null, 'rosas', 'plantMP');
INSERT INTO objects VALUES (null, 'orquídeas', 'plantMP');
INSERT INTO objects VALUES (null, 'amapolas', 'plantMP');
INSERT INTO objects VALUES (null, 'peonias', 'plantMP');

INSERT INTO objects VALUES (null, 'girasol', 'plantH');

INSERT INTO objects VALUES (null, 'rosas', 'plantPM');
INSERT INTO objects VALUES (null, 'orquídeas', 'plantPM');
INSERT INTO objects VALUES (null, 'amapolas', 'plantPM');
INSERT INTO objects VALUES (null, 'peonias', 'plantPM');

/*MATERIALES*/

INSERT INTO objects VALUES (null, 'goma de mascar', 'stuff');
INSERT INTO objects VALUES (null, 'cristal', 'stuff');
INSERT INTO objects VALUES (null, 'hojas de papel', 'stuff');
INSERT INTO objects VALUES (null, 'yoghurt', 'stuff');
INSERT INTO objects VALUES (null, 'cubos de rubik', 'stuff');
INSERT INTO objects VALUES (null, 'miel', 'stuff');
INSERT INTO objects VALUES (null, 'marihuana', 'stuff');
INSERT INTO objects VALUES (null, 'fuego', 'stuff');
INSERT INTO objects VALUES (null, 'agua', 'stuff');
INSERT INTO objects VALUES (null, 'billetes de 20 pesos', 'stuff');
INSERT INTO objects VALUES (null, 'viento', 'stuff');
INSERT INTO objects VALUES (null, 'estrellas', 'stuff');
INSERT INTO objects VALUES (null, 'música', 'stuff');
INSERT INTO objects VALUES (null, 'palabras', 'stuff');
INSERT INTO objects VALUES (null, 'amor verdadero', 'stuff');
INSERT INTO objects VALUES (null, 'flores', 'stuff');
INSERT INTO objects VALUES (null, 'pétalos de rosa', 'stuff');
INSERT INTO objects VALUES (null, 'esmeraldas', 'stuff');
INSERT INTO objects VALUES (null, 'rubíes', 'stuff');
INSERT INTO objects VALUES (null, 'diamantes', 'stuff');
INSERT INTO objects VALUES (null, 'zafiros', 'stuff');
INSERT INTO objects VALUES (null, 'hielo', 'stuff');
INSERT INTO objects VALUES (null, 'sal', 'stuff');
INSERT INTO objects VALUES (null, 'chocolate', 'stuff');
INSERT INTO objects VALUES (null, 'frutas tropicales', 'stuff');
INSERT INTO objects VALUES (null, 'piedra', 'stuff');
INSERT INTO objects VALUES (null, 'madera', 'stuff');
INSERT INTO objects VALUES (null, 'números primos', 'stuff');
INSERT INTO objects VALUES (null, 'letras del alfabeto', 'stuff');
INSERT INTO objects VALUES (null, 'fantasías sexuales', 'stuff');
INSERT INTO objects VALUES (null, 'oxígeno', 'stuff');
INSERT INTO objects VALUES (null, 'Domingos', 'stuff');
INSERT INTO objects VALUES (null, 'Sábados', 'stuff');
INSERT INTO objects VALUES (null, 'arrogancia', 'stuff');
INSERT INTO objects VALUES (null, 'paradojas', 'stuff');
INSERT INTO objects VALUES (null, 'silencio', 'stuff');
INSERT INTO objects VALUES (null, 'helado napolitano', 'stuff');
INSERT INTO objects VALUES (null, 'basura reciclada', 'stuff');
INSERT INTO objects VALUES (null, 'lego', 'stuff');
INSERT INTO objects VALUES (null, 'monedas de cincuenta centavos', 'stuff');
INSERT INTO objects VALUES (null, 'algodón de azúcar', 'stuff');
INSERT INTO objects VALUES (null, 'piezas de rompecabezas', 'stuff');
INSERT INTO objects VALUES (null, 'nubes', 'stuff');
INSERT INTO objects VALUES (null, 'papel', 'stuff');


INSERT INTO objects VALUES (null, 'pera', 'fruitM');
INSERT INTO objects VALUES (null, 'mango', 'fruitH');
INSERT INTO objects VALUES (null, 'manzana', 'fruitM');
INSERT INTO objects VALUES (null, 'kiwi', 'fruitH');
INSERT INTO objects VALUES (null, 'sandía', 'fruitM');
INSERT INTO objects VALUES (null, 'fresa', 'fruitM');
INSERT INTO objects VALUES (null, 'plátano', 'fruitH');
INSERT INTO objects VALUES (null, 'lima', 'fruitM');
INSERT INTO objects VALUES (null, 'durazno', 'fruitH');
INSERT INTO objects VALUES (null, 'melocotón', 'fruitH');
INSERT INTO objects VALUES (null, 'tomate', 'fruitH');
INSERT INTO objects VALUES (null, 'pepino', 'fruitH');
INSERT INTO objects VALUES (null, 'papaya', 'fruitM');
INSERT INTO objects VALUES (null, 'tamarindo', 'fruitH');
INSERT INTO objects VALUES (null, 'mandarina', 'fruitM');
INSERT INTO objects VALUES (null, 'cereza', 'fruitM');
INSERT INTO objects VALUES (null, 'mora azul', 'fruitM');
INSERT INTO objects VALUES (null, 'ciruela', 'fruitM');
INSERT INTO objects VALUES (null, 'membrillo', 'fruitH');
INSERT INTO objects VALUES (null, 'mora', 'fruitM');
INSERT INTO objects VALUES (null, 'naranja', 'fruitM');
INSERT INTO objects VALUES (null, 'piña', 'fruitM');
INSERT INTO objects VALUES (null, 'chirimoya', 'fruitM');
INSERT INTO objects VALUES (null, 'toronja', 'fruitM');
INSERT INTO objects VALUES (null, 'lechuga', 'fruitM');
INSERT INTO objects VALUES (null, 'zanahoria', 'fruitM');
INSERT INTO objects VALUES (null, 'berenjena', 'fruitM');
INSERT INTO objects VALUES (null, 'coliflor', 'fruitM');
INSERT INTO objects VALUES (null, 'patata', 'fruitM');
INSERT INTO objects VALUES (null, 'cebolla', 'fruitM');
INSERT INTO objects VALUES (null, 'calabaza', 'fruitM');
INSERT INTO objects VALUES (null, 'rábano', 'fruitH');
INSERT INTO objects VALUES (null, 'coco', 'fruitH');

INSERT INTO objects VALUES (null, 'peras', 'fruitPM');
INSERT INTO objects VALUES (null, 'mangos', 'fruitPH');
INSERT INTO objects VALUES (null, 'manzanas', 'fruitPM');
INSERT INTO objects VALUES (null, 'kiwis', 'fruitPH');
INSERT INTO objects VALUES (null, 'sandías', 'fruitPM');
INSERT INTO objects VALUES (null, 'fresas', 'fruitPM');
INSERT INTO objects VALUES (null, 'plátanos', 'fruitPH');
INSERT INTO objects VALUES (null, 'limas', 'fruitPM');
INSERT INTO objects VALUES (null, 'duraznos', 'fruitPH');
INSERT INTO objects VALUES (null, 'melocotónes', 'fruitPH');
INSERT INTO objects VALUES (null, 'tomates', 'fruitPH');
INSERT INTO objects VALUES (null, 'pepinos', 'fruitPH');
INSERT INTO objects VALUES (null, 'papayas', 'fruitPM');
INSERT INTO objects VALUES (null, 'tamarindos', 'fruitPH');
INSERT INTO objects VALUES (null, 'mandarinas', 'fruitPM');
INSERT INTO objects VALUES (null, 'cerezas', 'fruitPM');
INSERT INTO objects VALUES (null, 'moras azules', 'fruitPM');
INSERT INTO objects VALUES (null, 'ciruelas', 'fruitPM');
INSERT INTO objects VALUES (null, 'membrillos', 'fruitPH');
INSERT INTO objects VALUES (null, 'moras', 'fruitPM');
INSERT INTO objects VALUES (null, 'naranjas', 'fruitPM');
INSERT INTO objects VALUES (null, 'piñas', 'fruitPM');
INSERT INTO objects VALUES (null, 'chirimoyas', 'fruitPM');
INSERT INTO objects VALUES (null, 'toronjas', 'fruitPM');
INSERT INTO objects VALUES (null, 'lechugas', 'fruitPM');
INSERT INTO objects VALUES (null, 'zanahorias', 'fruitPM');
INSERT INTO objects VALUES (null, 'berenjenas', 'fruitPM');
INSERT INTO objects VALUES (null, 'coliflores', 'fruitPM');
INSERT INTO objects VALUES (null, 'patatas', 'fruitPM');
INSERT INTO objects VALUES (null, 'cebollas', 'fruitPM');
INSERT INTO objects VALUES (null, 'calabazas', 'fruitPM');
INSERT INTO objects VALUES (null, 'rábanos', 'fruitPH');
INSERT INTO objects VALUES (null, 'cocos', 'fruitPH');

INSERT INTO objects VALUES (null, 'manzano', 'treeH');
INSERT INTO objects VALUES (null, 'sauce', 'treeH');
INSERT INTO objects VALUES (null, 'cerezo', 'treeH');
INSERT INTO objects VALUES (null, 'rosal', 'treeH');
INSERT INTO objects VALUES (null, 'roble', 'treeH');
INSERT INTO objects VALUES (null, 'ciprés', 'treeH');
INSERT INTO objects VALUES (null, 'avellano', 'treeH');
INSERT INTO objects VALUES (null, 'castaña', 'treeM');
INSERT INTO objects VALUES (null, 'olmo', 'treeH');
INSERT INTO objects VALUES (null, 'fresno', 'treeH');
INSERT INTO objects VALUES (null, 'limero', 'treeH');
INSERT INTO objects VALUES (null, 'pino', 'treeH');
INSERT INTO objects VALUES (null, 'eucalipto', 'treeH');

INSERT INTO objects VALUES (null, 'manzanos', 'treeHP');
INSERT INTO objects VALUES (null, 'sauces', 'treeHP');
INSERT INTO objects VALUES (null, 'cerezos', 'treeHP');
INSERT INTO objects VALUES (null, 'rosales', 'treeHP');
INSERT INTO objects VALUES (null, 'robles', 'treeHP');
INSERT INTO objects VALUES (null, 'cipreses', 'treeHP');
INSERT INTO objects VALUES (null, 'avellanos', 'treeHP');
INSERT INTO objects VALUES (null, 'castañas', 'treeMP');
INSERT INTO objects VALUES (null, 'olmos', 'treeHP');
INSERT INTO objects VALUES (null, 'fresnos', 'treeHP');
INSERT INTO objects VALUES (null, 'limeros', 'treeHP');
INSERT INTO objects VALUES (null, 'pinos', 'treeHP');
INSERT INTO objects VALUES (null, 'eucaliptos', 'treeHP');


/*COMPAÑIAS*/

INSERT INTO objects VALUES (null, 'Facebook', 'compani');
INSERT INTO objects VALUES (null, 'Google', 'compani');
INSERT INTO objects VALUES (null, 'Twitter', 'compani');
INSERT INTO objects VALUES (null, 'Nintendo', 'compani');
INSERT INTO objects VALUES (null, 'Microsoft', 'compani');
INSERT INTO objects VALUES (null, 'Goldman Sachs', 'compani');
INSERT INTO objects VALUES (null, 'Procter & Gamble', 'compani');
INSERT INTO objects VALUES (null, 'McDonald''s', 'compani');

INSERT INTO objects VALUES (null, 'un comité de', 'soc');
INSERT INTO objects VALUES (null, 'un grupo de', 'soc');
INSERT INTO objects VALUES (null, 'un grupo de tres', 'soc');
INSERT INTO objects VALUES (null, 'un grupo de nueve', 'soc');
INSERT INTO objects VALUES (null, 'una fraternidad de', 'soc');
INSERT INTO objects VALUES (null, 'una hermandad de', 'soc');
INSERT INTO objects VALUES (null, 'un aquelarre de', 'soc');
INSERT INTO objects VALUES (null, 'una sociedad sabia de', 'soc');
INSERT INTO objects VALUES (null, 'una sociedad secreta de', 'soc');
INSERT INTO objects VALUES (null, 'un grupo de doce', 'soc');
INSERT INTO objects VALUES (null, 'un grupo de cien', 'soc');
INSERT INTO objects VALUES (null, 'un grupo de noventa y nueve', 'soc');
INSERT INTO objects VALUES (null, 'un grupo de sesenta y nueve', 'soc');
INSERT INTO objects VALUES (null, 'un grupo de mil', 'soc');
INSERT INTO objects VALUES (null, 'un grupo de trescientos', 'soc');
INSERT INTO objects VALUES (null, 'una antigua orden de', 'soc');

INSERT INTO objects VALUES (null, 'un comité de', 'soctwo');
INSERT INTO objects VALUES (null, 'un grupo de', 'soctwo');
INSERT INTO objects VALUES (null, 'un grupo de tres', 'soctwo');
INSERT INTO objects VALUES (null, 'un grupo de nueve', 'soctwo');
INSERT INTO objects VALUES (null, 'una fraternidad de', 'soctwo');
INSERT INTO objects VALUES (null, 'una hermandad de', 'soctwo');
INSERT INTO objects VALUES (null, 'un aquelarre de', 'soctwo');
INSERT INTO objects VALUES (null, 'una soctwoiedad sabia de', 'soctwo');
INSERT INTO objects VALUES (null, 'una soctwoiedad secreta de', 'soctwo');
INSERT INTO objects VALUES (null, 'un grupo de doce', 'soctwo');
INSERT INTO objects VALUES (null, 'un grupo de cien', 'soctwo');
INSERT INTO objects VALUES (null, 'un grupo de noventa y nueve', 'soctwo');
INSERT INTO objects VALUES (null, 'un grupo de sesenta y nueve', 'soctwo');
INSERT INTO objects VALUES (null, 'un grupo de mil', 'soctwo');
INSERT INTO objects VALUES (null, 'un grupo de trescientos', 'soctwo');
INSERT INTO objects VALUES (null, 'una antigua orden de', 'soctwo');

INSERT INTO objects VALUES (null, 'Friends', 'sitcom');
INSERT INTO objects VALUES (null, 'Seinfeld', 'sitcom');
INSERT INTO objects VALUES (null, 'Los Simpsons', 'sitcom');
INSERT INTO objects VALUES (null, 'South Park', 'sitcom');
INSERT INTO objects VALUES (null, 'Family Guy', 'sitcom');
INSERT INTO objects VALUES (null, 'Rick and Morty', 'sitcom');
INSERT INTO objects VALUES (null, 'Game of Thrones', 'sitcom');
INSERT INTO objects VALUES (null, 'The Walking Dead', 'sitcom');
INSERT INTO objects VALUES (null, 'The Big Bang Theory', 'sitcom');
INSERT INTO objects VALUES (null, 'Stranger Things', 'sitcom');
INSERT INTO objects VALUES (null, 'Black Mirror', 'sitcom');

INSERT INTO objects VALUES (null, 'Piratas del Caribe', 'movieseries');
INSERT INTO objects VALUES (null, 'Rocky', 'movieseries');
INSERT INTO objects VALUES (null, 'Rápido y Furioso', 'movieseries');
INSERT INTO objects VALUES (null, 'El Señor de los Anillos', 'movieseries');
INSERT INTO objects VALUES (null, 'Star Wars', 'movieseries');
INSERT INTO objects VALUES (null, 'Indiana Jones', 'movieseries');
INSERT INTO objects VALUES (null, 'Harry Potter', 'movieseries');

/* LUGAR DESAGRADABLE */

INSERT INTO objects VALUES (null, 'tienda de autopartes', 'garbagedumpM');
INSERT INTO objects VALUES (null, 'estación de trenes', 'garbagedumpM');
INSERT INTO objects VALUES (null, 'estación de policía', 'garbagedumpM');
INSERT INTO objects VALUES (null, 'cine', 'garbagedumpH');
INSERT INTO objects VALUES (null, 'tienda de souvenirs', 'garbagedumpM');
INSERT INTO objects VALUES (null, 'cárcel', 'garbagedumpM');
INSERT INTO objects VALUES (null, 'sala de conciertos', 'garbagedumpM');
INSERT INTO objects VALUES (null, 'galería de arte', 'garbagedumpM');
INSERT INTO objects VALUES (null, 'circo', 'garbagedumpH');
INSERT INTO objects VALUES (null, 'hospital psiquiátrico', 'garbagedumpH');
INSERT INTO objects VALUES (null, 'salón de clases', 'garbagedumpH');
INSERT INTO objects VALUES (null, 'basurero municipal', 'garbagedumpH');
INSERT INTO objects VALUES (null, 'parque de diversiones', 'garbagedumpH');
INSERT INTO objects VALUES (null, 'calabozo', 'garbagedumpH');
INSERT INTO objects VALUES (null, 'preparatoria', 'garbagedumpM');
INSERT INTO objects VALUES (null, 'baño público', 'garbagedumpH');
INSERT INTO objects VALUES (null, 'Home Depot', 'garbagedumpH');
INSERT INTO objects VALUES (null, 'supermercado', 'garbagedumpH');
INSERT INTO objects VALUES (null, 'farmacia', 'garbagedumpM');
INSERT INTO objects VALUES (null, 'antro', 'garbagedumpH');
INSERT INTO objects VALUES (null, 'burdel', 'garbagedumpH');
INSERT INTO objects VALUES (null, 'WalMart', 'garbagedumpH');
INSERT INTO objects VALUES (null, 'Oxxo', 'garbagedumpH');
INSERT INTO objects VALUES (null, 'gasolinera', 'garbagedumpM');

/* EQUIPOS FÚTBOL */ 

INSERT INTO objects VALUES (null, 'América', 'soccerteamH');
INSERT INTO objects VALUES (null, 'Real Madrid', 'soccerteamH');
INSERT INTO objects VALUES (null, 'Villareal', 'soccerteamH');
INSERT INTO objects VALUES (null, 'Atlas', 'soccerteamH');
INSERT INTO objects VALUES (null, 'Sevilla', 'soccerteamH');
INSERT INTO objects VALUES (null, 'Atlético de Madrid', 'soccerteamH');
INSERT INTO objects VALUES (null, 'Celta de Vigo', 'soccerteamH');
INSERT INTO objects VALUES (null, 'Manchester United', 'soccerteamH');
INSERT INTO objects VALUES (null, 'Manchester City', 'soccerteamH');
INSERT INTO objects VALUES (null, 'Liverpool', 'soccerteamH');
INSERT INTO objects VALUES (null, 'Chelsea', 'soccerteamH');
INSERT INTO objects VALUES (null, 'Arsenal', 'soccerteamH');
INSERT INTO objects VALUES (null, 'Paris Saint-Germain', 'soccerteamH');
INSERT INTO objects VALUES (null, 'Juventus', 'soccerteamH');
INSERT INTO objects VALUES (null, 'Tottenham', 'soccerteamH');
INSERT INTO objects VALUES (null, 'Bayern Munich', 'soccerteamH');



/* TEORIAS Y TEMAS INTELECTUALES */

INSERT INTO objects VALUES (null, 'teoría de la relatividad', 'theoryM');
INSERT INTO objects VALUES (null, 'gravedad', 'theoryM');
INSERT INTO objects VALUES (null, 'teoría del todo', 'theoryM');

INSERT INTO objects VALUES (null, '"El gobierno esconde vida extraterrestre"', 'consptheory');
INSERT INTO objects VALUES (null, '"Están entre nosotros"', 'consptheory');
INSERT INTO objects VALUES (null, '"El hombre no fue a la luna"', 'consptheory');
INSERT INTO objects VALUES (null, '"La tierra es plana"', 'consptheory');
INSERT INTO objects VALUES (null, '"Discutir en Internet está salvando a la humanidad"', 'consptheory');
INSERT INTO objects VALUES (null, '"SEND NUDES"', 'consptheory');
INSERT INTO objects VALUES (null, '"CR7 BRO"', 'consptheory');
INSERT INTO objects VALUES (null, '"No mires a la luna"', 'consptheory');

INSERT INTO objects VALUES (null, 'Euríbor', 'intellectualtopicH');
INSERT INTO objects VALUES (null, 'Marxismo', 'intellectualtopicH');

INSERT INTO objects VALUES (null, 'cromodinámica cuántica', 'intellectualtopicM');
INSERT INTO objects VALUES (null, 'teoría cuántica de campos', 'intellectualtopicM');


/* CONCEPTOS */

INSERT INTO objects VALUES (null, 'la inercia', 'concept');
INSERT INTO objects VALUES (null, 'Twitter', 'concept');
INSERT INTO objects VALUES (null, 'Wikipedia', 'concept');
INSERT INTO objects VALUES (null, 'Tumblr', 'concept');
INSERT INTO objects VALUES (null, 'el ajedrez', 'concept');
INSERT INTO objects VALUES (null, 'los agujeros', 'concept'); 
INSERT INTO objects VALUES (null, 'la iluminación', 'concept');
INSERT INTO objects VALUES (null, 'los clichés', 'concept');
INSERT INTO objects VALUES (null, 'la desigualdad de ingresos', 'concept');
INSERT INTO objects VALUES (null, 'el sistema financiero global', 'concept');
INSERT INTO objects VALUES (null, 'la corrupción', 'concept');
INSERT INTO objects VALUES (null, 'la mecánica quántica', 'concept');
INSERT INTO objects VALUES (null, 'las redes sociales', 'concept');
INSERT INTO objects VALUES (null, 'el asesinato de John F. Kennedy', 'concept');
INSERT INTO objects VALUES (null, 'el lago de los cisnes de Tchaikovsky', 'concept');
INSERT INTO objects VALUES (null, 'la revista Vogue', 'concept');
INSERT INTO objects VALUES (null, 'los musicales de Broadway', 'concept');
INSERT INTO objects VALUES (null, 'la adolescencia', 'concept');
INSERT INTO objects VALUES (null, 'la ironía', 'concept');
INSERT INTO objects VALUES (null, 'las matemáticas', 'concept');
INSERT INTO objects VALUES (null, 'la filosofía', 'concept');
INSERT INTO objects VALUES (null, 'la luz', 'concept');
INSERT INTO objects VALUES (null, 'la gravedad', 'concept');
INSERT INTO objects VALUES (null, 'la magia', 'concept');
INSERT INTO objects VALUES (null, 'la amistad', 'concept');
INSERT INTO objects VALUES (null, 'las palabras', 'concept');
INSERT INTO objects VALUES (null, 'la música', 'concept');
INSERT INTO objects VALUES (null, 'la burguesía', 'concept');
INSERT INTO objects VALUES (null, 'la clase obrera', 'concept');
INSERT INTO objects VALUES (null, 'la heterosexualidad', 'concept');
INSERT INTO objects VALUES (null, 'las coincidencias', 'concept');
INSERT INTO objects VALUES (null, 'la democracia', 'concept');
INSERT INTO objects VALUES (null, 'la velocidad de la luz', 'concept');
INSERT INTO objects VALUES (null, 'la constante de Euler Mascheron', 'concept');
INSERT INTO objects VALUES (null, 'Star Wars', 'concept');
INSERT INTO objects VALUES (null, 'Minecraft', 'concept');
INSERT INTO objects VALUES (null, 'HalfLife 3', 'concept');
INSERT INTO objects VALUES (null, 'Google', 'concept');
INSERT INTO objects VALUES (null, 'BuzzFeed', 'concept');
INSERT INTO objects VALUES (null, 'los "Millenials"', 'concept');
INSERT INTO objects VALUES (null, 'Airbnb', 'concept');
INSERT INTO objects VALUES (null, 'Uber', 'concept');
INSERT INTO objects VALUES (null, 'la fama de YouTube', 'concept');
INSERT INTO objects VALUES (null, 'las personas que se llaman Ricardo', 'concept');
INSERT INTO objects VALUES (null, 'la Revolución Francesa', 'concept');
INSERT INTO objects VALUES (null, 'la inseminación artificial', 'concept');
INSERT INTO objects VALUES (null, 'la eyaculación precoz', 'concept');
INSERT INTO objects VALUES (null, 'Britney Spears', 'concept');
INSERT INTO objects VALUES (null, 'las presentaciones de PowerPoint', 'concept');
INSERT INTO objects VALUES (null, 'la industria de la comida rápida', 'concept');
INSERT INTO objects VALUES (null, 'la existencia', 'concept');
INSERT INTO objects VALUES (null, 'la educación superior', 'concept');
INSERT INTO objects VALUES (null, 'la guerra de Vietnam', 'concept');
INSERT INTO objects VALUES (null, 'los hipsters', 'concept');
INSERT INTO objects VALUES (null, 'los memes', 'concept');
INSERT INTO objects VALUES (null, 'las metáforas', 'concept');
INSERT INTO objects VALUES (null, 'las paradojas', 'concept');
INSERT INTO objects VALUES (null, 'el asesinato de Luis Donaldo Colosio', 'concept');
INSERT INTO objects VALUES (null, 'Santa Claus', 'concept');
INSERT INTO objects VALUES (null, 'la Mafia del Poder', 'concept');
INSERT INTO objects VALUES (null, 'la Programación Orientada a Objetos', 'concept');
INSERT INTO objects VALUES (null, 'la democracia', 'concept');
INSERT INTO objects VALUES (null, 'los Videoblogs', 'concept');
INSERT INTO objects VALUES (null, 'los Reality Shows', 'concept');
INSERT INTO objects VALUES (null, 'las Kardashians', 'concept');
INSERT INTO objects VALUES (null, 'la Pantalla Azul de la Muerte', 'concept');
INSERT INTO objects VALUES (null, 'el Calentamiento Global', 'concept');
INSERT INTO objects VALUES (null, 'la Contracultura', 'concept');
INSERT INTO objects VALUES (null, 'las playas nudistas', 'concept');
INSERT INTO objects VALUES (null, 'la panacea', 'concept');
INSERT INTO objects VALUES (null, 'la panacea', 'concept');
INSERT INTO objects VALUES (null, 'la Cuarta Transformación de México', 'concept');
INSERT INTO objects VALUES (null, 'el Santo Grial', 'concept');
INSERT INTO objects VALUES (null, 'la Piedra Filosofal', 'concept');

INSERT INTO objects VALUES (null, 'La inercia está', 'conceptaux');
INSERT INTO objects VALUES (null, 'Twitter está', 'conceptaux');
INSERT INTO objects VALUES (null, 'Wikipedia está', 'conceptaux');
INSERT INTO objects VALUES (null, 'Tumblr está', 'conceptaux');
INSERT INTO objects VALUES (null, 'La iluminación está', 'conceptaux');
INSERT INTO objects VALUES (null, 'La desigualdad de ingresos está', 'conceptaux');
INSERT INTO objects VALUES (null, 'La corrupción está', 'conceptaux');
INSERT INTO objects VALUES (null, 'La mecánica quántica está', 'conceptaux');
INSERT INTO objects VALUES (null, 'La revista Vogue está', 'conceptaux');
INSERT INTO objects VALUES (null, 'La ironía está está', 'conceptaux');
INSERT INTO objects VALUES (null, 'La filosofía está', 'conceptaux');
INSERT INTO objects VALUES (null, 'La luz está', 'conceptaux');
INSERT INTO objects VALUES (null, 'La gravedad está', 'conceptaux');
INSERT INTO objects VALUES (null, 'La magia está', 'conceptaux');
INSERT INTO objects VALUES (null, 'La amistad está', 'conceptaux');
INSERT INTO objects VALUES (null, 'La palabra "bucólico" está', 'conceptaux');
INSERT INTO objects VALUES (null, 'La música está', 'conceptaux');
INSERT INTO objects VALUES (null, 'La burguesía está', 'conceptaux');
INSERT INTO objects VALUES (null, 'La clase obrera está', 'conceptaux');
INSERT INTO objects VALUES (null, 'La heterosexualidad está', 'conceptaux');
INSERT INTO objects VALUES (null, 'La democracia está', 'conceptaux');
INSERT INTO objects VALUES (null, 'La velocidad de la luz está', 'conceptaux');
INSERT INTO objects VALUES (null, 'La constante de Euler Mascheron está', 'conceptaux');
INSERT INTO objects VALUES (null, 'Star Wars está', 'conceptaux');
INSERT INTO objects VALUES (null, 'Minecraft está', 'conceptaux');
INSERT INTO objects VALUES (null, 'HalfLife 3 está', 'conceptaux');
INSERT INTO objects VALUES (null, 'Google está', 'conceptaux');
INSERT INTO objects VALUES (null, 'BuzzFeed está', 'conceptaux');
INSERT INTO objects VALUES (null, 'La fama de YouTube está', 'conceptaux');
INSERT INTO objects VALUES (null, 'La Revolución Francesa está', 'conceptaux');
INSERT INTO objects VALUES (null, 'La inseminación artificial está', 'conceptaux');
INSERT INTO objects VALUES (null, 'La eyaculación precoz está', 'conceptaux');
INSERT INTO objects VALUES (null, 'Britney Spears está', 'conceptaux');
INSERT INTO objects VALUES (null, 'La industria de la comida rápida está', 'conceptaux');
INSERT INTO objects VALUES (null, 'La existencia está', 'conceptaux');
INSERT INTO objects VALUES (null, 'La educación superior está', 'conceptaux');
INSERT INTO objects VALUES (null, 'La guerra de Vietnam está', 'conceptaux');
INSERT INTO objects VALUES (null, 'La Mafia del Poder está', 'conceptaux');

INSERT INTO objects VALUES (null, '$ob-concept', 'love');
INSERT INTO objects VALUES (null, 'el romance', 'love');
INSERT INTO objects VALUES (null, 'el amor', 'love');
INSERT INTO objects VALUES (null, 'la inteligencia artificial', 'love');
INSERT INTO objects VALUES (null, 'la estupidez', 'love');
INSERT INTO objects VALUES (null, 'la danza tradicional Mexicana', 'love');
INSERT INTO objects VALUES (null, 'la música electrónica', 'love');
INSERT INTO objects VALUES (null, 'la felicidad', 'love');
INSERT INTO objects VALUES (null, 'el sexo', 'love');
INSERT INTO objects VALUES (null, 'la democracia', 'love');
INSERT INTO objects VALUES (null, 'el transporte público', 'love');
INSERT INTO objects VALUES (null, 'la economía', 'love');
INSERT INTO objects VALUES (null, 'el Capitalismo', 'love');
INSERT INTO objects VALUES (null, 'la guerra', 'love');
INSERT INTO objects VALUES (null, 'la amistad', 'love');
INSERT INTO objects VALUES (null, 'la LXIV Legislatura del Congreso de la Unión de México ', 'love');
INSERT INTO objects VALUES (null, 'el sistema de educación pública', 'love');
INSERT INTO objects VALUES (null, 'los videjuegos', 'love');
INSERT INTO objects VALUES (null, 'la seguridad social', 'love');
INSERT INTO objects VALUES (null, 'las redes sociales', 'love');
INSERT INTO objects VALUES (null, 'Facebook', 'love');

INSERT INTO objects VALUES (null, 'nuestras vidas', 'economy');
INSERT INTO objects VALUES (null, 'todo', 'economy');
INSERT INTO objects VALUES (null, 'la sociedad', 'economy');
INSERT INTO objects VALUES (null, 'la economía', 'economy');
INSERT INTO objects VALUES (null, 'las estrellas', 'economy');
INSERT INTO objects VALUES (null, 'nuestro destino', 'economy');
INSERT INTO objects VALUES (null, '$ob-space', 'economy');
INSERT INTO objects VALUES (null, 'el capitalismo', 'economy');
INSERT INTO objects VALUES (null, 'el gobierno', 'economy');
INSERT INTO objects VALUES (null, 'los medios de comunicación', 'economy');
INSERT INTO objects VALUES (null, 'el mundo', 'economy');
INSERT INTO objects VALUES (null, 'al presidente de Estados Unidos', 'economy');
INSERT INTO objects VALUES (null, 'al presidente de México', 'economy');
INSERT INTO objects VALUES (null, 'el lenguaje', 'economy');
INSERT INTO objects VALUES (null, 'las matemáticas', 'economy');
INSERT INTO objects VALUES (null, 'la generación de números aleatorios', 'economy');
INSERT INTO objects VALUES (null, 'Facebook', 'economy');
INSERT INTO objects VALUES (null, 'Twitter', 'economy');
INSERT INTO objects VALUES (null, 'Google', 'economy');
INSERT INTO objects VALUES (null, 'la economía de $ob-locality', 'economy');


/* BEBIDAS */

INSERT INTO objects VALUES (null, 'agua', 'drinkM');
INSERT INTO objects VALUES (null, 'leche', 'drinkM');
INSERT INTO objects VALUES (null, 'agua de horchata', 'drinkM');
INSERT INTO objects VALUES (null, 'agua de jamaica', 'drinkM');
INSERT INTO objects VALUES (null, 'CocaCola', 'drinkM');
INSERT INTO objects VALUES (null, 'Kahlúa', 'drinkM');
INSERT INTO objects VALUES (null, 'Pepsi', 'drinkM');

INSERT INTO objects VALUES (null, 'café', 'drinkH');
INSERT INTO objects VALUES (null, 'té', 'drinkH');
INSERT INTO objects VALUES (null, 'ponche de huevo', 'drinkH');
INSERT INTO objects VALUES (null, 'Red Bull', 'drinkH');
INSERT INTO objects VALUES (null, 'Maltín Polar', 'drinkH');
INSERT INTO objects VALUES (null, 'mate', 'drinkH');
INSERT INTO objects VALUES (null, 'rompope', 'drinkH');
INSERT INTO objects VALUES (null, 'aguardiente', 'drinkH');
INSERT INTO objects VALUES (null, 'anís', 'drinkH');
INSERT INTO objects VALUES (null, 'Xtabentún', 'drinkH');
INSERT INTO objects VALUES (null, 'Jack Daniels', 'drinkH');
INSERT INTO objects VALUES (null, 'Drambuie', 'drinkH');
INSERT INTO objects VALUES (null, 'whisky', 'drinkH');

INSERT INTO objects VALUES (null, 'chardonnay', 'wine');
INSERT INTO objects VALUES (null, 'Château Pétrus', 'wine');
INSERT INTO objects VALUES (null, 'vino de shiraz', 'wine');
INSERT INTO objects VALUES (null, 'cerveza de jengibre', 'wine');
INSERT INTO objects VALUES (null, 'sangiovese', 'wine');
INSERT INTO objects VALUES (null, 'malbec', 'wine');
INSERT INTO objects VALUES (null, 'champagne', 'wine');
INSERT INTO objects VALUES (null, 'coñac', 'wine');
INSERT INTO objects VALUES (null, 'pinot noir', 'wine');
INSERT INTO objects VALUES (null, 'cabernet sauvignon', 'wine');
INSERT INTO objects VALUES (null, 'vino blanco', 'wine');
INSERT INTO objects VALUES (null, 'vino tinto', 'wine');

INSERT INTO objects VALUES (null, 'chocolate', 'sabor'); 
INSERT INTO objects VALUES (null, 'fresa', 'sabor'); 
INSERT INTO objects VALUES (null, 'vainilla', 'sabor'); 

INSERT INTO objects VALUES (null, 'miel', 'liquid');
INSERT INTO objects VALUES (null, 'jugo de naranja', 'liquid');
INSERT INTO objects VALUES (null, 'melaza', 'liquid');
INSERT INTO objects VALUES (null, 'miel de maple', 'liquid');
INSERT INTO objects VALUES (null, 'arena movediza', 'liquid');
INSERT INTO objects VALUES (null, 'arena', 'liquid');
INSERT INTO objects VALUES (null, 'agua hirviendo', 'liquid');
INSERT INTO objects VALUES (null, 'café negro', 'liquid');
INSERT INTO objects VALUES (null, 'té verde', 'liquid');
INSERT INTO objects VALUES (null, 'aceite de olvia', 'liquid');
INSERT INTO objects VALUES (null, 'crema', 'liquid');
INSERT INTO objects VALUES (null, 'leche', 'liquid');
INSERT INTO objects VALUES (null, 'leche de soya', 'liquid');
INSERT INTO objects VALUES (null, 'ginebra', 'liquid');
INSERT INTO objects VALUES (null, 'vodka', 'liquid');
INSERT INTO objects VALUES (null, 'tequila', 'liquid');
INSERT INTO objects VALUES (null, 'bloqueador solar', 'liquid');
INSERT INTO objects VALUES (null, 'vinagre', 'liquid');
INSERT INTO objects VALUES (null, 'yoghurt', 'liquid');
INSERT INTO objects VALUES (null, 'helado', 'liquid');
INSERT INTO objects VALUES (null, 'vino tinto', 'liquid');
INSERT INTO objects VALUES (null, 'vino blanco', 'liquid');
INSERT INTO objects VALUES (null, 'brandy', 'liquid');
INSERT INTO objects VALUES (null, 'Campari', 'liquid');
INSERT INTO objects VALUES (null, 'Clamato', 'liquid');
INSERT INTO objects VALUES (null, 'jugo de arándano', 'liquid');
INSERT INTO objects VALUES (null, 'jugo de manzana', 'liquid');
INSERT INTO objects VALUES (null, 'cerveza', 'liquid');
INSERT INTO objects VALUES (null, 'alcohol', 'liquid');
INSERT INTO objects VALUES (null, 'jugo de limón', 'liquid');
INSERT INTO objects VALUES (null, 'salsa de soya', 'liquid');
INSERT INTO objects VALUES (null, 'orina', 'liquid');
INSERT INTO objects VALUES (null, 'ácido sulfúrico', 'liquid');
INSERT INTO objects VALUES (null, 'sangre', 'liquid');
INSERT INTO objects VALUES (null, 'saliva', 'liquid');
INSERT INTO objects VALUES (null, 'semen', 'liquid');
INSERT INTO objects VALUES (null, 'lágrimas', 'liquid');
INSERT INTO objects VALUES (null, 'aciete de motor', 'liquid');
INSERT INTO objects VALUES (null, 'CocaCola', 'liquid');

/* DULCES */

INSERT INTO objects VALUES (null, 'mazapanes', 'dulceP');
INSERT INTO objects VALUES (null, 'pulparindos', 'dulceP');
INSERT INTO objects VALUES (null, 'pelones pelo rico', 'dulceP');
INSERT INTO objects VALUES (null, 'sugus de piña', 'dulceP');
INSERT INTO objects VALUES (null, 'bubulubus', 'dulceP');
INSERT INTO objects VALUES (null, 'duvalines', 'dulceP');
INSERT INTO objects VALUES (null, 'doritos', 'dulceP');
INSERT INTO objects VALUES (null, 'cheetos', 'dulceP');

INSERT INTO objects VALUES (null, 'mazapan', 'dulceH');
INSERT INTO objects VALUES (null, 'duvalín', 'dulceH');
INSERT INTO objects VALUES (null, 'pulparindo', 'dulceH');
INSERT INTO objects VALUES (null, 'pelón pelo rico', 'dulceH');
INSERT INTO objects VALUES (null, 'sugus de piña', 'dulceH');
INSERT INTO objects VALUES (null, 'bubulubu', 'dulceH');
INSERT INTO objects VALUES (null, 'paleta payaso', 'dulceM');
INSERT INTO objects VALUES (null, 'pica fresa', 'dulceM');


/* ALCOHOLES */

INSERT INTO objects VALUES (null, 'mezcal', 'alco');
INSERT INTO objects VALUES (null, 'tequila', 'alco');
INSERT INTO objects VALUES (null, 'arehucas', 'alco');
INSERT INTO objects VALUES (null, 'tonayán', 'alco');
INSERT INTO objects VALUES (null, 'ginebra', 'alco');
INSERT INTO objects VALUES (null, 'ron', 'alco');
INSERT INTO objects VALUES (null, 'sidra', 'alco');
INSERT INTO objects VALUES (null, 'Jägermeister', 'alco');
INSERT INTO objects VALUES (null, 'pacharán', 'alco');
INSERT INTO objects VALUES (null, 'cerveza', 'alco');
INSERT INTO objects VALUES (null, 'cerveza artesanal', 'alco');
INSERT INTO objects VALUES (null, 'pulque', 'alco');
INSERT INTO objects VALUES (null, 'pulque casero', 'alco');
INSERT INTO objects VALUES (null, 'vermú', 'alco');
INSERT INTO objects VALUES (null, 'calimocho', 'alco');
INSERT INTO objects VALUES (null, 'whisky', 'alco');

INSERT INTO objects VALUES (null, 'un $ob-bodypartH gigante', 'brainH');
INSERT INTO objects VALUES (null, 'un $ob-treeH gigante', 'brainH');
INSERT INTO objects VALUES (null, 'un $ob-plantH gigante', 'brainH');
INSERT INTO objects VALUES (null, 'un cerebro gigante', 'brainH');
INSERT INTO objects VALUES (null, 'un dinosaurio', 'brainH');
INSERT INTO objects VALUES (null, 'un $ob-structureH gigante', 'brainH');
INSERT INTO objects VALUES (null, 'un $ob-animalH gigantesco', 'brainH');
INSERT INTO objects VALUES (null, 'un $ob-oddlandH descomunal', 'brainH');
INSERT INTO objects VALUES (null, 'un $ob-gemH desproporcionado', 'brainH');
INSERT INTO objects VALUES (null, 'un $ob-thingH gigantesco', 'brainH');
INSERT INTO objects VALUES (null, 'un $ob-shipH', 'brainH');
INSERT INTO objects VALUES (null, 'una $ob-bodypartM gigante', 'brainH');
INSERT INTO objects VALUES (null, 'una $ob-treeM gigante', 'brainH');
INSERT INTO objects VALUES (null, 'una $ob-plantM gigante', 'brainH');
INSERT INTO objects VALUES (null, 'una $ob-structureM gigante', 'brainH');
INSERT INTO objects VALUES (null, 'una $ob-animalM gigantesca', 'brainH');
INSERT INTO objects VALUES (null, 'una $ob-oddlandH descomunal', 'brainH');
INSERT INTO objects VALUES (null, 'una $ob-thingM gigantesca', 'brainH');

INSERT INTO objects VALUES (null, 'barco', 'shipH');
INSERT INTO objects VALUES (null, 'bote', 'shipH');
INSERT INTO objects VALUES (null, 'crucero', 'shipH');
INSERT INTO objects VALUES (null, 'barco transatlántico', 'shipH');
INSERT INTO objects VALUES (null, 'buque de guerra', 'shipH');
INSERT INTO objects VALUES (null, 'yate', 'shipH');
INSERT INTO objects VALUES (null, 'submarino', 'shipH');

INSERT INTO objects VALUES (null, 'un ruiseñor', 'meow');
INSERT INTO objects VALUES (null, 'un pájaro', 'meow');
INSERT INTO objects VALUES (null, 'una orquesta', 'meow');
INSERT INTO objects VALUES (null, 'una sinfonía', 'meow');
INSERT INTO objects VALUES (null, 'la alarma sísmica', 'meow');
INSERT INTO objects VALUES (null, 'rugidos de león', 'meow');
INSERT INTO objects VALUES (null, 'canciones de Luis Miguel', 'meow');
INSERT INTO objects VALUES (null, 'maullidos de gato', 'meow');
INSERT INTO objects VALUES (null, 'perros ladrando', 'meow');
INSERT INTO objects VALUES (null, 'canciones de blues', 'meow');
INSERT INTO objects VALUES (null, 'una banda de jazz', 'meow');
INSERT INTO objects VALUES (null, 'un piano', 'meow');
INSERT INTO objects VALUES (null, 'un violonchelo', 'meow');
INSERT INTO objects VALUES (null, 'un xilófono', 'meow');
INSERT INTO objects VALUES (null, 'una flauta', 'meow');
INSERT INTO objects VALUES (null, 'un clarinete', 'meow');
INSERT INTO objects VALUES (null, 'un oboe', 'meow');
INSERT INTO objects VALUES (null, 'una trumpeta', 'meow');
INSERT INTO objects VALUES (null, 'un cuerno francés', 'meow');


/* PARTES DEL CUERPO */

INSERT INTO objects VALUES (null, 'riñon', 'bodypartH');
INSERT INTO objects VALUES (null, 'hígado', 'bodypartH');
INSERT INTO objects VALUES (null, 'corazón', 'bodypartH');
INSERT INTO objects VALUES (null, 'ojo', 'bodypartH');
INSERT INTO objects VALUES (null, 'ano', 'bodypartH');
INSERT INTO objects VALUES (null, 'oreja', 'bodypartM');
INSERT INTO objects VALUES (null, 'cerebro', 'bodypartH');
INSERT INTO objects VALUES (null, 'cráneo', 'bodypartH');
INSERT INTO objects VALUES (null, 'costilla', 'bodypartM');
INSERT INTO objects VALUES (null, 'dedo pulgar', 'bodypartH');
INSERT INTO objects VALUES (null, 'vejiga', 'bodypartM');
INSERT INTO objects VALUES (null, 'testículo', 'bodypartH');
INSERT INTO objects VALUES (null, 'rodilla', 'bodypartM');
INSERT INTO objects VALUES (null, 'intestino', 'bodypartH');
INSERT INTO objects VALUES (null, 'muñeca', 'bodypartM');
INSERT INTO objects VALUES (null, 'fosa nasal', 'bodypartM');
INSERT INTO objects VALUES (null, 'boca', 'bodypartM');
INSERT INTO objects VALUES (null, 'diente', 'bodypartH');
INSERT INTO objects VALUES (null, 'nudillo', 'bodypartH');
INSERT INTO objects VALUES (null, 'seno', 'bodypartH');
INSERT INTO objects VALUES (null, 'pezón', 'bodypartH');
INSERT INTO objects VALUES (null, 'sobaco', 'bodypartH');
INSERT INTO objects VALUES (null, 'estómago', 'bodypartH');
INSERT INTO objects VALUES (null, 'cuello', 'bodypartH');
INSERT INTO objects VALUES (null, 'codo', 'bodypartH');
INSERT INTO objects VALUES (null, 'párpado', 'bodypartH');
INSERT INTO objects VALUES (null, 'tobillo', 'bodypartH');
INSERT INTO objects VALUES (null, 'ingle', 'bodypartM');
INSERT INTO objects VALUES (null, 'hombro', 'bodypartH');
INSERT INTO objects VALUES (null, 'ceja', 'bodypartM');

INSERT INTO objects VALUES (null, 'riñones', 'bodypartPH');
INSERT INTO objects VALUES (null, 'hígados', 'bodypartPH');
INSERT INTO objects VALUES (null, 'corazónes', 'bodypartPH');
INSERT INTO objects VALUES (null, 'ojos', 'bodypartPH');
INSERT INTO objects VALUES (null, 'anos', 'bodypartPH');
INSERT INTO objects VALUES (null, 'orejas', 'bodypartPM');
INSERT INTO objects VALUES (null, 'cerebros', 'bodypartPH');
INSERT INTO objects VALUES (null, 'cráneos', 'bodypartPH');
INSERT INTO objects VALUES (null, 'dedos pulgares', 'bodypartPH');
INSERT INTO objects VALUES (null, 'vejigas', 'bodypartPM');
INSERT INTO objects VALUES (null, 'testículos', 'bodypartPH');
INSERT INTO objects VALUES (null, 'rodillas', 'bodypartPM');
INSERT INTO objects VALUES (null, 'intestinos', 'bodypartPH');
INSERT INTO objects VALUES (null, 'muñecas', 'bodypartPM');
INSERT INTO objects VALUES (null, 'fosas nasales', 'bodypartPM');
INSERT INTO objects VALUES (null, 'bocas', 'bodypartPM');
INSERT INTO objects VALUES (null, 'senos', 'bodypartPH');
INSERT INTO objects VALUES (null, 'pezónes', 'bodypartPH');
INSERT INTO objects VALUES (null, 'sobacos', 'bodypartPH');
INSERT INTO objects VALUES (null, 'estómagos', 'bodypartPH');
INSERT INTO objects VALUES (null, 'cuellos', 'bodypartPH');
INSERT INTO objects VALUES (null, 'codos', 'bodypartPH');
INSERT INTO objects VALUES (null, 'párpados', 'bodypartPH');
INSERT INTO objects VALUES (null, 'tobillos', 'bodypartPH');
INSERT INTO objects VALUES (null, 'ingles', 'bodypartPM');
INSERT INTO objects VALUES (null, 'hombros', 'bodypartPH');
INSERT INTO objects VALUES (null, 'cejas', 'bodypartPM');

INSERT INTO objects VALUES (null, 'iglesia', 'churM');
INSERT INTO objects VALUES (null, 'catedral', 'churM');
INSERT INTO objects VALUES (null, 'basílica', 'churM');
INSERT INTO objects VALUES (null, 'cripta', 'churM');
INSERT INTO objects VALUES (null, 'capilla', 'churM');

INSERT INTO objects VALUES (null, 'cráneo', 'skull');
INSERT INTO objects VALUES (null, 'cabeza', 'skull');
INSERT INTO objects VALUES (null, 'cerebreo', 'skull');
INSERT INTO objects VALUES (null, 'hipotálamo', 'skull');
INSERT INTO objects VALUES (null, 'lóbulo frontal', 'skull');
INSERT INTO objects VALUES (null, 'lóbulo parietal', 'skull');

INSERT INTO objects VALUES (null, 'en el bautizo', 'ceremony');
INSERT INTO objects VALUES (null, 'en la boda', 'ceremony');
INSERT INTO objects VALUES (null, 'en la coronación', 'ceremony');

INSERT INTO objects VALUES (null, 'pesos', 'currency');
INSERT INTO objects VALUES (null, 'dólares', 'currency');
INSERT INTO objects VALUES (null, 'euros', 'currency');
INSERT INTO objects VALUES (null, 'pesos argentinos', 'currency');
INSERT INTO objects VALUES (null, 'rublos bielorrusos', 'currency');
INSERT INTO objects VALUES (null, 'bitcoins', 'currency');
INSERT INTO objects VALUES (null, 'coronas checas', 'currency');
INSERT INTO objects VALUES (null, 'quetzales', 'currency');

INSERT INTO objects VALUES (null, 'una partida de Monopoly', 'game');
INSERT INTO objects VALUES (null, 'una partida de Scrabble', 'game');
INSERT INTO objects VALUES (null, 'un juego de gato', 'game');
INSERT INTO objects VALUES (null, 'un juego de canicas', 'game');
INSERT INTO objects VALUES (null, 'un juego de dominos', 'game');
INSERT INTO objects VALUES (null, 'una partida de póker', 'game');
INSERT INTO objects VALUES (null, 'un juego de cartas', 'game');
INSERT INTO objects VALUES (null, 'una partida de ajedrez', 'game');
INSERT INTO objects VALUES (null, 'un juego de piedra, papel o tijeras', 'game');

INSERT INTO objects VALUES (null, 'cara', 'face');
INSERT INTO objects VALUES (null, 'cuerpo', 'face');
INSERT INTO objects VALUES (null, 'pecho', 'face');
INSERT INTO objects VALUES (null, 'frente', 'face');
INSERT INTO objects VALUES (null, 'piel', 'face');

INSERT INTO objects VALUES (null, 'lago', 'lakeH');
INSERT INTO objects VALUES (null, 'alberca', 'lakeM');
INSERT INTO objects VALUES (null, 'estanque', 'lakeH');
INSERT INTO objects VALUES (null, 'laguna', 'lakeM');
INSERT INTO objects VALUES (null, 'río', 'lakeH');
INSERT INTO objects VALUES (null, 'mar', 'lakeH');
INSERT INTO objects VALUES (null, 'océano', 'lakeH');

INSERT INTO objects VALUES (null, 'primera clase', 'cla');
INSERT INTO objects VALUES (null, 'clase turista', 'cla');
INSERT INTO objects VALUES (null, 'business', 'cla');

INSERT INTO objects VALUES (null, 'rectangular', 'shape');
INSERT INTO objects VALUES (null, 'circular', 'shape');
INSERT INTO objects VALUES (null, 'cuadrado', 'shape');
INSERT INTO objects VALUES (null, 'bidimensional', 'shape');
INSERT INTO objects VALUES (null, 'unidimensional', 'shape');
INSERT INTO objects VALUES (null, 'tetradimensional', 'shape');

INSERT INTO objects VALUES (null, 'boina', 'clothM');
INSERT INTO objects VALUES (null, 'casco', 'clothH');
INSERT INTO objects VALUES (null, 'vestido', 'clothH');
INSERT INTO objects VALUES (null, 'vestido de baile', 'clothH');
INSERT INTO objects VALUES (null, 'cinturón', 'clothH');
INSERT INTO objects VALUES (null, 'moño', 'clothH');
INSERT INTO objects VALUES (null, 'sostén', 'clothH');
INSERT INTO objects VALUES (null, 'corpiño', 'clothH');
INSERT INTO objects VALUES (null, 'traje de baño', 'clothH');
INSERT INTO objects VALUES (null, 'bikini', 'clothH');
INSERT INTO objects VALUES (null, 'tuxedo', 'clothH');
INSERT INTO objects VALUES (null, 'calcetín', 'clothH');

INSERT INTO objects VALUES (null, 'un tablero de ajedrez', 'flat');
INSERT INTO objects VALUES (null, 'un plato de cena', 'flat');
INSERT INTO objects VALUES (null, 'un domino', 'flat');
INSERT INTO objects VALUES (null, 'una moneda', 'flat');
INSERT INTO objects VALUES (null, 'una servilleta', 'flatM');
INSERT INTO objects VALUES (null, 'una mota de polvo', 'flatM');
INSERT INTO objects VALUES (null, 'un pétalo de rosa', 'flatH');
INSERT INTO objects VALUES (null, 'un $ob-gemH enorme', 'flat');
INSERT INTO objects VALUES (null, 'una papita frita', 'flat');
INSERT INTO objects VALUES (null, 'una cheeto', 'flat');
INSERT INTO objects VALUES (null, 'un billete de cincuenta pesos', 'flat');
INSERT INTO objects VALUES (null, 'una tarjeta de crédito', 'flat');
INSERT INTO objects VALUES (null, 'una hoja de papel', 'flat');
INSERT INTO objects VALUES (null, 'un pedazo de papel', 'flat');

INSERT INTO objects VALUES (null, 'la edad media', 'thepast');
INSERT INTO objects VALUES (null, 'la segunda guerra mundial', 'thepast');
INSERT INTO objects VALUES (null, 'el centro de la tierra', 'thepast');
INSERT INTO objects VALUES (null, 'tu mente', 'thepast');
INSERT INTO objects VALUES (null, 'la Luna', 'thepast');
INSERT INTO objects VALUES (null, 'el Sol', 'thepast');
INSERT INTO objects VALUES (null, 'la Edad de Piedra', 'thepast');
INSERT INTO objects VALUES (null, 'la Edad de Bronce', 'thepast');
INSERT INTO objects VALUES (null, 'el fin del mundo', 'thepast');

INSERT INTO objects VALUES (null, '$ob-eaters', 'vari');
INSERT INTO objects VALUES (null, '$ob-thingP', 'vari');
INSERT INTO objects VALUES (null, '$ob-animalPH', 'vari');
INSERT INTO objects VALUES (null, '$ob-stuff', 'vari');

INSERT INTO objects VALUES (null, 'lo que tú corazón más desea', 'heartdesi');
INSERT INTO objects VALUES (null, 'tu verdadero amor', 'heartdesi');
INSERT INTO objects VALUES (null, 'el singificado de la vida', 'heartdesi');
INSERT INTO objects VALUES (null, 'una $ob-universeM', 'heartdesi');
INSERT INTO objects VALUES (null, 'la respuesta', 'heartdesi');
INSERT INTO objects VALUES (null, 'lo que llevas buscando todo este tiempo', 'heartdesi');

INSERT INTO objects VALUES (null, 'la Selección de Fútbol de México', 'natTeam');
INSERT INTO objects VALUES (null, 'la Selección de Fútbol de Perú', 'natTeam');
INSERT INTO objects VALUES (null, 'la Selección de Fútbol de Colombia', 'natTeam');
INSERT INTO objects VALUES (null, 'la Selección de Fútbol de Egipto', 'natTeam');
INSERT INTO objects VALUES (null, 'la Selección de Fútbol de Arabia Saudita', 'natTeam');
INSERT INTO objects VALUES (null, 'la Selección de Fútbol de Costa Rica', 'natTeam');
INSERT INTO objects VALUES (null, 'la Selección de Fútbol de Ecuador', 'natTeam');
INSERT INTO objects VALUES (null, 'la Selección de Fútbol de Australia', 'natTeam');
INSERT INTO objects VALUES (null, 'la Selección de Fútbol de Nueva Zelanda', 'natTeam');
INSERT INTO objects VALUES (null, 'la Selección de Fútbol de Nigeria', 'natTeam');
INSERT INTO objects VALUES (null, 'la Selección de Fútbol de Islandia', 'natTeam');
INSERT INTO objects VALUES (null, 'la Selección de Fútbol de Senegal', 'natTeam');

INSERT INTO objects VALUES (null, 'la Copa Mundial de la FIFA Rusia 2018', 'worldcup');
INSERT INTO objects VALUES (null, 'la Copa Mundial de la FIFA Brasil 2014', 'worldcup');
INSERT INTO objects VALUES (null, 'la Copa Mundial de la FIFA Sudáfrica 2010', 'worldcup');
INSERT INTO objects VALUES (null, 'la Copa Mundial de la FIFA Alemania 2006', 'worldcup');

INSERT INTO objects VALUES (null, '$ob-worldcup con un cono jugando como $ob-soccerPosition', 'worldEv');
INSERT INTO objects VALUES (null, '$ob-worldcup con un $ob-extinctanimalH jugando como $ob-soccerPosition', 'worldEv');
INSERT INTO objects VALUES (null, '$ob-worldcup con un cono jugando en la zona catorce', 'worldEv');

INSERT INTO objects VALUES (null, 'media punta', 'soccerPosition');
INSERT INTO objects VALUES (null, 'enganche', 'soccerPosition');
INSERT INTO objects VALUES (null, 'extremo izquierdo', 'soccerPosition');
INSERT INTO objects VALUES (null, 'extremo derecho', 'soccerPosition');
INSERT INTO objects VALUES (null, 'defensa central', 'soccerPosition');

INSERT INTO objects VALUES (null, 'la Selección de Fútbol de México', 'natTeamtwo');
INSERT INTO objects VALUES (null, 'el quinto partido', 'worldEvtwo');

INSERT INTO objects VALUES (null, 'el New York Times', 'newspaper');
INSERT INTO objects VALUES (null, 'the Guardian', 'newspaper');
INSERT INTO objects VALUES (null, 'el Wall Street Journal', 'newspaper');
INSERT INTO objects VALUES (null, 'the Daily Mail', 'newspaper');
INSERT INTO objects VALUES (null, 'BuzzFeed', 'newspaper');
INSERT INTO objects VALUES (null, 'el Reforma', 'newspaper');
INSERT INTO objects VALUES (null, 'el Universal', 'newspaper');
INSERT INTO objects VALUES (null, 'la Jornada', 'newspaper');
INSERT INTO objects VALUES (null, 'el País', 'newspaper');

INSERT INTO objects VALUES (null, 'el desorden obsesivo compulsivo', 'ill');
INSERT INTO objects VALUES (null, 'el déficit de atención', 'ill');
INSERT INTO objects VALUES (null, 'la depresión', 'ill');
INSERT INTO objects VALUES (null, 'el tinnitus', 'ill');
INSERT INTO objects VALUES (null, 'la disfunción eréctil', 'ill');
INSERT INTO objects VALUES (null, 'la diabetes', 'ill');
INSERT INTO objects VALUES (null, 'acné', 'ill');

INSERT INTO objects VALUES (null, 'desorden obsesivo compulsivo', 'illtwo');
INSERT INTO objects VALUES (null, 'déficit de atención', 'illtwo');
INSERT INTO objects VALUES (null, 'depresión', 'illtwo');
INSERT INTO objects VALUES (null, 'tinnitus', 'illtwo');
INSERT INTO objects VALUES (null, 'disfunción eréctil', 'illtwo');
INSERT INTO objects VALUES (null, 'diabetes', 'illtwo');
INSERT INTO objects VALUES (null, 'acné', 'illtwo');
