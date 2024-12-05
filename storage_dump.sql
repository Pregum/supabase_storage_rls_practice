SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.6
-- Dumped by pg_dump version 15.6

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
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") VALUES
	('a', 'a', NULL, '2024-11-27 00:31:52.284609+00', '2024-11-27 00:31:52.284609+00', false, false, NULL, NULL, NULL),
	('b', 'b', NULL, '2024-11-27 00:35:46.678233+00', '2024-11-27 00:35:46.678233+00', false, false, NULL, NULL, NULL),
	('c', 'c', NULL, '2024-11-27 00:35:49.422426+00', '2024-11-27 00:35:49.422426+00', false, false, NULL, NULL, NULL),
	('d', 'd', NULL, '2024-11-27 00:35:51.990045+00', '2024-11-27 00:35:51.990045+00', false, false, NULL, NULL, NULL),
	('e', 'e', NULL, '2024-11-27 00:35:53.905526+00', '2024-11-27 00:35:53.905526+00', false, false, NULL, NULL, NULL),
	('f', 'f', NULL, '2024-11-27 00:35:55.911451+00', '2024-11-27 00:35:55.911451+00', false, false, NULL, NULL, NULL),
	('g', 'g', NULL, '2024-11-27 00:35:58.926336+00', '2024-11-27 00:35:58.926336+00', false, false, NULL, NULL, NULL),
	('h', 'h', NULL, '2024-11-27 00:36:00.983655+00', '2024-11-27 00:36:00.983655+00', false, false, NULL, NULL, NULL),
	('i', 'i', NULL, '2024-11-27 00:36:03.070283+00', '2024-11-27 00:36:03.070283+00', false, false, NULL, NULL, NULL),
	('j', 'j', NULL, '2024-11-27 00:36:04.611482+00', '2024-11-27 00:36:04.611482+00', false, false, NULL, NULL, NULL),
	('k', 'k', NULL, '2024-11-27 00:36:06.384847+00', '2024-11-27 00:36:06.384847+00', false, false, NULL, NULL, NULL),
	('l', 'l', NULL, '2024-11-27 00:36:07.964916+00', '2024-11-27 00:36:07.964916+00', false, false, NULL, NULL, NULL),
	('m', 'm', NULL, '2024-11-27 00:36:09.934495+00', '2024-11-27 00:36:09.934495+00', false, false, NULL, NULL, NULL),
	('n', 'n', NULL, '2024-11-27 00:36:11.392369+00', '2024-11-27 00:36:11.392369+00', false, false, NULL, NULL, NULL),
	('o', 'o', NULL, '2024-11-27 00:36:13.058164+00', '2024-11-27 00:36:13.058164+00', false, false, NULL, NULL, NULL),
	('p', 'p', NULL, '2024-11-27 00:36:30.57018+00', '2024-11-27 00:36:30.57018+00', false, false, NULL, NULL, NULL),
	('FA', 'FA', NULL, '2024-11-27 21:15:21.31942+00', '2024-11-27 21:15:21.31942+00', false, false, 1, NULL, NULL);


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- PostgreSQL database dump complete
--

RESET ALL;
