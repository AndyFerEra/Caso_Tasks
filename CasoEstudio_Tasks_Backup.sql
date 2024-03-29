toc.dat                                                                                             0000600 0004000 0002000 00000030001 14550003416 0014427 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP   *        
             |            Tasks    16.1    16.1 .    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    16972    Tasks    DATABASE     z   CREATE DATABASE "Tasks" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "Tasks";
                postgres    false         �            1259    17219    esta_proyec    TABLE     m   CREATE TABLE public.esta_proyec (
    id_esta bigint NOT NULL,
    nomb_esta_proyec character varying(50)
);
    DROP TABLE public.esta_proyec;
       public         heap    postgres    false         �            1259    17218    esta_proyec_id_esta_seq    SEQUENCE     �   CREATE SEQUENCE public.esta_proyec_id_esta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.esta_proyec_id_esta_seq;
       public          postgres    false    216         �           0    0    esta_proyec_id_esta_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.esta_proyec_id_esta_seq OWNED BY public.esta_proyec.id_esta;
          public          postgres    false    215         �            1259    17238    icon    TABLE     n   CREATE TABLE public.icon (
    id_icon bigint NOT NULL,
    icono oid,
    nomb_icon character varying(50)
);
    DROP TABLE public.icon;
       public         heap    postgres    false         �            1259    17237    icon_id_icon_seq    SEQUENCE     y   CREATE SEQUENCE public.icon_id_icon_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.icon_id_icon_seq;
       public          postgres    false    218         �           0    0    icon_id_icon_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.icon_id_icon_seq OWNED BY public.icon.id_icon;
          public          postgres    false    217         �            1259    17306    proyecto    TABLE     ,  CREATE TABLE public.proyecto (
    id_proyecto character varying(10) NOT NULL,
    desc_proyecto character varying(150),
    fech_fin date,
    fech_ini date,
    nomb_proyecto character varying(50),
    switch_compa boolean NOT NULL,
    id_esta bigint,
    id_icon bigint,
    id_usuario bigint
);
    DROP TABLE public.proyecto;
       public         heap    postgres    false         �            1259    17252    usuario    TABLE     d  CREATE TABLE public.usuario (
    id_usuario bigint NOT NULL,
    apel_usuario character varying(50),
    cont_usuario character varying(250),
    corr_usuario character varying(100),
    imagen oid,
    nomb_empr character varying(50),
    nomb_usuario character varying(50),
    tele_usuario character varying(13),
    carg_empr character varying(50)
);
    DROP TABLE public.usuario;
       public         heap    postgres    false         �            1259    17251    usuario_id_usuario_seq    SEQUENCE        CREATE SEQUENCE public.usuario_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuario_id_usuario_seq;
       public          postgres    false    220         �           0    0    usuario_id_usuario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;
          public          postgres    false    219         (           2604    17222    esta_proyec id_esta    DEFAULT     z   ALTER TABLE ONLY public.esta_proyec ALTER COLUMN id_esta SET DEFAULT nextval('public.esta_proyec_id_esta_seq'::regclass);
 B   ALTER TABLE public.esta_proyec ALTER COLUMN id_esta DROP DEFAULT;
       public          postgres    false    215    216    216         )           2604    17241    icon id_icon    DEFAULT     l   ALTER TABLE ONLY public.icon ALTER COLUMN id_icon SET DEFAULT nextval('public.icon_id_icon_seq'::regclass);
 ;   ALTER TABLE public.icon ALTER COLUMN id_icon DROP DEFAULT;
       public          postgres    false    218    217    218         *           2604    17255    usuario id_usuario    DEFAULT     x   ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);
 A   ALTER TABLE public.usuario ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    220    219    220         �           2613    17246    17246    BLOB     &   SELECT pg_catalog.lo_create('17246');
 &   SELECT pg_catalog.lo_unlink('17246');
                postgres    false         �           2613    17247    17247    BLOB     &   SELECT pg_catalog.lo_create('17247');
 &   SELECT pg_catalog.lo_unlink('17247');
                postgres    false         �           2613    17248    17248    BLOB     &   SELECT pg_catalog.lo_create('17248');
 &   SELECT pg_catalog.lo_unlink('17248');
                postgres    false         �           2613    17249    17249    BLOB     &   SELECT pg_catalog.lo_create('17249');
 &   SELECT pg_catalog.lo_unlink('17249');
                postgres    false         �           2613    17250    17250    BLOB     &   SELECT pg_catalog.lo_create('17250');
 &   SELECT pg_catalog.lo_unlink('17250');
                postgres    false         �           2613    17262    17262    BLOB     &   SELECT pg_catalog.lo_create('17262');
 &   SELECT pg_catalog.lo_unlink('17262');
                postgres    false         �           2613    17301    17301    BLOB     &   SELECT pg_catalog.lo_create('17301');
 &   SELECT pg_catalog.lo_unlink('17301');
                postgres    false         �           2613    17302    17302    BLOB     &   SELECT pg_catalog.lo_create('17302');
 &   SELECT pg_catalog.lo_unlink('17302');
                postgres    false         �           2613    17303    17303    BLOB     &   SELECT pg_catalog.lo_create('17303');
 &   SELECT pg_catalog.lo_unlink('17303');
                postgres    false         �           2613    17304    17304    BLOB     &   SELECT pg_catalog.lo_create('17304');
 &   SELECT pg_catalog.lo_unlink('17304');
                postgres    false         �           2613    17305    17305    BLOB     &   SELECT pg_catalog.lo_create('17305');
 &   SELECT pg_catalog.lo_unlink('17305');
                postgres    false         �          0    17219    esta_proyec 
   TABLE DATA           @   COPY public.esta_proyec (id_esta, nomb_esta_proyec) FROM stdin;
    public          postgres    false    216       4812.dat �          0    17238    icon 
   TABLE DATA           9   COPY public.icon (id_icon, icono, nomb_icon) FROM stdin;
    public          postgres    false    218       4814.dat �          0    17306    proyecto 
   TABLE DATA           �   COPY public.proyecto (id_proyecto, desc_proyecto, fech_fin, fech_ini, nomb_proyecto, switch_compa, id_esta, id_icon, id_usuario) FROM stdin;
    public          postgres    false    221       4817.dat �          0    17252    usuario 
   TABLE DATA           �   COPY public.usuario (id_usuario, apel_usuario, cont_usuario, corr_usuario, imagen, nomb_empr, nomb_usuario, tele_usuario, carg_empr) FROM stdin;
    public          postgres    false    220       4816.dat �           0    0    esta_proyec_id_esta_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.esta_proyec_id_esta_seq', 7, true);
          public          postgres    false    215         �           0    0    icon_id_icon_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.icon_id_icon_seq', 5, true);
          public          postgres    false    217         �           0    0    usuario_id_usuario_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 3, true);
          public          postgres    false    219         �          0    0    BLOBS    BLOBS                             false       4829.dat ,           2606    17224    esta_proyec esta_proyec_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.esta_proyec
    ADD CONSTRAINT esta_proyec_pkey PRIMARY KEY (id_esta);
 F   ALTER TABLE ONLY public.esta_proyec DROP CONSTRAINT esta_proyec_pkey;
       public            postgres    false    216         0           2606    17243    icon icon_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.icon
    ADD CONSTRAINT icon_pkey PRIMARY KEY (id_icon);
 8   ALTER TABLE ONLY public.icon DROP CONSTRAINT icon_pkey;
       public            postgres    false    218         8           2606    17402    proyecto proyecto_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.proyecto
    ADD CONSTRAINT proyecto_pkey PRIMARY KEY (id_proyecto);
 @   ALTER TABLE ONLY public.proyecto DROP CONSTRAINT proyecto_pkey;
       public            postgres    false    221         2           2606    17418 !   icon uk_2l7xfgr1e9eof0xoch6nu3r5o 
   CONSTRAINT     a   ALTER TABLE ONLY public.icon
    ADD CONSTRAINT uk_2l7xfgr1e9eof0xoch6nu3r5o UNIQUE (nomb_icon);
 K   ALTER TABLE ONLY public.icon DROP CONSTRAINT uk_2l7xfgr1e9eof0xoch6nu3r5o;
       public            postgres    false    218         .           2606    17425 (   esta_proyec uk_3qiqutvbuolrg8ddnw6706jnj 
   CONSTRAINT     o   ALTER TABLE ONLY public.esta_proyec
    ADD CONSTRAINT uk_3qiqutvbuolrg8ddnw6706jnj UNIQUE (nomb_esta_proyec);
 R   ALTER TABLE ONLY public.esta_proyec DROP CONSTRAINT uk_3qiqutvbuolrg8ddnw6706jnj;
       public            postgres    false    216         4           2606    17343 #   usuario uk_564t50ggiakuvry27vswk3kh 
   CONSTRAINT     f   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT uk_564t50ggiakuvry27vswk3kh UNIQUE (corr_usuario);
 M   ALTER TABLE ONLY public.usuario DROP CONSTRAINT uk_564t50ggiakuvry27vswk3kh;
       public            postgres    false    220         6           2606    17259    usuario usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    220         9           2606    17313 $   proyecto fkkjqlpa9lkw29m00l38qx83w0v    FK CONSTRAINT     �   ALTER TABLE ONLY public.proyecto
    ADD CONSTRAINT fkkjqlpa9lkw29m00l38qx83w0v FOREIGN KEY (id_esta) REFERENCES public.esta_proyec(id_esta);
 N   ALTER TABLE ONLY public.proyecto DROP CONSTRAINT fkkjqlpa9lkw29m00l38qx83w0v;
       public          postgres    false    221    216    4652         :           2606    17318 $   proyecto fkl3rmtstv3l97udc2m9lo1ynqi    FK CONSTRAINT     �   ALTER TABLE ONLY public.proyecto
    ADD CONSTRAINT fkl3rmtstv3l97udc2m9lo1ynqi FOREIGN KEY (id_icon) REFERENCES public.icon(id_icon);
 N   ALTER TABLE ONLY public.proyecto DROP CONSTRAINT fkl3rmtstv3l97udc2m9lo1ynqi;
       public          postgres    false    218    4656    221         ;           2606    17323 $   proyecto fktj8kcm1k1x2fllrsl94d02a6t    FK CONSTRAINT     �   ALTER TABLE ONLY public.proyecto
    ADD CONSTRAINT fktj8kcm1k1x2fllrsl94d02a6t FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 N   ALTER TABLE ONLY public.proyecto DROP CONSTRAINT fktj8kcm1k1x2fllrsl94d02a6t;
       public          postgres    false    221    220    4662                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       4812.dat                                                                                            0000600 0004000 0002000 00000000076 14550003416 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	PLANIFICACIÓN 
2	EN CURSO
3	EN REVISIÓN
4	FINALIZADO
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                  4814.dat                                                                                            0000600 0004000 0002000 00000000106 14550003416 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	17249	tres
3	17248	cambiado
5	17301	\N
1	17302	editadocompleto
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                          4817.dat                                                                                            0000600 0004000 0002000 00000000271 14550003416 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        ATA-2	Descrip fe	2023-04-12	2023-04-16	Proyecto de APP	t	1	1	1
prueba-2	Descrip fe	2023-04-12	2023-04-16	oscuro	t	2	1	1
NASHA-2	Descrip nasha	2023-04-12	2023-04-16	nashita	f	4	1	1
\.


                                                                                                                                                                                                                                                                                                                                       4816.dat                                                                                            0000600 0004000 0002000 00000000253 14550003416 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Dolores Fuentes	BORRAR	manuel@gmail.com	17262	Empresa	Manuel	+51 987412365	CEO
2	Dolores Sinfuente	numerotres	lafe@gmail.com	17304	Empresa	Manuel	+51 987412365	CEO
\.


                                                                                                                                                                                                                                                                                                                                                     blob_17246.dat                                                                                      0000600 0004000 0002000 00000000063 14550003416 0015330 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Estos son datos ficticios para un arreglo de bytes.                                                                                                                                                                                                                                                                                                                                                                                                                                                                             blob_17247.dat                                                                                      0000600 0004000 0002000 00000000063 14550003416 0015331 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Estos son datos ficticios para un arreglo de bytes.                                                                                                                                                                                                                                                                                                                                                                                                                                                                             blob_17248.dat                                                                                      0000600 0004000 0002000 00000000063 14550003416 0015332 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Estos son datos ficticios para un arreglo de bytes.                                                                                                                                                                                                                                                                                                                                                                                                                                                                             blob_17249.dat                                                                                      0000600 0004000 0002000 00000000063 14550003416 0015333 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Estos son datos ficticios para un arreglo de bytes.                                                                                                                                                                                                                                                                                                                                                                                                                                                                             blob_17250.dat                                                                                      0000600 0004000 0002000 00000000063 14550003416 0015323 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Estos son datos ficticios para un arreglo de bytes.                                                                                                                                                                                                                                                                                                                                                                                                                                                                             blob_17262.dat                                                                                      0000600 0004000 0002000 00000000061 14550003416 0015324 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Estos son datos ficticios para los bits de Imagen                                                                                                                                                                                                                                                                                                                                                                                                                                                                               blob_17301.dat                                                                                      0000600 0004000 0002000 00000000060 14550003416 0015315 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Estos son datos ficticios para los bits de Icono                                                                                                                                                                                                                                                                                                                                                                                                                                                                                blob_17302.dat                                                                                      0000600 0004000 0002000 00000000060 14550003416 0015316 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Estos son datos ficticios para los bits de Icono                                                                                                                                                                                                                                                                                                                                                                                                                                                                                blob_17303.dat                                                                                      0000600 0004000 0002000 00000000061 14550003416 0015320 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Estos son datos ficticios para los bits de Imagen                                                                                                                                                                                                                                                                                                                                                                                                                                                                               blob_17304.dat                                                                                      0000600 0004000 0002000 00000000061 14550003416 0015321 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Estos son datos ficticios para los bits de Imagen                                                                                                                                                                                                                                                                                                                                                                                                                                                                               blob_17305.dat                                                                                      0000600 0004000 0002000 00000000061 14550003416 0015322 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Estos son datos ficticios para los bits de Imagen                                                                                                                                                                                                                                                                                                                                                                                                                                                                               blobs.toc                                                                                           0000600 0004000 0002000 00000000347 14550003416 0014772 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        17246 blob_17246.dat
17247 blob_17247.dat
17248 blob_17248.dat
17249 blob_17249.dat
17250 blob_17250.dat
17262 blob_17262.dat
17301 blob_17301.dat
17302 blob_17302.dat
17303 blob_17303.dat
17304 blob_17304.dat
17305 blob_17305.dat
                                                                                                                                                                                                                                                                                         restore.sql                                                                                         0000600 0004000 0002000 00000023642 14550003416 0015371 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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

DROP DATABASE "Tasks";
--
-- Name: Tasks; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Tasks" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';


ALTER DATABASE "Tasks" OWNER TO postgres;

\connect "Tasks"

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
-- Name: esta_proyec; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.esta_proyec (
    id_esta bigint NOT NULL,
    nomb_esta_proyec character varying(50)
);


ALTER TABLE public.esta_proyec OWNER TO postgres;

--
-- Name: esta_proyec_id_esta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.esta_proyec_id_esta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.esta_proyec_id_esta_seq OWNER TO postgres;

--
-- Name: esta_proyec_id_esta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.esta_proyec_id_esta_seq OWNED BY public.esta_proyec.id_esta;


--
-- Name: icon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.icon (
    id_icon bigint NOT NULL,
    icono oid,
    nomb_icon character varying(50)
);


ALTER TABLE public.icon OWNER TO postgres;

--
-- Name: icon_id_icon_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.icon_id_icon_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.icon_id_icon_seq OWNER TO postgres;

--
-- Name: icon_id_icon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.icon_id_icon_seq OWNED BY public.icon.id_icon;


--
-- Name: proyecto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proyecto (
    id_proyecto character varying(10) NOT NULL,
    desc_proyecto character varying(150),
    fech_fin date,
    fech_ini date,
    nomb_proyecto character varying(50),
    switch_compa boolean NOT NULL,
    id_esta bigint,
    id_icon bigint,
    id_usuario bigint
);


ALTER TABLE public.proyecto OWNER TO postgres;

--
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id_usuario bigint NOT NULL,
    apel_usuario character varying(50),
    cont_usuario character varying(250),
    corr_usuario character varying(100),
    imagen oid,
    nomb_empr character varying(50),
    nomb_usuario character varying(50),
    tele_usuario character varying(13),
    carg_empr character varying(50)
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuario_id_usuario_seq OWNER TO postgres;

--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;


--
-- Name: esta_proyec id_esta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.esta_proyec ALTER COLUMN id_esta SET DEFAULT nextval('public.esta_proyec_id_esta_seq'::regclass);


--
-- Name: icon id_icon; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.icon ALTER COLUMN id_icon SET DEFAULT nextval('public.icon_id_icon_seq'::regclass);


--
-- Name: usuario id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);


