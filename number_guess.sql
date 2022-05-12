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
    games_id integer NOT NULL,
    number_of_guesses integer,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_games_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_games_id_seq OWNER TO freecodecamp;

--
-- Name: games_games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_games_id_seq OWNED BY public.games.games_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying
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
-- Name: games games_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN games_id SET DEFAULT nextval('public.games_games_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 4, 1);
INSERT INTO public.games VALUES (2, 2, 1);
INSERT INTO public.games VALUES (3, 4, 1);
INSERT INTO public.games VALUES (4, 948, 3);
INSERT INTO public.games VALUES (5, 187, 3);
INSERT INTO public.games VALUES (6, 74, 4);
INSERT INTO public.games VALUES (7, 61, 4);
INSERT INTO public.games VALUES (8, 172, 3);
INSERT INTO public.games VALUES (9, 501, 3);
INSERT INTO public.games VALUES (10, 730, 3);
INSERT INTO public.games VALUES (11, 829, 5);
INSERT INTO public.games VALUES (12, 6, 5);
INSERT INTO public.games VALUES (13, 152, 6);
INSERT INTO public.games VALUES (14, 442, 6);
INSERT INTO public.games VALUES (15, 999, 5);
INSERT INTO public.games VALUES (16, 384, 5);
INSERT INTO public.games VALUES (17, 34, 5);
INSERT INTO public.games VALUES (18, 466, 7);
INSERT INTO public.games VALUES (19, 180, 7);
INSERT INTO public.games VALUES (20, 801, 8);
INSERT INTO public.games VALUES (21, 163, 8);
INSERT INTO public.games VALUES (22, 371, 7);
INSERT INTO public.games VALUES (23, 315, 7);
INSERT INTO public.games VALUES (24, 267, 7);
INSERT INTO public.games VALUES (25, 716, 9);
INSERT INTO public.games VALUES (26, 101, 9);
INSERT INTO public.games VALUES (27, 461, 10);
INSERT INTO public.games VALUES (28, 163, 10);
INSERT INTO public.games VALUES (29, 916, 9);
INSERT INTO public.games VALUES (30, 270, 9);
INSERT INTO public.games VALUES (31, 987, 9);
INSERT INTO public.games VALUES (32, 501, 11);
INSERT INTO public.games VALUES (33, 729, 11);
INSERT INTO public.games VALUES (34, 961, 12);
INSERT INTO public.games VALUES (35, 161, 12);
INSERT INTO public.games VALUES (36, 684, 11);
INSERT INTO public.games VALUES (37, 619, 11);
INSERT INTO public.games VALUES (38, 482, 11);
INSERT INTO public.games VALUES (39, 7, 14);
INSERT INTO public.games VALUES (40, 989, 14);
INSERT INTO public.games VALUES (41, 8, 15);
INSERT INTO public.games VALUES (42, 244, 15);
INSERT INTO public.games VALUES (43, 870, 14);
INSERT INTO public.games VALUES (44, 211, 14);
INSERT INTO public.games VALUES (45, 954, 14);
INSERT INTO public.games VALUES (46, 939, 17);
INSERT INTO public.games VALUES (47, 462, 17);
INSERT INTO public.games VALUES (48, 90, 18);
INSERT INTO public.games VALUES (49, 402, 18);
INSERT INTO public.games VALUES (50, 356, 17);
INSERT INTO public.games VALUES (51, 359, 17);
INSERT INTO public.games VALUES (52, 149, 17);
INSERT INTO public.games VALUES (53, 11, 1);
INSERT INTO public.games VALUES (54, 104, 19);
INSERT INTO public.games VALUES (55, 430, 19);
INSERT INTO public.games VALUES (56, 747, 20);
INSERT INTO public.games VALUES (57, 576, 20);
INSERT INTO public.games VALUES (58, 495, 19);
INSERT INTO public.games VALUES (59, 808, 19);
INSERT INTO public.games VALUES (60, 739, 19);
INSERT INTO public.games VALUES (61, 351, 21);
INSERT INTO public.games VALUES (62, 977, 21);
INSERT INTO public.games VALUES (63, 58, 22);
INSERT INTO public.games VALUES (64, 760, 22);
INSERT INTO public.games VALUES (65, 473, 21);
INSERT INTO public.games VALUES (66, 890, 21);
INSERT INTO public.games VALUES (67, 331, 21);
INSERT INTO public.games VALUES (68, 999, 23);
INSERT INTO public.games VALUES (69, 959, 23);
INSERT INTO public.games VALUES (70, 547, 24);
INSERT INTO public.games VALUES (71, 452, 24);
INSERT INTO public.games VALUES (72, 987, 23);
INSERT INTO public.games VALUES (73, 364, 23);
INSERT INTO public.games VALUES (74, 860, 23);
INSERT INTO public.games VALUES (75, 224, 25);
INSERT INTO public.games VALUES (76, 909, 25);
INSERT INTO public.games VALUES (77, 516, 26);
INSERT INTO public.games VALUES (78, 376, 26);
INSERT INTO public.games VALUES (79, 293, 25);
INSERT INTO public.games VALUES (80, 311, 25);
INSERT INTO public.games VALUES (81, 994, 25);
INSERT INTO public.games VALUES (82, 436, 27);
INSERT INTO public.games VALUES (83, 377, 27);
INSERT INTO public.games VALUES (84, 254, 28);
INSERT INTO public.games VALUES (85, 290, 28);
INSERT INTO public.games VALUES (86, 790, 27);
INSERT INTO public.games VALUES (87, 246, 27);
INSERT INTO public.games VALUES (88, 973, 27);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'willhouse');
INSERT INTO public.users VALUES (3, 'user_1652289488201');
INSERT INTO public.users VALUES (4, 'user_1652289488200');
INSERT INTO public.users VALUES (5, 'user_1652289510226');
INSERT INTO public.users VALUES (6, 'user_1652289510225');
INSERT INTO public.users VALUES (7, 'user_1652289534127');
INSERT INTO public.users VALUES (8, 'user_1652289534126');
INSERT INTO public.users VALUES (9, 'user_1652289549199');
INSERT INTO public.users VALUES (10, 'user_1652289549198');
INSERT INTO public.users VALUES (11, 'user_1652289625477');
INSERT INTO public.users VALUES (12, 'user_1652289625476');
INSERT INTO public.users VALUES (14, 'user_1652289698468');
INSERT INTO public.users VALUES (15, 'user_1652289698467');
INSERT INTO public.users VALUES (16, 'test');
INSERT INTO public.users VALUES (17, 'user_1652289773414');
INSERT INTO public.users VALUES (18, 'user_1652289773413');
INSERT INTO public.users VALUES (19, 'user_1652328837293');
INSERT INTO public.users VALUES (20, 'user_1652328837292');
INSERT INTO public.users VALUES (21, 'user_1652328870648');
INSERT INTO public.users VALUES (22, 'user_1652328870647');
INSERT INTO public.users VALUES (23, 'user_1652328943574');
INSERT INTO public.users VALUES (24, 'user_1652328943573');
INSERT INTO public.users VALUES (25, 'user_1652328950759');
INSERT INTO public.users VALUES (26, 'user_1652328950758');
INSERT INTO public.users VALUES (27, 'user_1652328958088');
INSERT INTO public.users VALUES (28, 'user_1652328958087');


--
-- Name: games_games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_games_id_seq', 88, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 28, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (games_id);


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

