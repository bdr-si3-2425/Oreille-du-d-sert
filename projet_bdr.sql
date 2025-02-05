toc.dat                                                                                             0000600 0004000 0002000 00000013224 14750455220 0014445 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                       }            oreille-d-desert    17.2    17.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                    1262    16389    oreille-d-desert    DATABASE     �   CREATE DATABASE "oreille-d-desert" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_France.1252';
 "   DROP DATABASE "oreille-d-desert";
                     postgres    false                     2615    16390    reseau    SCHEMA        CREATE SCHEMA reseau;
    DROP SCHEMA reseau;
                     postgres    false         �            1259    16406    Gares    TABLE     s   CREATE TABLE reseau."Gares" (
    nom character varying(50),
    ville character varying(50),
    quais integer
);
    DROP TABLE reseau."Gares";
       reseau         heap r       postgres    false    5         �            1259    16400 	   Incidents    TABLE     �   CREATE TABLE reseau."Incidents" (
    type character varying(100),
    idligne integer,
    idtrain integer,
    nomgare character varying(50),
    "idIncident" integer
);
    DROP TABLE reseau."Incidents";
       reseau         heap r       postgres    false    5         �            1259    24613    Lignes    TABLE     �   CREATE TABLE reseau."Lignes" (
    idligne integer NOT NULL,
    "départ" character varying(50),
    destination character varying(50)
);
    DROP TABLE reseau."Lignes";
       reseau         heap r       postgres    false    5         �            1259    24612    Lignes_idligne_seq    SEQUENCE     �   CREATE SEQUENCE reseau."Lignes_idligne_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE reseau."Lignes_idligne_seq";
       reseau               postgres    false    5    224                    0    0    Lignes_idligne_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE reseau."Lignes_idligne_seq" OWNED BY reseau."Lignes".idligne;
          reseau               postgres    false    223         �            1259    16394    Trains    TABLE     �   CREATE TABLE reseau."Trains" (
    type character varying(100),
    "capacité" integer,
    maintenance character varying(50),
    ligne integer,
    idtrain integer
);
    DROP TABLE reseau."Trains";
       reseau         heap r       postgres    false    5         �            1259    16412 
   equipement    TABLE     e   CREATE TABLE reseau.equipement (
    equipement character varying(50),
    "idEquipement" integer
);
    DROP TABLE reseau.equipement;
       reseau         heap r       postgres    false    5         �            1259    16415    horaires    TABLE     �   CREATE TABLE reseau.horaires (
    lignes integer,
    horaire time without time zone,
    gare character varying(50),
    train integer
);
    DROP TABLE reseau.horaires;
       reseau         heap r       postgres    false    5         �            1259    16409    possede    TABLE     ]   CREATE TABLE reseau.possede (
    nomgare character varying(50),
    idequipement integer
);
    DROP TABLE reseau.possede;
       reseau         heap r       postgres    false    5         o           2604    24616    Lignes idligne    DEFAULT     t   ALTER TABLE ONLY reseau."Lignes" ALTER COLUMN idligne SET DEFAULT nextval('reseau."Lignes_idligne_seq"'::regclass);
 ?   ALTER TABLE reseau."Lignes" ALTER COLUMN idligne DROP DEFAULT;
       reseau               postgres    false    223    224    224                   0    16406    Gares 
   TABLE DATA           4   COPY reseau."Gares" (nom, ville, quais) FROM stdin;
    reseau               postgres    false    219       4867.dat           0    16400 	   Incidents 
   TABLE DATA           T   COPY reseau."Incidents" (type, idligne, idtrain, nomgare, "idIncident") FROM stdin;
    reseau               postgres    false    218       4866.dat           0    24613    Lignes 
   TABLE DATA           C   COPY reseau."Lignes" (idligne, "départ", destination) FROM stdin;
    reseau               postgres    false    224       4872.dat           0    16394    Trains 
   TABLE DATA           R   COPY reseau."Trains" (type, "capacité", maintenance, ligne, idtrain) FROM stdin;
    reseau               postgres    false    217       4865.dat           0    16412 
   equipement 
   TABLE DATA           @   COPY reseau.equipement (equipement, "idEquipement") FROM stdin;
    reseau               postgres    false    221       4869.dat           0    16415    horaires 
   TABLE DATA           @   COPY reseau.horaires (lignes, horaire, gare, train) FROM stdin;
    reseau               postgres    false    222       4870.dat           0    16409    possede 
   TABLE DATA           8   COPY reseau.possede (nomgare, idequipement) FROM stdin;
    reseau               postgres    false    220       4868.dat            0    0    Lignes_idligne_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('reseau."Lignes_idligne_seq"', 6, true);
          reseau               postgres    false    223                                                                                                                                                                                                                                                                                                                                                                                    4867.dat                                                                                            0000600 0004000 0002000 00000000344 14750455220 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Gare de Lyon	Paris	16
