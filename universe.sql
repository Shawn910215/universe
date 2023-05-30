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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    has_water boolean,
    is_spherical boolean,
    number integer
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
    name character varying NOT NULL,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    has_water boolean,
    is_spherical boolean,
    planet_id integer,
    number integer
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
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id text NOT NULL,
    big boolean NOT NULL,
    year_find date NOT NULL,
    name character varying,
    number integer
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    has_water boolean,
    is_spherical boolean,
    star_id integer,
    number integer
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
    name character varying NOT NULL,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    has_water boolean,
    is_spherical boolean,
    galaxy_id integer,
    number integer
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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'shang', false, 10, 10, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'shang', false, 10, 10, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'sdf', true, 20, 10, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'sdfsd', false, 10, 13, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'shang', false, 10, 10, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'sdf', true, 20, 10, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'sdfsd', false, 10, 13, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'shang', false, 10, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'sdf', true, 20, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'sdfsd', false, 10, 13, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'shang', false, 10, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'sdf', true, 20, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'sdfsd', false, 10, 13, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'shang', false, 10, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'sdf', true, 20, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'sdfsd', false, 10, 13, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'shang', false, 10, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'sdf', true, 20, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'sdfsd', false, 10, 13, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'shang', false, 10, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'sdf', true, 20, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'sdfsd', false, 10, 13, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'shang', false, 10, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'sdf', true, 20, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'sdfsd', false, 10, 13, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'shang', false, 10, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'sdf', true, 20, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'sdfsd', false, 10, 13, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'shang', false, 10, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'sdf', true, 20, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'sdfsd', false, 10, 13, NULL, NULL, NULL, NULL);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES ('SHANG', true, '1991-02-15', NULL, NULL);
INSERT INTO public.more_info VALUES ('YANG', true, '1991-02-15', NULL, NULL);
INSERT INTO public.more_info VALUES ('MIAO', true, '1991-02-15', NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'shang', false, 10, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'sdf', true, 20, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'sdfsd', false, 10, 13, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'shang', false, 10, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'sdf', true, 20, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'sdfsd', false, 10, 13, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'shang', false, 10, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'sdf', true, 20, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'sdfsd', false, 10, 13, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'shang', false, 10, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'sdf', true, 20, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'sdfsd', false, 10, 13, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'shang', false, 10, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'sdf', true, 20, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (15, 'sdfsd', false, 10, 13, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'shang', false, 10, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'sdf', true, 20, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'sdfsd', false, 10, 13, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'shang', false, 10, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'sdf', true, 20, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'sdfsd', false, 10, 13, NULL, NULL, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_number_key UNIQUE (number);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_number_key UNIQUE (number);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_info more_info_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_number_key UNIQUE (number);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: planet planet_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_number_key UNIQUE (number);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_number_key UNIQUE (number);


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

