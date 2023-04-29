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
-- Name: artificial_satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.artificial_satellite (
    artificial_satellite_id integer NOT NULL,
    name character varying(60) NOT NULL,
    type_of_orbit character varying(60) NOT NULL,
    planet_id integer
);


ALTER TABLE public.artificial_satellite OWNER TO freecodecamp;

--
-- Name: artificial_satellite_artificial_satellite_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.artificial_satellite_artificial_satellite_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artificial_satellite_artificial_satellite_seq OWNER TO freecodecamp;

--
-- Name: artificial_satellite_artificial_satellite_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.artificial_satellite_artificial_satellite_seq OWNED BY public.artificial_satellite.artificial_satellite_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    age_in_million_of_years numeric(7,2) NOT NULL,
    distance_from_earth numeric(7,2) NOT NULL
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
    name character varying(60) NOT NULL,
    has_life boolean NOT NULL,
    size_km double precision,
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
    name character varying(60) NOT NULL,
    description text,
    number_of_moons integer,
    has_life boolean NOT NULL,
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
    name character varying(60) NOT NULL,
    number_of_planets integer,
    distance_from_earth numeric(7,2) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_start_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_start_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_start_id_seq OWNER TO freecodecamp;

--
-- Name: star_start_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_start_id_seq OWNED BY public.star.star_id;


--
-- Name: artificial_satellite artificial_satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artificial_satellite ALTER COLUMN artificial_satellite_id SET DEFAULT nextval('public.artificial_satellite_artificial_satellite_seq'::regclass);


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

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_start_id_seq'::regclass);


--
-- Data for Name: artificial_satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.artificial_satellite VALUES (1, 'international space station', 'low earth orbit', 1);
INSERT INTO public.artificial_satellite VALUES (2, 'telstar', 'geostationary orbit', 1);
INSERT INTO public.artificial_satellite VALUES (3, 'intelsat', 'geostationary orbit', 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 'is the closest big galaxy to the Milky Way and is expected to collide with us in the future', 10000.00, 2.50);
INSERT INTO public.galaxy VALUES (2, 'condor', 'the largest known spiral galaxy', 12000.00, 212.00);
INSERT INTO public.galaxy VALUES (3, 'hoag object', 'it is of the subtype hoag-type galaxy, and may in fact be a polar-ring galaxy', 9500.00, 612.00);
INSERT INTO public.galaxy VALUES (4, 'large magellanic', 'is the fourth largest galaxy in the local group', 11000.00, 0.16);
INSERT INTO public.galaxy VALUES (5, 'small magellanic cloud', 'forms a pair with the LMC', 10300.00, 0.20);
INSERT INTO public.galaxy VALUES (6, 'Milky Way', 'it is our galaxy', 10250.00, 0.00);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', false, 3474, 1);
INSERT INTO public.moon VALUES (2, 'phobos', false, 22.2, 11);
INSERT INTO public.moon VALUES (3, 'deimos', false, 12.6, 11);
INSERT INTO public.moon VALUES (4, 'titan', false, 5149, 16);
INSERT INTO public.moon VALUES (5, 'rhea', false, 1500, 16);
INSERT INTO public.moon VALUES (6, 'lapetus', false, 1470, 16);
INSERT INTO public.moon VALUES (7, 'dione', false, 1123, 16);
INSERT INTO public.moon VALUES (8, 'tethys', false, 1062, 16);
INSERT INTO public.moon VALUES (9, 'enceladus', false, 504, 16);
INSERT INTO public.moon VALUES (10, 'ganymede', false, 5268, 15);
INSERT INTO public.moon VALUES (11, 'callisto', false, 4821, 15);
INSERT INTO public.moon VALUES (12, 'io', false, 3642, 15);
INSERT INTO public.moon VALUES (13, 'europa', false, 3122, 15);
INSERT INTO public.moon VALUES (14, 'amalthea', false, 250, 15);
INSERT INTO public.moon VALUES (15, 'himalia', false, 170, 15);
INSERT INTO public.moon VALUES (16, 'triton', false, 2710, 17);
INSERT INTO public.moon VALUES (17, 'nereid', false, 340, 17);
INSERT INTO public.moon VALUES (18, 'naidad', false, 58, 17);
INSERT INTO public.moon VALUES (19, 'thalassa', false, 82, 17);
INSERT INTO public.moon VALUES (20, 'despina', false, 150, 17);
INSERT INTO public.moon VALUES (21, 'galatea', false, 158, 17);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 'it is our home', 1, true, 1);
INSERT INTO public.planet VALUES (11, 'mars', 'it is our clisest friend', 2, false, 1);
INSERT INTO public.planet VALUES (12, 'proxima centauri d', 'it has one-quarter of the mass of earth', 0, false, 2);
INSERT INTO public.planet VALUES (13, 'proxima centauri b', 'together with its brother d is the closest known exoplanet', 0, false, 2);
INSERT INTO public.planet VALUES (14, 'venus', 'second planet from the sun', 0, false, 1);
INSERT INTO public.planet VALUES (15, 'jupiter', 'largest planet from the solar system', 95, false, 1);
INSERT INTO public.planet VALUES (16, 'saturn', 'has a lot of rings', 83, false, 1);
INSERT INTO public.planet VALUES (17, 'neptune', 'its the eight planet', 14, false, 1);
INSERT INTO public.planet VALUES (18, 'mercury', 'it is the first and smallest planet from the solar system', 0, false, 1);
INSERT INTO public.planet VALUES (19, 'uranus', 'discovered in 1781', 27, false, 1);
INSERT INTO public.planet VALUES (20, 'janssen', 'it has eight times the mass of the earth', 0, false, 5);
INSERT INTO public.planet VALUES (21, 'galileo', 'it is the second planet from this system', 0, false, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 8, 0.00, 6);
INSERT INTO public.star VALUES (2, 'proxima centauri', 2, 0.01, NULL);
INSERT INTO public.star VALUES (3, 'tau ceti', 4, 0.02, NULL);
INSERT INTO public.star VALUES (4, 'lalande', 2, 0.01, NULL);
INSERT INTO public.star VALUES (5, 'cancri', 5, 0.05, NULL);
INSERT INTO public.star VALUES (6, 'gliese', 3, 0.02, NULL);


--
-- Name: artificial_satellite_artificial_satellite_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.artificial_satellite_artificial_satellite_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 21, true);


--
-- Name: star_start_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_start_id_seq', 6, true);


--
-- Name: artificial_satellite artificial_satellite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artificial_satellite
    ADD CONSTRAINT artificial_satellite_name_key UNIQUE (name);


--
-- Name: artificial_satellite artificial_satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artificial_satellite
    ADD CONSTRAINT artificial_satellite_pkey PRIMARY KEY (artificial_satellite_id);


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
-- Name: artificial_satellite artificial_satellite_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artificial_satellite
    ADD CONSTRAINT artificial_satellite_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

