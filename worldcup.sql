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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    name character varying NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2018, 'Final', 256, 257, 4, 2);
INSERT INTO public.games VALUES (2, 2018, 'Third Place', 258, 259, 2, 0);
INSERT INTO public.games VALUES (3, 2018, 'Semi-Final', 257, 259, 2, 1);
INSERT INTO public.games VALUES (4, 2018, 'Semi-Final', 256, 258, 1, 0);
INSERT INTO public.games VALUES (5, 2018, 'Quarter-Final', 257, 260, 3, 2);
INSERT INTO public.games VALUES (6, 2018, 'Quarter-Final', 259, 261, 2, 0);
INSERT INTO public.games VALUES (7, 2018, 'Quarter-Final', 258, 262, 2, 1);
INSERT INTO public.games VALUES (8, 2018, 'Quarter-Final', 256, 263, 2, 0);
INSERT INTO public.games VALUES (9, 2018, 'Eighth-Final', 259, 264, 2, 1);
INSERT INTO public.games VALUES (10, 2018, 'Eighth-Final', 261, 265, 1, 0);
INSERT INTO public.games VALUES (11, 2018, 'Eighth-Final', 258, 266, 3, 2);
INSERT INTO public.games VALUES (12, 2018, 'Eighth-Final', 262, 267, 2, 0);
INSERT INTO public.games VALUES (13, 2018, 'Eighth-Final', 257, 268, 2, 1);
INSERT INTO public.games VALUES (14, 2018, 'Eighth-Final', 260, 269, 2, 1);
INSERT INTO public.games VALUES (15, 2018, 'Eighth-Final', 263, 270, 2, 1);
INSERT INTO public.games VALUES (16, 2018, 'Eighth-Final', 256, 271, 4, 3);
INSERT INTO public.games VALUES (17, 2014, 'Final', 272, 271, 1, 0);
INSERT INTO public.games VALUES (18, 2014, 'Third Place', 273, 262, 3, 0);
INSERT INTO public.games VALUES (19, 2014, 'Semi-Final', 271, 273, 1, 0);
INSERT INTO public.games VALUES (20, 2014, 'Semi-Final', 272, 262, 7, 1);
INSERT INTO public.games VALUES (21, 2014, 'Quarter-Final', 273, 274, 1, 0);
INSERT INTO public.games VALUES (22, 2014, 'Quarter-Final', 271, 258, 1, 0);
INSERT INTO public.games VALUES (23, 2014, 'Quarter-Final', 262, 264, 2, 1);
INSERT INTO public.games VALUES (24, 2014, 'Quarter-Final', 272, 256, 1, 0);
INSERT INTO public.games VALUES (25, 2014, 'Eighth-Final', 262, 275, 2, 1);
INSERT INTO public.games VALUES (26, 2014, 'Eighth-Final', 264, 263, 2, 0);
INSERT INTO public.games VALUES (27, 2014, 'Eighth-Final', 256, 276, 2, 0);
INSERT INTO public.games VALUES (28, 2014, 'Eighth-Final', 272, 277, 2, 1);
INSERT INTO public.games VALUES (29, 2014, 'Eighth-Final', 273, 267, 2, 1);
INSERT INTO public.games VALUES (30, 2014, 'Eighth-Final', 274, 278, 2, 1);
INSERT INTO public.games VALUES (31, 2014, 'Eighth-Final', 271, 265, 1, 0);
INSERT INTO public.games VALUES (32, 2014, 'Eighth-Final', 258, 279, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 256);
INSERT INTO public.teams VALUES ('Croatia', 257);
INSERT INTO public.teams VALUES ('Belgium', 258);
INSERT INTO public.teams VALUES ('England', 259);
INSERT INTO public.teams VALUES ('Russia', 260);
INSERT INTO public.teams VALUES ('Sweden', 261);
INSERT INTO public.teams VALUES ('Brazil', 262);
INSERT INTO public.teams VALUES ('Uruguay', 263);
INSERT INTO public.teams VALUES ('Colombia', 264);
INSERT INTO public.teams VALUES ('Switzerland', 265);
INSERT INTO public.teams VALUES ('Japan', 266);
INSERT INTO public.teams VALUES ('Mexico', 267);
INSERT INTO public.teams VALUES ('Denmark', 268);
INSERT INTO public.teams VALUES ('Spain', 269);
INSERT INTO public.teams VALUES ('Portugal', 270);
INSERT INTO public.teams VALUES ('Argentina', 271);
INSERT INTO public.teams VALUES ('Germany', 272);
INSERT INTO public.teams VALUES ('Netherlands', 273);
INSERT INTO public.teams VALUES ('Costa Rica', 274);
INSERT INTO public.teams VALUES ('Chile', 275);
INSERT INTO public.teams VALUES ('Nigeria', 276);
INSERT INTO public.teams VALUES ('Algeria', 277);
INSERT INTO public.teams VALUES ('Greece', 278);
INSERT INTO public.teams VALUES ('United States', 279);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 279, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

