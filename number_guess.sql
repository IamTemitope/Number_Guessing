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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    attempts integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(25) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 29, 18);
INSERT INTO public.games VALUES (4, 29, 14);
INSERT INTO public.games VALUES (5, 29, 14);
INSERT INTO public.games VALUES (6, 30, 815);
INSERT INTO public.games VALUES (7, 30, 18);
INSERT INTO public.games VALUES (8, 31, 376);
INSERT INTO public.games VALUES (9, 31, 766);
INSERT INTO public.games VALUES (10, 30, 867);
INSERT INTO public.games VALUES (11, 30, 810);
INSERT INTO public.games VALUES (12, 30, 566);
INSERT INTO public.games VALUES (13, 32, 765);
INSERT INTO public.games VALUES (14, 32, 438);
INSERT INTO public.games VALUES (15, 33, 946);
INSERT INTO public.games VALUES (16, 33, 50);
INSERT INTO public.games VALUES (17, 32, 417);
INSERT INTO public.games VALUES (18, 32, 528);
INSERT INTO public.games VALUES (19, 32, 264);
INSERT INTO public.games VALUES (20, 34, 536);
INSERT INTO public.games VALUES (21, 34, 123);
INSERT INTO public.games VALUES (22, 35, 397);
INSERT INTO public.games VALUES (23, 35, 611);
INSERT INTO public.games VALUES (24, 34, 238);
INSERT INTO public.games VALUES (25, 34, 649);
INSERT INTO public.games VALUES (26, 34, 821);
INSERT INTO public.games VALUES (27, 36, 925);
INSERT INTO public.games VALUES (28, 36, 73);
INSERT INTO public.games VALUES (29, 37, 344);
INSERT INTO public.games VALUES (30, 37, 99);
INSERT INTO public.games VALUES (31, 36, 547);
INSERT INTO public.games VALUES (32, 36, 419);
INSERT INTO public.games VALUES (33, 36, 725);
INSERT INTO public.games VALUES (34, 38, 994);
INSERT INTO public.games VALUES (35, 38, 167);
INSERT INTO public.games VALUES (36, 39, 217);
INSERT INTO public.games VALUES (37, 39, 425);
INSERT INTO public.games VALUES (38, 38, 254);
INSERT INTO public.games VALUES (39, 38, 301);
INSERT INTO public.games VALUES (40, 38, 730);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (29, 'tope');
INSERT INTO public.users VALUES (30, 'user_1672933225716');
INSERT INTO public.users VALUES (31, 'user_1672933225715');
INSERT INTO public.users VALUES (32, 'user_1672933722057');
INSERT INTO public.users VALUES (33, 'user_1672933722056');
INSERT INTO public.users VALUES (34, 'user_1672933824513');
INSERT INTO public.users VALUES (35, 'user_1672933824512');
INSERT INTO public.users VALUES (36, 'user_1672933864559');
INSERT INTO public.users VALUES (37, 'user_1672933864558');
INSERT INTO public.users VALUES (38, 'user_1672933901184');
INSERT INTO public.users VALUES (39, 'user_1672933901183');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 40, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 39, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--
