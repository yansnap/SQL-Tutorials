toc.dat                                                                                             0000600 0004000 0002000 00000012036 14334476155 0014455 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       (    #            
    z            filmsdb    14.5    14.5     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    16426    filmsdb    DATABASE     d   CREATE DATABASE filmsdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1252';
    DROP DATABASE filmsdb;
                postgres    false         �            1259    16428    actors    TABLE     �   CREATE TABLE public.actors (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL
);
    DROP TABLE public.actors;
       public         heap    postgres    false         �            1259    16427    actors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.actors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.actors_id_seq;
       public          postgres    false    210                     0    0    actors_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.actors_id_seq OWNED BY public.actors.id;
          public          postgres    false    209         �            1259    16435    film    TABLE     \   CREATE TABLE public.film (
    id integer NOT NULL,
    title character varying NOT NULL
);
    DROP TABLE public.film;
       public         heap    postgres    false         �            1259    16434    film_id_seq    SEQUENCE     �   CREATE SEQUENCE public.film_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.film_id_seq;
       public          postgres    false    212                    0    0    film_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.film_id_seq OWNED BY public.film.id;
          public          postgres    false    211         �            1259    16442    producer    TABLE     �   CREATE TABLE public.producer (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL
);
    DROP TABLE public.producer;
       public         heap    postgres    false         �            1259    16441    producer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.producer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.producer_id_seq;
       public          postgres    false    214                    0    0    producer_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.producer_id_seq OWNED BY public.producer.id;
          public          postgres    false    213         f           2604    16431 	   actors id    DEFAULT     f   ALTER TABLE ONLY public.actors ALTER COLUMN id SET DEFAULT nextval('public.actors_id_seq'::regclass);
 8   ALTER TABLE public.actors ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210         g           2604    16438    film id    DEFAULT     b   ALTER TABLE ONLY public.film ALTER COLUMN id SET DEFAULT nextval('public.film_id_seq'::regclass);
 6   ALTER TABLE public.film ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212         h           2604    16445    producer id    DEFAULT     j   ALTER TABLE ONLY public.producer ALTER COLUMN id SET DEFAULT nextval('public.producer_id_seq'::regclass);
 :   ALTER TABLE public.producer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214         �          0    16428    actors 
   TABLE DATA                 public          postgres    false    210       3317.dat �          0    16435    film 
   TABLE DATA                 public          postgres    false    212       3319.dat �          0    16442    producer 
   TABLE DATA                 public          postgres    false    214       3321.dat            0    0    actors_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.actors_id_seq', 5, true);
          public          postgres    false    209                    0    0    film_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.film_id_seq', 5, true);
          public          postgres    false    211                    0    0    producer_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.producer_id_seq', 5, true);
          public          postgres    false    213                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          3317.dat                                                                                            0000600 0004000 0002000 00000000654 14334476155 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.actors (id, first_name, last_name) VALUES (1, 'Eduardo', 'Franco');
INSERT INTO public.actors (id, first_name, last_name) VALUES (2, 'Karol', 'G');
INSERT INTO public.actors (id, first_name, last_name) VALUES (3, 'Sofia', 'Vergara');
INSERT INTO public.actors (id, first_name, last_name) VALUES (4, 'Michele', 'Lepe');
INSERT INTO public.actors (id, first_name, last_name) VALUES (5, 'Joe', 'Manganiello');


                                                                                    3319.dat                                                                                            0000600 0004000 0002000 00000000474 14334476155 0014272 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.film (id, title) VALUES (1, 'John Wick');
INSERT INTO public.film (id, title) VALUES (2, 'Koati');
INSERT INTO public.film (id, title) VALUES (3, 'Black Adam');
INSERT INTO public.film (id, title) VALUES (4, 'Paradise City');
INSERT INTO public.film (id, title) VALUES (5, 'Restart the Earth');


                                                                                                                                                                                                    3321.dat                                                                                            0000600 0004000 0002000 00000000673 14334476155 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.producer (id, first_name, last_name) VALUES (1, 'Steven', 'Spielberg');
INSERT INTO public.producer (id, first_name, last_name) VALUES (2, 'Kevin', 'Feige');
INSERT INTO public.producer (id, first_name, last_name) VALUES (3, 'Kathleen', 'Kennedy');
INSERT INTO public.producer (id, first_name, last_name) VALUES (4, 'Nina', 'Jacobson');
INSERT INTO public.producer (id, first_name, last_name) VALUES (5, 'Jason', 'Blum');


                                                                     restore.sql                                                                                         0000600 0004000 0002000 00000010764 14334476155 0015410 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

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

DROP DATABASE filmsdb;
--
-- Name: filmsdb; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE filmsdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1252';


ALTER DATABASE filmsdb OWNER TO postgres;

\connect filmsdb

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
-- Name: actors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actors (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL
);


ALTER TABLE public.actors OWNER TO postgres;

--
-- Name: actors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.actors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actors_id_seq OWNER TO postgres;

--
-- Name: actors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.actors_id_seq OWNED BY public.actors.id;


--
-- Name: film; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.film (
    id integer NOT NULL,
    title character varying NOT NULL
);


ALTER TABLE public.film OWNER TO postgres;

--
-- Name: film_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.film_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.film_id_seq OWNER TO postgres;

--
-- Name: film_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.film_id_seq OWNED BY public.film.id;


--
-- Name: producer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.producer (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL
);


ALTER TABLE public.producer OWNER TO postgres;

--
-- Name: producer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.producer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.producer_id_seq OWNER TO postgres;

--
-- Name: producer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.producer_id_seq OWNED BY public.producer.id;


--
-- Name: actors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actors ALTER COLUMN id SET DEFAULT nextval('public.actors_id_seq'::regclass);


--
-- Name: film id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.film ALTER COLUMN id SET DEFAULT nextval('public.film_id_seq'::regclass);


--
-- Name: producer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producer ALTER COLUMN id SET DEFAULT nextval('public.producer_id_seq'::regclass);


--
-- Data for Name: actors; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3317.dat

--
-- Data for Name: film; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3319.dat

--
-- Data for Name: producer; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3321.dat

--
-- Name: actors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.actors_id_seq', 5, true);


--
-- Name: film_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.film_id_seq', 5, true);


--
-- Name: producer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.producer_id_seq', 5, true);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            