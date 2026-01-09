## Tables principales

**CLIENT** (<u>courriel</u>, nom, prenom, adresse, dateFinAbo, typeAbo)

**PROFIL** (<u>numéroProfil</u>, nom, #courriel)

- FK: courriel REFERENCES CLIENT(courriel)

**FILM** (<u>numéroFilm</u>, titre, annéeProduction, durée)

**SERIE** (<u>numéroSérie</u>, titre)

**EPISODE** (<u>numéroEpisode</u>, titre, réalisateur, durée, saison, #numéroSérie)

- FK : numéroSérie REFERENCES SERIE(numéroSérie)

**LABEL** (<u>numéroLabel</u>, titre)

**GENRE** (<u>numéroGenre</u>, nom)

**PERSONNE** (<u>numéroPersonne</u>, nom, prénom)

**ROLE** (<u>numéroRole</u>, nom, prenom, image)

---

## Tables d'association

**NOTE_FILM** (<u>#numéroProfil, #numéroFilm</u>, note)

- FK: numéroProfil REFERENCES PROFIL(numéroProfil)
- FK : numéroFilm REFERENCES FILM(numéroFilm)

**NOTE_EPISODE** (<u>#numéroProfil, #numéroEpisode</u>, note)

- FK: numéroProfil REFERENCES PROFIL(numéroProfil)
- FK: numéroEpisode REFERENCES EPISODE(numéroEpisode)

**VISIONNE** (<u>#numéroProfil, #numéroFilm</u>, timestamp)

- FK: numéroProfil REFERENCES PROFIL(numéroProfil)
- FK : numéroFilm REFERENCES FILM(numéroFilm)

**REGARDE** (<u>#numéroProfil, #numéroEpisode</u>, timestamp)

- FK : numéroProfil REFERENCES PROFIL(numéroProfil)
- FK : numéroEpisode REFERENCES EPISODE(numéroEpisode)

**CREER_LABEL** (<u>#numéroProfil, #numéroLabel</u>)

- FK : numéroProfil REFERENCES PROFIL(numéroProfil)
- FK : numéroLabel REFERENCES LABEL(numéroLabel)

**LABEL_FILM** (<u>#numéroLabel, #numéroFilm</u>)

- FK : numéroLabel REFERENCES LABEL(numéroLabel)
- FK : numéroFilm REFERENCES FILM(numéroFilm)

**LABEL_EPISODE** (<u>#numéroLabel, #numéroEpisode</u>)

- FK : numéroLabel REFERENCES LABEL(numéroLabel)
- FK : numéroEpisode REFERENCES EPISODE(numéroEpisode)

**A_POUR_GENRE_FILM** (<u>#numéroGenre, #numéroFilm</u>)

- FK : numéroGenre REFERENCES GENRE(numéroGenre)
- FK : numéroFilm REFERENCES FILM(numéroFilm)

**A_POUR_GENRE_SERIE** (<u>#numéroGenre, #numéroSérie</u>)

- FK : numéroGenre REFERENCES GENRE(numéroGenre)
- FK : numéroSérie REFERENCES SERIE(numéroSérie)

**JOUE_DANS_FILM** (<u>#numéroPersonne, #numéroFilm, #numéroRole</u>)

- FK : numéroPersonne REFERENCES PERSONNE(numéroPersonne)
- FK : numéroFilm REFERENCES FILM(numéroFilm)
- FK : numéroRole REFERENCES ROLE(numéroRole)

**JOUE_DANS_SERIE** (<u>#numéroPersonne, #numéroSérie, #numéroRole</u>)

- FK : numéroPersonne REFERENCES PERSONNE(numéroPersonne)
- FK : numéroSérie REFERENCES SERIE(numéroSérie)
- FK : numéroRole REFERENCES ROLE(numéroRole)