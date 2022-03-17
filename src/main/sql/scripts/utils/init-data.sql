--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2022-03-17 11:21:37

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

--
-- TOC entry 3007 (class 0 OID 16651)
-- Dependencies: 201
-- Data for Name: product_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_category (id, category_name) FROM stdin;
1	BOOKS
\.


--
-- TOC entry 3010 (class 0 OID 16662)
-- Dependencies: 204
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (id, sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) FROM stdin;
1	BOOK-TECH-1000	JavaScript - The Fun Parts	Learn JavaScript	19.99	assets/images/products/placeholder.png	1	100	2021-03-20 22:57:49.594628	\N	1
2	BOOK-TECH-1001	Spring Framework Tutorial	Learn Spring	29.99	assets/images/products/placeholder.png	1	100	2021-03-20 22:57:49.594628	\N	1
3	BOOK-TECH-1002	Kubernetes - Deploying Containers	Learn Kubernetes	24.99	assets/images/products/placeholder.png	1	100	2021-03-20 22:57:49.594628	\N	1
4	BOOK-TECH-1003	Internet of Things (IoT) - Getting Started	Learn IoT	29.99	assets/images/products/placeholder.png	1	100	2021-03-20 22:57:49.594628	\N	1
5	BOOK-TECH-1004	The Go Programming Language: A to Z	Learn Go	24.99	assets/images/products/placeholder.png	1	100	2021-03-20 22:57:49.594628	\N	1
\.


--
-- TOC entry 3016 (class 0 OID 0)
-- Dependencies: 200
-- Name: product_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_category_id_seq', 1, true);


--
-- TOC entry 3017 (class 0 OID 0)
-- Dependencies: 203
-- Name: product_category_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_category_id_seq1', 1, false);


--
-- TOC entry 3018 (class 0 OID 0)
-- Dependencies: 202
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_id_seq', 5, true);


-- Completed on 2022-03-17 11:21:38

--
-- PostgreSQL database dump complete
--

