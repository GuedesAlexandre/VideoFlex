INSERT INTO CLIENT (email, last_name, first_name, address, subscription_end_date, subscription_type) VALUES
('jean.dupont@wanadoo.fr', 'Dupont', 'Jean', '42 Rue de la Paix, 75002 Paris', '2025-12-31', 'Premium'),
('marie.leclerc@orange.fr', 'Leclerc', 'Marie', '15 Avenue Victor Hugo, 69003 Lyon', '2025-06-30', 'Standard'),
('pierre.moreau@sfr.fr', 'Moreau', 'Pierre', '8 Boulevard Michelet, 13008 Marseille', '2026-03-15', 'Premium'),
('sophie.bernard@free.fr', 'Bernard', 'Sophie', '23 Allée Jean Jaurès, 31000 Toulouse', '2025-09-20', 'Basic'),
('antoine.petit@gmail.com', 'Petit', 'Antoine', '67 Promenade des Anglais, 06000 Nice', '2026-01-10', 'Premium');

INSERT INTO PROFILE (name, client_email) VALUES
('Cthulhu', 'jean.dupont@wanadoo.fr'),
('Azathoth', 'jean.dupont@wanadoo.fr'),
('Pennywise', 'marie.leclerc@orange.fr'),
('Nyarlathotep', 'pierre.moreau@sfr.fr'),
('Randall_Flagg', 'pierre.moreau@sfr.fr'),
('Shub-Niggurath', 'sophie.bernard@free.fr'),
('Cujo', 'antoine.petit@gmail.com'),
('Yog-Sothoth', 'antoine.petit@gmail.com');

INSERT INTO GENRE (name) VALUES
('Action'), ('Drama'), ('Comedy'), ('Sci-Fi'), ('Thriller'),
('Romance'), ('Horror'), ('Animation'), ('Documentary'), ('Fantasy');

INSERT INTO SERIES (title) VALUES
('Breaking Bad'), ('Stranger Things'), ('The Office'), ('Game of Thrones'), ('Black Mirror'),
('The Crown'), ('Money Heist'), ('Dark'), ('The Witcher'), ('Squid Game');

INSERT INTO VIDEO (title, production_year, duration, series_id, season, episode_number) VALUES
('The Matrix', 1999, 136, NULL, NULL, NULL),
('Inception', 2010, 148, NULL, NULL, NULL),
('The Shawshank Redemption', 1994, 142, NULL, NULL, NULL),
('Pulp Fiction', 1994, 154, NULL, NULL, NULL),
('The Dark Knight', 2008, 152, NULL, NULL, NULL),
('Forrest Gump', 1994, 142, NULL, NULL, NULL),
('Interstellar', 2014, 169, NULL, NULL, NULL),
('The Godfather', 1972, 175, NULL, NULL, NULL),
('Fight Club', 1999, 139, NULL, NULL, NULL),
('Goodfellas', 1990, 146, NULL, NULL, NULL),
('The Silence of the Lambs', 1991, 118, NULL, NULL, NULL),
('Spirited Away', 2001, 125, NULL, NULL, NULL),
('Parasite', 2019, 132, NULL, NULL, NULL),
('Whiplash', 2014, 106, NULL, NULL, NULL),
('La La Land', 2016, 128, NULL, NULL, NULL);

INSERT INTO VIDEO (title, production_year, duration, series_id, season, episode_number) VALUES
('Pilot', 2008, 58, 1, 1, 1),
('Cat''s in the Bag...', 2008, 48, 1, 1, 2),
('...And the Bag''s in the River', 2008, 48, 1, 1, 3),
('Cancer Man', 2008, 48, 1, 1, 4),
('Gray Matter', 2008, 48, 1, 1, 5),
('The Vanishing of Will Byers', 2016, 47, 2, 1, 1),
('The Weirdo on Maple Street', 2016, 55, 2, 1, 2),
('Holly, Jolly', 2016, 51, 2, 1, 3),
('The Body', 2016, 50, 2, 1, 4),
('Pilot', 2005, 23, 3, 1, 1),
('Diversity Day', 2005, 22, 3, 1, 2),
('Health Care', 2005, 22, 3, 1, 3),
('Winter Is Coming', 2011, 62, 4, 1, 1),
('The Kingsroad', 2011, 56, 4, 1, 2),
('Lord Snow', 2011, 58, 4, 1, 3);

