## Tables principales

**CLIENT** (<u>courriel</u>, nom, prenom, adresse, dateFinAbo, typeAbo)

**PROFIL** (<u>numéroProfil</u>, nom, #courriel)

- FK: courriel REFERENCES CLIENT(courriel)

**VIDEO** (<u>numéroVideo</u>, titre, durée, annéeProduction, saison, numero_episode, #numéroSérie)

- FK : numéroSérie REFERENCES SERIE(numéroSérie)

**SERIE** (<u>numéroSérie</u>, titre)

**LABEL** (<u>numéroLabel</u>, titre)

**GENRE** (<u>numéroGenre</u>, nom)

**PERSONNE** (<u>numéroPersonne</u>, nom, prénom)

**ROLE** (<u>numéroRole</u>, nom, prenom, image)

---

## Tables d'association

**NOTE** (<u>#numéroProfil, #numéroVideo</u>, note)

- FK: numéroProfil REFERENCES PROFIL(numéroProfil)
- FK: numéroVideo REFERENCES VIDEO(numéroVideo)

**REGARDE** (<u>#numéroProfil, #numéroVideo</u>, timestamp)

- FK: numéroProfil REFERENCES PROFIL(numéroProfil)
- FK: numéroVideo REFERENCES VIDEO(numéroVideo)

**AJOUTE** (<u>#numéroProfil, #numéroLabel, #numéroVideo</u>)

- FK: numéroProfil REFERENCES PROFIL(numéroProfil)
- FK: numéroLabel REFERENCES LABEL(numéroLabel)
- FK: numéroVideo REFERENCES VIDEO(numéroVideo)

**QUALIFIE** (<u>#numéroGenre, #numéroVideo</u>)

- FK: numéroGenre REFERENCES GENRE(numéroGenre)
- FK: numéroVideo REFERENCES VIDEO(numéroVideo)

**REALISE** (<u>#numéroVideo, #numéroPersonne</u>)

- FK: numéroVideo REFERENCES VIDEO(numéroVideo)
- FK: numéroPersonne REFERENCES PERSONNE(numéroPersonne)

**JOUE** (<u>#numéroRole, #numéroVideo, #numéroPersonne</u>)

- FK: numéroRole REFERENCES ROLE(numéroRole)
- FK: numéroVideo REFERENCES VIDEO(numéroVideo)
- FK: numéroPersonne REFERENCES PERSONNE(numéroPersonne)