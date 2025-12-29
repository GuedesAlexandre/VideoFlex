DROP TABLE IF EXISTS ACTS_IN_SERIES CASCADE;
DROP TABLE IF EXISTS ACTS_IN_FILM CASCADE;
DROP TABLE IF EXISTS HAS_GENRE_SERIES CASCADE;
DROP TABLE IF EXISTS HAS_GENRE_FILM CASCADE;
DROP TABLE IF EXISTS LABEL_EPISODE CASCADE;
DROP TABLE IF EXISTS LABEL_FILM CASCADE;
DROP TABLE IF EXISTS CREATE_LABEL CASCADE;
DROP TABLE IF EXISTS WATCH_EPISODE CASCADE;
DROP TABLE IF EXISTS WATCH_FILM CASCADE;
DROP TABLE IF EXISTS RATE_EPISODE CASCADE;
DROP TABLE IF EXISTS RATE_FILM CASCADE;
DROP TABLE IF EXISTS EPISODE CASCADE;
DROP TABLE IF EXISTS SERIES CASCADE;
DROP TABLE IF EXISTS FILM CASCADE;
DROP TABLE IF EXISTS LABEL CASCADE;
DROP TABLE IF EXISTS GENRE CASCADE;
DROP TABLE IF EXISTS PERSON CASCADE;
DROP TABLE IF EXISTS ROLE CASCADE;
DROP TABLE IF EXISTS PROFILE CASCADE;
DROP TABLE IF EXISTS CLIENT CASCADE;


CREATE TABLE CLIENT (
                        email VARCHAR(255) PRIMARY KEY,
                        last_name VARCHAR(100) NOT NULL,
                        first_name VARCHAR(100) NOT NULL,
                        address TEXT,
                        subscription_end_date DATE,
                        subscription_type VARCHAR(50)
);

CREATE TABLE PROFILE (
                         profile_id SERIAL PRIMARY KEY,
                         name VARCHAR(100) NOT NULL,
                         email VARCHAR(255) NOT NULL,
                         FOREIGN KEY (email) REFERENCES CLIENT(email) ON DELETE CASCADE
);

CREATE TABLE FILM (
                      film_id SERIAL PRIMARY KEY,
                      title VARCHAR(255) NOT NULL,
                      production_year INTEGER,
                      duration INTEGER -- duration in minutes
);


CREATE TABLE SERIES (
                        series_id SERIAL PRIMARY KEY,
                        title VARCHAR(255) NOT NULL
);

CREATE TABLE EPISODE (
                         episode_id SERIAL PRIMARY KEY,
                         title VARCHAR(255) NOT NULL,
                         director VARCHAR(100),
                         duration INTEGER, -- duration in minutes
                         season INTEGER,
                         series_id INTEGER NOT NULL,
                         FOREIGN KEY (series_id) REFERENCES SERIES(series_id) ON DELETE CASCADE
);


CREATE TABLE LABEL (
                       label_id SERIAL PRIMARY KEY,
                       title VARCHAR(100) NOT NULL
);


CREATE TABLE GENRE (
                       genre_id SERIAL PRIMARY KEY,
                       name VARCHAR(100) NOT NULL UNIQUE
);


CREATE TABLE PERSON (
                        person_id SERIAL PRIMARY KEY,
                        last_name VARCHAR(100) NOT NULL,
                        first_name VARCHAR(100) NOT NULL
);

CREATE TABLE ROLE (
                      role_id SERIAL PRIMARY KEY,
                      name VARCHAR(100) NOT NULL,
                      first_name VARCHAR(100),
                      image VARCHAR(255)
);


CREATE TABLE RATE_FILM (
                           profile_id INTEGER,
                           film_id INTEGER,
                           rating DECIMAL(3,1) CHECK (rating >= 0 AND rating <= 10),
                           PRIMARY KEY (profile_id, film_id),
                           FOREIGN KEY (profile_id) REFERENCES PROFILE(profile_id) ON DELETE CASCADE,
                           FOREIGN KEY (film_id) REFERENCES FILM(film_id) ON DELETE CASCADE
);


