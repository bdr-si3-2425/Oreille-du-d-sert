PGDMP  -    	                 }            oreille-d-desert    17.2    17.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                       1262    16389    oreille-d-desert    DATABASE     �   CREATE DATABASE "oreille-d-desert" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_France.1252';
 "   DROP DATABASE "oreille-d-desert";
                     postgres    false                        2615    16390    reseau    SCHEMA        CREATE SCHEMA reseau;
    DROP SCHEMA reseau;
                     postgres    false            �            1259    16406    Gares    TABLE     s   CREATE TABLE reseau."Gares" (
    nom character varying(50),
    ville character varying(50),
    quais integer
);
    DROP TABLE reseau."Gares";
       reseau         heap r       postgres    false    5            �            1259    16400 	   Incidents    TABLE     �   CREATE TABLE reseau."Incidents" (
    type character varying(100),
    idligne integer,
    idtrain integer,
    nomgare character varying(50),
    "idIncident" integer
);
    DROP TABLE reseau."Incidents";
       reseau         heap r       postgres    false    5            �            1259    16403    Lignes    TABLE     �   CREATE TABLE reseau."Lignes" (
    idligne integer,
    "départ" character varying(50),
    "arrivée" character varying(50)
);
    DROP TABLE reseau."Lignes";
       reseau         heap r       postgres    false    5            �            1259    16394    Trains    TABLE     �   CREATE TABLE reseau."Trains" (
    type character varying(100),
    "capacité" integer,
    maintenance character varying(50),
    ligne integer,
    idtrain integer
);
    DROP TABLE reseau."Trains";
       reseau         heap r       postgres    false    5            �            1259    16412 
   equipement    TABLE     I   CREATE TABLE reseau.equipement (
    equipement character varying(50)
);
    DROP TABLE reseau.equipement;
       reseau         heap r       postgres    false    5            �            1259    16415    horaires    TABLE     ~   CREATE TABLE reseau.horaires (
    lignes integer,
    horaire_depart date,
    horaire date,
    gare character varying[]
);
    DROP TABLE reseau.horaires;
       reseau         heap r       postgres    false    5            �            1259    16409    possede    TABLE     ]   CREATE TABLE reseau.possede (
    nomgare character varying(50),
    idequipement integer
);
    DROP TABLE reseau.possede;
       reseau         heap r       postgres    false    5                      0    16406    Gares 
   TABLE DATA           4   COPY reseau."Gares" (nom, ville, quais) FROM stdin;
    reseau               postgres    false    220                     0    16400 	   Incidents 
   TABLE DATA           T   COPY reseau."Incidents" (type, idligne, idtrain, nomgare, "idIncident") FROM stdin;
    reseau               postgres    false    218   �                 0    16403    Lignes 
   TABLE DATA           B   COPY reseau."Lignes" (idligne, "départ", "arrivée") FROM stdin;
    reseau               postgres    false    219   �       �          0    16394    Trains 
   TABLE DATA           R   COPY reseau."Trains" (type, "capacité", maintenance, ligne, idtrain) FROM stdin;
    reseau               postgres    false    217   �                 0    16412 
   equipement 
   TABLE DATA           0   COPY reseau.equipement (equipement) FROM stdin;
    reseau               postgres    false    222                    0    16415    horaires 
   TABLE DATA           I   COPY reseau.horaires (lignes, horaire_depart, horaire, gare) FROM stdin;
    reseau               postgres    false    223                    0    16409    possede 
   TABLE DATA           8   COPY reseau.possede (nomgare, idequipement) FROM stdin;
    reseau               postgres    false    221   ;          �   x�M��
�0�ϻO�����YAZ�֣��]4�%ɂ��m�����s���cS~�Í����p$3P�N��q�M
[���E�,�sl��g� X�����:&��&eW&��b�wQ'�T����0�7X�O=;g9��Z�oX8��c��?hWC�             x������ � �            x������ � �      �      x������ � �            x������ � �            x������ � �            x������ � �     