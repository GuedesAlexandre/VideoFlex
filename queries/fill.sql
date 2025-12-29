INSERT INTO CLIENT (email, last_name, first_name, address, subscription_end_date, subscription_type) VALUES
                                                                                                         ('jean.dupont@wanadoo.fr', 'Dupont', 'Jean', '42 Rue de la Paix, 75002 Paris', '2025-12-31', 'Premium'),
                                                                                                         ('marie.leclerc@orange.fr', 'Leclerc', 'Marie', '15 Avenue Victor Hugo, 69003 Lyon', '2025-06-30', 'Standard'),
                                                                                                         ('pierre.moreau@sfr.fr', 'Moreau', 'Pierre', '8 Boulevard Michelet, 13008 Marseille', '2026-03-15', 'Premium'),
                                                                                                         ('sophie.bernard@free.fr', 'Bernard', 'Sophie', '23 Allée Jean Jaurès, 31000 Toulouse', '2025-09-20', 'Basic'),
                                                                                                         ('antoine.petit@gmail.com', 'Petit', 'Antoine', '67 Promenade des Anglais, 06000 Nice', '2026-01-10', 'Premium');

INSERT INTO PROFILE (name, email) VALUES
                                      ('Cthulhu', 'jean.dupont@wanadoo.fr'),
                                      ('Azathoth', 'jean.dupont@wanadoo.fr'),
                                      ('Pennywise', 'marie.leclerc@orange.fr'),
                                      ('Nyarlathotep', 'pierre.moreau@sfr.fr'),
                                      ('Randall_Flagg', 'pierre.moreau@sfr.fr'),
                                      ('Shub-Niggurath', 'sophie.bernard@free.fr'),
                                      ('Cujo', 'antoine.petit@gmail.com'),
                                      ('Yog-Sothoth', 'antoine.petit@gmail.com');


INSERT INTO GENRE (name) VALUES
                             ('Action'),
                             ('Drama'),
                             ('Comedy'),
                             ('Sci-Fi'),
                             ('Thriller'),
                             ('Romance'),
                             ('Horror'),
                             ('Animation'),
                             ('Documentary'),
                             ('Fantasy');

INSERT INTO FILM (title, production_year, duration) VALUES
                                                        ('The Matrix', 1999, 136),
                                                        ('Inception', 2010, 148),
                                                        ('The Shawshank Redemption', 1994, 142),
                                                        ('Pulp Fiction', 1994, 154),
                                                        ('The Dark Knight', 2008, 152),
                                                        ('Forrest Gump', 1994, 142),
                                                        ('Interstellar', 2014, 169),
                                                        ('The Godfather', 1972, 175),
                                                        ('Fight Club', 1999, 139),
                                                        ('Goodfellas', 1990, 146),
                                                        ('The Silence of the Lambs', 1991, 118),
                                                        ('Spirited Away', 2001, 125),
                                                        ('Parasite', 2019, 132),
                                                        ('Whiplash', 2014, 106),
                                                        ('La La Land', 2016, 128);

INSERT INTO SERIES (title) VALUES
                               ('Breaking Bad'),
                               ('Stranger Things'),
                               ('The Office'),
                               ('Game of Thrones'),
                               ('Black Mirror'),
                               ('The Crown'),
                               ('Money Heist'),
                               ('Dark'),
                               ('The Witcher'),
                               ('Squid Game');


INSERT INTO EPISODE (title, director, duration, season, series_id) VALUES
                                                                       ('Pilot', 'Vince Gilligan', 58, 1, 1),
                                                                       ('Cat''s in the Bag...', 'Adam Bernstein', 48, 1, 1),
                                                                       ('...And the Bag''s in the River', 'Adam Bernstein', 48, 1, 1),
                                                                       ('Cancer Man', 'Jim McKay', 48, 1, 1),
                                                                       ('Gray Matter', 'Tricia Brock', 48, 1, 1);

INSERT INTO EPISODE (title, director, duration, season, series_id) VALUES
                                                                       ('The Vanishing of Will Byers', 'The Duffer Brothers', 47, 1, 2),
                                                                       ('The Weirdo on Maple Street', 'The Duffer Brothers', 55, 1, 2),
                                                                       ('Holly, Jolly', 'Shawn Levy', 51, 1, 2),
                                                                       ('The Body', 'Shawn Levy', 50, 1, 2);


