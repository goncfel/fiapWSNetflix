--
-- PostgreSQL database dump
--

-- Dumped from database version 12.0
-- Dumped by pg_dump version 12.0

-- Started on 2019-11-18 21:35:27

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

DROP DATABASE "Netflix";
--
-- TOC entry 2824 (class 1262 OID 16574)
-- Name: Netflix; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Netflix" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';


ALTER DATABASE "Netflix" OWNER TO postgres;

\connect "Netflix"

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
-- TOC entry 203 (class 1259 OID 16577)
-- Name: Movies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Movies" (
    "Id" integer NOT NULL,
    "MovieName" text,
    "Description" text
);


ALTER TABLE public."Movies" OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16575)
-- Name: Movies_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Movies_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Movies_Id_seq" OWNER TO postgres;

--
-- TOC entry 2825 (class 0 OID 0)
-- Dependencies: 202
-- Name: Movies_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Movies_Id_seq" OWNED BY public."Movies"."Id";


--
-- TOC entry 2688 (class 2604 OID 16580)
-- Name: Movies Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Movies" ALTER COLUMN "Id" SET DEFAULT nextval('public."Movies_Id_seq"'::regclass);


--
-- TOC entry 2818 (class 0 OID 16577)
-- Dependencies: 203
-- Data for Name: Movies; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Movies" ("Id", "MovieName", "Description") VALUES (1, 'The Joker', 'Joker (no Brasil, Coringa) é um filme estadunidense de suspense psicológico de 2019, dirigido por Todd Phillips, que co-escreveu o roteiro com Scott Silver. Baseado no personagem de mesmo nome da DC Comics, o filme é estrelado por Joaquin Phoenix como o Coringa.');
INSERT INTO public."Movies" ("Id", "MovieName", "Description") VALUES (3, 'Rei Leão', 'Teste');
INSERT INTO public."Movies" ("Id", "MovieName", "Description") VALUES (4, 'Rei Leão', 'Teste');


--
-- TOC entry 2826 (class 0 OID 0)
-- Dependencies: 202
-- Name: Movies_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Movies_Id_seq"', 4, true);


--
-- TOC entry 2690 (class 2606 OID 16585)
-- Name: Movies Movies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Movies"
    ADD CONSTRAINT "Movies_pkey" PRIMARY KEY ("Id");


-- Completed on 2019-11-18 21:35:28

--
-- PostgreSQL database dump complete
--

