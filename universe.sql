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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text NOT NULL,
    galaxy_type text,
    is_spherical boolean,
    distance_from_earth_ly integer,
    age_in_millions_of_years integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text NOT NULL,
    distance_from_earth_ly integer,
    age_in_millions_of_years integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text NOT NULL,
    has_moon boolean,
    has_life boolean,
    has_water boolean,
    age_in_millions_of_years integer,
    distance_from_earth_ly integer,
    star_id integer,
    has_atmosphere boolean,
    has_ice boolean,
    has_rock boolean,
    has_metal boolean,
    has_gas boolean,
    has_liquid boolean,
    has_organic boolean,
    has_volcanic boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text NOT NULL,
    age_in_millions_years integer,
    distance_from_earth_ly integer,
    has_life boolean,
    is_spherical boolean,
    mass_in_billions_kg numeric(30,2),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: test; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.test (
    test_id integer NOT NULL,
    test_description text,
    name character varying(60) NOT NULL
);


ALTER TABLE public.test OWNER TO freecodecamp;

--
-- Name: test_test_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.test_test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_test_id_seq OWNER TO freecodecamp;

--
-- Name: test_test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.test_test_id_seq OWNED BY public.test.test_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: test test_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test ALTER COLUMN test_id SET DEFAULT nextval('public.test_test_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The galaxy that contains our Solar System.', 'Spiral', true, 0, 13600);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The nearest spiral galaxy to the Milky Way.', 'Spiral', false, 2537000, 10000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'A member of the Local Group of galaxies.', 'Spiral', false, 3000000, 12000);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 'A satellite galaxy of the Milky Way.', 'Irregular', false, 163000, 13000);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 'A dwarf galaxy near the Milky Way.', 'Irregular', false, 200000, 13000);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 'A classic spiral galaxy with well-defined arms.', 'Spiral', false, 23000000, 4500);
INSERT INTO public.galaxy VALUES (7, 'Sombrero Galaxy', 'Known for its bright nucleus and large central bulge.', 'Spiral', true, 29000000, 13000);
INSERT INTO public.galaxy VALUES (8, 'Messier 87', 'A giant elliptical galaxy in the Virgo Cluster.', 'Elliptical', true, 53000000, 14000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'The natural satellite of Earth.', 0, 4500, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'One of the two moons of Mars.', 0, 4500, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'The smaller and outermost of the two moons of Mars.', 0, 4500, 4);
INSERT INTO public.moon VALUES (4, 'Europa', 'One of Jupiters moons, potentially has a subsurface ocean.', 0, 4500, 6);
INSERT INTO public.moon VALUES (5, 'Ganymede', 'The largest moon in the Solar System, orbiting Jupiter.', 0, 4500, 6);
INSERT INTO public.moon VALUES (6, 'Callisto', 'A heavily cratered moon of Jupiter.', 0, 4500, 6);
INSERT INTO public.moon VALUES (7, 'Io', 'A volcanically active moon of Jupiter.', 0, 4500, 6);
INSERT INTO public.moon VALUES (8, 'Titan', 'The largest moon of Saturn, with a thick atmosphere.', 0, 4500, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 'The second-largest moon of Saturn.', 0, 4500, 6);
INSERT INTO public.moon VALUES (10, 'Iapetus', 'A moon of Saturn with a distinctive two-tone coloration.', 0, 4500, 6);
INSERT INTO public.moon VALUES (11, 'Oberon', 'A moon of Uranus, named after a character in Shakespeare.', 0, 4500, 6);
INSERT INTO public.moon VALUES (12, 'Titania', 'The largest moon of Uranus.', 0, 4500, 6);
INSERT INTO public.moon VALUES (13, 'Miranda', 'A moon of Uranus with a chaotic terrain.', 0, 4500, 6);
INSERT INTO public.moon VALUES (14, 'Triton', 'The largest moon of Neptune, with geysers of nitrogen.', 0, 4500, 6);
INSERT INTO public.moon VALUES (15, 'Nereid', 'A distant moon of Neptune with an eccentric orbit.', 0, 4500, 6);
INSERT INTO public.moon VALUES (16, 'Charon', 'The largest moon of Pluto.', 0, 4500, 6);
INSERT INTO public.moon VALUES (17, 'Styx', 'A small moon of Pluto.', 0, 4500, 6);
INSERT INTO public.moon VALUES (18, 'Nix', 'A small moon of Pluto.', 0, 4500, 6);
INSERT INTO public.moon VALUES (19, 'Kerberos', 'A small moon of Pluto.', 0, 4500, 6);
INSERT INTO public.moon VALUES (20, 'Hydra', 'A small moon of Pluto.', 0, 4500, 6);
INSERT INTO public.moon VALUES (21, 'Proxima b I', 'A hypothetical moon orbiting Proxima b.', 42400, 4500, 5);
INSERT INTO public.moon VALUES (22, 'Betelgeuse I A', 'A hypothetical moon orbiting Betelgeuse I.', 642500, 1000, 6);
INSERT INTO public.moon VALUES (23, 'Betelgeuse II A', 'A hypothetical moon orbiting Betelgeuse II.', 642500, 1000, 7);
INSERT INTO public.moon VALUES (24, 'Rigel I A', 'A hypothetical moon orbiting Rigel I.', 863000, 2000, 8);
INSERT INTO public.moon VALUES (25, 'Vega I A', 'A hypothetical moon orbiting Vega I.', 25000, 450, 9);
INSERT INTO public.moon VALUES (26, 'Sirius I A', 'A hypothetical moon orbiting Sirius I.', 8600, 300, 10);
INSERT INTO public.moon VALUES (27, 'Canopus I A', 'A hypothetical moon orbiting Canopus I.', 310000, 10200, 11);
INSERT INTO public.moon VALUES (28, 'Arcturus I A', 'A hypothetical moon orbiting Arcturus I.', 36700, 7300, 12);
INSERT INTO public.moon VALUES (29, 'Andromeda I A', 'A hypothetical moon in the Andromeda galaxy.', 2537000, 4500, 13);
INSERT INTO public.moon VALUES (30, 'Triangulum I A', 'A hypothetical moon in the Triangulum galaxy.', 3000000, 4500, 14);
INSERT INTO public.moon VALUES (31, 'Whirlpool I A', 'A hypothetical moon in the Whirlpool galaxy.', 23000000, 4500, 15);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'The closest planet to the Sun.', false, false, false, 4500, 0, 1, true, false, true, true, false, false, false, true);
INSERT INTO public.planet VALUES (2, 'Venus', 'Second planet from the Sun, known for its thick atmosphere.', false, false, false, 4500, 0, 1, true, false, true, true, false, false, false, false);
INSERT INTO public.planet VALUES (3, 'Earth', 'The only planet known to have life.', true, true, true, 4500, 0, 1, true, false, true, true, false, true, true, true);
INSERT INTO public.planet VALUES (4, 'Mars', 'Known as the Red Planet.', true, false, false, 4500, 0, 1, true, true, true, true, false, false, false, true);
INSERT INTO public.planet VALUES (5, 'Proxima b', 'An exoplanet orbiting Proxima Centauri.', false, false, true, 4500, 42400, 2, true, false, true, true, false, true, false, false);
INSERT INTO public.planet VALUES (6, 'Betelgeuse I', 'A hypothetical planet orbiting Betelgeuse.', false, false, false, 1000, 642500, 3, false, true, true, false, false, false, false, true);
INSERT INTO public.planet VALUES (7, 'Betelgeuse II', 'Another hypothetical planet orbiting Betelgeuse.', false, false, false, 1000, 642500, 3, false, true, true, false, false, false, false, true);
INSERT INTO public.planet VALUES (8, 'Rigel I', 'A hypothetical planet orbiting Rigel.', false, false, false, 2000, 863000, 4, true, false, true, true, false, false, false, true);
INSERT INTO public.planet VALUES (9, 'Vega I', 'A hypothetical planet orbiting Vega.', false, false, false, 450, 25000, 5, true, true, true, false, true, true, false, false);
INSERT INTO public.planet VALUES (10, 'Sirius I', 'A hypothetical planet orbiting Sirius.', false, false, false, 300, 8600, 6, true, true, true, false, true, true, false, false);
INSERT INTO public.planet VALUES (11, 'Canopus I', 'A hypothetical planet orbiting Canopus.', false, false, false, 10200, 310000, 7, true, true, true, true, false, false, false, true);
INSERT INTO public.planet VALUES (12, 'Arcturus I', 'A hypothetical planet orbiting Arcturus.', false, false, false, 7300, 36700, 8, true, true, true, true, false, false, false, true);
INSERT INTO public.planet VALUES (13, 'Andromeda I', 'A hypothetical planet in the Andromeda galaxy.', false, false, false, 4500, 2537000, 2, true, false, true, true, false, false, false, false);
INSERT INTO public.planet VALUES (14, 'Triangulum I', 'A hypothetical planet in the Triangulum galaxy.', false, false, false, 4500, 3000000, 3, true, false, true, true, false, false, false, false);
INSERT INTO public.planet VALUES (15, 'Whirlpool I', 'A hypothetical planet in the Whirlpool galaxy.', false, false, false, 4500, 23000000, 6, true, false, true, true, false, false, false, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 'The star at the center of our Solar System.', 4600, 0, true, true, 1989.00, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'The closest known star to the Sun.', 4500, 42400, false, true, 12300.00, 2);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'A red supergiant star in the Orion constellation.', 8000, 642500, false, true, 20000.00, 3);
INSERT INTO public.star VALUES (4, 'Rigel', 'A blue supergiant star in the Orion constellation.', 8600, 863000, false, true, 30000.00, 4);
INSERT INTO public.star VALUES (5, 'Vega', 'A bright star in the constellation Lyra.', 450, 25000, false, true, 2440.00, 5);
INSERT INTO public.star VALUES (6, 'Sirius', 'The brightest star in the night sky.', 300, 8600, false, true, 4020.00, 1);
INSERT INTO public.star VALUES (7, 'Canopus', 'The second-brightest star in the night sky.', 10200, 310000, false, true, 6520.00, 6);
INSERT INTO public.star VALUES (8, 'Arcturus', 'The fourth-brightest star in the night sky.', 7300, 36700, false, true, 5100.00, 7);


--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.test VALUES (1, 'Test1', 'Name1');
INSERT INTO public.test VALUES (2, 'Test2', 'Name2');
INSERT INTO public.test VALUES (3, 'Test3', 'Name3');


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 8, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 31, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 15, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 8, true);


--
-- Name: test_test_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.test_test_id_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_name UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_name UNIQUE (name);


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
-- Name: star star_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_name UNIQUE (name);


--
-- Name: test test_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (test_id);


--
-- Name: planet unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: test unique_test_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT unique_test_name UNIQUE (name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

