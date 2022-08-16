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
    tries integer DEFAULT 0
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

INSERT INTO public.games VALUES (57, 20, 885);
INSERT INTO public.games VALUES (58, 21, 77);
INSERT INTO public.games VALUES (59, 20, 248);
INSERT INTO public.games VALUES (60, 20, 607);
INSERT INTO public.games VALUES (61, 20, 933);
INSERT INTO public.games VALUES (62, 22, 218);
INSERT INTO public.games VALUES (63, 23, 521);
INSERT INTO public.games VALUES (64, 22, 259);
INSERT INTO public.games VALUES (65, 22, 683);
INSERT INTO public.games VALUES (66, 22, 874);
INSERT INTO public.games VALUES (67, 24, 1);
INSERT INTO public.games VALUES (68, 24, 1);
INSERT INTO public.games VALUES (69, 24, 3);
INSERT INTO public.games VALUES (70, 25, 885);
INSERT INTO public.games VALUES (71, 25, 804);
INSERT INTO public.games VALUES (72, 26, 212);
INSERT INTO public.games VALUES (73, 26, 672);
INSERT INTO public.games VALUES (74, 25, 659);
INSERT INTO public.games VALUES (75, 25, 493);
INSERT INTO public.games VALUES (76, 25, 484);
INSERT INTO public.games VALUES (77, 27, 399);
INSERT INTO public.games VALUES (78, 27, 896);
INSERT INTO public.games VALUES (79, 28, 106);
INSERT INTO public.games VALUES (80, 28, 212);
INSERT INTO public.games VALUES (81, 27, 374);
INSERT INTO public.games VALUES (82, 27, 450);
INSERT INTO public.games VALUES (83, 27, 805);
INSERT INTO public.games VALUES (84, 29, 883);
INSERT INTO public.games VALUES (85, 29, 585);
INSERT INTO public.games VALUES (86, 30, 875);
INSERT INTO public.games VALUES (87, 30, 924);
INSERT INTO public.games VALUES (88, 29, 544);
INSERT INTO public.games VALUES (89, 29, 487);
INSERT INTO public.games VALUES (90, 29, 988);
INSERT INTO public.games VALUES (91, 31, 313);
INSERT INTO public.games VALUES (92, 31, 268);
INSERT INTO public.games VALUES (93, 32, 392);
INSERT INTO public.games VALUES (94, 32, 989);
INSERT INTO public.games VALUES (95, 31, 645);
INSERT INTO public.games VALUES (96, 31, 808);
INSERT INTO public.games VALUES (97, 31, 383);
INSERT INTO public.games VALUES (98, 24, 11);
INSERT INTO public.games VALUES (99, 33, 616);
INSERT INTO public.games VALUES (100, 33, 701);
INSERT INTO public.games VALUES (101, 34, 131);
INSERT INTO public.games VALUES (102, 34, 725);
INSERT INTO public.games VALUES (103, 33, 544);
INSERT INTO public.games VALUES (104, 33, 455);
INSERT INTO public.games VALUES (105, 33, 78);
INSERT INTO public.games VALUES (106, 35, 422);
INSERT INTO public.games VALUES (107, 35, 435);
INSERT INTO public.games VALUES (108, 36, 850);
INSERT INTO public.games VALUES (109, 36, 483);
INSERT INTO public.games VALUES (110, 35, 738);
INSERT INTO public.games VALUES (111, 35, 473);
INSERT INTO public.games VALUES (112, 35, 151);
INSERT INTO public.games VALUES (113, 37, 432);
INSERT INTO public.games VALUES (114, 37, 103);
INSERT INTO public.games VALUES (115, 38, 240);
INSERT INTO public.games VALUES (116, 38, 408);
INSERT INTO public.games VALUES (117, 37, 907);
INSERT INTO public.games VALUES (118, 37, 157);
INSERT INTO public.games VALUES (119, 37, 804);
INSERT INTO public.games VALUES (120, 39, 995);
INSERT INTO public.games VALUES (121, 39, 746);
INSERT INTO public.games VALUES (122, 40, 185);
INSERT INTO public.games VALUES (123, 40, 635);
INSERT INTO public.games VALUES (124, 39, 504);
INSERT INTO public.games VALUES (125, 39, 40);
INSERT INTO public.games VALUES (126, 39, 988);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (20, 'user_1660663487005');
INSERT INTO public.users VALUES (21, 'user_1660663487004');
INSERT INTO public.users VALUES (22, 'user_1660663518856');
INSERT INTO public.users VALUES (23, 'user_1660663518855');
INSERT INTO public.users VALUES (24, 'alpha');
INSERT INTO public.users VALUES (25, 'user_1660663768714');
INSERT INTO public.users VALUES (26, 'user_1660663768713');
INSERT INTO public.users VALUES (27, 'user_1660663798202');
INSERT INTO public.users VALUES (28, 'user_1660663798201');
INSERT INTO public.users VALUES (29, 'user_1660663850791');
INSERT INTO public.users VALUES (30, 'user_1660663850790');
INSERT INTO public.users VALUES (31, 'user_1660663869575');
INSERT INTO public.users VALUES (32, 'user_1660663869574');
INSERT INTO public.users VALUES (33, 'user_1660664023864');
INSERT INTO public.users VALUES (34, 'user_1660664023863');
INSERT INTO public.users VALUES (35, 'user_1660664056178');
INSERT INTO public.users VALUES (36, 'user_1660664056177');
INSERT INTO public.users VALUES (37, 'user_1660664083820');
INSERT INTO public.users VALUES (38, 'user_1660664083819');
INSERT INTO public.users VALUES (39, 'user_1660664107964');
INSERT INTO public.users VALUES (40, 'user_1660664107963');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 126, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 40, true);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

