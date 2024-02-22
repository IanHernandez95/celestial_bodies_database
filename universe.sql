--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: asteroids; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroids (
    asteroids_id integer NOT NULL,
    name character varying(30) NOT NULL,
    velocity integer
);


ALTER TABLE public.asteroids OWNER TO freecodecamp;

--
-- Name: asteroids_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroids_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroids_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroids_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroids_asteroid_id_seq OWNED BY public.asteroids.asteroids_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric(5,2),
    decription text,
    is_visible boolean
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric(6,2),
    decription text,
    is_spherical boolean,
    planet_id integer
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
    distance_from_earth integer,
    age_in_millions_of_years numeric(5,2),
    decription text,
    has_life boolean,
    star_id integer
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
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric(5,2),
    decription text,
    galaxy_id integer
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
-- Name: asteroids asteroids_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids ALTER COLUMN asteroids_id SET DEFAULT nextval('public.asteroids_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroids; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroids VALUES (1, 'itokawa', 300);
INSERT INTO public.asteroids VALUES (2, 'Ryugu', 500);
INSERT INTO public.asteroids VALUES (3, 'Didymos', 600);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 10.01, 'La galaxia de Andrómeda, también conocida como Galaxia Espiral M31, Messier 31 o NGC 224, es una galaxia espiral con un diámetro de 220.000 años luz..', NULL);
INSERT INTO public.galaxy VALUES (2, 'Cigarro', 13.30, 'galaxia irregular que ha experimentado unos espectaculares brotes de formación estelar en su región central...', NULL);
INSERT INTO public.galaxy VALUES (3, 'IC 3583', 10.10, 'Este delicado grupo de estrellas azules es en realidad una galaxia irregular llamada IC 3583...', NULL);
INSERT INTO public.galaxy VALUES (4, 'NGC 6946', 12.03, 'NGC 6946 es una galaxia espiral que se encuentra aproximadamente a 22 millones de años luz de distancia...', NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 15.20, 'La galaxia del Sombrero es una galaxia lenticular de la constelación de Virgo a una distancia de 29.35 millones de años luz...', NULL);
INSERT INTO public.galaxy VALUES (6, 'Molinete', 10.50, 'La galaxia del Molinete es una galaxia espiral a 25 millones de años luz en la constelación Osa Mayor...', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4500.00, 'Earth''s natural satellite', true, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 4.32, 'Mars''s innermost moon', true, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 1.48, 'Mars''s outermost moon', true, 4);
INSERT INTO public.moon VALUES (4, 'Ganymede', 4500.00, 'Jupiter''s largest moon', true, 5);
INSERT INTO public.moon VALUES (5, 'Callisto', 4500.00, 'One of Jupiter''s Galilean moons', true, 5);
INSERT INTO public.moon VALUES (6, 'Io', 4500.00, 'Innermost of the Galilean moons of Jupiter', true, 5);
INSERT INTO public.moon VALUES (7, 'Titan', 4500.00, 'Largest moon of Saturn', true, 6);
INSERT INTO public.moon VALUES (8, 'Enceladus', 100.00, 'Moon of Saturn known for its ice geysers', true, 6);
INSERT INTO public.moon VALUES (9, 'Triton', 4500.00, 'Neptune''s largest moon', true, 8);
INSERT INTO public.moon VALUES (10, 'Nereid', 4500.00, 'Third-largest moon of Neptune', true, 8);
INSERT INTO public.moon VALUES (11, 'Charon', 4500.00, 'Largest moon of Pluto', true, 9);
INSERT INTO public.moon VALUES (12, 'Styx', 4500.00, 'Moon of Pluto', true, 9);
INSERT INTO public.moon VALUES (13, 'Europa', 4500.00, 'One of Jupiter''s Galilean moons', true, 5);
INSERT INTO public.moon VALUES (14, 'Mimas', 4500.00, 'Saturn''s moon known for its large Herschel Crater', true, 6);
INSERT INTO public.moon VALUES (15, 'Rhea', 4500.00, 'Second-largest moon of Saturn', true, 6);
INSERT INTO public.moon VALUES (16, 'Miranda', 4500.00, 'Uranus''s smallest moon', true, 7);
INSERT INTO public.moon VALUES (17, 'Ariel', 4500.00, 'Uranus''s brightest and fourth-largest moon', true, 7);
INSERT INTO public.moon VALUES (18, 'Umbriel', 4500.00, 'Uranus''s third-largest moon', true, 7);
INSERT INTO public.moon VALUES (19, 'Oberon', 4500.00, 'Uranus''s second-largest moon', true, 7);
INSERT INTO public.moon VALUES (20, 'Titania', 4500.00, 'Uranus''s largest moon', true, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 57, 67.50, 'Description of Mercury', false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 108, 67.50, 'Description of Venus', false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 0, 67.50, 'Description of Earth', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 227, 67.50, 'Description of Mars', false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 778, 67.50, 'Description of Jupiter', false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 1433, 67.50, 'Description of Saturn', false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 2872, 67.50, 'Description of Uranus', false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 4495, 67.50, 'Description of Neptune', false, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 5906, 67.50, 'Description of Pluto', false, 1);
INSERT INTO public.planet VALUES (10, 'Ceres', 414000, 67.50, 'Description of Ceres', false, 2);
INSERT INTO public.planet VALUES (11, 'Eris', 10, 67.50, 'Description of Eris', false, 3);
INSERT INTO public.planet VALUES (12, 'Haumea', 50, 67.50, 'Description of Haumea', false, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 1500000, 4.60, 'Estrella mas cercana a la tierra', 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 3700000, 6.00, 'Segunda estrella mas cercana la tierra', 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri B', 4100000, 4.80, 'Tercera estrella mas cercana a la tierra', 1);
INSERT INTO public.star VALUES (4, 'NML CYGNI', 99999999, 10.50, 'Estrella mas grande conocida', 1);
INSERT INTO public.star VALUES (5, 'WOH G64', NULL, NULL, 'Es una hipergigante roja', 1);
INSERT INTO public.star VALUES (6, 'VY Canis Majoris', 99999999, 15.20, 'Fue un tiempo la estrella mas grande conocida', 1);


--
-- Name: asteroids_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroids_asteroid_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroids asteroids_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_name_key UNIQUE (name);


--
-- Name: asteroids asteroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_pkey PRIMARY KEY (asteroids_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

