--
-- PostgreSQL database dump
--

\restrict kHW3nkTNQAEVNcIjcMFJ8PUol0vJzdoeq7JvBdd0KZiSTKCcolZggMtdgxybA4b

-- Dumped from database version 18.1 (Debian 18.1-1.pgdg13+2)
-- Dumped by pg_dump version 18.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: acts_in; Type: TABLE; Schema: public; Owner: guedesa
--

CREATE TABLE public.acts_in (
    role_id integer NOT NULL,
    video_id integer NOT NULL,
    person_id integer NOT NULL
);


ALTER TABLE public.acts_in OWNER TO guedesa;

--
-- Name: client; Type: TABLE; Schema: public; Owner: guedesa
--

CREATE TABLE public.client (
    email character varying(255) NOT NULL,
    last_name character varying(100) NOT NULL,
    first_name character varying(100) NOT NULL,
    address text,
    subscription_end_date date,
    subscription_type character varying(50)
);


ALTER TABLE public.client OWNER TO guedesa;

--
-- Name: directed_by; Type: TABLE; Schema: public; Owner: guedesa
--

CREATE TABLE public.directed_by (
    video_id integer NOT NULL,
    person_id integer NOT NULL
);


ALTER TABLE public.directed_by OWNER TO guedesa;

--
-- Name: genre; Type: TABLE; Schema: public; Owner: guedesa
--

