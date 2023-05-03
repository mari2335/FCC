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
    galaxy_types character varying NOT NULL,
    description text,
    age_galaxy integer
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
    name character varying,
    description character varying,
    is_spherical boolean NOT NULL,
    distance_from_earth numeric,
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
    name character varying,
    has_life boolean NOT NULL,
    planet_type character varying,
    age_planet integer,
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
-- Name: rings; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.rings (
    rings_id integer NOT NULL,
    name character varying,
    ring_type character varying,
    has_life boolean NOT NULL
);


ALTER TABLE public.rings OWNER TO freecodecamp;

--
-- Name: rings_ring_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.rings_ring_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rings_ring_id_seq OWNER TO freecodecamp;

--
-- Name: rings_ring_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.rings_ring_id_seq OWNED BY public.rings.rings_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying,
    description character varying NOT NULL,
    age_star integer,
    star_type character varying,
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
-- Name: rings rings_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rings ALTER COLUMN rings_id SET DEFAULT nextval('public.rings_ring_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky', 'grandona', 'muito bonita', 345);
INSERT INTO public.galaxy VALUES (2, 'leite', 'pequena', 'muito bonitona', 343);
INSERT INTO public.galaxy VALUES (3, 'leche', 'medio', 'muito linda', 3499);
INSERT INTO public.galaxy VALUES (4, 'cafe', 'mediana', 'bem grandea', 3494);
INSERT INTO public.galaxy VALUES (5, 'coffee', 'colorida', 'pequena demais', 34944);
INSERT INTO public.galaxy VALUES (6, 'cafen', 'escura', 'colorful', 4545);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'lua', 'perto da terra', true, 76734, NULL);
INSERT INTO public.moon VALUES (2, 'rua', 'perto da terra', true, 76734, NULL);
INSERT INTO public.moon VALUES (3, 'casa', 'perto da terra', true, 76734, NULL);
INSERT INTO public.moon VALUES (4, 'nasa', 'perto da terra', true, 76734, NULL);
INSERT INTO public.moon VALUES (5, 'pedra', 'perto da terra', true, 76734, NULL);
INSERT INTO public.moon VALUES (6, 'pedro', 'perto da terra', true, 76734, NULL);
INSERT INTO public.moon VALUES (7, 'reu', 'perto da terra', true, 76734, NULL);
INSERT INTO public.moon VALUES (8, 'rio', 'perto da terra', true, 76734, NULL);
INSERT INTO public.moon VALUES (9, 'leo', 'perto da terra', true, 76734, NULL);
INSERT INTO public.moon VALUES (10, 'leonardo', 'perto da terra', true, 76734, NULL);
INSERT INTO public.moon VALUES (11, 'leopardo', 'perto da terra', true, 76734, NULL);
INSERT INTO public.moon VALUES (12, 'onca', 'perto da terra', true, 76734, NULL);
INSERT INTO public.moon VALUES (13, 'oncaR', 'perto da terra', true, 76734, NULL);
INSERT INTO public.moon VALUES (14, 'urso', 'perto da terra', true, 76734, NULL);
INSERT INTO public.moon VALUES (15, 'peixe', 'perto da terra', true, 76734, NULL);
INSERT INTO public.moon VALUES (16, 'gato', 'perto da terra', true, 76734, NULL);
INSERT INTO public.moon VALUES (17, 'gata', 'perto da terra', true, 76734, NULL);
INSERT INTO public.moon VALUES (18, 'cachorro', 'perto da terra', true, 76734, NULL);
INSERT INTO public.moon VALUES (19, 'joelho', 'perto da terra', true, 76734, NULL);
INSERT INTO public.moon VALUES (20, 'satelite', 'perto da terra', true, 76734, NULL);
INSERT INTO public.moon VALUES (21, 'neal', 'perto da terra', true, 76734, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'terra', true, 'aguado', 929, NULL);
INSERT INTO public.planet VALUES (2, 'mars', true, 'terroso', 372, NULL);
INSERT INTO public.planet VALUES (3, 'pluto', false, 'terrosa', 372, NULL);
INSERT INTO public.planet VALUES (4, 'saturno', false, 'saturano', 372, NULL);
INSERT INTO public.planet VALUES (5, 'venus', false, 'verano', 37, NULL);
INSERT INTO public.planet VALUES (6, 'mercurio', false, 'mercurano', 37, NULL);
INSERT INTO public.planet VALUES (7, 'juros', false, 'jurano', 37, NULL);
INSERT INTO public.planet VALUES (8, 'titanio', false, 'tutano', 37, NULL);
INSERT INTO public.planet VALUES (9, 'oxigenio', false, 'oxigenoso', 37, NULL);
INSERT INTO public.planet VALUES (10, 'carboidrato', false, 'carbo', 37, NULL);
INSERT INTO public.planet VALUES (11, 'protein', false, 'whey', 37, NULL);
INSERT INTO public.planet VALUES (12, 'fatoso', false, 'fat', 37, NULL);


--
-- Data for Name: rings; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.rings VALUES (1, 'anelzin', 'grande', false);
INSERT INTO public.rings VALUES (2, 'anelzin', 'pequeno', false);
INSERT INTO public.rings VALUES (3, 'anelzin', 'medio', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'estrelinha', 'rapida', 23323, 'key', NULL);
INSERT INTO public.star VALUES (2, 'little star', 'rapidona', 23, 'llave', NULL);
INSERT INTO public.star VALUES (3, 'little rock star', 'brilhosa', 2312, 'kiko', NULL);
INSERT INTO public.star VALUES (4, 'estrella', 'brila', 232, 'flecha', NULL);
INSERT INTO public.star VALUES (5, 'estrela', 'brulha', 2323, 'aro', NULL);
INSERT INTO public.star VALUES (6, 'starzin', 'bonita', 3, 'arco', NULL);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: rings_ring_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.rings_ring_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: moon nome_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT nome_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_type_key UNIQUE (planet_type);


--
-- Name: rings rings_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rings
    ADD CONSTRAINT rings_pkey PRIMARY KEY (rings_id);


--
-- Name: rings rings_ring_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rings
    ADD CONSTRAINT rings_ring_type_key UNIQUE (ring_type);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_type_key UNIQUE (star_type);


--
-- Name: galaxy tipo; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT tipo UNIQUE (galaxy_types);


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