Lyon Part-Dieu	Lyon	16
Strasbourg	Strasbourg	12
Lille Europe	Lille	8
Rennes	Rennes	15
Bordeaux St-Jean	Bordeaux	20
Toulouse Matabiau	Toulouse	14
Montpellier St-Roch	Montpellier	7
Gare du Nord	Paris	28
\.


                                                                                                                                                                                                                                                                                            4866.dat                                                                                            0000600 0004000 0002000 00000000032 14750455220 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Caténaire	4	\N	\N	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      4872.dat                                                                                            0000600 0004000 0002000 00000000170 14750455220 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Strasbourg	Rennes
4	Gare du Nord	Lille Europe
5	Toulouse Matabiau	Lyon Part-Dieu
6	Bordeaux St-Jean	Lille Europe
\.


                                                                                                                                                                                                                                                                                                                                                                                                        4865.dat                                                                                            0000600 0004000 0002000 00000000153 14750455220 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        TGV	640	done	4	1
TGV	640	done	5	2
TGV	640	done	5	3
TGV	640	done	5	6
TGV	640	done	4	4
TGV	640	done	4	5
\.


                                                                                                                                                                                                                                                                                                                                                                                                                     4869.dat                                                                                            0000600 0004000 0002000 00000000014 14750455220 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        banc	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    4870.dat                                                                                            0000600 0004000 0002000 00000000515 14750455220 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        5	10:05:00	Toulouse Matabiau	2
5	12:05:00	Montpellier St-Roch	2
5	13:58:00	Lyon Part-Dieu	2
5	08:14:00	Toulouse Matabiau	3
5	12:01:00	Lyon Part-Dieu	3
5	10:07:00	Montpellier St-Roch	3
4	07:53:00	Gare du Nord	4
4	08:15:00	Lille Europe	4
5	07:12:00	Toulouse Matabiau	5
5	09:17:00	Montpellier St-Roch	5
5	11:22:00	Lyon Part-Dieu	5
\.


                                                                                                                                                                                   4868.dat                                                                                            0000600 0004000 0002000 00000000024 14750455220 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Gare de Lyon	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            restore.sql                                                                                         0000600 0004000 0002000 00000013325 14750455220 0015374 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE "oreille-d-desert";
--
-- Name: oreille-d-desert; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "oreille-d-desert" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_France.1252';


ALTER DATABASE "oreille-d-desert" OWNER TO postgres;

\connect -reuse-previous=on "dbname='oreille-d-desert'"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: reseau; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA reseau;


ALTER SCHEMA reseau OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Gares; Type: TABLE; Schema: reseau; Owner: postgres
--

CREATE TABLE reseau."Gares" (
    nom character varying(50),
    ville character varying(50),
    quais integer
);


ALTER TABLE reseau."Gares" OWNER TO postgres;

--
-- Name: Incidents; Type: TABLE; Schema: reseau; Owner: postgres
--

CREATE TABLE reseau."Incidents" (
    type character varying(100),
    idligne integer,
    idtrain integer,
    nomgare character varying(50),
    "idIncident" integer
);


ALTER TABLE reseau."Incidents" OWNER TO postgres;

--
-- Name: Lignes; Type: TABLE; Schema: reseau; Owner: postgres
--

CREATE TABLE reseau."Lignes" (
    idligne integer NOT NULL,
    "départ" character varying(50),
    destination character varying(50)
);


ALTER TABLE reseau."Lignes" OWNER TO postgres;

--
-- Name: Lignes_idligne_seq; Type: SEQUENCE; Schema: reseau; Owner: postgres
--