--
-- Name: 17246; Type: BLOB; Schema: -; Owner: postgres
--

SELECT pg_catalog.lo_create('17246');


ALTER LARGE OBJECT 17246 OWNER TO postgres;

--
-- Name: 17247; Type: BLOB; Schema: -; Owner: postgres
--

SELECT pg_catalog.lo_create('17247');


ALTER LARGE OBJECT 17247 OWNER TO postgres;

--
-- Name: 17248; Type: BLOB; Schema: -; Owner: postgres
--

SELECT pg_catalog.lo_create('17248');


ALTER LARGE OBJECT 17248 OWNER TO postgres;

--
-- Name: 17249; Type: BLOB; Schema: -; Owner: postgres
--

SELECT pg_catalog.lo_create('17249');


ALTER LARGE OBJECT 17249 OWNER TO postgres;

--
-- Name: 17250; Type: BLOB; Schema: -; Owner: postgres
--

SELECT pg_catalog.lo_create('17250');


ALTER LARGE OBJECT 17250 OWNER TO postgres;

--
-- Name: 17262; Type: BLOB; Schema: -; Owner: postgres
--

SELECT pg_catalog.lo_create('17262');


ALTER LARGE OBJECT 17262 OWNER TO postgres;

--
-- Name: 17301; Type: BLOB; Schema: -; Owner: postgres
--