CREATE TABLE public.genre (
    genre_id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.genre OWNER TO guedesa;

--
-- Name: genre_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: guedesa
--

CREATE SEQUENCE public.genre_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.genre_genre_id_seq OWNER TO guedesa;

--
-- Name: genre_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: guedesa
--

ALTER SEQUENCE public.genre_genre_id_seq OWNED BY public.genre.genre_id;


--
-- Name: has_genre; Type: TABLE; Schema: public; Owner: guedesa
--

CREATE TABLE public.has_genre (
    genre_id integer NOT NULL,
    video_id integer NOT NULL
);


ALTER TABLE public.has_genre OWNER TO guedesa;

--
-- Name: label; Type: TABLE; Schema: public; Owner: guedesa
--

CREATE TABLE public.label (
    label_id integer NOT NULL,
    title character varying(100) NOT NULL
);


ALTER TABLE public.label OWNER TO guedesa;

--
-- Name: label_label_id_seq; Type: SEQUENCE; Schema: public; Owner: guedesa
--

CREATE SEQUENCE public.label_label_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.label_label_id_seq OWNER TO guedesa;

--
-- Name: label_label_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: guedesa
--

ALTER SEQUENCE public.label_label_id_seq OWNED BY public.label.label_id;


--
-- Name: person; Type: TABLE; Schema: public; Owner: guedesa
--

CREATE TABLE public.person (
    person_id integer NOT NULL,
    last_name character varying(100) NOT NULL,
    first_name character varying(100) NOT NULL
);


ALTER TABLE public.person OWNER TO guedesa;

--
-- Name: person_person_id_seq; Type: SEQUENCE; Schema: public; Owner: guedesa
--

CREATE SEQUENCE public.person_person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.person_person_id_seq OWNER TO guedesa;

--
-- Name: person_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: guedesa
--

ALTER SEQUENCE public.person_person_id_seq OWNED BY public.person.person_id;


--
-- Name: profile; Type: TABLE; Schema: public; Owner: guedesa
--

CREATE TABLE public.profile (
    profile_id integer NOT NULL,
    icon character varying(255),
    name character varying(100) NOT NULL,
    client_email character varying(255) NOT NULL
);


ALTER TABLE public.profile OWNER TO guedesa;

--
-- Name: profile_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: guedesa
--

CREATE SEQUENCE public.profile_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.profile_profile_id_seq OWNER TO guedesa;

--
-- Name: profile_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: guedesa
--

ALTER SEQUENCE public.profile_profile_id_seq OWNED BY public.profile.profile_id;


--
-- Name: rating; Type: TABLE; Schema: public; Owner: guedesa
--

CREATE TABLE public.rating (
    profile_id integer NOT NULL,
    video_id integer NOT NULL,
    rating numeric(3,1),
    CONSTRAINT rating_rating_check CHECK (((rating >= (0)::numeric) AND (rating <= (10)::numeric)))
);


ALTER TABLE public.rating OWNER TO guedesa;

--
-- Name: role; Type: TABLE; Schema: public; Owner: guedesa
--

CREATE TABLE public.role (
    role_id integer NOT NULL,
    name character varying(100) NOT NULL,
    first_name character varying(100),
    image character varying(255)
);


ALTER TABLE public.role OWNER TO guedesa;

--
-- Name: role_role_id_seq; Type: SEQUENCE; Schema: public; Owner: guedesa
--

CREATE SEQUENCE public.role_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.role_role_id_seq OWNER TO guedesa;

--
-- Name: role_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: guedesa
--

ALTER SEQUENCE public.role_role_id_seq OWNED BY public.role.role_id;


--
-- Name: series; Type: TABLE; Schema: public; Owner: guedesa
--

CREATE TABLE public.series (
    series_id integer NOT NULL,
    title character varying(255) NOT NULL
);


ALTER TABLE public.series OWNER TO guedesa;

--
-- Name: series_series_id_seq; Type: SEQUENCE; Schema: public; Owner: guedesa
--

CREATE SEQUENCE public.series_series_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.series_series_id_seq OWNER TO guedesa;

--
-- Name: series_series_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: guedesa
--

ALTER SEQUENCE public.series_series_id_seq OWNED BY public.series.series_id;


--
-- Name: video; Type: TABLE; Schema: public; Owner: guedesa
--

CREATE TABLE public.video (
    video_id integer NOT NULL,
    main_image character varying(255),
    title character varying(255) NOT NULL,
    duration integer,
    production_year integer,
    series_id integer,
    season integer,
    episode_number integer
);


ALTER TABLE public.video OWNER TO guedesa;

--
-- Name: video_label; Type: TABLE; Schema: public; Owner: guedesa
--

CREATE TABLE public.video_label (
    profile_id integer NOT NULL,
    label_id integer NOT NULL,
    video_id integer NOT NULL
);


ALTER TABLE public.video_label OWNER TO guedesa;

--
-- Name: video_video_id_seq; Type: SEQUENCE; Schema: public; Owner: guedesa
--

CREATE SEQUENCE public.video_video_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.video_video_id_seq OWNER TO guedesa;

--
-- Name: video_video_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: guedesa
--

ALTER SEQUENCE public.video_video_id_seq OWNED BY public.video.video_id;


--
-- Name: watch; Type: TABLE; Schema: public; Owner: guedesa
--

CREATE TABLE public.watch (
    profile_id integer NOT NULL,
    video_id integer NOT NULL,
    "timestamp" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.watch OWNER TO guedesa;

--
-- Name: genre genre_id; Type: DEFAULT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.genre ALTER COLUMN genre_id SET DEFAULT nextval('public.genre_genre_id_seq'::regclass);


--
-- Name: label label_id; Type: DEFAULT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.label ALTER COLUMN label_id SET DEFAULT nextval('public.label_label_id_seq'::regclass);


--
-- Name: person person_id; Type: DEFAULT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.person ALTER COLUMN person_id SET DEFAULT nextval('public.person_person_id_seq'::regclass);


--
-- Name: profile profile_id; Type: DEFAULT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.profile ALTER COLUMN profile_id SET DEFAULT nextval('public.profile_profile_id_seq'::regclass);


--
-- Name: role role_id; Type: DEFAULT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.role ALTER COLUMN role_id SET DEFAULT nextval('public.role_role_id_seq'::regclass);


--
-- Name: series series_id; Type: DEFAULT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.series ALTER COLUMN series_id SET DEFAULT nextval('public.series_series_id_seq'::regclass);


--
-- Name: video video_id; Type: DEFAULT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.video ALTER COLUMN video_id SET DEFAULT nextval('public.video_video_id_seq'::regclass);


--
-- Data for Name: acts_in; Type: TABLE DATA; Schema: public; Owner: guedesa
--

COPY public.acts_in (role_id, video_id, person_id) FROM stdin;
1	1	1
2	2	2
3	3	3
5	5	4
6	6	5
7	7	6
9	9	7
10	10	8
11	11	9
12	16	10
13	21	11
14	25	12
15	28	13
16	28	14
\.


--
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: guedesa
--

COPY public.client (email, last_name, first_name, address, subscription_end_date, subscription_type) FROM stdin;
jean.dupont@wanadoo.fr	Dupont	Jean	42 Rue de la Paix, 75002 Paris	2025-12-31	Premium
marie.leclerc@orange.fr	Leclerc	Marie	15 Avenue Victor Hugo, 69003 Lyon	2025-06-30	Standard
pierre.moreau@sfr.fr	Moreau	Pierre	8 Boulevard Michelet, 13008 Marseille	2026-03-15	Premium
sophie.bernard@free.fr	Bernard	Sophie	23 Allée Jean Jaurès, 31000 Toulouse	2025-09-20	Basic
antoine.petit@gmail.com	Petit	Antoine	67 Promenade des Anglais, 06000 Nice	2026-01-10	Premium
\.


--
-- Data for Name: directed_by; Type: TABLE DATA; Schema: public; Owner: guedesa
--

COPY public.directed_by (video_id, person_id) FROM stdin;
16	16
17	17
18	17
19	18
20	19
21	20
22	20
23	21
24	21
25	22
26	22
27	23
28	24
29	24
30	25
\.


--
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: guedesa
--

COPY public.genre (genre_id, name) FROM stdin;
1	Action
2	Drama
3	Comedy
4	Sci-Fi
5	Thriller
6	Romance
7	Horror
8	Animation
9	Documentary
10	Fantasy
\.


--
-- Data for Name: has_genre; Type: TABLE DATA; Schema: public; Owner: guedesa
--

COPY public.has_genre (genre_id, video_id) FROM stdin;
1	1
4	1
4	2
5	2
2	3
2	4
5	4
1	5
5	5
2	6
6	6
4	7
2	7
2	8
2	9
5	9
2	10
5	11
7	11
8	12
10	12
2	13
5	13
2	14
2	15
6	15
\.


--
-- Data for Name: label; Type: TABLE DATA; Schema: public; Owner: guedesa
--

COPY public.label (label_id, title) FROM stdin;
1	Favorites
2	Watch Later
3	Classics
4	Mind-Bending
5	Rewatch
6	Family Night
7	Date Night
8	Action Pack
9	Tearjerker
10	Feel Good
\.


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: guedesa
--

COPY public.person (person_id, last_name, first_name) FROM stdin;
1	Reeves	Keanu
2	DiCaprio	Leonardo
3	Freeman	Morgan
4	Bale	Christian
5	Hanks	Tom
6	McConaughey	Matthew
7	Pitt	Brad
8	De Niro	Robert
9	Hopkins	Anthony
10	Cranston	Bryan
11	Ryder	Winona
12	Carell	Steve
13	Clarke	Emilia
14	Harington	Kit
15	Cavill	Henry
16	Gilligan	Vince
17	Bernstein	Adam
18	McKay	Jim
19	Brock	Tricia
20	The Duffer Brothers	
21	Levy	Shawn
22	Kwapis	Ken
23	Whittingham	Ken
24	Van Patten	Tim
25	Kirk	Brian
\.


--
-- Data for Name: profile; Type: TABLE DATA; Schema: public; Owner: guedesa
--

COPY public.profile (profile_id, icon, name, client_email) FROM stdin;
1	https://cdn.videoflex.com/icons/profiles/cthulhu.png	Cthulhu	jean.dupont@wanadoo.fr
2	https://cdn.videoflex.com/icons/profiles/azathoth.png	Azathoth	jean.dupont@wanadoo.fr
3	https://cdn.videoflex.com/icons/profiles/pennywise.png	Pennywise	marie.leclerc@orange.fr
4	https://cdn.videoflex.com/icons/profiles/nyarlathotep.png	Nyarlathotep	pierre.moreau@sfr.fr
5	https://cdn.videoflex.com/icons/profiles/randall_flagg.png	Randall_Flagg	pierre.moreau@sfr.fr
6	https://cdn.videoflex.com/icons/profiles/shub_niggurath.png	Shub-Niggurath	sophie.bernard@free.fr
7	https://cdn.videoflex.com/icons/profiles/cujo.png	Cujo	antoine.petit@gmail.com
8	https://cdn.videoflex.com/icons/profiles/yog_sothoth.png	Yog-Sothoth	antoine.petit@gmail.com
\.


--
-- Data for Name: rating; Type: TABLE DATA; Schema: public; Owner: guedesa
--

COPY public.rating (profile_id, video_id, rating) FROM stdin;
1	1	9.5
1	2	9.0
1	3	10.0
1	5	9.2
2	12	9.8
2	15	8.5
3	2	8.8
3	7	9.1
3	13	9.0
4	1	9.3
4	5	9.5
4	10	8.7
5	6	9.0
5	15	9.2
6	3	9.5
6	6	8.8
6	13	9.3
7	1	8.5
7	2	9.0
7	7	8.9
1	16	9.5
1	17	8.8
1	18	9.0
3	21	9.2
3	22	9.0
3	23	8.5
4	16	9.0
4	27	9.5
4	28	9.3
7	21	8.7
7	24	7.5
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: guedesa
--

COPY public.role (role_id, name, first_name, image) FROM stdin;
1	Neo	\N	neo.jpg
2	Cobb	Dom	cobb.jpg
3	Red	Ellis Boyd	red.jpg
4	Vega	Vincent	vincent.jpg
5	Batman	\N	batman.jpg
6	Forrest	Gump	forrest.jpg
7	Cooper	Joseph	cooper.jpg
8	Corleone	Vito	vito.jpg
9	Durden	Tyler	tyler.jpg
10	Conway	Henry	henry.jpg
11	Lecter	Hannibal	lecter.jpg
12	White	Walter	walter.jpg
13	Byers	Joyce	joyce.jpg
14	Scott	Michael	michael.jpg
15	Targaryen	Daenerys	daenerys.jpg
16	Snow	Jon	jon.jpg
17	Rivia	Geralt of	geralt.jpg
\.


--
-- Data for Name: series; Type: TABLE DATA; Schema: public; Owner: guedesa
--

COPY public.series (series_id, title) FROM stdin;
1	Breaking Bad
2	Stranger Things
3	The Office
4	Game of Thrones
5	Black Mirror
6	The Crown
7	Money Heist
8	Dark
9	The Witcher
10	Squid Game
\.


--
-- Data for Name: video; Type: TABLE DATA; Schema: public; Owner: guedesa
--

COPY public.video (video_id, main_image, title, duration, production_year, series_id, season, episode_number) FROM stdin;
1	https://cdn.videoflex.com/images/movies/the_matrix.jpg	The Matrix	136	1999	\N	\N	\N
2	https://cdn.videoflex.com/images/movies/inception.jpg	Inception	148	2010	\N	\N	\N
3	https://cdn.videoflex.com/images/movies/the_shawshank_redemption.jpg	The Shawshank Redemption	142	1994	\N	\N	\N
4	https://cdn.videoflex.com/images/movies/pulp_fiction.jpg	Pulp Fiction	154	1994	\N	\N	\N
5	https://cdn.videoflex.com/images/movies/the_dark_knight.jpg	The Dark Knight	152	2008	\N	\N	\N
6	https://cdn.videoflex.com/images/movies/forrest_gump.jpg	Forrest Gump	142	1994	\N	\N	\N
7	https://cdn.videoflex.com/images/movies/interstellar.jpg	Interstellar	169	2014	\N	\N	\N
8	https://cdn.videoflex.com/images/movies/the_godfather.jpg	The Godfather	175	1972	\N	\N	\N
9	https://cdn.videoflex.com/images/movies/fight_club.jpg	Fight Club	139	1999	\N	\N	\N
10	https://cdn.videoflex.com/images/movies/goodfellas.jpg	Goodfellas	146	1990	\N	\N	\N
11	https://cdn.videoflex.com/images/movies/the_silence_of_the_lambs.jpg	The Silence of the Lambs	118	1991	\N	\N	\N
12	https://cdn.videoflex.com/images/movies/spirited_away.jpg	Spirited Away	125	2001	\N	\N	\N
13	https://cdn.videoflex.com/images/movies/parasite.jpg	Parasite	132	2019	\N	\N	\N
14	https://cdn.videoflex.com/images/movies/whiplash.jpg	Whiplash	106	2014	\N	\N	\N
15	https://cdn.videoflex.com/images/movies/la_la_land.jpg	La La Land	128	2016	\N	\N	\N
16	https://cdn.videoflex.com/images/series/breaking_bad/s01e01.jpg	Pilot	58	2008	1	1	1
17	https://cdn.videoflex.com/images/series/breaking_bad/s01e02.jpg	Cat's in the Bag...	48	2008	1	1	2
18	https://cdn.videoflex.com/images/series/breaking_bad/s01e03.jpg	...And the Bag's in the River	48	2008	1	1	3
19	https://cdn.videoflex.com/images/series/breaking_bad/s01e04.jpg	Cancer Man	48	2008	1	1	4
20	https://cdn.videoflex.com/images/series/breaking_bad/s01e05.jpg	Gray Matter	48	2008	1	1	5
21	https://cdn.videoflex.com/images/series/stranger_things/s01e01.jpg	The Vanishing of Will Byers	47	2016	2	1	1
22	https://cdn.videoflex.com/images/series/stranger_things/s01e02.jpg	The Weirdo on Maple Street	55	2016	2	1	2
23	https://cdn.videoflex.com/images/series/stranger_things/s01e03.jpg	Holly, Jolly	51	2016	2	1	3
24	https://cdn.videoflex.com/images/series/stranger_things/s01e04.jpg	The Body	50	2016	2	1	4
25	https://cdn.videoflex.com/images/series/the_office/s01e01.jpg	Pilot	23	2005	3	1	1
26	https://cdn.videoflex.com/images/series/the_office/s01e02.jpg	Diversity Day	22	2005	3	1	2
27	https://cdn.videoflex.com/images/series/the_office/s01e03.jpg	Health Care	22	2005	3	1	3
28	https://cdn.videoflex.com/images/series/game_of_thrones/s01e01.jpg	Winter Is Coming	62	2011	4	1	1
29	https://cdn.videoflex.com/images/series/game_of_thrones/s01e02.jpg	The Kingsroad	56	2011	4	1	2
30	https://cdn.videoflex.com/images/series/game_of_thrones/s01e03.jpg	Lord Snow	58	2011	4	1	3
\.


--
-- Data for Name: video_label; Type: TABLE DATA; Schema: public; Owner: guedesa
--

COPY public.video_label (profile_id, label_id, video_id) FROM stdin;
1	1	1
1	3	3
1	4	1
2	6	12
2	10	15
3	1	2
3	7	7
4	1	5
4	8	1
5	7	14
5	9	6
\.


--
-- Data for Name: watch; Type: TABLE DATA; Schema: public; Owner: guedesa
--

COPY public.watch (profile_id, video_id, "timestamp") FROM stdin;
1	1	2025-12-01 20:30:00
1	2	2025-12-05 21:00:00
1	3	2025-12-10 19:45:00
2	12	2025-11-20 18:30:00
2	15	2025-12-08 19:00:00
3	2	2025-12-03 21:30:00
3	7	2025-12-12 20:15:00
4	1	2025-11-25 22:00:00
4	5	2025-12-02 20:30:00
\.


--
-- Name: genre_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: guedesa
--

SELECT pg_catalog.setval('public.genre_genre_id_seq', 10, true);


--
-- Name: label_label_id_seq; Type: SEQUENCE SET; Schema: public; Owner: guedesa
--

SELECT pg_catalog.setval('public.label_label_id_seq', 10, true);


--
-- Name: person_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: guedesa
--

SELECT pg_catalog.setval('public.person_person_id_seq', 25, true);


--
-- Name: profile_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: guedesa
--

SELECT pg_catalog.setval('public.profile_profile_id_seq', 8, true);


--
-- Name: role_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: guedesa
--

SELECT pg_catalog.setval('public.role_role_id_seq', 17, true);


--
-- Name: series_series_id_seq; Type: SEQUENCE SET; Schema: public; Owner: guedesa
--

SELECT pg_catalog.setval('public.series_series_id_seq', 10, true);


--
-- Name: video_video_id_seq; Type: SEQUENCE SET; Schema: public; Owner: guedesa
--

SELECT pg_catalog.setval('public.video_video_id_seq', 30, true);


--
-- Name: acts_in acts_in_pkey; Type: CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.acts_in
    ADD CONSTRAINT acts_in_pkey PRIMARY KEY (role_id, video_id, person_id);


--
-- Name: client client_pkey; Type: CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (email);


--
-- Name: directed_by directed_by_pkey; Type: CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.directed_by
    ADD CONSTRAINT directed_by_pkey PRIMARY KEY (video_id, person_id);


--
-- Name: genre genre_name_key; Type: CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_name_key UNIQUE (name);


--
-- Name: genre genre_pkey; Type: CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (genre_id);


--
-- Name: has_genre has_genre_pkey; Type: CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.has_genre
    ADD CONSTRAINT has_genre_pkey PRIMARY KEY (genre_id, video_id);


--
-- Name: label label_pkey; Type: CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.label
    ADD CONSTRAINT label_pkey PRIMARY KEY (label_id);


--
-- Name: person person_pkey; Type: CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (person_id);


--
-- Name: profile profile_pkey; Type: CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_pkey PRIMARY KEY (profile_id);


--
-- Name: rating rating_pkey; Type: CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_pkey PRIMARY KEY (profile_id, video_id);


--
-- Name: role role_pkey; Type: CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (role_id);


--
-- Name: series series_pkey; Type: CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.series
    ADD CONSTRAINT series_pkey PRIMARY KEY (series_id);


--
-- Name: video_label video_label_pkey; Type: CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.video_label
    ADD CONSTRAINT video_label_pkey PRIMARY KEY (profile_id, label_id, video_id);


--
-- Name: video video_pkey; Type: CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.video
    ADD CONSTRAINT video_pkey PRIMARY KEY (video_id);


--
-- Name: watch watch_pkey; Type: CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.watch
    ADD CONSTRAINT watch_pkey PRIMARY KEY (profile_id, video_id);


--
-- Name: acts_in acts_in_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.acts_in
    ADD CONSTRAINT acts_in_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.person(person_id) ON DELETE CASCADE;


--
-- Name: acts_in acts_in_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.acts_in
    ADD CONSTRAINT acts_in_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.role(role_id) ON DELETE CASCADE;


--
-- Name: acts_in acts_in_video_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.acts_in
    ADD CONSTRAINT acts_in_video_id_fkey FOREIGN KEY (video_id) REFERENCES public.video(video_id) ON DELETE CASCADE;


--
-- Name: directed_by directed_by_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.directed_by
    ADD CONSTRAINT directed_by_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.person(person_id) ON DELETE CASCADE;


--
-- Name: directed_by directed_by_video_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.directed_by
    ADD CONSTRAINT directed_by_video_id_fkey FOREIGN KEY (video_id) REFERENCES public.video(video_id) ON DELETE CASCADE;


--
-- Name: has_genre has_genre_genre_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.has_genre
    ADD CONSTRAINT has_genre_genre_id_fkey FOREIGN KEY (genre_id) REFERENCES public.genre(genre_id) ON DELETE CASCADE;


--
-- Name: has_genre has_genre_video_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.has_genre
    ADD CONSTRAINT has_genre_video_id_fkey FOREIGN KEY (video_id) REFERENCES public.video(video_id) ON DELETE CASCADE;


--
-- Name: profile profile_client_email_fkey; Type: FK CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_client_email_fkey FOREIGN KEY (client_email) REFERENCES public.client(email) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: rating rating_profile_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_profile_id_fkey FOREIGN KEY (profile_id) REFERENCES public.profile(profile_id) ON DELETE CASCADE;


--
-- Name: rating rating_video_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_video_id_fkey FOREIGN KEY (video_id) REFERENCES public.video(video_id) ON DELETE CASCADE;


--
-- Name: video_label video_label_label_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.video_label
    ADD CONSTRAINT video_label_label_id_fkey FOREIGN KEY (label_id) REFERENCES public.label(label_id) ON DELETE CASCADE;


--
-- Name: video_label video_label_profile_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.video_label
    ADD CONSTRAINT video_label_profile_id_fkey FOREIGN KEY (profile_id) REFERENCES public.profile(profile_id) ON DELETE CASCADE;


--
-- Name: video_label video_label_video_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.video_label
    ADD CONSTRAINT video_label_video_id_fkey FOREIGN KEY (video_id) REFERENCES public.video(video_id) ON DELETE CASCADE;


--
-- Name: video video_series_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.video
    ADD CONSTRAINT video_series_id_fkey FOREIGN KEY (series_id) REFERENCES public.series(series_id) ON DELETE CASCADE;


--
-- Name: watch watch_profile_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.watch
    ADD CONSTRAINT watch_profile_id_fkey FOREIGN KEY (profile_id) REFERENCES public.profile(profile_id) ON DELETE CASCADE;


--
-- Name: watch watch_video_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: guedesa
--

ALTER TABLE ONLY public.watch
    ADD CONSTRAINT watch_video_id_fkey FOREIGN KEY (video_id) REFERENCES public.video(video_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict kHW3nkTNQAEVNcIjcMFJ8PUol0vJzdoeq7JvBdd0KZiSTKCcolZggMtdgxybA4b

