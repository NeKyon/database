--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.5
-- Dumped by pg_dump version 9.6.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: actor_product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE actor_product (
    id integer NOT NULL,
    actor_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE actor_product OWNER TO postgres;

--
-- Name: actor_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE actor_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE actor_product_id_seq OWNER TO postgres;

--
-- Name: actor_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE actor_product_id_seq OWNED BY actor_product.id;


--
-- Name: actors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE actors (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    surname character varying(255) NOT NULL,
    nationality integer,
    year integer,
    sex character varying(7),
    alive_or_dead character varying(6),
    CONSTRAINT actors_year_check CHECK ((year > 1900))
);


ALTER TABLE actors OWNER TO postgres;

--
-- Name: actors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE actors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE actors_id_seq OWNER TO postgres;

--
-- Name: actors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE actors_id_seq OWNED BY actors.id;


--
-- Name: adviser_product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE adviser_product (
    id integer NOT NULL,
    product_id integer NOT NULL,
    adviser_id integer NOT NULL
);


ALTER TABLE adviser_product OWNER TO postgres;

--
-- Name: adviser_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE adviser_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE adviser_product_id_seq OWNER TO postgres;

--
-- Name: adviser_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE adviser_product_id_seq OWNED BY adviser_product.id;


--
-- Name: advisers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE advisers (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    surname character varying(255) NOT NULL
);


ALTER TABLE advisers OWNER TO postgres;

--
-- Name: advisers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE advisers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE advisers_id_seq OWNER TO postgres;

--
-- Name: advisers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE advisers_id_seq OWNED BY advisers.id;


--
-- Name: countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE countries (
    id integer NOT NULL,
    country character varying(255) NOT NULL
);


ALTER TABLE countries OWNER TO postgres;

--
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE countries_id_seq OWNER TO postgres;

--
-- Name: countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE countries_id_seq OWNED BY countries.id;


--
-- Name: director_product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE director_product (
    id integer NOT NULL,
    product_id integer NOT NULL,
    director_id integer NOT NULL
);


ALTER TABLE director_product OWNER TO postgres;

--
-- Name: director_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE director_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE director_product_id_seq OWNER TO postgres;

--
-- Name: director_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE director_product_id_seq OWNED BY director_product.id;


--
-- Name: directors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE directors (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    surname character varying(255) NOT NULL,
    nationality integer,
    year integer,
    sex character varying(7),
    alive_or_dead character varying(6),
    CONSTRAINT directors_year_check CHECK ((year > 1900))
);


ALTER TABLE directors OWNER TO postgres;

--
-- Name: directors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE directors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE directors_id_seq OWNER TO postgres;

--
-- Name: directors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE directors_id_seq OWNED BY directors.id;


--
-- Name: genres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE genres (
    id integer NOT NULL,
    genre character varying(255) NOT NULL
);


ALTER TABLE genres OWNER TO postgres;

--
-- Name: genres_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE genres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE genres_id_seq OWNER TO postgres;

--
-- Name: genres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE genres_id_seq OWNED BY genres.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE products (
    id integer NOT NULL,
    typename integer NOT NULL,
    name character varying(255) NOT NULL,
    genre integer,
    year integer
);


ALTER TABLE products OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE products_id_seq OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE products_id_seq OWNED BY products.id;


--
-- Name: type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE type (
    id integer NOT NULL,
    typename character varying(255) NOT NULL
);


ALTER TABLE type OWNER TO postgres;

--
-- Name: type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE type_id_seq OWNER TO postgres;

--
-- Name: type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE type_id_seq OWNED BY type.id;


--
-- Name: actor_product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY actor_product ALTER COLUMN id SET DEFAULT nextval('actor_product_id_seq'::regclass);


--
-- Name: actors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY actors ALTER COLUMN id SET DEFAULT nextval('actors_id_seq'::regclass);


--
-- Name: adviser_product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adviser_product ALTER COLUMN id SET DEFAULT nextval('adviser_product_id_seq'::regclass);


--
-- Name: advisers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY advisers ALTER COLUMN id SET DEFAULT nextval('advisers_id_seq'::regclass);


--
-- Name: countries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY countries ALTER COLUMN id SET DEFAULT nextval('countries_id_seq'::regclass);


--
-- Name: director_product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY director_product ALTER COLUMN id SET DEFAULT nextval('director_product_id_seq'::regclass);


--
-- Name: directors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY directors ALTER COLUMN id SET DEFAULT nextval('directors_id_seq'::regclass);


--
-- Name: genres id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY genres ALTER COLUMN id SET DEFAULT nextval('genres_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY products ALTER COLUMN id SET DEFAULT nextval('products_id_seq'::regclass);


--
-- Name: type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY type ALTER COLUMN id SET DEFAULT nextval('type_id_seq'::regclass);


--
-- Data for Name: actor_product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY actor_product (id, actor_id, product_id) FROM stdin;
1	1	1
2	2	2
3	3	3
4	4	3
5	5	4
6	6	5
7	7	6
8	8	9
9	1	10
10	2	11
11	9	12
12	10	13
13	3	14
14	11	14
16	13	15
17	14	17
18	15	19
19	16	19
20	17	22
\.


--
-- Name: actor_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('actor_product_id_seq', 20, true);


--
-- Data for Name: actors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY actors (id, name, surname, nationality, year, sex, alive_or_dead) FROM stdin;
1	Keanu	Reeves	1	1964	male	alive
2	Natalie	Portman	3	1981	female	alive
3	Ryan	Gosling	1	1980	male	alive
4	Emma	Stone	3	1988	female	alive
5	Jean-Claude	Van Damme	4	1960	male	alive
6	Tom	Cruise	3	1962	male	alive
7	Benedict	Cumberbatch	5	1976	male	alive
8	Ben	Affleck	3	1972	male	alive
9	John	Goodman	3	1952	male	alive
10	Jean	Dujardin	6	1972	male	alive
11	Christian	Bale	6	1974	male	alive
13	Jared	Leto	3	1971	male	alive
14	Jude	Law	5	1972	male	alive
15	Gal	Gadot	9	1985	female	alive
16	Chris	Pine	3	1980	male	alive
17	Stephen	Fry	5	1957	male	alive
\.


--
-- Name: actors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('actors_id_seq', 17, true);


--
-- Data for Name: adviser_product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY adviser_product (id, product_id, adviser_id) FROM stdin;
1	1	1
2	2	2
3	3	3
4	4	4
6	5	5
7	7	2
8	8	3
9	11	2
10	12	1
11	14	1
12	16	1
13	19	1
14	20	6
15	21	1
16	23	1
\.


--
-- Name: adviser_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('adviser_product_id_seq', 16, true);


--
-- Data for Name: advisers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY advisers (id, name, surname) FROM stdin;
1	Katya	Nikitina
2	Nastya	Assel
3	Luba	Grinenkova
4	Arsenii	Nechaev
5	Anya	Abelit
6	Lisa	Korsakova
\.


--
-- Name: advisers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('advisers_id_seq', 6, true);


--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY countries (id, country) FROM stdin;
1	Canada
2	Australia
3	USA
4	Belgium
5	England
6	France
7	Italy
8	China
9	Israel
\.


--
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('countries_id_seq', 9, true);


--
-- Data for Name: director_product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY director_product (id, product_id, director_id) FROM stdin;
1	1	1
2	2	2
3	3	3
4	4	4
5	5	5
6	6	6
7	7	7
8	8	8
9	9	9
10	10	10
11	11	11
12	12	12
13	13	13
14	14	14
15	15	15
16	16	16
17	17	17
18	18	18
19	19	19
\.


--
-- Name: director_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('director_product_id_seq', 19, true);


--
-- Data for Name: directors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY directors (id, name, surname, nationality, year, sex, alive_or_dead) FROM stdin;
1	Keanu	Reeves	1	1964	male	alive
3	Damien	Chazelle	3	1985	male	alive
2	James	McTeigue	2	1967	male	alive
5	James	Mangold	3	1963	male	alive
4	Newt	Arnold	3	1922	male	dead
6	David	Attwood	5	1952	male	alive
9	David	Fincher	3	1962	male	alive
7	Stuart	Hazeldine	5	1971	male	alive
8	Brian	Percival	5	1962	male	alive
10	Marti	Noxon	3	1964	female	alive
13	Jan	Kounen	6	1964	male	alive
14	Adam	McKay	3	1968	male	alive
15	Jaco	Van Dormael	4	1957	male	alive
16	Giuseppe	Tornatore	7	1956	male	alive
17	Leong	Po-Chih	5	1939	male	alive
18	Wong	Kar-wai	8	1958	male	alive
19	Patty	Jenkins	3	1971	female	alive
12	Brothers	Coen	3	1956	male	alive
11	Spencer	Susser	3	1901	male	alive
\.


--
-- Name: directors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('directors_id_seq', 20, true);


--
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY genres (id, genre) FROM stdin;
1	Action
2	Adventure
3	Comedy
4	Drama
6	Musical
7	Science Fiction
8	Western
9	Biographical
10	Detective
11	Fantasy
12	Romance
13	Superhero
14	Supernatural
15	Animated
16	Classic
17	Documentary
18	Martial arts
5	Thriller
\.


--
-- Name: genres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('genres_id_seq', 18, true);


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY products (id, typename, name, genre, year) FROM stdin;
1	1	Man of Tai Chi	18	2013
2	1	V for Vendetta	1	2005
3	1	La La Land	6	2016
4	1	Bloodsport	18	1988
5	1	Knight and Day	3	2010
6	1	Stuart: A Life Backwards	9	2007
7	1	Exam	5	2009
8	1	The Book Thief	4	2013
9	1	Gone Girl	10	2014
10	1	To the Bone	4	2017
11	1	Hesher	4	2010
12	1	The Big Lebowski	3	1998
13	1	99 francs	3	2007
14	1	The Big Short	9	2015
15	1	Mr. Nobody	11	2009
16	1	La leggenda del pianista sull`oceano	6	1998
17	1	The Wisdom of Crocodiles	5	1998
18	1	In the Mood for Love	4	2000
19	1	Wonder Woman	13	2017
20	2	Dead Like Me	3	2003
21	2	Westworld	8	2016
22	2	QI	3	2003
23	2	True Detective	10	2014
\.


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('products_id_seq', 23, true);


--
-- Data for Name: type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY type (id, typename) FROM stdin;
1	Film
2	Serial
\.


--
-- Name: type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('type_id_seq', 2, true);


--
-- Name: actor_product actor_product_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY actor_product
    ADD CONSTRAINT actor_product_pk PRIMARY KEY (id);


--
-- Name: actors actors_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY actors
    ADD CONSTRAINT actors_pk PRIMARY KEY (id);


--
-- Name: adviser_product adviser_product_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adviser_product
    ADD CONSTRAINT adviser_product_pk PRIMARY KEY (id);


--
-- Name: adviser_product adviser_product_product_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adviser_product
    ADD CONSTRAINT adviser_product_product_key UNIQUE (product_id);


--
-- Name: advisers advisers_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY advisers
    ADD CONSTRAINT advisers_pk PRIMARY KEY (id);


--
-- Name: countries countries_country_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY countries
    ADD CONSTRAINT countries_country_key UNIQUE (country);


--
-- Name: countries countries_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY countries
    ADD CONSTRAINT countries_pk PRIMARY KEY (id);


--
-- Name: director_product director_product_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY director_product
    ADD CONSTRAINT director_product_pk PRIMARY KEY (id);


--
-- Name: directors directors_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY directors
    ADD CONSTRAINT directors_pk PRIMARY KEY (id);


--
-- Name: genres genres_genre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY genres
    ADD CONSTRAINT genres_genre_key UNIQUE (genre);


--
-- Name: genres genres_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY genres
    ADD CONSTRAINT genres_pk PRIMARY KEY (id);


--
-- Name: products products_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY products
    ADD CONSTRAINT products_name_key UNIQUE (name);


--
-- Name: products products_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY products
    ADD CONSTRAINT products_pk PRIMARY KEY (id);


--
-- Name: type type_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY type
    ADD CONSTRAINT type_pk PRIMARY KEY (id);


--
-- Name: type type_typename_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY type
    ADD CONSTRAINT type_typename_key UNIQUE (typename);


--
-- Name: actor_product actor_product_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY actor_product
    ADD CONSTRAINT actor_product_fk0 FOREIGN KEY (actor_id) REFERENCES actors(id);


--
-- Name: actor_product actor_product_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY actor_product
    ADD CONSTRAINT actor_product_fk1 FOREIGN KEY (product_id) REFERENCES products(id);


--
-- Name: actors actors_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY actors
    ADD CONSTRAINT actors_fk0 FOREIGN KEY (nationality) REFERENCES countries(id);


--
-- Name: adviser_product adviser_product_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adviser_product
    ADD CONSTRAINT adviser_product_fk0 FOREIGN KEY (product_id) REFERENCES products(id);


--
-- Name: adviser_product adviser_product_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adviser_product
    ADD CONSTRAINT adviser_product_fk1 FOREIGN KEY (adviser_id) REFERENCES advisers(id);


--
-- Name: director_product director_product_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY director_product
    ADD CONSTRAINT director_product_fk0 FOREIGN KEY (product_id) REFERENCES products(id);


--
-- Name: director_product director_product_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY director_product
    ADD CONSTRAINT director_product_fk1 FOREIGN KEY (director_id) REFERENCES directors(id);


--
-- Name: directors directors_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY directors
    ADD CONSTRAINT directors_fk0 FOREIGN KEY (nationality) REFERENCES countries(id);


--
-- Name: products products_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY products
    ADD CONSTRAINT products_fk0 FOREIGN KEY (typename) REFERENCES type(id);


--
-- Name: products products_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY products
    ADD CONSTRAINT products_fk1 FOREIGN KEY (genre) REFERENCES genres(id);


--
-- PostgreSQL database dump complete
--