SELECT pg_catalog.lo_create('17301');


ALTER LARGE OBJECT 17301 OWNER TO postgres;

--
-- Name: 17302; Type: BLOB; Schema: -; Owner: postgres
--

SELECT pg_catalog.lo_create('17302');


ALTER LARGE OBJECT 17302 OWNER TO postgres;

--
-- Name: 17303; Type: BLOB; Schema: -; Owner: postgres
--

SELECT pg_catalog.lo_create('17303');


ALTER LARGE OBJECT 17303 OWNER TO postgres;

--
-- Name: 17304; Type: BLOB; Schema: -; Owner: postgres
--

SELECT pg_catalog.lo_create('17304');


ALTER LARGE OBJECT 17304 OWNER TO postgres;

--
-- Name: 17305; Type: BLOB; Schema: -; Owner: postgres
--

SELECT pg_catalog.lo_create('17305');


ALTER LARGE OBJECT 17305 OWNER TO postgres;

--
-- Data for Name: esta_proyec; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.esta_proyec (id_esta, nomb_esta_proyec) FROM stdin;
\.
COPY public.esta_proyec (id_esta, nomb_esta_proyec) FROM '$$PATH$$/4812.dat';

--
-- Data for Name: icon; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.icon (id_icon, icono, nomb_icon) FROM stdin;
\.
COPY public.icon (id_icon, icono, nomb_icon) FROM '$$PATH$$/4814.dat';

