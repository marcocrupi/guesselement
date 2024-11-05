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
    user_id integer,
    guesses integer NOT NULL
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 3, 918);
INSERT INTO public.games VALUES (2, 3, 487);
INSERT INTO public.games VALUES (3, 4, 948);
INSERT INTO public.games VALUES (4, 4, 868);
INSERT INTO public.games VALUES (5, 3, 32);
INSERT INTO public.games VALUES (6, 3, 135);
INSERT INTO public.games VALUES (7, 3, 619);
INSERT INTO public.games VALUES (8, 5, 526);
INSERT INTO public.games VALUES (9, 5, 717);
INSERT INTO public.games VALUES (10, 6, 394);
INSERT INTO public.games VALUES (11, 6, 226);
INSERT INTO public.games VALUES (12, 5, 889);
INSERT INTO public.games VALUES (13, 5, 756);
INSERT INTO public.games VALUES (14, 5, 251);
INSERT INTO public.games VALUES (15, 7, 185);
INSERT INTO public.games VALUES (16, 7, 646);
INSERT INTO public.games VALUES (17, 8, 158);
INSERT INTO public.games VALUES (18, 8, 737);
INSERT INTO public.games VALUES (19, 7, 18);
INSERT INTO public.games VALUES (20, 7, 902);
INSERT INTO public.games VALUES (21, 7, 877);
INSERT INTO public.games VALUES (22, 9, 993);
INSERT INTO public.games VALUES (23, 9, 357);
INSERT INTO public.games VALUES (24, 10, 623);
INSERT INTO public.games VALUES (25, 10, 709);
INSERT INTO public.games VALUES (26, 9, 27);
INSERT INTO public.games VALUES (27, 9, 582);
INSERT INTO public.games VALUES (28, 9, 885);
INSERT INTO public.games VALUES (29, 11, 396);
INSERT INTO public.games VALUES (30, 11, 260);
INSERT INTO public.games VALUES (31, 12, 785);
INSERT INTO public.games VALUES (32, 12, 391);
INSERT INTO public.games VALUES (33, 11, 552);
INSERT INTO public.games VALUES (34, 11, 517);
INSERT INTO public.games VALUES (35, 11, 248);
INSERT INTO public.games VALUES (36, 13, 660);
INSERT INTO public.games VALUES (37, 13, 737);
INSERT INTO public.games VALUES (38, 14, 777);
INSERT INTO public.games VALUES (39, 14, 199);
INSERT INTO public.games VALUES (40, 13, 352);
INSERT INTO public.games VALUES (41, 13, 729);
INSERT INTO public.games VALUES (42, 13, 376);
INSERT INTO public.games VALUES (43, 15, 74);
INSERT INTO public.games VALUES (44, 15, 112);
INSERT INTO public.games VALUES (45, 16, 23);
INSERT INTO public.games VALUES (46, 16, 586);
INSERT INTO public.games VALUES (47, 15, 805);
INSERT INTO public.games VALUES (48, 15, 744);
INSERT INTO public.games VALUES (49, 15, 214);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1730795582656');
INSERT INTO public.users VALUES (2, 'user_1730795582655');
INSERT INTO public.users VALUES (3, 'user_1730795626439');
INSERT INTO public.users VALUES (4, 'user_1730795626438');
INSERT INTO public.users VALUES (5, 'user_1730795760326');
INSERT INTO public.users VALUES (6, 'user_1730795760325');
INSERT INTO public.users VALUES (7, 'user_1730795788759');
INSERT INTO public.users VALUES (8, 'user_1730795788758');
INSERT INTO public.users VALUES (9, 'user_1730795802666');
INSERT INTO public.users VALUES (10, 'user_1730795802665');
INSERT INTO public.users VALUES (11, 'user_1730795814702');
INSERT INTO public.users VALUES (12, 'user_1730795814701');
INSERT INTO public.users VALUES (13, 'user_1730795826055');
INSERT INTO public.users VALUES (14, 'user_1730795826054');
INSERT INTO public.users VALUES (15, 'user_1730795973581');
INSERT INTO public.users VALUES (16, 'user_1730795973580');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 49, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 16, true);


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