INSERT INTO PERSON (last_name, first_name) VALUES
('Reeves', 'Keanu'), ('DiCaprio', 'Leonardo'), ('Freeman', 'Morgan'), ('Bale', 'Christian'),
('Hanks', 'Tom'), ('McConaughey', 'Matthew'), ('Pitt', 'Brad'), ('De Niro', 'Robert'),
('Hopkins', 'Anthony'), ('Cranston', 'Bryan'), ('Ryder', 'Winona'), ('Carell', 'Steve'),
('Clarke', 'Emilia'), ('Harington', 'Kit'), ('Cavill', 'Henry'),
('Gilligan', 'Vince'), ('Bernstein', 'Adam'), ('McKay', 'Jim'), ('Brock', 'Tricia'),
('The Duffer Brothers', ''), ('Levy', 'Shawn'), ('Kwapis', 'Ken'), ('Whittingham', 'Ken'),
('Van Patten', 'Tim'), ('Kirk', 'Brian');

INSERT INTO ROLE (name, first_name, image) VALUES
('Neo', NULL, 'neo.jpg'),
('Cobb', 'Dom', 'cobb.jpg'),
('Red', 'Ellis Boyd', 'red.jpg'),
('Vega', 'Vincent', 'vincent.jpg'),
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

INSERT INTO DIRECTED_BY (video_id, person_id) VALUES
(16, 16), (17, 17), (18, 17), (19, 18), (20, 19), 
(21, 20), (22, 20), (23, 21), (24, 21), 
(25, 22), (26, 22), (27, 23),
(28, 24), (29, 24), (30, 25);

INSERT INTO HAS_GENRE (genre_id, video_id) VALUES
(1, 1), (4, 1), (4, 2), (5, 2), (2, 3), (2, 4), (5, 4), (1, 5), (5, 5),
(2, 6), (6, 6), (4, 7), (2, 7), (2, 8), (2, 9), (5, 9), (2, 10),
(5, 11), (7, 11), (8, 12), (10, 12), (2, 13), (5, 13), (2, 14), (2, 15), (6, 15);

INSERT INTO ACTS_IN (person_id, video_id, role_id) VALUES
(1, 1, 1), (2, 2, 2), (3, 3, 3), (4, 5, 5), (5, 6, 6), (6, 7, 7),
(7, 9, 9), (8, 10, 10), (9, 11, 11),
(10, 16, 12), (11, 21, 13), (12, 25, 14), (13, 28, 15), (14, 28, 16);

INSERT INTO LABEL (title) VALUES
('Favorites'), ('Watch Later'), ('Classics'), ('Mind-Bending'), ('Rewatch'),
('Family Night'), ('Date Night'), ('Action Pack'), ('Tearjerker'), ('Feel Good');

INSERT INTO VIDEO_LABEL (profile_id, label_id, video_id) VALUES
(1, 1, 1), (1, 3, 3), (1, 4, 1),
(2, 6, 12), (2, 10, 15),
(3, 1, 2), (3, 7, 7),
(4, 1, 5), (4, 8, 1),
(5, 7, 14), (5, 9, 6);

INSERT INTO RATING (profile_id, video_id, rating) VALUES
(1, 1, 9.5), (1, 2, 9.0), (1, 3, 10.0), (1, 5, 9.2),
(2, 12, 9.8), (2, 15, 8.5),
(3, 2, 8.8), (3, 7, 9.1), (3, 13, 9.0),
(4, 1, 9.3), (4, 5, 9.5), (4, 10, 8.7),
(5, 6, 9.0), (5, 15, 9.2),
(6, 3, 9.5), (6, 6, 8.8), (6, 13, 9.3),
(7, 1, 8.5), (7, 2, 9.0), (7, 7, 8.9),
(1, 16, 9.5), (1, 17, 8.8), (1, 18, 9.0),
(3, 21, 9.2), (3, 22, 9.0), (3, 23, 8.5),
(4, 16, 9.0), (4, 27, 9.5), (4, 28, 9.3),
(7, 21, 8.7), (7, 24, 7.5);

INSERT INTO WATCH (profile_id, video_id, timestamp) VALUES
(1, 1, '2025-12-01 20:30:00'), (1, 2, '2025-12-05 21:00:00'), (1, 3, '2025-12-10 19:45:00'),
(2, 12, '2025-11-20 18:30:00'), (2, 15, '2025-12-08 19:00:00'),
(3, 2, '2025-12-03 21:30:00'), (3, 7, '2025-12-12 20:15:00'),
(4, 1, '2025-11-25 22:00:00'), (4, 5, '2025-12-02 20:30:00');