CREATE TABLE RATE_EPISODE (
                              profile_id INTEGER,
                              episode_id INTEGER,
                              rating DECIMAL(3,1) CHECK (rating >= 0 AND rating <= 10),
                              PRIMARY KEY (profile_id, episode_id),
                              FOREIGN KEY (profile_id) REFERENCES PROFILE(profile_id) ON DELETE CASCADE,
                              FOREIGN KEY (episode_id) REFERENCES EPISODE(episode_id) ON DELETE CASCADE
);


CREATE TABLE WATCH_FILM (
                            profile_id INTEGER,
                            film_id INTEGER,
                            timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                            PRIMARY KEY (profile_id, film_id),
                            FOREIGN KEY (profile_id) REFERENCES PROFILE(profile_id) ON DELETE CASCADE,
                            FOREIGN KEY (film_id) REFERENCES FILM(film_id) ON DELETE CASCADE
);


CREATE TABLE WATCH_EPISODE (
                               profile_id INTEGER,
                               episode_id INTEGER,
                               timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                               PRIMARY KEY (profile_id, episode_id),
                               FOREIGN KEY (profile_id) REFERENCES PROFILE(profile_id) ON DELETE CASCADE,
                               FOREIGN KEY (episode_id) REFERENCES EPISODE(episode_id) ON DELETE CASCADE
);

CREATE TABLE CREATE_LABEL (
                              profile_id INTEGER,
                              label_id INTEGER,
                              PRIMARY KEY (profile_id, label_id),
                              FOREIGN KEY (profile_id) REFERENCES PROFILE(profile_id) ON DELETE CASCADE,
                              FOREIGN KEY (label_id) REFERENCES LABEL(label_id) ON DELETE CASCADE
);


CREATE TABLE LABEL_FILM (
                            label_id INTEGER,
                            film_id INTEGER,
                            PRIMARY KEY (label_id, film_id),
                            FOREIGN KEY (label_id) REFERENCES LABEL(label_id) ON DELETE CASCADE,
                            FOREIGN KEY (film_id) REFERENCES FILM(film_id) ON DELETE CASCADE
);

CREATE TABLE LABEL_EPISODE (
                               label_id INTEGER,
                               episode_id INTEGER,
                               PRIMARY KEY (label_id, episode_id),
                               FOREIGN KEY (label_id) REFERENCES LABEL(label_id) ON DELETE CASCADE,
                               FOREIGN KEY (episode_id) REFERENCES EPISODE(episode_id) ON DELETE CASCADE
);


CREATE TABLE HAS_GENRE_FILM (
                                genre_id INTEGER,
                                film_id INTEGER,
                                PRIMARY KEY (genre_id, film_id),
                                FOREIGN KEY (genre_id) REFERENCES GENRE(genre_id) ON DELETE CASCADE,
                                FOREIGN KEY (film_id) REFERENCES FILM(film_id) ON DELETE CASCADE
);

CREATE TABLE HAS_GENRE_SERIES (
                                  genre_id INTEGER,
                                  series_id INTEGER,
                                  PRIMARY KEY (genre_id, series_id),
                                  FOREIGN KEY (genre_id) REFERENCES GENRE(genre_id) ON DELETE CASCADE,
                                  FOREIGN KEY (series_id) REFERENCES SERIES(series_id) ON DELETE CASCADE
);

CREATE TABLE ACTS_IN_FILM (
                              person_id INTEGER,
                              film_id INTEGER,
                              role_id INTEGER,
                              PRIMARY KEY (person_id, film_id, role_id),
                              FOREIGN KEY (person_id) REFERENCES PERSON(person_id) ON DELETE CASCADE,
                              FOREIGN KEY (film_id) REFERENCES FILM(film_id) ON DELETE CASCADE,
                              FOREIGN KEY (role_id) REFERENCES ROLE(role_id) ON DELETE CASCADE
);

CREATE TABLE ACTS_IN_SERIES (
                                person_id INTEGER,
                                series_id INTEGER,
                                role_id INTEGER,
                                PRIMARY KEY (person_id, series_id, role_id),
                                FOREIGN KEY (person_id) REFERENCES PERSON(person_id) ON DELETE CASCADE,
                                FOREIGN KEY (series_id) REFERENCES SERIES(series_id) ON DELETE CASCADE,
                                FOREIGN KEY (role_id) REFERENCES ROLE(role_id) ON DELETE CASCADE
);