INSERT INTO EPISODE (title, director, duration, season, series_id) VALUES
                                                                       ('Pilot', 'Ken Kwapis', 23, 1, 3),
                                                                       ('Diversity Day', 'Ken Kwapis', 22, 1, 3),
                                                                       ('Health Care', 'Ken Whittingham', 22, 1, 3);

INSERT INTO EPISODE (title, director, duration, season, series_id) VALUES
                                                                       ('Winter Is Coming', 'Tim Van Patten', 62, 1, 4),
                                                                       ('The Kingsroad', 'Tim Van Patten', 56, 1, 4),
                                                                       ('Lord Snow', 'Brian Kirk', 58, 1, 4);

INSERT INTO PERSON (last_name, first_name) VALUES
                                               ('Reeves', 'Keanu'),
                                               ('DiCaprio', 'Leonardo'),
                                               ('Freeman', 'Morgan'),
                                               ('Bale', 'Christian'),
                                               ('Hanks', 'Tom'),
                                               ('McConaughey', 'Matthew'),
                                               ('Pitt', 'Brad'),
                                               ('De Niro', 'Robert'),
                                               ('Hopkins', 'Anthony'),
                                               ('Cranston', 'Bryan'),
                                               ('Ryder', 'Winona'),
                                               ('Carell', 'Steve'),
                                               ('Clarke', 'Emilia'),
                                               ('Harington', 'Kit'),
                                               ('Cavill', 'Henry');

INSERT INTO ROLE (name, first_name, image) VALUES
                                               ('Neo', NULL, 'neo.jpg'),
                                               ('Cobb', 'Dom', 'cobb.jpg'),
                                               ('Red', 'Ellis Boyd', 'red.jpg'),
                                               ('Vincent', 'Vega', 'vincent.jpg'),
                                               ('Batman', NULL, 'batman.jpg'),
                                               ('Forrest', 'Gump', 'forrest.jpg'),
                                               ('Cooper', 'Joseph', 'cooper.jpg'),
                                               ('Corleone', 'Vito', 'vito.jpg'),
                                               ('Durden', 'Tyler', 'tyler.jpg'),
                                               ('Conway', 'Henry', 'henry.jpg'),
                                               ('Lecter', 'Hannibal', 'lecter.jpg'),
                                               ('White', 'Walter', 'walter.jpg'),
                                               ('Byers', 'Joyce', 'joyce.jpg'),
                                               ('Scott', 'Michael', 'michael.jpg'),
                                               ('Targaryen', 'Daenerys', 'daenerys.jpg'),
                                               ('Snow', 'Jon', 'jon.jpg'),
                                               ('Rivia', 'Geralt of', 'geralt.jpg');

INSERT INTO HAS_GENRE_FILM (genre_id, film_id) VALUES
                                                   (1, 1), (4, 1),
                                                   (4, 2), (5, 2),
                                                   (2, 3),
                                                   (2, 4), (5, 4),
                                                   (1, 5), (5, 5),
                                                   (2, 6), (6, 6),
                                                   (4, 7), (2, 7),
                                                   (2, 8),     
                                                   (2, 9), (5, 9),
                                                   (2, 10), 
                                                   (5, 11), (7, 11),
                                                   (8, 12), (10, 12),
                                                   (2, 13), (5, 13),
                                                   (2, 14), 
                                                   (2, 15), (6, 15);

INSERT INTO HAS_GENRE_SERIES (genre_id, series_id) VALUES
                                                       (2, 1), (5, 1),
                                                       (4, 2), (7, 2),
                                                       (3, 3),
                                                       (2, 4), (10, 4),
                                                       (4, 5), (5, 5),
                                                       (2, 6),
                                                       (1, 7), (5, 7),
                                                       (4, 8), (5, 8),
                                                       (10, 9), (1, 9),
                                                       (2, 10), (5, 10);

INSERT INTO ACTS_IN_FILM (person_id, film_id, role_id) VALUES
                                                           (1, 1, 1),
                                                           (2, 2, 2),
                                                           (3, 3, 3),
                                                           (4, 5, 5),
                                                           (5, 6, 6),
                                                           (6, 7, 7),
                                                           (7, 9, 9),
                                                           (8, 10, 10),
                                                           (9, 11, 11);

INSERT INTO ACTS_IN_SERIES (person_id, series_id, role_id) VALUES
                                                               (10, 1, 12),
                                                               (11, 2, 13),
                                                               (12, 3, 14),
                                                               (13, 4, 15),
                                                               (14, 4, 16),
                                                               (15, 9, 17);


