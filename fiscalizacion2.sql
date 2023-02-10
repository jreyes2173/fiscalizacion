--
-- PostgreSQL database dump
--

-- Dumped from database version 14.3
-- Dumped by pg_dump version 14.3

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
-- Name: admin; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.admin (
    id integer NOT NULL,
    nombre character(255) NOT NULL,
    email character(255) NOT NULL,
    contrasena character(255) NOT NULL,
    activa boolean NOT NULL
);


--
-- Name: admin_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: admin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.admin_id_seq OWNED BY public.admin.id;


--
-- Name: carro_compra; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.carro_compra (
    id smallint NOT NULL,
    cliente_id smallint,
    foto_id smallint
);


--
-- Name: carro_compra_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.carro_compra_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: carro_compra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.carro_compra_id_seq OWNED BY public.carro_compra.id;


--
-- Name: cliente; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cliente (
    id integer NOT NULL,
    nombre character(255) NOT NULL,
    email character(255) NOT NULL,
    contrasena character(255) NOT NULL,
    activa boolean NOT NULL
);


--
-- Name: cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cliente_id_seq OWNED BY public.cliente.id;


--
-- Name: ficha; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ficha (
    id integer NOT NULL,
    hora time without time zone NOT NULL,
    fecha timestamp without time zone NOT NULL,
    region character(255) NOT NULL,
    supervisor character(255) NOT NULL,
    programa character(255) NOT NULL,
    capataz character(255) NOT NULL,
    ubicacion character(255) NOT NULL,
    cant_jornalero integer NOT NULL,
    cliente_id integer NOT NULL,
    activar boolean NOT NULL
);


--
-- Name: ficha_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ficha_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ficha_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ficha_id_seq OWNED BY public.ficha.id;


--
-- Name: foto; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.foto (
    id smallint NOT NULL,
    contenido character varying(256),
    titulo character varying,
    activa boolean DEFAULT true
);


--
-- Name: foto_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.foto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: foto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.foto_id_seq OWNED BY public.foto.id;


--
-- Name: herramiento_seguridad; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.herramiento_seguridad (
    id integer NOT NULL,
    cono integer NOT NULL,
    drones integer NOT NULL,
    vallas_t_libro integer NOT NULL,
    cintas integer NOT NULL,
    ficha_id integer NOT NULL
);


--
-- Name: herramiento_seguridad_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.herramiento_seguridad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: herramiento_seguridad_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.herramiento_seguridad_id_seq OWNED BY public.herramiento_seguridad.id;


--
-- Name: herramiento_trabajo; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.herramiento_trabajo (
    id integer NOT NULL,
    machetes integer NOT NULL,
    machetes_propios integer NOT NULL,
    limas integer NOT NULL,
    picos interval NOT NULL,
    palas integer NOT NULL,
    escobas integer NOT NULL,
    rastrillos integer NOT NULL,
    trimmer integer NOT NULL,
    motosierras integer NOT NULL,
    hilos_trimmers integer NOT NULL,
    combustible integer NOT NULL,
    carretillas integer NOT NULL,
    carritos_contadores integer NOT NULL,
    condicion character(1),
    ficha_id integer NOT NULL
);


--
-- Name: herramiento_trabajo_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.herramiento_trabajo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: herramiento_trabajo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.herramiento_trabajo_id_seq OWNED BY public.herramiento_trabajo.id;


--
-- Name: identificacion; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.identificacion (
    id integer NOT NULL,
    mamelucos integer NOT NULL,
    chalecos_reflectores integer NOT NULL,
    gorras integer NOT NULL,
    cascos integer NOT NULL,
    botas_de_gomas integer NOT NULL,
    zapatos integer NOT NULL,
    tenis integer NOT NULL,
    sandalias integer NOT NULL,
    lentes integer NOT NULL,
    guantes integer NOT NULL,
    botas_de_material integer NOT NULL,
    condicion character(255),
    origen character(255),
    ficha_id integer NOT NULL,
    status boolean NOT NULL
);


--
-- Name: identificacion_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.identificacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: identificacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.identificacion_id_seq OWNED BY public.identificacion.id;


