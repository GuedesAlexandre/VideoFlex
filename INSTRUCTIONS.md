# Vidéo Flex
VidéoFlex est une plateforme en ligne permettant de regarder des films et séries en streaming. Elle vous charge de réorganiser sa base de données.

## Clients
La base de données devra contenir une liste de clients, et pour chacun ses informations personnelles (nom prénom, adresse, courriel, date de la fin de l'abonnement, etc.).
VidéoFlex propose deux types d'abonnement : normaux ou premium (d'autres offres pourraient voir le jour à l'avenir). Un compte premium permet notamment de créer jusqu'à 4 profils utilisateurs (contre 1 seul pour un compte normal).

## Contenu
VidéoFlex propose à la fois des films et des séries. Pour chaque film devra être renseigné un titre, un réalisateur une année de production, une durée, la liste des acteurs qui jouent dedans et leur rôle. Les Séries ont aussi un titre et chaque épisode a un titre props, son réalisateur, sa durée, à quelle saison elle appartient, les acteurs qui jouent dedans, etc. Notez, qu'il arrive qu'un réalisateur soir aussi acteur dans son film.

## Ergonomie
Le but de VidéoFlex est d'offrir la meilleure expérience possible aux utilisateurs. Il doit donc être possible à un utilisateur de reprendre son visionnage où il en était : à l'endroit précis s'il a arrêté au milieu d'un film/épisode ; ou au début de l'épisode suivant s'il était arrêté à la fin d'un épisode. 
D'autre part, le site devra pouvoir faire des suggestions de visionnage à l'utilisateur. Par exemple, si un utilisateur regarde principalement des séries policières ou avec un acteur en particulier, le site devra être capable d'en suggérer d'autres.

## Site web
Chaque série, film et épisode doit avoir sa page sur laquelle apparaissent toutes les informations pertinentes. Notamment, la page d'une série affichera la liste des épisodes, classés par saison, puis numéro d'épisode (avec pour chaque épisode une indication sur ceux qui ont déjà été vus).
Sur la page adéquat, chaque utilisateur pourra noter (sur 10), un film ou un épisode, ainsi que lui attribuer un label (par exemple policier, sombre ou rôle principal féminin) parmi la liste des labels déjà attribués, ou même entrer un nouveau label au clavier ; la liste des labels devra être classée par ordre décroissant du nombre de fois qu'ils ont été épisode, mais peut lui attribuer autant de label qu'il le souhaite. 
Sur la page d'accueil d'un profil doivent apparaître les films et épisode en cours, puis les prochains épisodes de séries en cours, puis des suggestions de VisioFlex basées sur les précédents visionnages de l'utilisateur. Par exemple, "Puisque vous avez regardé principalement des séries avec le label policier, les séries suivants devraient vous plaire". Dans l'exemple, policier est le label le plus fréquent parmi les séries regardées par l'utilisateur  pendant les six derniers mois.
Une autre page devra permettre de simuler le visionnage d'un épisode/film, en indiquant notamment à quel moment on a commencé/terminé le visionnage. Sur une page mon compte, un utilisateur doit voir son type d'abonnement, la date de fin de son abonnement et doit pouvoir créer/supprimer des profils s'il s'agit d'un compte premium.