INSERT INTO LABEL (title) VALUES
                              ('Favorites'),
                              ('Watch Later'),
                              ('Classics'),
                              ('Mind-Bending'),
                              ('Rewatch'),
                              ('Family Night'),
                              ('Date Night'),
                              ('Action Pack'),
                              ('Tearjerker'),
                              ('Feel Good');


INSERT INTO CREATE_LABEL (profile_id, label_id) VALUES
                                                    (1, 1), (1, 3), (1, 4),
                                                    (2, 6), (2, 10),
                                                    (3, 1), (3, 7),
                                                    (4, 1), (4, 8),
                                                    (5, 7), (5, 9);

INSERT INTO LABEL_FILM (label_id, film_id) VALUES
                                               (1, 1), (1, 2), (1, 3),
                                               (3, 3), (3, 8), (3, 10),
                                               (4, 1), (4, 2), (4, 7),
                                               (9, 3), (9, 6),
                                               (10, 6), (10, 15);

INSERT INTO LABEL_EPISODE (label_id, episode_id) VALUES
                                                     (1, 1), (1, 6),  -- Favorites
                                                     (2, 9), (2, 12), -- Watch Later
                                                     (5, 1), (5, 2);  -- Rewatch

INSERT INTO RATE_FILM (profile_id, film_id, rating) VALUES
                                                        (1, 1, 9.5), (1, 2, 9.0), (1, 3, 10.0), (1, 5, 9.2),
                                                        (2, 12, 9.8), (2, 15, 8.5),
                                                        (3, 2, 8.8), (3, 7, 9.1), (3, 13, 9.0),
                                                        (4, 1, 9.3), (4, 5, 9.5), (4, 10, 8.7),
                                                        (5, 6, 9.0), (5, 15, 9.2),
                                                        (6, 3, 9.5), (6, 6, 8.8), (6, 13, 9.3),
                                                        (7, 1, 8.5), (7, 2, 9.0), (7, 7, 8.9);

INSERT INTO RATE_EPISODE (profile_id, episode_id, rating) VALUES
                                                              (1, 1, 9.5), (1, 2, 8.8), (1, 3, 9.0),
                                                              (3, 6, 9.2), (3, 7, 9.0), (3, 8, 8.5),
                                                              (4, 1, 9.0), (4, 12, 9.5), (4, 13, 9.3),
                                                              (7, 6, 8.7), (7, 9, 7.5);

INSERT INTO WATCH_FILM (profile_id, film_id, timestamp) VALUES
                                                            (1, 1, '2025-12-01 20:30:00'),
                                                            (1, 2, '2025-12-05 21:00:00'),
                                                            (1, 3, '2025-12-10 19:45:00'),
                                                            (1, 5, '2025-12-15 20:00:00'),
                                                            (2, 12, '2025-11-20 18:30:00'),
                                                            (2, 15, '2025-12-08 19:00:00'),
                                                            (3, 2, '2025-12-03 21:30:00'),
                                                            (3, 7, '2025-12-12 20:15:00'),
                                                            (3, 13, '2025-12-20 21:00:00'),
                                                            (4, 1, '2025-11-25 22:00:00'),
                                                            (4, 5, '2025-12-02 20:30:00'),
                                                            (4, 10, '2025-12-18 21:30:00'),
                                                            (6, 3, '2025-12-07 19:30:00'),
                                                            (6, 6, '2025-12-14 20:00:00');

INSERT INTO WATCH_EPISODE (profile_id, episode_id, timestamp) VALUES
                                                                  (1, 1, '2025-11-15 20:00:00'),
                                                                  (1, 2, '2025-11-16 20:00:00'),
                                                                  (1, 3, '2025-11-17 20:00:00'),
                                                                  (1, 4, '2025-11-18 20:00:00'),
                                                                  (1, 5, '2025-11-19 20:00:00'),
                                                                  (3, 6, '2025-12-01 19:30:00'),
                                                                  (3, 7, '2025-12-02 19:30:00'),
                                                                  (3, 8, '2025-12-03 19:30:00'),
                                                                  (4, 1, '2025-12-10 21:00:00'),
                                                                  (4, 9, '2025-12-05 20:00:00'),
                                                                  (4, 10, '2025-12-06 20:00:00'),
                                                                  (4, 11, '2025-12-07 20:00:00'),
                                                                  (4, 12, '2025-12-11 21:00:00'),
                                                                  (7, 6, '2025-11-28 18:30:00');

