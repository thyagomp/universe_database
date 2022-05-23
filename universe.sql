--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    mass_in_solar_masses numeric(10,2)
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: dark_hole_dark_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dark_hole_dark_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dark_hole_dark_hole_id_seq OWNER TO freecodecamp;

--
-- Name: dark_hole_dark_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dark_hole_dark_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_billion_years numeric(6,2),
    galaxy_type character varying(30),
    number_of_stars integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer NOT NULL,
    distance_from_planet numeric(10,2),
    is_spherical boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_inhabitants integer,
    has_life boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer,
    distance_from_earth numeric(10,2),
    is_spherical boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.dark_hole_dark_hole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, '3c273', 1000.00);
INSERT INTO public.black_hole VALUES (2, 'Arp 151', 6.50);
INSERT INTO public.black_hole VALUES (3, 'IC 1459', 350.00);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Andromeda, which is shortened from Andromeda Galaxy, gets its name from the area of the sky in which it appears, the constellation of Andromeda.', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Antennae', 'Appearance is similar to an insects antennae.', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Backward', 'It appears to rotate backwards, as the tips of the spiral arms point in the direction of rotation.', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Black Eye', 'It has a spectacular dark band of absorbing dust in front of the galaxys bright nucleus, giving rise to its nicknames of the "Black Eye" or "Evil Eye" galaxy.', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Bode', 'Named for Johann Elert Bode who discovered this galaxy in 1774.', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Butterfly', 'Looks are similar to a butterfly.', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'milk way', NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 5, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Deimos', 6, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Phobos', 6, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Io', 7, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 7, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', 7, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', 7, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Enceladus', 8, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Titan', 8, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Despina', 9, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Galatea', 9, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Halimede', 9, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Hippocamp', 9, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Laomedeia', 9, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Larissa', 9, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Naiad', 9, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Nereid', 9, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Neso', 9, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Proteus', 9, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Psamathe', 9, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Mercury', NULL, false, 7);
INSERT INTO public.planet VALUES (4, 'Venus', NULL, false, 7);
INSERT INTO public.planet VALUES (5, 'Earth', NULL, true, 7);
INSERT INTO public.planet VALUES (6, 'Mars', NULL, true, 7);
INSERT INTO public.planet VALUES (7, 'Jupiter', NULL, false, 7);
INSERT INTO public.planet VALUES (8, 'Saturn', NULL, false, 7);
INSERT INTO public.planet VALUES (9, 'Neptune', NULL, false, 7);
INSERT INTO public.planet VALUES (10, '14 Andromedae b', NULL, false, 1);
INSERT INTO public.planet VALUES (11, 'GJ 96 b', NULL, false, 1);
INSERT INTO public.planet VALUES (12, 'kappa Andromedae b', NULL, false, 1);
INSERT INTO public.planet VALUES (13, 'HD 5583 b', NULL, false, 1);
INSERT INTO public.planet VALUES (14, 'HD 1605 c', NULL, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha Andromedae', 60, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'Lambda Andromedae', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'Pi Andromedae', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'Beta Andromedae', 30, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'Gamma Andromedae', 55, NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'Star 01', 101, NULL, NULL, 5);
INSERT INTO public.star VALUES (7, 'sun', NULL, NULL, NULL, 7);


--
-- Name: dark_hole_dark_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dark_hole_dark_hole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: black_hole dark_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT dark_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: planet unique_const; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_const UNIQUE (name);


--
-- Name: black_hole unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: galaxy unique_name_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name_galaxy UNIQUE (name);


--
-- Name: moon unique_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name_moon UNIQUE (name);


--
-- Name: star unique_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name_star UNIQUE (name);


--
-- Name: star fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