--
-- Name: lista_deseo; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lista_deseo (
    id smallint DEFAULT nextval('public.carro_compra_id_seq'::regclass) NOT NULL,
    cliente_id smallint,
    foto_id smallint
);


--
-- Name: manejo_desecho; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.manejo_desecho (
    id integer NOT NULL,
    recogido_por character(1) NOT NULL,
    observacion character(255) NOT NULL,
    ficha_id integer NOT NULL
);


--
-- Name: manejo_desecho_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.manejo_desecho_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: manejo_desecho_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.manejo_desecho_id_seq OWNED BY public.manejo_desecho.id;


--
-- Name: orden; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.orden (
    id smallint NOT NULL,
    fecha date,
    cliente_id smallint,
    total smallint
);


--
-- Name: orden_detalle; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.orden_detalle (
    id smallint NOT NULL,
    orden_id smallint,
    foto_id smallint
);


--
-- Name: orden_detalle_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.orden_detalle_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: orden_detalle_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.orden_detalle_id_seq OWNED BY public.orden_detalle.id;


--
-- Name: orden_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.orden_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: orden_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.orden_id_seq OWNED BY public.orden.id;


--
-- Name: admin id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin ALTER COLUMN id SET DEFAULT nextval('public.admin_id_seq'::regclass);


--
-- Name: carro_compra id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.carro_compra ALTER COLUMN id SET DEFAULT nextval('public.carro_compra_id_seq'::regclass);


--
-- Name: cliente id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id SET DEFAULT nextval('public.cliente_id_seq'::regclass);


--
-- Name: ficha id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ficha ALTER COLUMN id SET DEFAULT nextval('public.ficha_id_seq'::regclass);


--
-- Name: foto id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.foto ALTER COLUMN id SET DEFAULT nextval('public.foto_id_seq'::regclass);


--
-- Name: herramiento_seguridad id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.herramiento_seguridad ALTER COLUMN id SET DEFAULT nextval('public.herramiento_seguridad_id_seq'::regclass);


--
-- Name: herramiento_trabajo id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.herramiento_trabajo ALTER COLUMN id SET DEFAULT nextval('public.herramiento_trabajo_id_seq'::regclass);


--
-- Name: identificacion id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.identificacion ALTER COLUMN id SET DEFAULT nextval('public.identificacion_id_seq'::regclass);


--
-- Name: manejo_desecho id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.manejo_desecho ALTER COLUMN id SET DEFAULT nextval('public.manejo_desecho_id_seq'::regclass);


--
-- Name: orden id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orden ALTER COLUMN id SET DEFAULT nextval('public.orden_id_seq'::regclass);


--
-- Name: orden_detalle id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orden_detalle ALTER COLUMN id SET DEFAULT nextval('public.orden_detalle_id_seq'::regclass);


--
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.admin (id, nombre, email, contrasena, activa) FROM stdin;
1	julio                                                                                                                                                                                                                                                          	julio@gmail.com                                                                                                                                                                                                                                                	123123                                                                                                                                                                                                                                                         	t
2	pedro                                                                                                                                                                                                                                                          	pedro@fotosparati.com                                                                                                                                                                                                                                          	123123                                                                                                                                                                                                                                                         	t
\.


--
-- Data for Name: carro_compra; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.carro_compra (id, cliente_id, foto_id) FROM stdin;
59	2	1
\.


--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.cliente (id, nombre, email, contrasena, activa) FROM stdin;
2	luis                                                                                                                                                                                                                                                           	luis@email.com                                                                                                                                                                                                                                                 	123456                                                                                                                                                                                                                                                         	t
1	julio                                                                                                                                                                                                                                                          	julio@email.com                                                                                                                                                                                                                                                	123123                                                                                                                                                                                                                                                         	t
3	julio peres                                                                                                                                                                                                                                                    	avalancha36@hotmail.com                                                                                                                                                                                                                                        	123456                                                                                                                                                                                                                                                         	t
4	Julio Tomas                                                                                                                                                                                                                                                    	jreyes.peajes@gmail.com                                                                                                                                                                                                                                        	vnbvn                                                                                                                                                                                                                                                          	t
\.