CREATE SEQUENCE reseau."Lignes_idligne_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE reseau."Lignes_idligne_seq" OWNER TO postgres;

--
-- Name: Lignes_idligne_seq; Type: SEQUENCE OWNED BY; Schema: reseau; Owner: postgres
--

ALTER SEQUENCE reseau."Lignes_idligne_seq" OWNED BY reseau."Lignes".idligne;


--
-- Name: Trains; Type: TABLE; Schema: reseau; Owner: postgres
--

CREATE TABLE reseau."Trains" (
    type character varying(100),
    "capacité" integer,
    maintenance character varying(50),
    ligne integer,
    idtrain integer
);


ALTER TABLE reseau."Trains" OWNER TO postgres;

--
-- Name: equipement; Type: TABLE; Schema: reseau; Owner: postgres
--

CREATE TABLE reseau.equipement (
    equipement character varying(50),
    "idEquipement" integer
);


ALTER TABLE reseau.equipement OWNER TO postgres;

--
-- Name: horaires; Type: TABLE; Schema: reseau; Owner: postgres
--

CREATE TABLE reseau.horaires (
    lignes integer,
    horaire time without time zone,
    gare character varying(50),
    train integer
);


ALTER TABLE reseau.horaires OWNER TO postgres;

--
-- Name: possede; Type: TABLE; Schema: reseau; Owner: postgres
--

CREATE TABLE reseau.possede (
    nomgare character varying(50),
    idequipement integer
);


ALTER TABLE reseau.possede OWNER TO postgres;

--
-- Name: Lignes idligne; Type: DEFAULT; Schema: reseau; Owner: postgres
--

ALTER TABLE ONLY reseau."Lignes" ALTER COLUMN idligne SET DEFAULT nextval('reseau."Lignes_idligne_seq"'::regclass);


--
-- Data for Name: Gares; Type: TABLE DATA; Schema: reseau; Owner: postgres
--

COPY reseau."Gares" (nom, ville, quais) FROM stdin;
\.
COPY reseau."Gares" (nom, ville, quais) FROM '$$PATH$$/4867.dat';

--
-- Data for Name: Incidents; Type: TABLE DATA; Schema: reseau; Owner: postgres
--

COPY reseau."Incidents" (type, idligne, idtrain, nomgare, "idIncident") FROM stdin;
\.
COPY reseau."Incidents" (type, idligne, idtrain, nomgare, "idIncident") FROM '$$PATH$$/4866.dat';

--
-- Data for Name: Lignes; Type: TABLE DATA; Schema: reseau; Owner: postgres
--

COPY reseau."Lignes" (idligne, "départ", destination) FROM stdin;
\.
COPY reseau."Lignes" (idligne, "départ", destination) FROM '$$PATH$$/4872.dat';

--
-- Data for Name: Trains; Type: TABLE DATA; Schema: reseau; Owner: postgres
--

COPY reseau."Trains" (type, "capacité", maintenance, ligne, idtrain) FROM stdin;
\.
COPY reseau."Trains" (type, "capacité", maintenance, ligne, idtrain) FROM '$$PATH$$/4865.dat';

--
-- Data for Name: equipement; Type: TABLE DATA; Schema: reseau; Owner: postgres
--

COPY reseau.equipement (equipement, "idEquipement") FROM stdin;
\.
COPY reseau.equipement (equipement, "idEquipement") FROM '$$PATH$$/4869.dat';

--
-- Data for Name: horaires; Type: TABLE DATA; Schema: reseau; Owner: postgres
--

COPY reseau.horaires (lignes, horaire, gare, train) FROM stdin;
\.
COPY reseau.horaires (lignes, horaire, gare, train) FROM '$$PATH$$/4870.dat';

--
-- Data for Name: possede; Type: TABLE DATA; Schema: reseau; Owner: postgres
--

COPY reseau.possede (nomgare, idequipement) FROM stdin;
\.
COPY reseau.possede (nomgare, idequipement) FROM '$$PATH$$/4868.dat';

--
-- Name: Lignes_idligne_seq; Type: SEQUENCE SET; Schema: reseau; Owner: postgres
--

SELECT pg_catalog.setval('reseau."Lignes_idligne_seq"', 6, true);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           