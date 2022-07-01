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
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
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

INSERT INTO public.games VALUES (145, 2018, 'Final', 361, 362, 4, 2);
INSERT INTO public.games VALUES (146, 2018, 'Third Place', 363, 364, 2, 0);
INSERT INTO public.games VALUES (147, 2018, 'Semi-Final', 362, 364, 2, 1);
INSERT INTO public.games VALUES (148, 2018, 'Semi-Final', 361, 363, 1, 0);
INSERT INTO public.games VALUES (149, 2018, 'Quarter-Final', 362, 365, 3, 2);
INSERT INTO public.games VALUES (150, 2018, 'Quarter-Final', 364, 366, 2, 0);
INSERT INTO public.games VALUES (151, 2018, 'Quarter-Final', 363, 367, 2, 1);
INSERT INTO public.games VALUES (152, 2018, 'Quarter-Final', 361, 368, 2, 0);
INSERT INTO public.games VALUES (153, 2018, 'Eighth-Final', 364, 369, 2, 1);
INSERT INTO public.games VALUES (154, 2018, 'Eighth-Final', 366, 370, 1, 0);
INSERT INTO public.games VALUES (155, 2018, 'Eighth-Final', 363, 371, 3, 2);
INSERT INTO public.games VALUES (156, 2018, 'Eighth-Final', 367, 372, 2, 0);
INSERT INTO public.games VALUES (157, 2018, 'Eighth-Final', 362, 373, 2, 1);
INSERT INTO public.games VALUES (158, 2018, 'Eighth-Final', 365, 374, 2, 1);
INSERT INTO public.games VALUES (159, 2018, 'Eighth-Final', 368, 375, 2, 1);
INSERT INTO public.games VALUES (160, 2018, 'Eighth-Final', 361, 376, 4, 3);
INSERT INTO public.games VALUES (161, 2014, 'Final', 377, 376, 1, 0);
INSERT INTO public.games VALUES (162, 2014, 'Third Place', 378, 367, 3, 0);
INSERT INTO public.games VALUES (163, 2014, 'Semi-Final', 376, 378, 1, 0);
INSERT INTO public.games VALUES (164, 2014, 'Semi-Final', 377, 367, 7, 1);
INSERT INTO public.games VALUES (165, 2014, 'Quarter-Final', 378, 379, 1, 0);
INSERT INTO public.games VALUES (166, 2014, 'Quarter-Final', 376, 363, 1, 0);
INSERT INTO public.games VALUES (167, 2014, 'Quarter-Final', 367, 369, 2, 1);
INSERT INTO public.games VALUES (168, 2014, 'Quarter-Final', 377, 361, 1, 0);
INSERT INTO public.games VALUES (169, 2014, 'Eighth-Final', 367, 380, 2, 1);
INSERT INTO public.games VALUES (170, 2014, 'Eighth-Final', 369, 368, 2, 0);
INSERT INTO public.games VALUES (171, 2014, 'Eighth-Final', 361, 381, 2, 0);
INSERT INTO public.games VALUES (172, 2014, 'Eighth-Final', 377, 382, 2, 1);
INSERT INTO public.games VALUES (173, 2014, 'Eighth-Final', 378, 372, 2, 1);
INSERT INTO public.games VALUES (174, 2014, 'Eighth-Final', 379, 383, 2, 1);
INSERT INTO public.games VALUES (175, 2014, 'Eighth-Final', 376, 370, 1, 0);
INSERT INTO public.games VALUES (176, 2014, 'Eighth-Final', 363, 384, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (361, 'France');
INSERT INTO public.teams VALUES (362, 'Croatia');
INSERT INTO public.teams VALUES (363, 'Belgium');
INSERT INTO public.teams VALUES (364, 'England');
INSERT INTO public.teams VALUES (365, 'Russia');
INSERT INTO public.teams VALUES (366, 'Sweden');
INSERT INTO public.teams VALUES (367, 'Brazil');
INSERT INTO public.teams VALUES (368, 'Uruguay');
INSERT INTO public.teams VALUES (369, 'Colombia');
INSERT INTO public.teams VALUES (370, 'Switzerland');
INSERT INTO public.teams VALUES (371, 'Japan');
INSERT INTO public.teams VALUES (372, 'Mexico');
INSERT INTO public.teams VALUES (373, 'Denmark');
INSERT INTO public.teams VALUES (374, 'Spain');
INSERT INTO public.teams VALUES (375, 'Portugal');
INSERT INTO public.teams VALUES (376, 'Argentina');
INSERT INTO public.teams VALUES (377, 'Germany');
INSERT INTO public.teams VALUES (378, 'Netherlands');
INSERT INTO public.teams VALUES (379, 'Costa Rica');
INSERT INTO public.teams VALUES (380, 'Chile');
INSERT INTO public.teams VALUES (381, 'Nigeria');
INSERT INTO public.teams VALUES (382, 'Algeria');
INSERT INTO public.teams VALUES (383, 'Greece');
INSERT INTO public.teams VALUES (384, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 176, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 384, true);


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
-- Name: games fk_team1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_team1 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_team2; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_team2 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

