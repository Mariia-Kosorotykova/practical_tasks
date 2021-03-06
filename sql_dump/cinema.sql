PGDMP     	    /                y           cinema    13.2    13.2     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    24594    cinema    DATABASE     Q   CREATE DATABASE cinema WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE cinema;
                mariakosrotikova    false            ?            1259    24597    actors    TABLE     ?   CREATE TABLE public.actors (
    id integer NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    age integer,
    film character varying(40) NOT NULL
);
    DROP TABLE public.actors;
       public         heap    mariakosrotikova    false            ?            1259    24595    actors_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.actors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.actors_id_seq;
       public          mariakosrotikova    false    201            ?           0    0    actors_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.actors_id_seq OWNED BY public.actors.id;
          public          mariakosrotikova    false    200            ?            1259    24603    films    TABLE     ?   CREATE TABLE public.films (
    id integer NOT NULL,
    name character varying(40) NOT NULL,
    genre character varying(15) NOT NULL,
    manufacture_year integer,
    producer character varying(40) NOT NULL
);
    DROP TABLE public.films;
       public         heap    mariakosrotikova    false            ?            1259    24601    films_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.films_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.films_id_seq;
       public          mariakosrotikova    false    203            ?           0    0    films_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.films_id_seq OWNED BY public.films.id;
          public          mariakosrotikova    false    202            ?            1259    24609 	   producers    TABLE     ?   CREATE TABLE public.producers (
    id integer NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    film character varying(40) NOT NULL,
    film_budget integer
);
    DROP TABLE public.producers;
       public         heap    mariakosrotikova    false            ?            1259    24607    producers_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.producers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.producers_id_seq;
       public          mariakosrotikova    false    205            ?           0    0    producers_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.producers_id_seq OWNED BY public.producers.id;
          public          mariakosrotikova    false    204            ;           2604    24600 	   actors id    DEFAULT     f   ALTER TABLE ONLY public.actors ALTER COLUMN id SET DEFAULT nextval('public.actors_id_seq'::regclass);
 8   ALTER TABLE public.actors ALTER COLUMN id DROP DEFAULT;
       public          mariakosrotikova    false    200    201    201            <           2604    24606    films id    DEFAULT     d   ALTER TABLE ONLY public.films ALTER COLUMN id SET DEFAULT nextval('public.films_id_seq'::regclass);
 7   ALTER TABLE public.films ALTER COLUMN id DROP DEFAULT;
       public          mariakosrotikova    false    202    203    203            =           2604    24612    producers id    DEFAULT     l   ALTER TABLE ONLY public.producers ALTER COLUMN id SET DEFAULT nextval('public.producers_id_seq'::regclass);
 ;   ALTER TABLE public.producers ALTER COLUMN id DROP DEFAULT;
       public          mariakosrotikova    false    205    204    205            ?          0    24597    actors 
   TABLE DATA           F   COPY public.actors (id, first_name, last_name, age, film) FROM stdin;
    public          mariakosrotikova    false    201   ?       ?          0    24603    films 
   TABLE DATA           L   COPY public.films (id, name, genre, manufacture_year, producer) FROM stdin;
    public          mariakosrotikova    false    203          ?          0    24609 	   producers 
   TABLE DATA           Q   COPY public.producers (id, first_name, last_name, film, film_budget) FROM stdin;
    public          mariakosrotikova    false    205   *       ?           0    0    actors_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.actors_id_seq', 1, false);
          public          mariakosrotikova    false    200            ?           0    0    films_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.films_id_seq', 1, false);
          public          mariakosrotikova    false    202            ?           0    0    producers_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.producers_id_seq', 1, false);
          public          mariakosrotikova    false    204            ?           2606    24614    producers id 
   CONSTRAINT     E   ALTER TABLE ONLY public.producers
    ADD CONSTRAINT id UNIQUE (id);
 6   ALTER TABLE ONLY public.producers DROP CONSTRAINT id;
       public            mariakosrotikova    false    205            ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?     