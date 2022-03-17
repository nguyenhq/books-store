--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2022-03-17 11:19:32

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
-- TOC entry 204 (class 1259 OID 16662)
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
                                id integer NOT NULL,
                                sku character varying(255) DEFAULT NULL::character varying,
                                name character varying(255) DEFAULT NULL::character varying,
                                description character varying(255) DEFAULT NULL::character varying,
                                unit_price numeric(13,2) DEFAULT NULL::numeric,
                                image_url character varying(255) DEFAULT NULL::character varying,
                                active integer DEFAULT 1,
                                units_in_stock integer,
                                date_created timestamp(6) without time zone DEFAULT NULL::timestamp without time zone,
                                last_updated timestamp(6) without time zone DEFAULT NULL::timestamp without time zone,
                                category_id integer NOT NULL
);


ALTER TABLE public.product OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16651)
-- Name: product_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_category (
                                         id integer NOT NULL,
                                         category_name character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.product_category OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16649)
-- Name: product_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_category_id_seq OWNER TO postgres;

--
-- TOC entry 3011 (class 0 OID 0)
-- Dependencies: 200
-- Name: product_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_category_id_seq OWNED BY public.product_category.id;


--
-- TOC entry 203 (class 1259 OID 16660)
-- Name: product_category_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_category_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_category_id_seq1 OWNER TO postgres;

--
-- TOC entry 3012 (class 0 OID 0)
-- Dependencies: 203
-- Name: product_category_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_category_id_seq1 OWNED BY public.product.category_id;


--
-- TOC entry 202 (class 1259 OID 16658)
-- Name: product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_id_seq OWNER TO postgres;

--
-- TOC entry 3013 (class 0 OID 0)
-- Dependencies: 202
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;


--
-- TOC entry 2861 (class 2604 OID 16665)
-- Name: product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);


--
-- TOC entry 2870 (class 2604 OID 16674)
-- Name: product category_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product ALTER COLUMN category_id SET DEFAULT nextval('public.product_category_id_seq1'::regclass);


--
-- TOC entry 2859 (class 2604 OID 16654)
-- Name: product_category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_category ALTER COLUMN id SET DEFAULT nextval('public.product_category_id_seq'::regclass);


--
-- TOC entry 2872 (class 2606 OID 16657)
-- Name: product_category product_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_category
    ADD CONSTRAINT product_category_pkey PRIMARY KEY (id);


--
-- TOC entry 2874 (class 2606 OID 16679)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- TOC entry 2875 (class 2606 OID 16680)
-- Name: product fk_category; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES public.product_category(id);


-- Completed on 2022-03-17 11:19:32

--
-- PostgreSQL database dump complete
--

