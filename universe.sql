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
-- Name: admin; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.admin (
    admin_id character varying NOT NULL,
    passward character varying,
    url text NOT NULL,
    company character varying(20),
    date text,
    name character varying(10)
);


ALTER TABLE public.admin OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    surface numeric,
    name character varying(40),
    description text NOT NULL,
    nbreofplanet integer
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
    dis_from_earth integer,
    name character varying(40),
    planet_id integer NOT NULL,
    surface integer
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
    dis_from_earth integer,
    name character varying(40),
    has_life boolean NOT NULL,
    has_water boolean NOT NULL,
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
    dis_from_earth integer,
    name character varying(40),
    galaxy_id integer,
    age integer NOT NULL
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
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.admin VALUES ('MX', 'ADMIN', 'www.exemple.com', 'X', 'toDay', NULL);
INSERT INTO public.admin VALUES ('MX2', 'ADMIN2', 'www.exemple.com', 'X', 'toDay', NULL);
INSERT INTO public.admin VALUES ('MX3', 'ADMIN3', 'www.exemple.com', 'X', 'toDay', NULL);
INSERT INTO public.admin VALUES ('MX4', 'ADMIN4', 'www.exemple.com', 'X', 'toDay', NULL);
INSERT INTO public.admin VALUES ('MX5', 'ADMIN5', 'www.exemple.com', 'X', 'toDay', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 120, 'Andromeda', 'Queen of Greece', 45352);
INSERT INTO public.galaxy VALUES (2, 120, 'Black Eye', 'Dark stripe eye', 77352);
INSERT INTO public.galaxy VALUES (3, 180, 'Antennae', 'Antennae', 77882);
INSERT INTO public.galaxy VALUES (4, 180, 'Backward', 'Centaurus', 45672);
INSERT INTO public.galaxy VALUES (5, 180, 'Cartwheel', 'It looks a bit like a cartwheel', 45998);
INSERT INTO public.galaxy VALUES (6, 180, 'Cosmos Redshift 7', 'It’s the brightest of the distant galaxies. It contains some of the oldest stars we know of.', 99887);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 112, 'Titan', 1, 239);
INSERT INTO public.moon VALUES (2, 221, 'Deimos', 1, 223);
INSERT INTO public.moon VALUES (5, 112, 'Titanssss', 1, 239);
INSERT INTO public.moon VALUES (6, 221, 'Deimossss', 1, 223);
INSERT INTO public.moon VALUES (7, 221, 'Dei', 4, 223);
INSERT INTO public.moon VALUES (8, 221, 'Ds', 5, 223);
INSERT INTO public.moon VALUES (9, 221, 'Degggh', 6, 223);
INSERT INTO public.moon VALUES (10, 221, 'Defffs', 3, 223);
INSERT INTO public.moon VALUES (11, 221, 'Dexxos', 2, 223);
INSERT INTO public.moon VALUES (12, 221, 'ddimos', 1, 223);
INSERT INTO public.moon VALUES (13, 221, 'DeiTos', 3, 223);
INSERT INTO public.moon VALUES (14, 221, 'Deimot', 2, 223);
INSERT INTO public.moon VALUES (15, 221, 'Deimts', 1, 223);
INSERT INTO public.moon VALUES (16, 221, 'Pfos', 4, 223);
INSERT INTO public.moon VALUES (17, 221, 'Timos', 1, 243);
INSERT INTO public.moon VALUES (18, 221, 'Titos', 2, 263);
INSERT INTO public.moon VALUES (19, 221, 'DeiTit', 3, 223);
INSERT INTO public.moon VALUES (20, 221, 'Phobos2', 3, 323);
INSERT INTO public.moon VALUES (21, 221, 'Titan2', 5, 223);
INSERT INTO public.moon VALUES (22, 221, 'Deimos3', 5, 223);
INSERT INTO public.moon VALUES (23, 221, 'Deimos2', 6, 223);
INSERT INTO public.moon VALUES (24, 221, 'PHobos', 6, 223);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 100, 'Mars', false, true, 1);
INSERT INTO public.planet VALUES (2, 144, 'Jupyter', false, false, 1);
INSERT INTO public.planet VALUES (3, 166, 'Mercury', false, false, 2);
INSERT INTO public.planet VALUES (4, 889, 'Venus', false, false, 2);
INSERT INTO public.planet VALUES (5, 587, 'Saturn', false, false, 3);
INSERT INTO public.planet VALUES (6, 990, 'Uranus', false, false, 3);
INSERT INTO public.planet VALUES (7, 977, 'Pluto', false, false, 4);
INSERT INTO public.planet VALUES (8, 2277, 'Neptune', false, false, 4);
INSERT INTO public.planet VALUES (9, 0, 'Earth', true, true, 5);
INSERT INTO public.planet VALUES (10, 111, 'yyyy', false, false, 5);
INSERT INTO public.planet VALUES (11, 222, 'XXXX', false, false, 6);
INSERT INTO public.planet VALUES (12, 333, 'PPPP', false, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 334, 'Maia', 1, 1045);
INSERT INTO public.star VALUES (2, 334, 'Marsic', 2, 1335);
INSERT INTO public.star VALUES (3, 255, 'Helvetios', 3, 1779);
INSERT INTO public.star VALUES (4, 267, 'Haedus', 4, 15569);
INSERT INTO public.star VALUES (5, 133, 'Sadalsuud', 5, 15890);
INSERT INTO public.star VALUES (6, 2340, 'Sceptrum', 6, 15330);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: admin admin_passward_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_passward_key UNIQUE (passward);


--
-- Name: admin admin_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (admin_id);


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
