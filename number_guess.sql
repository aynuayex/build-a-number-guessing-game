--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: inputs; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.inputs (
    input_id integer NOT NULL,
    input_number integer NOT NULL,
    random_id integer NOT NULL
);


ALTER TABLE public.inputs OWNER TO freecodecamp;

--
-- Name: inputs_input_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.inputs_input_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inputs_input_id_seq OWNER TO freecodecamp;

--
-- Name: inputs_input_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.inputs_input_id_seq OWNED BY public.inputs.input_id;


--
-- Name: random; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.random (
    random_id integer NOT NULL,
    random_number integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.random OWNER TO freecodecamp;

--
-- Name: random_random_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.random_random_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.random_random_id_seq OWNER TO freecodecamp;

--
-- Name: random_random_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.random_random_id_seq OWNED BY public.random.random_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: inputs input_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.inputs ALTER COLUMN input_id SET DEFAULT nextval('public.inputs_input_id_seq'::regclass);


--
-- Name: random random_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random ALTER COLUMN random_id SET DEFAULT nextval('public.random_random_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: inputs; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.inputs VALUES (1, 0, 1);
INSERT INTO public.inputs VALUES (2, 1, 1);
INSERT INTO public.inputs VALUES (3, 2, 1);
INSERT INTO public.inputs VALUES (4, 3, 1);
INSERT INTO public.inputs VALUES (5, 4, 1);
INSERT INTO public.inputs VALUES (6, 5, 1);
INSERT INTO public.inputs VALUES (7, 6, 1);
INSERT INTO public.inputs VALUES (8, 7, 1);
INSERT INTO public.inputs VALUES (9, 8, 1);
INSERT INTO public.inputs VALUES (10, 9, 1);
INSERT INTO public.inputs VALUES (11, 10, 1);
INSERT INTO public.inputs VALUES (12, 11, 1);
INSERT INTO public.inputs VALUES (13, 12, 1);
INSERT INTO public.inputs VALUES (14, 13, 1);
INSERT INTO public.inputs VALUES (15, 14, 1);
INSERT INTO public.inputs VALUES (16, 15, 1);
INSERT INTO public.inputs VALUES (17, 16, 1);
INSERT INTO public.inputs VALUES (18, 17, 1);
INSERT INTO public.inputs VALUES (19, 0, 2);
INSERT INTO public.inputs VALUES (20, 1, 2);
INSERT INTO public.inputs VALUES (21, 2, 2);
INSERT INTO public.inputs VALUES (22, 3, 2);
INSERT INTO public.inputs VALUES (23, 4, 2);
INSERT INTO public.inputs VALUES (24, 5, 2);
INSERT INTO public.inputs VALUES (25, 6, 2);
INSERT INTO public.inputs VALUES (26, 7, 2);
INSERT INTO public.inputs VALUES (27, 8, 2);
INSERT INTO public.inputs VALUES (28, 9, 2);
INSERT INTO public.inputs VALUES (29, 10, 2);
INSERT INTO public.inputs VALUES (30, 11, 2);
INSERT INTO public.inputs VALUES (31, 12, 2);
INSERT INTO public.inputs VALUES (32, 13, 2);
INSERT INTO public.inputs VALUES (33, 14, 2);
INSERT INTO public.inputs VALUES (34, 15, 2);
INSERT INTO public.inputs VALUES (35, 16, 2);
INSERT INTO public.inputs VALUES (36, 17, 2);
INSERT INTO public.inputs VALUES (37, 0, 3);
INSERT INTO public.inputs VALUES (38, 1, 3);
INSERT INTO public.inputs VALUES (39, 2, 3);
INSERT INTO public.inputs VALUES (40, 3, 3);
INSERT INTO public.inputs VALUES (41, 4, 3);
INSERT INTO public.inputs VALUES (42, 5, 3);
INSERT INTO public.inputs VALUES (43, 6, 3);
INSERT INTO public.inputs VALUES (44, 7, 3);
INSERT INTO public.inputs VALUES (45, 8, 3);
INSERT INTO public.inputs VALUES (46, 9, 3);
INSERT INTO public.inputs VALUES (47, 10, 3);
INSERT INTO public.inputs VALUES (48, 11, 3);
INSERT INTO public.inputs VALUES (49, 12, 3);
INSERT INTO public.inputs VALUES (50, 13, 3);
INSERT INTO public.inputs VALUES (51, 14, 3);
INSERT INTO public.inputs VALUES (52, 15, 3);
INSERT INTO public.inputs VALUES (53, 16, 3);
INSERT INTO public.inputs VALUES (54, 17, 3);
INSERT INTO public.inputs VALUES (55, 0, 4);
INSERT INTO public.inputs VALUES (56, 1, 4);
INSERT INTO public.inputs VALUES (57, 2, 4);
INSERT INTO public.inputs VALUES (58, 3, 4);
INSERT INTO public.inputs VALUES (59, 4, 4);
INSERT INTO public.inputs VALUES (60, 5, 4);
INSERT INTO public.inputs VALUES (61, 6, 4);
INSERT INTO public.inputs VALUES (62, 7, 4);
INSERT INTO public.inputs VALUES (63, 8, 4);
INSERT INTO public.inputs VALUES (64, 9, 4);
INSERT INTO public.inputs VALUES (65, 10, 4);
INSERT INTO public.inputs VALUES (66, 11, 4);
INSERT INTO public.inputs VALUES (67, 12, 4);
INSERT INTO public.inputs VALUES (68, 13, 4);
INSERT INTO public.inputs VALUES (69, 14, 4);
INSERT INTO public.inputs VALUES (70, 15, 4);
INSERT INTO public.inputs VALUES (71, 16, 4);
INSERT INTO public.inputs VALUES (72, 17, 4);
INSERT INTO public.inputs VALUES (73, 1001, 5);
INSERT INTO public.inputs VALUES (74, 0, 5);
INSERT INTO public.inputs VALUES (75, 1, 5);
INSERT INTO public.inputs VALUES (76, 2, 5);
INSERT INTO public.inputs VALUES (77, 3, 5);
INSERT INTO public.inputs VALUES (78, 4, 5);
INSERT INTO public.inputs VALUES (79, 5, 5);
INSERT INTO public.inputs VALUES (80, 6, 5);
INSERT INTO public.inputs VALUES (81, 7, 5);
INSERT INTO public.inputs VALUES (82, 8, 5);
INSERT INTO public.inputs VALUES (83, 9, 5);
INSERT INTO public.inputs VALUES (84, 10, 5);
INSERT INTO public.inputs VALUES (85, 11, 5);
INSERT INTO public.inputs VALUES (86, 12, 5);
INSERT INTO public.inputs VALUES (87, 13, 5);
INSERT INTO public.inputs VALUES (88, 14, 5);
INSERT INTO public.inputs VALUES (89, 15, 5);
INSERT INTO public.inputs VALUES (90, 16, 5);
INSERT INTO public.inputs VALUES (91, 0, 6);
INSERT INTO public.inputs VALUES (92, 1, 6);
INSERT INTO public.inputs VALUES (93, 2, 6);
INSERT INTO public.inputs VALUES (94, 3, 6);
INSERT INTO public.inputs VALUES (95, 4, 6);
INSERT INTO public.inputs VALUES (96, 5, 6);
INSERT INTO public.inputs VALUES (97, 6, 6);
INSERT INTO public.inputs VALUES (98, 7, 6);
INSERT INTO public.inputs VALUES (99, 8, 6);
INSERT INTO public.inputs VALUES (100, 9, 6);
INSERT INTO public.inputs VALUES (101, 10, 6);
INSERT INTO public.inputs VALUES (102, 11, 6);
INSERT INTO public.inputs VALUES (103, 12, 6);
INSERT INTO public.inputs VALUES (104, 13, 6);
INSERT INTO public.inputs VALUES (105, 14, 6);
INSERT INTO public.inputs VALUES (106, 15, 6);
INSERT INTO public.inputs VALUES (107, 16, 6);
INSERT INTO public.inputs VALUES (108, 17, 6);
INSERT INTO public.inputs VALUES (109, 0, 7);
INSERT INTO public.inputs VALUES (110, 1, 7);
INSERT INTO public.inputs VALUES (111, 2, 7);
INSERT INTO public.inputs VALUES (112, 3, 7);
INSERT INTO public.inputs VALUES (113, 4, 7);
INSERT INTO public.inputs VALUES (114, 5, 7);
INSERT INTO public.inputs VALUES (115, 6, 7);
INSERT INTO public.inputs VALUES (116, 7, 7);
INSERT INTO public.inputs VALUES (117, 8, 7);
INSERT INTO public.inputs VALUES (118, 9, 7);
INSERT INTO public.inputs VALUES (119, 10, 7);
INSERT INTO public.inputs VALUES (120, 11, 7);
INSERT INTO public.inputs VALUES (121, 12, 7);
INSERT INTO public.inputs VALUES (122, 13, 7);
INSERT INTO public.inputs VALUES (123, 14, 7);
INSERT INTO public.inputs VALUES (124, 15, 7);
INSERT INTO public.inputs VALUES (125, 16, 7);
INSERT INTO public.inputs VALUES (126, 17, 7);
INSERT INTO public.inputs VALUES (127, 500, 8);
INSERT INTO public.inputs VALUES (128, 250, 8);
INSERT INTO public.inputs VALUES (129, 125, 8);
INSERT INTO public.inputs VALUES (130, 188, 8);
INSERT INTO public.inputs VALUES (131, 156, 8);
INSERT INTO public.inputs VALUES (132, 140, 8);
INSERT INTO public.inputs VALUES (133, 132, 8);
INSERT INTO public.inputs VALUES (134, 136, 8);
INSERT INTO public.inputs VALUES (135, 134, 8);
INSERT INTO public.inputs VALUES (136, 133, 8);
INSERT INTO public.inputs VALUES (137, 0, 9);
INSERT INTO public.inputs VALUES (138, 1, 9);
INSERT INTO public.inputs VALUES (139, 2, 9);
INSERT INTO public.inputs VALUES (140, 3, 9);
INSERT INTO public.inputs VALUES (141, 4, 9);
INSERT INTO public.inputs VALUES (142, 5, 9);
INSERT INTO public.inputs VALUES (143, 6, 9);
INSERT INTO public.inputs VALUES (144, 7, 9);
INSERT INTO public.inputs VALUES (145, 8, 9);
INSERT INTO public.inputs VALUES (146, 9, 9);
INSERT INTO public.inputs VALUES (147, 10, 9);
INSERT INTO public.inputs VALUES (148, 11, 9);
INSERT INTO public.inputs VALUES (149, 12, 9);
INSERT INTO public.inputs VALUES (150, 13, 9);
INSERT INTO public.inputs VALUES (151, 14, 9);
INSERT INTO public.inputs VALUES (152, 15, 9);
INSERT INTO public.inputs VALUES (153, 16, 9);
INSERT INTO public.inputs VALUES (154, 17, 9);
INSERT INTO public.inputs VALUES (155, 0, 11);
INSERT INTO public.inputs VALUES (156, 1, 11);
INSERT INTO public.inputs VALUES (157, 2, 11);
INSERT INTO public.inputs VALUES (158, 3, 11);
INSERT INTO public.inputs VALUES (159, 4, 11);
INSERT INTO public.inputs VALUES (160, 5, 11);
INSERT INTO public.inputs VALUES (161, 6, 11);
INSERT INTO public.inputs VALUES (162, 7, 11);
INSERT INTO public.inputs VALUES (163, 8, 11);
INSERT INTO public.inputs VALUES (164, 9, 11);
INSERT INTO public.inputs VALUES (165, 10, 11);
INSERT INTO public.inputs VALUES (166, 11, 11);
INSERT INTO public.inputs VALUES (167, 12, 11);
INSERT INTO public.inputs VALUES (168, 13, 11);
INSERT INTO public.inputs VALUES (169, 14, 11);
INSERT INTO public.inputs VALUES (170, 15, 11);
INSERT INTO public.inputs VALUES (171, 16, 11);
INSERT INTO public.inputs VALUES (172, 17, 11);
INSERT INTO public.inputs VALUES (173, 0, 12);
INSERT INTO public.inputs VALUES (174, 1, 12);
INSERT INTO public.inputs VALUES (175, 2, 12);
INSERT INTO public.inputs VALUES (176, 3, 12);
INSERT INTO public.inputs VALUES (177, 4, 12);
INSERT INTO public.inputs VALUES (178, 5, 12);
INSERT INTO public.inputs VALUES (179, 6, 12);
INSERT INTO public.inputs VALUES (180, 7, 12);
INSERT INTO public.inputs VALUES (181, 8, 12);
INSERT INTO public.inputs VALUES (182, 9, 12);
INSERT INTO public.inputs VALUES (183, 10, 12);
INSERT INTO public.inputs VALUES (184, 11, 12);
INSERT INTO public.inputs VALUES (185, 12, 12);
INSERT INTO public.inputs VALUES (186, 13, 12);
INSERT INTO public.inputs VALUES (187, 14, 12);
INSERT INTO public.inputs VALUES (188, 15, 12);
INSERT INTO public.inputs VALUES (189, 16, 12);
INSERT INTO public.inputs VALUES (190, 17, 12);
INSERT INTO public.inputs VALUES (191, 1001, 13);
INSERT INTO public.inputs VALUES (192, 0, 13);
INSERT INTO public.inputs VALUES (193, 1, 13);
INSERT INTO public.inputs VALUES (194, 2, 13);
INSERT INTO public.inputs VALUES (195, 3, 13);
INSERT INTO public.inputs VALUES (196, 4, 13);
INSERT INTO public.inputs VALUES (197, 5, 13);
INSERT INTO public.inputs VALUES (198, 6, 13);
INSERT INTO public.inputs VALUES (199, 7, 13);
INSERT INTO public.inputs VALUES (200, 8, 13);
INSERT INTO public.inputs VALUES (201, 9, 13);
INSERT INTO public.inputs VALUES (202, 10, 13);
INSERT INTO public.inputs VALUES (203, 11, 13);
INSERT INTO public.inputs VALUES (204, 12, 13);
INSERT INTO public.inputs VALUES (205, 13, 13);
INSERT INTO public.inputs VALUES (206, 14, 13);
INSERT INTO public.inputs VALUES (207, 15, 13);
INSERT INTO public.inputs VALUES (208, 16, 13);
INSERT INTO public.inputs VALUES (209, 17, 13);
INSERT INTO public.inputs VALUES (210, 0, 14);
INSERT INTO public.inputs VALUES (211, 1, 14);
INSERT INTO public.inputs VALUES (212, 2, 14);
INSERT INTO public.inputs VALUES (213, 3, 14);
INSERT INTO public.inputs VALUES (214, 4, 14);
INSERT INTO public.inputs VALUES (215, 5, 14);
INSERT INTO public.inputs VALUES (216, 6, 14);
INSERT INTO public.inputs VALUES (217, 7, 14);
INSERT INTO public.inputs VALUES (218, 8, 14);
INSERT INTO public.inputs VALUES (219, 9, 14);
INSERT INTO public.inputs VALUES (220, 10, 14);
INSERT INTO public.inputs VALUES (221, 11, 14);
INSERT INTO public.inputs VALUES (222, 12, 14);
INSERT INTO public.inputs VALUES (223, 13, 14);
INSERT INTO public.inputs VALUES (224, 14, 14);
INSERT INTO public.inputs VALUES (225, 15, 14);
INSERT INTO public.inputs VALUES (226, 16, 14);
INSERT INTO public.inputs VALUES (227, 17, 14);
INSERT INTO public.inputs VALUES (228, 18, 14);
INSERT INTO public.inputs VALUES (229, 0, 15);
INSERT INTO public.inputs VALUES (230, 1, 15);
INSERT INTO public.inputs VALUES (231, 2, 15);
INSERT INTO public.inputs VALUES (232, 3, 15);
INSERT INTO public.inputs VALUES (233, 4, 15);
INSERT INTO public.inputs VALUES (234, 5, 15);
INSERT INTO public.inputs VALUES (235, 6, 15);
INSERT INTO public.inputs VALUES (236, 7, 15);
INSERT INTO public.inputs VALUES (237, 8, 15);
INSERT INTO public.inputs VALUES (238, 9, 15);
INSERT INTO public.inputs VALUES (239, 10, 15);
INSERT INTO public.inputs VALUES (240, 11, 15);
INSERT INTO public.inputs VALUES (241, 12, 15);
INSERT INTO public.inputs VALUES (242, 13, 15);
INSERT INTO public.inputs VALUES (243, 14, 15);
INSERT INTO public.inputs VALUES (244, 15, 15);
INSERT INTO public.inputs VALUES (245, 16, 15);
INSERT INTO public.inputs VALUES (246, 17, 15);
INSERT INTO public.inputs VALUES (247, 18, 15);
INSERT INTO public.inputs VALUES (248, 0, 16);
INSERT INTO public.inputs VALUES (249, 1, 16);
INSERT INTO public.inputs VALUES (250, 2, 16);
INSERT INTO public.inputs VALUES (251, 3, 16);
INSERT INTO public.inputs VALUES (252, 4, 16);
INSERT INTO public.inputs VALUES (253, 5, 16);
INSERT INTO public.inputs VALUES (254, 6, 16);
INSERT INTO public.inputs VALUES (255, 7, 16);
INSERT INTO public.inputs VALUES (256, 8, 16);
INSERT INTO public.inputs VALUES (257, 9, 16);
INSERT INTO public.inputs VALUES (258, 10, 16);
INSERT INTO public.inputs VALUES (259, 11, 16);
INSERT INTO public.inputs VALUES (260, 12, 16);
INSERT INTO public.inputs VALUES (261, 13, 16);
INSERT INTO public.inputs VALUES (262, 14, 16);
INSERT INTO public.inputs VALUES (263, 15, 16);
INSERT INTO public.inputs VALUES (264, 16, 16);
INSERT INTO public.inputs VALUES (265, 17, 16);
INSERT INTO public.inputs VALUES (266, 0, 17);
INSERT INTO public.inputs VALUES (267, 1, 17);
INSERT INTO public.inputs VALUES (268, 2, 17);
INSERT INTO public.inputs VALUES (269, 3, 17);
INSERT INTO public.inputs VALUES (270, 4, 17);
INSERT INTO public.inputs VALUES (271, 5, 17);
INSERT INTO public.inputs VALUES (272, 6, 17);
INSERT INTO public.inputs VALUES (273, 7, 17);
INSERT INTO public.inputs VALUES (274, 8, 17);
INSERT INTO public.inputs VALUES (275, 9, 17);
INSERT INTO public.inputs VALUES (276, 10, 17);
INSERT INTO public.inputs VALUES (277, 11, 17);
INSERT INTO public.inputs VALUES (278, 12, 17);
INSERT INTO public.inputs VALUES (279, 13, 17);
INSERT INTO public.inputs VALUES (280, 14, 17);
INSERT INTO public.inputs VALUES (281, 15, 17);
INSERT INTO public.inputs VALUES (282, 16, 17);
INSERT INTO public.inputs VALUES (283, 17, 17);
INSERT INTO public.inputs VALUES (284, 0, 18);
INSERT INTO public.inputs VALUES (285, 1, 18);
INSERT INTO public.inputs VALUES (286, 2, 18);
INSERT INTO public.inputs VALUES (287, 3, 18);
INSERT INTO public.inputs VALUES (288, 4, 18);
INSERT INTO public.inputs VALUES (289, 5, 18);
INSERT INTO public.inputs VALUES (290, 6, 18);
INSERT INTO public.inputs VALUES (291, 7, 18);
INSERT INTO public.inputs VALUES (292, 8, 18);
INSERT INTO public.inputs VALUES (293, 9, 18);
INSERT INTO public.inputs VALUES (294, 10, 18);
INSERT INTO public.inputs VALUES (295, 11, 18);
INSERT INTO public.inputs VALUES (296, 12, 18);
INSERT INTO public.inputs VALUES (297, 13, 18);
INSERT INTO public.inputs VALUES (298, 14, 18);
INSERT INTO public.inputs VALUES (299, 15, 18);
INSERT INTO public.inputs VALUES (300, 16, 18);
INSERT INTO public.inputs VALUES (301, 17, 18);
INSERT INTO public.inputs VALUES (302, 0, 19);
INSERT INTO public.inputs VALUES (303, 1, 19);
INSERT INTO public.inputs VALUES (304, 2, 19);
INSERT INTO public.inputs VALUES (305, 3, 19);
INSERT INTO public.inputs VALUES (306, 4, 19);
INSERT INTO public.inputs VALUES (307, 5, 19);
INSERT INTO public.inputs VALUES (308, 6, 19);
INSERT INTO public.inputs VALUES (309, 7, 19);
INSERT INTO public.inputs VALUES (310, 8, 19);
INSERT INTO public.inputs VALUES (311, 9, 19);
INSERT INTO public.inputs VALUES (312, 10, 19);
INSERT INTO public.inputs VALUES (313, 11, 19);
INSERT INTO public.inputs VALUES (314, 12, 19);
INSERT INTO public.inputs VALUES (315, 13, 19);
INSERT INTO public.inputs VALUES (316, 14, 19);
INSERT INTO public.inputs VALUES (317, 15, 19);
INSERT INTO public.inputs VALUES (318, 16, 19);
INSERT INTO public.inputs VALUES (319, 17, 19);
INSERT INTO public.inputs VALUES (320, 1001, 20);
INSERT INTO public.inputs VALUES (321, 0, 20);
INSERT INTO public.inputs VALUES (322, 1, 20);
INSERT INTO public.inputs VALUES (323, 2, 20);
INSERT INTO public.inputs VALUES (324, 3, 20);
INSERT INTO public.inputs VALUES (325, 4, 20);
INSERT INTO public.inputs VALUES (326, 5, 20);
INSERT INTO public.inputs VALUES (327, 6, 20);
INSERT INTO public.inputs VALUES (328, 7, 20);
INSERT INTO public.inputs VALUES (329, 8, 20);
INSERT INTO public.inputs VALUES (330, 9, 20);
INSERT INTO public.inputs VALUES (331, 10, 20);
INSERT INTO public.inputs VALUES (332, 11, 20);
INSERT INTO public.inputs VALUES (333, 12, 20);
INSERT INTO public.inputs VALUES (334, 13, 20);
INSERT INTO public.inputs VALUES (335, 14, 20);
INSERT INTO public.inputs VALUES (336, 15, 20);
INSERT INTO public.inputs VALUES (337, 16, 20);
INSERT INTO public.inputs VALUES (338, 0, 21);
INSERT INTO public.inputs VALUES (339, 1, 21);
INSERT INTO public.inputs VALUES (340, 2, 21);
INSERT INTO public.inputs VALUES (341, 3, 21);
INSERT INTO public.inputs VALUES (342, 4, 21);
INSERT INTO public.inputs VALUES (343, 5, 21);
INSERT INTO public.inputs VALUES (344, 6, 21);
INSERT INTO public.inputs VALUES (345, 7, 21);
INSERT INTO public.inputs VALUES (346, 8, 21);
INSERT INTO public.inputs VALUES (347, 9, 21);
INSERT INTO public.inputs VALUES (348, 10, 21);
INSERT INTO public.inputs VALUES (349, 11, 21);
INSERT INTO public.inputs VALUES (350, 12, 21);
INSERT INTO public.inputs VALUES (351, 13, 21);
INSERT INTO public.inputs VALUES (352, 14, 21);
INSERT INTO public.inputs VALUES (353, 15, 21);
INSERT INTO public.inputs VALUES (354, 16, 21);
INSERT INTO public.inputs VALUES (355, 17, 21);
INSERT INTO public.inputs VALUES (356, 0, 22);
INSERT INTO public.inputs VALUES (357, 1, 22);
INSERT INTO public.inputs VALUES (358, 2, 22);
INSERT INTO public.inputs VALUES (359, 3, 22);
INSERT INTO public.inputs VALUES (360, 4, 22);
INSERT INTO public.inputs VALUES (361, 5, 22);
INSERT INTO public.inputs VALUES (362, 6, 22);
INSERT INTO public.inputs VALUES (363, 7, 22);
INSERT INTO public.inputs VALUES (364, 8, 22);
INSERT INTO public.inputs VALUES (365, 9, 22);
INSERT INTO public.inputs VALUES (366, 10, 22);
INSERT INTO public.inputs VALUES (367, 11, 22);
INSERT INTO public.inputs VALUES (368, 12, 22);
INSERT INTO public.inputs VALUES (369, 13, 22);
INSERT INTO public.inputs VALUES (370, 14, 22);
INSERT INTO public.inputs VALUES (371, 15, 22);
INSERT INTO public.inputs VALUES (372, 16, 22);
INSERT INTO public.inputs VALUES (373, 17, 22);
INSERT INTO public.inputs VALUES (374, 0, 23);
INSERT INTO public.inputs VALUES (375, 1, 23);
INSERT INTO public.inputs VALUES (376, 2, 23);
INSERT INTO public.inputs VALUES (377, 3, 23);
INSERT INTO public.inputs VALUES (378, 4, 23);
INSERT INTO public.inputs VALUES (379, 5, 23);
INSERT INTO public.inputs VALUES (380, 6, 23);
INSERT INTO public.inputs VALUES (381, 7, 23);
INSERT INTO public.inputs VALUES (382, 8, 23);
INSERT INTO public.inputs VALUES (383, 9, 23);
INSERT INTO public.inputs VALUES (384, 10, 23);
INSERT INTO public.inputs VALUES (385, 11, 23);
INSERT INTO public.inputs VALUES (386, 12, 23);
INSERT INTO public.inputs VALUES (387, 13, 23);
INSERT INTO public.inputs VALUES (388, 14, 23);
INSERT INTO public.inputs VALUES (389, 15, 23);
INSERT INTO public.inputs VALUES (390, 16, 23);
INSERT INTO public.inputs VALUES (391, 17, 23);
INSERT INTO public.inputs VALUES (392, 0, 24);
INSERT INTO public.inputs VALUES (393, 1, 24);
INSERT INTO public.inputs VALUES (394, 2, 24);
INSERT INTO public.inputs VALUES (395, 3, 24);
INSERT INTO public.inputs VALUES (396, 4, 24);
INSERT INTO public.inputs VALUES (397, 5, 24);
INSERT INTO public.inputs VALUES (398, 6, 24);
INSERT INTO public.inputs VALUES (399, 7, 24);
INSERT INTO public.inputs VALUES (400, 8, 24);
INSERT INTO public.inputs VALUES (401, 9, 24);
INSERT INTO public.inputs VALUES (402, 10, 24);
INSERT INTO public.inputs VALUES (403, 11, 24);
INSERT INTO public.inputs VALUES (404, 12, 24);
INSERT INTO public.inputs VALUES (405, 13, 24);
INSERT INTO public.inputs VALUES (406, 14, 24);
INSERT INTO public.inputs VALUES (407, 15, 24);
INSERT INTO public.inputs VALUES (408, 16, 24);
INSERT INTO public.inputs VALUES (409, 17, 24);
INSERT INTO public.inputs VALUES (410, 0, 25);
INSERT INTO public.inputs VALUES (411, 1, 25);
INSERT INTO public.inputs VALUES (412, 2, 25);
INSERT INTO public.inputs VALUES (413, 3, 25);
INSERT INTO public.inputs VALUES (414, 4, 25);
INSERT INTO public.inputs VALUES (415, 5, 25);
INSERT INTO public.inputs VALUES (416, 6, 25);
INSERT INTO public.inputs VALUES (417, 7, 25);
INSERT INTO public.inputs VALUES (418, 8, 25);
INSERT INTO public.inputs VALUES (419, 9, 25);
INSERT INTO public.inputs VALUES (420, 10, 25);
INSERT INTO public.inputs VALUES (421, 11, 25);
INSERT INTO public.inputs VALUES (422, 12, 25);
INSERT INTO public.inputs VALUES (423, 13, 25);
INSERT INTO public.inputs VALUES (424, 14, 25);
INSERT INTO public.inputs VALUES (425, 15, 25);
INSERT INTO public.inputs VALUES (426, 16, 25);
INSERT INTO public.inputs VALUES (427, 0, 26);
INSERT INTO public.inputs VALUES (428, 1, 26);
INSERT INTO public.inputs VALUES (429, 2, 26);
INSERT INTO public.inputs VALUES (430, 3, 26);
INSERT INTO public.inputs VALUES (431, 4, 26);
INSERT INTO public.inputs VALUES (432, 5, 26);
INSERT INTO public.inputs VALUES (433, 6, 26);
INSERT INTO public.inputs VALUES (434, 7, 26);
INSERT INTO public.inputs VALUES (435, 8, 26);
INSERT INTO public.inputs VALUES (436, 9, 26);
INSERT INTO public.inputs VALUES (437, 10, 26);
INSERT INTO public.inputs VALUES (438, 11, 26);
INSERT INTO public.inputs VALUES (439, 12, 26);
INSERT INTO public.inputs VALUES (440, 13, 26);
INSERT INTO public.inputs VALUES (441, 14, 26);
INSERT INTO public.inputs VALUES (442, 15, 26);
INSERT INTO public.inputs VALUES (443, 16, 26);
INSERT INTO public.inputs VALUES (444, 17, 26);
INSERT INTO public.inputs VALUES (445, 1001, 27);
INSERT INTO public.inputs VALUES (446, 0, 27);
INSERT INTO public.inputs VALUES (447, 1, 27);
INSERT INTO public.inputs VALUES (448, 2, 27);
INSERT INTO public.inputs VALUES (449, 3, 27);
INSERT INTO public.inputs VALUES (450, 4, 27);
INSERT INTO public.inputs VALUES (451, 5, 27);
INSERT INTO public.inputs VALUES (452, 6, 27);
INSERT INTO public.inputs VALUES (453, 7, 27);
INSERT INTO public.inputs VALUES (454, 8, 27);
INSERT INTO public.inputs VALUES (455, 9, 27);
INSERT INTO public.inputs VALUES (456, 10, 27);
INSERT INTO public.inputs VALUES (457, 11, 27);
INSERT INTO public.inputs VALUES (458, 12, 27);
INSERT INTO public.inputs VALUES (459, 13, 27);
INSERT INTO public.inputs VALUES (460, 14, 27);
INSERT INTO public.inputs VALUES (461, 15, 27);
INSERT INTO public.inputs VALUES (462, 16, 27);
INSERT INTO public.inputs VALUES (463, 0, 28);
INSERT INTO public.inputs VALUES (464, 1, 28);
INSERT INTO public.inputs VALUES (465, 2, 28);
INSERT INTO public.inputs VALUES (466, 3, 28);
INSERT INTO public.inputs VALUES (467, 4, 28);
INSERT INTO public.inputs VALUES (468, 5, 28);
INSERT INTO public.inputs VALUES (469, 6, 28);
INSERT INTO public.inputs VALUES (470, 7, 28);
INSERT INTO public.inputs VALUES (471, 8, 28);
INSERT INTO public.inputs VALUES (472, 9, 28);
INSERT INTO public.inputs VALUES (473, 10, 28);
INSERT INTO public.inputs VALUES (474, 11, 28);
INSERT INTO public.inputs VALUES (475, 12, 28);
INSERT INTO public.inputs VALUES (476, 13, 28);
INSERT INTO public.inputs VALUES (477, 14, 28);
INSERT INTO public.inputs VALUES (478, 15, 28);
INSERT INTO public.inputs VALUES (479, 16, 28);
INSERT INTO public.inputs VALUES (480, 17, 28);
INSERT INTO public.inputs VALUES (481, 0, 29);
INSERT INTO public.inputs VALUES (482, 1, 29);
INSERT INTO public.inputs VALUES (483, 2, 29);
INSERT INTO public.inputs VALUES (484, 3, 29);
INSERT INTO public.inputs VALUES (485, 4, 29);
INSERT INTO public.inputs VALUES (486, 5, 29);
INSERT INTO public.inputs VALUES (487, 6, 29);
INSERT INTO public.inputs VALUES (488, 7, 29);
INSERT INTO public.inputs VALUES (489, 8, 29);
INSERT INTO public.inputs VALUES (490, 9, 29);
INSERT INTO public.inputs VALUES (491, 10, 29);
INSERT INTO public.inputs VALUES (492, 11, 29);
INSERT INTO public.inputs VALUES (493, 12, 29);
INSERT INTO public.inputs VALUES (494, 13, 29);
INSERT INTO public.inputs VALUES (495, 14, 29);
INSERT INTO public.inputs VALUES (496, 15, 29);
INSERT INTO public.inputs VALUES (497, 16, 29);
INSERT INTO public.inputs VALUES (498, 17, 29);


--
-- Data for Name: random; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.random VALUES (1, 363, 1);
INSERT INTO public.random VALUES (2, 700, 1);
INSERT INTO public.random VALUES (3, 962, 2);
INSERT INTO public.random VALUES (4, 513, 2);
INSERT INTO public.random VALUES (5, 250, 1);
INSERT INTO public.random VALUES (6, 95, 1);
INSERT INTO public.random VALUES (7, 435, 1);
INSERT INTO public.random VALUES (8, 133, 3);
INSERT INTO public.random VALUES (9, 959, 4);
INSERT INTO public.random VALUES (10, 95, 4);
INSERT INTO public.random VALUES (11, 409, 5);
INSERT INTO public.random VALUES (12, 646, 5);
INSERT INTO public.random VALUES (13, 980, 4);
INSERT INTO public.random VALUES (14, 606, 4);
INSERT INTO public.random VALUES (15, 640, 4);
INSERT INTO public.random VALUES (16, 693, 6);
INSERT INTO public.random VALUES (17, 681, 6);
INSERT INTO public.random VALUES (18, 67, 7);
INSERT INTO public.random VALUES (19, 120, 7);
INSERT INTO public.random VALUES (20, 212, 6);
INSERT INTO public.random VALUES (21, 41, 6);
INSERT INTO public.random VALUES (22, 184, 6);
INSERT INTO public.random VALUES (23, 168, 8);
INSERT INTO public.random VALUES (24, 768, 8);
INSERT INTO public.random VALUES (25, 508, 9);
INSERT INTO public.random VALUES (26, 565, 9);
INSERT INTO public.random VALUES (27, 590, 8);
INSERT INTO public.random VALUES (28, 253, 8);
INSERT INTO public.random VALUES (29, 353, 8);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1669493350324');
INSERT INTO public.users VALUES (2, 'user_1669493350323');
INSERT INTO public.users VALUES (3, 'a');
INSERT INTO public.users VALUES (4, 'user_1669493723508');
INSERT INTO public.users VALUES (5, 'user_1669493723507');
INSERT INTO public.users VALUES (6, 'user_1669493969578');
INSERT INTO public.users VALUES (7, 'user_1669493969577');
INSERT INTO public.users VALUES (8, 'user_1669494038654');
INSERT INTO public.users VALUES (9, 'user_1669494038653');


--
-- Name: inputs_input_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.inputs_input_id_seq', 498, true);


--
-- Name: random_random_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.random_random_id_seq', 29, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 9, true);


--
-- Name: inputs inputs_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.inputs
    ADD CONSTRAINT inputs_pkey PRIMARY KEY (input_id);


--
-- Name: random random_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random
    ADD CONSTRAINT random_pkey PRIMARY KEY (random_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: inputs inputs_random_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.inputs
    ADD CONSTRAINT inputs_random_id_fkey FOREIGN KEY (random_id) REFERENCES public.random(random_id);


--
-- Name: random random_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random
    ADD CONSTRAINT random_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