--
-- Data for Name: ficha; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ficha (id, hora, fecha, region, supervisor, programa, capataz, ubicacion, cant_jornalero, cliente_id, activar) FROM stdin;
65	17:52:00	2023-01-10 00:00:00	fasdf                                                                                                                                                                                                                                                          	fasdfasdf                                                                                                                                                                                                                                                      	Peon Caminero                                                                                                                                                                                                                                                  	fsefesfa                                                                                                                                                                                                                                                       	fasdfa                                                                                                                                                                                                                                                         	3	2	t
66	19:58:00	2023-01-24 00:00:00	Santo Domingo                                                                                                                                                                                                                                                  	fasd                                                                                                                                                                                                                                                           	Peon Caminero                                                                                                                                                                                                                                                  	gsdfg                                                                                                                                                                                                                                                          	gsdf                                                                                                                                                                                                                                                           	3	2	t
67	18:15:00	2023-01-06 00:00:00	Santo Domingo                                                                                                                                                                                                                                                  	gsdfgsfdg                                                                                                                                                                                                                                                      	Peon Caminero                                                                                                                                                                                                                                                  	ertegsf                                                                                                                                                                                                                                                        	gsrtwt                                                                                                                                                                                                                                                         	3	2	t
68	21:16:00	2023-01-02 00:00:00	Santo Domingo                                                                                                                                                                                                                                                  	adfasd                                                                                                                                                                                                                                                         	Pavimentacion                                                                                                                                                                                                                                                  	afadsgdg                                                                                                                                                                                                                                                       	sdfafd                                                                                                                                                                                                                                                         	3	2	t
69	18:19:00	2023-01-13 00:00:00	Santo Domingo                                                                                                                                                                                                                                                  	lskdlk                                                                                                                                                                                                                                                         	Peon Caminero                                                                                                                                                                                                                                                  	jghjgfsadf                                                                                                                                                                                                                                                     	fsd                                                                                                                                                                                                                                                            	3	2	t
70	18:21:00	2023-01-04 00:00:00	Santo Domingo                                                                                                                                                                                                                                                  	lskdlk                                                                                                                                                                                                                                                         	Pavimentacion                                                                                                                                                                                                                                                  	jghjglkj                                                                                                                                                                                                                                                       	;'lj'k;                                                                                                                                                                                                                                                        	3	2	t
71	18:27:00	2023-01-28 00:00:00	Santo Domingo                                                                                                                                                                                                                                                  	lskdlk                                                                                                                                                                                                                                                         	Peon Caminero                                                                                                                                                                                                                                                  	jghjg                                                                                                                                                                                                                                                          	ds                                                                                                                                                                                                                                                             	3	2	t
72	20:00:00	2023-02-14 00:00:00	Santo Domingo                                                                                                                                                                                                                                                  	fasdf.klkj                                                                                                                                                                                                                                                     	Pavimentacion                                                                                                                                                                                                                                                  	lhjkl                                                                                                                                                                                                                                                          	lhj                                                                                                                                                                                                                                                            	6	2	t
\.


--
-- Data for Name: foto; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.foto (id, contenido, titulo, activa) FROM stdin;
12	12.JPG	Luna	t
13	13.JPG	luna2	t
1	1.jpg	Verde	t
2	2.jpg	Olas	t
3	3.jpg	Árboles	t
4	4.jpg	ByN	t
\.


--
-- Data for Name: herramiento_seguridad; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.herramiento_seguridad (id, cono, drones, vallas_t_libro, cintas, ficha_id) FROM stdin;
\.


--
-- Data for Name: herramiento_trabajo; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.herramiento_trabajo (id, machetes, machetes_propios, limas, picos, palas, escobas, rastrillos, trimmer, motosierras, hilos_trimmers, combustible, carretillas, carritos_contadores, condicion, ficha_id) FROM stdin;
\.


--
-- Data for Name: identificacion; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.identificacion (id, mamelucos, chalecos_reflectores, gorras, cascos, botas_de_gomas, zapatos, tenis, sandalias, lentes, guantes, botas_de_material, condicion, origen, ficha_id, status) FROM stdin;
1	4	4	4	4	0	4	4	4	4	4	4	4                                                                                                                                                                                                                                                              	                                                                                                                                                                                                                                                               	67	t
\.


--
-- Data for Name: lista_deseo; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.lista_deseo (id, cliente_id, foto_id) FROM stdin;
\.