--
-- Data for Name: proyecto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.proyecto (id_proyecto, desc_proyecto, fech_fin, fech_ini, nomb_proyecto, switch_compa, id_esta, id_icon, id_usuario) FROM stdin;
\.
COPY public.proyecto (id_proyecto, desc_proyecto, fech_fin, fech_ini, nomb_proyecto, switch_compa, id_esta, id_icon, id_usuario) FROM '$$PATH$$/4817.dat';

--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (id_usuario, apel_usuario, cont_usuario, corr_usuario, imagen, nomb_empr, nomb_usuario, tele_usuario, carg_empr) FROM stdin;
\.
COPY public.usuario (id_usuario, apel_usuario, cont_usuario, corr_usuario, imagen, nomb_empr, nomb_usuario, tele_usuario, carg_empr) FROM '$$PATH$$/4816.dat';

--
-- Name: esta_proyec_id_esta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.esta_proyec_id_esta_seq', 7, true);


--
-- Name: icon_id_icon_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.icon_id_icon_seq', 5, true);


--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 3, true);


--
-- Data for Name: BLOBS; Type: BLOBS; Schema: -; Owner: -
--

\i $$PATH$$/4829.dat

--
-- Name: esta_proyec esta_proyec_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.esta_proyec
    ADD CONSTRAINT esta_proyec_pkey PRIMARY KEY (id_esta);


