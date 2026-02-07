
-- 1. Page d'une série : liste des épisodes classés par saison et numéro,
--    avec indication si vus par un profil donné
SELECT
    v.numéroVideo,
    v.titre,
    v.saison,
    v.numero_episode,
    v.durée,
    v.main_image,
    CASE WHEN r.timestamp IS NOT NULL THEN TRUE ELSE FALSE END AS deja_vu
FROM VIDEO v
         LEFT JOIN REGARDE r ON v.numéroVideo = r.numéroVideo AND r.numéroProfil = :profil_id
WHERE v.numéroSérie = :serie_id
ORDER BY v.saison ASC, v.numero_episode ASC;

-- 2. Page d'un film/épisode : toutes les informations pertinentes
SELECT
    v.numéroVideo,
    v.titre,
    v.main_image,
    v.durée,
    v.annéeProduction,
    s.titre AS serie_titre,
    v.saison,
    v.numero_episode
FROM VIDEO v
         LEFT JOIN SERIE s ON v.numéroSérie = s.numéroSérie
WHERE v.numéroVideo = :video_id;

-- 3. Acteurs et rôles d'une vidéo
SELECT p.nom, p.prénom, ro.nom AS role_nom, ro.image AS role_image
FROM JOUE j
         JOIN PERSONNE p ON j.numéroPersonne = p.numéroPersonne
         JOIN ROLE ro ON j.numéroRole = ro.numéroRole
WHERE j.numéroVideo = :video_id;

-- 4. Réalisateurs d'une vidéo
SELECT p.nom, p.prénom
FROM REALISE re
         JOIN PERSONNE p ON re.numéroPersonne = p.numéroPersonne
WHERE re.numéroVideo = :video_id;

-- 5. Liste des labels classés par fréquence d'attribution (ordre décroissant)
SELECT l.numéroLabel, l.titre, COUNT(a.numéroLabel) AS nb_attributions
FROM LABEL l
         LEFT JOIN AJOUTE a ON l.numéroLabel = a.numéroLabel
GROUP BY l.numéroLabel, l.titre
ORDER BY nb_attributions DESC;

-- 6. Noter un film/épisode (INSERT ou UPDATE si existe déjà)
INSERT INTO NOTE (numéroProfil, numéroVideo, note)
VALUES (:profil_id, :video_id, :note)
ON CONFLICT (numéroProfil, numéroVideo)
    DO UPDATE SET note = :note;

-- 7. Attribuer un label à une vidéo
INSERT INTO AJOUTE (numéroProfil, numéroLabel, numéroVideo)
VALUES (:profil_id, :label_id, :video_id);

-- 8. Créer un nouveau label
INSERT INTO LABEL (titre) VALUES (:nouveau_label);

-- 9. Page d'accueil profil : films/épisodes en cours (non terminés)
SELECT v.numéroVideo, v.titre, v.main_image, v.durée, r.timestamp AS position_arret
FROM REGARDE r
         JOIN VIDEO v ON r.numéroVideo = v.numéroVideo
WHERE r.numéroProfil = :profil_id
  AND r.timestamp < v.durée
ORDER BY r.timestamp DESC;

-- 10. Prochains épisodes de séries en cours
SELECT v.numéroVideo, v.titre, v.main_image, v.saison, v.numero_episode, s.titre AS serie
FROM VIDEO v
         JOIN SERIE s ON v.numéroSérie = s.numéroSérie
WHERE v.numéroSérie IN (
    SELECT DISTINCT v2.numéroSérie
    FROM REGARDE r2
             JOIN VIDEO v2 ON r2.numéroVideo = v2.numéroVideo
    WHERE r2.numéroProfil = :profil_id AND v2.numéroSérie IS NOT NULL
)
  AND v.numéroVideo NOT IN (
    SELECT numéroVideo FROM REGARDE WHERE numéroProfil = :profil_id
)
ORDER BY s.titre, v.saison, v.numero_episode
LIMIT 10;

-- 11. Suggestions basées sur le label le plus fréquent (6 derniers mois)
SELECT v.numéroVideo, v.titre, v.main_image
FROM VIDEO v
         JOIN AJOUTE a ON v.numéroVideo = a.numéroVideo
WHERE a.numéroLabel = (
    SELECT a2.numéroLabel
    FROM AJOUTE a2
             JOIN REGARDE r ON a2.numéroVideo = r.numéroVideo
    WHERE r.numéroProfil = :profil_id
    GROUP BY a2.numéroLabel
    ORDER BY COUNT(*) DESC
    LIMIT 1
)
  AND v.numéroVideo NOT IN (
    SELECT numéroVideo FROM REGARDE WHERE numéroProfil = :profil_id
)
LIMIT 10;

-- 12. Simuler visionnage : enregistrer début/fin
INSERT INTO REGARDE (numéroProfil, numéroVideo, timestamp)
VALUES (:profil_id, :video_id, :position_actuelle)
ON CONFLICT (numéroProfil, numéroVideo)
    DO UPDATE SET timestamp = :position_actuelle;

-- 13. Page mon compte : infos abonnement
SELECT c.nom, c.prenom, c.typeAbo, c.dateFinAbo, c.courriel
FROM CLIENT c
         JOIN PROFIL p ON c.courriel = p.courriel
WHERE p.numéroProfil = :profil_id;

-- 14. Créer un profil (compte premium uniquement)
INSERT INTO PROFIL (nom, icon, courriel)
SELECT :nom_profil, :icon_path, :courriel
WHERE (SELECT typeAbo FROM CLIENT WHERE courriel = :courriel) = 'premium'
  AND (SELECT COUNT(*) FROM PROFIL WHERE courriel = :courriel) < 4;

-- 15. Supprimer un profil
DELETE FROM PROFIL WHERE numéroProfil = :profil_id;
