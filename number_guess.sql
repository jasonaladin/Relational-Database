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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer,
    best_game integer
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
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (3, 'user_1675248133116', 1, 566);
INSERT INTO public.users VALUES (2, 'user_1675248133117', 1, 547);
INSERT INTO public.users VALUES (5, 'user_1675248644718', 1, 82);
INSERT INTO public.users VALUES (4, 'user_1675248644719', 1, 857);
INSERT INTO public.users VALUES (6, 'JJ', 0, 8);
INSERT INTO public.users VALUES (1, 'jj', 2, 10);
INSERT INTO public.users VALUES (7, 'jj', 3, 10);
INSERT INTO public.users VALUES (8, 'user_1675253063285', 1, 821);
INSERT INTO public.users VALUES (9, 'user_1675253063285', 2, 821);
INSERT INTO public.users VALUES (10, 'user_1675253063284', 1, 83);
INSERT INTO public.users VALUES (11, 'user_1675253063284', 2, 671);
INSERT INTO public.users VALUES (12, 'jj1', 1, 10);
INSERT INTO public.users VALUES (13, 'JJ', 1, 11);
INSERT INTO public.users VALUES (15, 'user_1675253716464', 2, 315);
INSERT INTO public.users VALUES (14, 'user_1675253716465', 5, 223);
INSERT INTO public.users VALUES (17, 'user_1675253748961', 2, 45);
INSERT INTO public.users VALUES (16, 'user_1675253748962', 5, 161);
INSERT INTO public.users VALUES (19, 'user_1675253759552', 2, 298);
INSERT INTO public.users VALUES (18, 'user_1675253759553', 5, 247);
INSERT INTO public.users VALUES (21, 'user_1675253784227', 2, 386);
INSERT INTO public.users VALUES (20, 'user_1675253784228', 5, 14);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 21, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