--
-- Name: icon icon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.icon
    ADD CONSTRAINT icon_pkey PRIMARY KEY (id_icon);


--
-- Name: proyecto proyecto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proyecto
    ADD CONSTRAINT proyecto_pkey PRIMARY KEY (id_proyecto);


--
-- Name: icon uk_2l7xfgr1e9eof0xoch6nu3r5o; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.icon
    ADD CONSTRAINT uk_2l7xfgr1e9eof0xoch6nu3r5o UNIQUE (nomb_icon);


--
-- Name: esta_proyec uk_3qiqutvbuolrg8ddnw6706jnj; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.esta_proyec
    ADD CONSTRAINT uk_3qiqutvbuolrg8ddnw6706jnj UNIQUE (nomb_esta_proyec);


--
-- Name: usuario uk_564t50ggiakuvry27vswk3kh; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT uk_564t50ggiakuvry27vswk3kh UNIQUE (corr_usuario);


--
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);


--
-- Name: proyecto fkkjqlpa9lkw29m00l38qx83w0v; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proyecto
    ADD CONSTRAINT fkkjqlpa9lkw29m00l38qx83w0v FOREIGN KEY (id_esta) REFERENCES public.esta_proyec(id_esta);


--
-- Name: proyecto fkl3rmtstv3l97udc2m9lo1ynqi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proyecto
    ADD CONSTRAINT fkl3rmtstv3l97udc2m9lo1ynqi FOREIGN KEY (id_icon) REFERENCES public.icon(id_icon);


--
-- Name: proyecto fktj8kcm1k1x2fllrsl94d02a6t; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proyecto
    ADD CONSTRAINT fktj8kcm1k1x2fllrsl94d02a6t FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              