--
-- Data for Name: manejo_desecho; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.manejo_desecho (id, recogido_por, observacion, ficha_id) FROM stdin;
\.


--
-- Data for Name: orden; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.orden (id, fecha, cliente_id, total) FROM stdin;
40	2018-11-08	2	1
41	2018-11-07	2	2
42	2018-11-07	2	3
43	2022-11-25	1	3
44	2022-12-03	1	1
\.


--
-- Data for Name: orden_detalle; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.orden_detalle (id, orden_id, foto_id) FROM stdin;
40	40	2
41	41	1
42	41	2
43	42	2
44	42	1
45	42	4
46	43	2
47	43	1
48	43	4
49	44	2
\.


--
-- Name: admin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.admin_id_seq', 2, true);


--
-- Name: carro_compra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.carro_compra_id_seq', 59, true);


--
-- Name: cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.cliente_id_seq', 4, true);


--
-- Name: ficha_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ficha_id_seq', 72, true);


--
-- Name: foto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.foto_id_seq', 13, true);


--
-- Name: herramiento_seguridad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.herramiento_seguridad_id_seq', 1, false);


--
-- Name: herramiento_trabajo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.herramiento_trabajo_id_seq', 1, false);


--
-- Name: identificacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.identificacion_id_seq', 1, true);


--
-- Name: manejo_desecho_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.manejo_desecho_id_seq', 1, false);


--
-- Name: orden_detalle_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.orden_detalle_id_seq', 49, true);


--
-- Name: orden_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.orden_id_seq', 44, true);


--
-- Name: admin admin_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (id);


--
-- Name: lista_deseo carro_compra_copy1_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lista_deseo
    ADD CONSTRAINT carro_compra_copy1_pkey PRIMARY KEY (id);


--
-- Name: carro_compra carro_compra_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.carro_compra
    ADD CONSTRAINT carro_compra_pkey PRIMARY KEY (id);


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);


--
-- Name: ficha ficha_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ficha
    ADD CONSTRAINT ficha_pkey PRIMARY KEY (id);


--
-- Name: foto foto_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.foto
    ADD CONSTRAINT foto_pkey PRIMARY KEY (id);


--
-- Name: herramiento_seguridad herramiento_seguridad_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.herramiento_seguridad
    ADD CONSTRAINT herramiento_seguridad_pkey PRIMARY KEY (id);


--
-- Name: herramiento_trabajo herramiento_trabajo_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.herramiento_trabajo
    ADD CONSTRAINT herramiento_trabajo_pkey PRIMARY KEY (id);


--
-- Name: identificacion identificacion_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.identificacion
    ADD CONSTRAINT identificacion_pkey PRIMARY KEY (id);


--
-- Name: manejo_desecho manejo_desecho_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.manejo_desecho
    ADD CONSTRAINT manejo_desecho_pkey PRIMARY KEY (id);


--
-- Name: orden_detalle orden_detalle_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orden_detalle
    ADD CONSTRAINT orden_detalle_pkey PRIMARY KEY (id);


--
-- Name: orden orden_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orden
    ADD CONSTRAINT orden_pkey PRIMARY KEY (id);


--
-- Name: ficha ficha_pk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ficha
    ADD CONSTRAINT ficha_pk FOREIGN KEY (cliente_id) REFERENCES public.cliente(id) NOT VALID;


--
-- Name: herramiento_trabajo herrramienta; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.herramiento_trabajo
    ADD CONSTRAINT herrramienta FOREIGN KEY (ficha_id) REFERENCES public.ficha(id) NOT VALID;


--
-- Name: identificacion identificacion_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.identificacion
    ADD CONSTRAINT identificacion_id FOREIGN KEY (ficha_id) REFERENCES public.ficha(id) NOT VALID;


--
-- Name: manejo_desecho manejo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.manejo_desecho
    ADD CONSTRAINT manejo FOREIGN KEY (ficha_id) REFERENCES public.ficha(id) NOT VALID;


--
-- Name: herramiento_seguridad seguridad; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.herramiento_seguridad
    ADD CONSTRAINT seguridad FOREIGN KEY (ficha_id) REFERENCES public.ficha(id) NOT VALID;


--
-- PostgreSQL database dump complete
--

