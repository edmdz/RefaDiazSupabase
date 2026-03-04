SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.8
-- Dumped by pg_dump version 15.8

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
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', '9b56fc10-cfc6-4237-84a2-1601dd5d6cba', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"roelmdz@gmail.com","user_id":"6eb761aa-cc6a-4f4f-bcb4-809b0ccda398","user_phone":""}}', '2025-02-09 19:20:29.8383+00', ''),
	('00000000-0000-0000-0000-000000000000', '1438c54c-31af-4cdd-a480-65e7362c70b4', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"roelmdz@gmail.com","user_id":"6eb761aa-cc6a-4f4f-bcb4-809b0ccda398","user_phone":""}}', '2025-02-11 02:34:20.569281+00', ''),
	('00000000-0000-0000-0000-000000000000', '6ee6d485-41eb-4995-a83a-4dc729ab7edc', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"roelmdz@gmail.com","user_id":"bb64a472-da3d-424f-83da-8de91f040f64","user_phone":""}}', '2025-02-11 02:34:34.27543+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f28f0a7b-c1ac-42e2-987d-58469da3375d', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"roelmdz@gmail.com","user_id":"bb64a472-da3d-424f-83da-8de91f040f64","user_phone":""}}', '2025-02-11 02:35:02.93786+00', ''),
	('00000000-0000-0000-0000-000000000000', '61e3d4f4-6b77-47dc-8b18-cf7e9445affb', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"roelmdz@gmail.com","user_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","user_phone":""}}', '2025-02-11 02:35:19.678953+00', ''),
	('00000000-0000-0000-0000-000000000000', '7f19a29f-46f8-4e5d-8cb7-03f9117fefaf', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-03-09 05:41:05.700192+00', ''),
	('00000000-0000-0000-0000-000000000000', '73af6712-4129-4080-9a28-44874af8bd7a', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-03-09 05:57:03.290459+00', ''),
	('00000000-0000-0000-0000-000000000000', '38d4cedf-1710-4395-95ce-896343c66b30', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-03-09 06:00:37.129215+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c979eb2f-9d7f-4d86-b817-6bcc2d63afc1', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-03-09 06:00:47.564192+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bdc31268-e355-43c8-b799-6139f7fe9117', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-03-09 06:01:36.991848+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd41aea98-a7d6-46f6-9276-95d9d2e0cf76', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-03-09 06:01:47.493565+00', ''),
	('00000000-0000-0000-0000-000000000000', '2ac3b5e4-302d-4fc5-a4fe-fbb1ed407ad3', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-03-09 06:03:52.646525+00', ''),
	('00000000-0000-0000-0000-000000000000', '073b8713-97d5-4442-9e4d-48d4c67e4a39', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-03-09 06:05:14.668824+00', ''),
	('00000000-0000-0000-0000-000000000000', '184fab46-c3aa-4b3a-97bb-d600707e78da', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-03-09 06:06:07.932647+00', ''),
	('00000000-0000-0000-0000-000000000000', '81231f71-288d-48d3-8160-289445c3a8f0', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-03-09 06:16:24.688093+00', ''),
	('00000000-0000-0000-0000-000000000000', '4fe17d60-e009-4fd5-a0ac-12b25afa7334', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-03-09 06:21:43.672041+00', ''),
	('00000000-0000-0000-0000-000000000000', 'da86a07c-a725-45e4-a245-8816e1e5aa42', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-03-09 06:21:52.564363+00', ''),
	('00000000-0000-0000-0000-000000000000', '610f18da-e948-43c0-8c61-33e961e82a48', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-03-09 06:23:17.76549+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e4806063-1390-4d6d-a3c4-60c45cc2de94', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-03-09 16:18:49.59037+00', ''),
	('00000000-0000-0000-0000-000000000000', '6952261b-5be8-4d80-bff0-4c64a6b0e2df', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-03-09 16:18:49.605251+00', ''),
	('00000000-0000-0000-0000-000000000000', '200d9e8a-09f9-4942-9d3f-60bb7abae954', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-03-09 16:18:51.499552+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c2e15176-0b78-4f04-84d4-095fbf79fd3c', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-03-09 22:56:45.893261+00', ''),
	('00000000-0000-0000-0000-000000000000', '15988f6c-8ccf-4c21-9148-02f09e0d7344', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-03-09 22:56:45.895322+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f4a8581b-eae1-4844-821a-784fa50e05d1', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-03-09 22:57:02.095787+00', ''),
	('00000000-0000-0000-0000-000000000000', '79a6f04b-7711-482c-8702-ca8f4bf88131', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-03-09 22:57:07.715948+00', ''),
	('00000000-0000-0000-0000-000000000000', '7121336b-1520-41b3-ab45-5f195e571c11', '{"action":"user_confirmation_requested","actor_id":"601d4615-89bd-4f01-816a-d70c17150818","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2025-03-09 23:03:35.338744+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e86cd442-c71d-4c88-bbf5-fb3483750d64', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-03-09 23:05:55.270055+00', ''),
	('00000000-0000-0000-0000-000000000000', '39a95ccf-18d8-4560-9468-8dd6f21ed2ff', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-03-09 23:46:00.859052+00', ''),
	('00000000-0000-0000-0000-000000000000', '92d69b2b-4605-453a-8177-38ba235e1ce0', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"elotin@hotmail.com","user_id":"601d4615-89bd-4f01-816a-d70c17150818","user_phone":""}}', '2025-03-10 22:41:46.559594+00', ''),
	('00000000-0000-0000-0000-000000000000', '4b2ba019-7cbf-45e8-a54b-19495849e3ac', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-03-10 22:48:33.912003+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c00944a0-6ad6-47fb-957c-0ad8a8563bba', '{"action":"user_repeated_signup","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2025-03-10 22:49:24.635639+00', ''),
	('00000000-0000-0000-0000-000000000000', '562c5187-f3de-4ca0-9a20-b6a2f8c58384', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-03-11 01:35:49.751015+00', ''),
	('00000000-0000-0000-0000-000000000000', '63c386ba-e4f6-487e-a0e6-96b8e19fd722', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-03-11 01:35:49.75963+00', ''),
	('00000000-0000-0000-0000-000000000000', '7061d8b7-2040-4c14-9728-5adc21f4b81e', '{"action":"user_confirmation_requested","actor_id":"bb1446f6-95a3-4819-9a04-c4f71491dc71","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2025-03-11 01:36:11.18166+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f48365f9-c298-4b0d-bbdd-e99beb851754', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"elotin@hotmail.com","user_id":"bb1446f6-95a3-4819-9a04-c4f71491dc71","user_phone":""}}', '2025-03-11 01:46:27.972976+00', ''),
	('00000000-0000-0000-0000-000000000000', '4d484d7e-ef26-4236-937c-f2bea557df7d', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-03-11 01:46:34.103741+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dc740d81-188a-45f8-835f-1257e87b1583', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-03-11 01:46:57.024884+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c2d9db4c-b081-4cc1-a691-154932f44082', '{"action":"user_signedup","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2025-03-11 01:47:49.338364+00', ''),
	('00000000-0000-0000-0000-000000000000', '10724526-fed2-4108-a82b-3cfcc3d680de', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-03-11 01:47:49.343936+00', ''),
	('00000000-0000-0000-0000-000000000000', '22423f1f-4fcf-4bae-89e7-bf3c3dc92345', '{"action":"logout","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account"}', '2025-03-11 01:47:53.148246+00', ''),
	('00000000-0000-0000-0000-000000000000', '97fbf0cd-c709-4b41-9fc2-0c263143792c', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-03-11 01:47:59.796917+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd0000f1d-20ab-4f9d-883d-e845da79622d', '{"action":"logout","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account"}', '2025-03-11 01:48:03.365827+00', ''),
	('00000000-0000-0000-0000-000000000000', '5755a2db-9170-4d9d-aee6-c8f68a579379', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-03-11 01:48:10.262435+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a51a4990-8606-4e44-addd-a689f5e51201', '{"action":"logout","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account"}', '2025-03-11 01:48:13.058714+00', ''),
	('00000000-0000-0000-0000-000000000000', '438b3659-f99b-426d-8be5-33bf2b5ff540', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-03-11 01:50:47.900048+00', ''),
	('00000000-0000-0000-0000-000000000000', '3863b324-b516-4ae7-8dae-5fc57ae2d745', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-03-11 01:51:42.059375+00', ''),
	('00000000-0000-0000-0000-000000000000', '63b22bb5-0773-4898-ad07-0d9ae7dfe351', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-03-11 01:56:58.501062+00', ''),
	('00000000-0000-0000-0000-000000000000', '84d96b28-dfe5-4759-ac4b-b0f146c0c113', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-03-11 01:57:09.262262+00', ''),
	('00000000-0000-0000-0000-000000000000', '5457bd85-6a0b-4da3-b339-f1687e50e5d5', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-03-11 02:04:11.559301+00', ''),
	('00000000-0000-0000-0000-000000000000', '81e22c82-daad-4ff0-8700-ed6af42bc06c', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-03-17 18:10:16.99754+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fbf419e1-4a44-43d4-8355-e75bfcbdf562', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-01 03:33:15.058105+00', ''),
	('00000000-0000-0000-0000-000000000000', '47defa2d-38dc-4672-9550-25aefbdd54f6', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-01 03:35:26.61364+00', ''),
	('00000000-0000-0000-0000-000000000000', '36f71d97-0dc4-4c73-927b-5267a94059c2', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-01 03:36:18.052764+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a169e275-a872-4908-9891-ca6820f518b5', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-01 03:36:18.070442+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e15326a8-1be4-4f0f-957e-e8d8fb0efa6c', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-01 04:47:01.048589+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f937b1f6-7f04-4c3b-9929-b9ab6718c5b2', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-01 04:47:01.052952+00', ''),
	('00000000-0000-0000-0000-000000000000', '90efcee2-dc7b-4411-9fd5-1ab212fbdc59', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-01 17:26:55.581959+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a86454b9-379f-4342-a568-8ed7fcb5167b', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-01 18:25:14.320853+00', ''),
	('00000000-0000-0000-0000-000000000000', 'abdf33d4-39f7-456f-ae83-fcd7f9d5e411', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-01 18:25:14.322505+00', ''),
	('00000000-0000-0000-0000-000000000000', '585eea20-4821-47f6-9a83-74edf090ae74', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-01 19:23:44.318877+00', ''),
	('00000000-0000-0000-0000-000000000000', '0cd52782-b0f4-4251-ba6d-7d6c31f0ab3c', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-01 19:23:44.319749+00', ''),
	('00000000-0000-0000-0000-000000000000', 'de0e35dd-e807-4869-9975-1124f67d8aaf', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-01 20:22:14.467524+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eb291d87-d561-4d4f-8518-19e826a2013e', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-01 20:22:14.469109+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f3471c57-ed96-4445-b6ea-bc4451acf70f', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-01 21:00:56.013116+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e5e6226b-38b3-4dc0-8124-ee534c23f67f', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-01 21:14:15.957451+00', ''),
	('00000000-0000-0000-0000-000000000000', '7eb33348-43c5-4c42-8f4c-86a2e0bcef02', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-01 21:51:49.252406+00', ''),
	('00000000-0000-0000-0000-000000000000', '9d0d90b3-0713-4a11-add3-3f5049b9112e', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-01 22:14:06.906949+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a2bfdfce-6825-4787-9f50-db2b56c75a4b', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-01 22:14:06.908245+00', ''),
	('00000000-0000-0000-0000-000000000000', 'caf26e24-ee79-485b-be75-e315512647bd', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-01 23:26:34.995608+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e3807637-e116-479c-b99b-b86b33e1c11c', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-01 23:26:34.996968+00', ''),
	('00000000-0000-0000-0000-000000000000', '2efc78e2-23bd-4f95-8c45-0772a3f3a8b5', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-01 23:27:17.988182+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd8042aea-2e10-4fc1-af0f-805f248ebfe5', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-01 23:27:23.262482+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b5e0aff1-a5d6-4243-b5d4-d65672925b4f', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-02 00:25:57.165163+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a03a0777-6fa2-4c2c-b3f2-f96a2c1da285', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-02 00:25:57.167086+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b737a60e-a027-4a60-b6b8-1a4276edc1be', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-02 00:27:35.306211+00', ''),
	('00000000-0000-0000-0000-000000000000', '02896526-53a8-4049-bbe0-61ac68cda28d', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-02 00:27:40.959573+00', ''),
	('00000000-0000-0000-0000-000000000000', '9eaf26b6-aae8-4c1a-9bf0-74ae6c08ce77', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-02 04:18:06.636782+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aee3228f-516d-40a9-8de9-ac378416296c', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-02 04:18:06.637667+00', ''),
	('00000000-0000-0000-0000-000000000000', '2fafa306-7498-443b-ab8a-d0c227a9fa85', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-02 04:21:43.360636+00', ''),
	('00000000-0000-0000-0000-000000000000', '2f943565-855e-4f80-9b09-e0a0e6320899', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-02 16:37:46.884121+00', ''),
	('00000000-0000-0000-0000-000000000000', '5c91a977-cfae-454c-a41b-5ad130d2f543', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-02 16:37:46.899796+00', ''),
	('00000000-0000-0000-0000-000000000000', '00fffa18-2c36-419b-acd5-b372ba81412d', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-02 16:37:51.191466+00', ''),
	('00000000-0000-0000-0000-000000000000', '77180ada-8279-4d6e-b556-9a0b5f653a4d', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-02 16:37:52.934161+00', ''),
	('00000000-0000-0000-0000-000000000000', '37dcc539-f301-4974-87b7-61d6afb77a60', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-05 16:41:04.096843+00', ''),
	('00000000-0000-0000-0000-000000000000', '286431b7-d5ed-41ac-b7bb-31fc5297fcef', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-05 16:41:04.113875+00', ''),
	('00000000-0000-0000-0000-000000000000', '9c4a550f-87b2-4137-bd3e-9a5313b6071d', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-05 16:41:06.061253+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b8ea0867-0134-468e-a879-89f2c279cb12', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-05 17:39:34.655064+00', ''),
	('00000000-0000-0000-0000-000000000000', '40bcc2af-d777-4d94-aac0-bc6c121e4252', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-05 17:39:34.657696+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fa5fee25-4048-4a0b-9840-a70bad576527', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-05 18:56:05.569726+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aafbde97-4eaa-4ecc-9df8-b90ee041849f', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-05 18:56:05.57174+00', ''),
	('00000000-0000-0000-0000-000000000000', '64f578de-07df-4fea-82cd-0e2d4ea46a2d', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-05 19:54:35.572361+00', ''),
	('00000000-0000-0000-0000-000000000000', '954b744b-ee48-476c-8fa9-399df2090b82', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-05 19:54:35.574263+00', ''),
	('00000000-0000-0000-0000-000000000000', '8dd05bdc-1c0d-4396-a766-e05e603dafc5', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-06 03:26:19.113509+00', ''),
	('00000000-0000-0000-0000-000000000000', '03f52bb9-3ac7-4a52-b70f-d46f88a2a9ef', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-06 03:26:19.115334+00', ''),
	('00000000-0000-0000-0000-000000000000', '10b78946-0fca-4c3a-883c-79e75de7305b', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-06 03:27:43.576316+00', ''),
	('00000000-0000-0000-0000-000000000000', '14ff5875-bc13-4920-be18-2a606e187e7d', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-07 01:30:52.878548+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bdd4615b-f92e-4b14-a1cb-0f5d556b7788', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-07 01:30:52.898423+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f8b86026-a336-4a1e-9dea-ea4a165e31b6', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-07 01:31:32.221749+00', ''),
	('00000000-0000-0000-0000-000000000000', '1123b3b5-d4b8-4ccc-9f21-36aa98436474', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-07 02:13:32.560795+00', ''),
	('00000000-0000-0000-0000-000000000000', '3c7bb056-96a5-496b-ac7f-427a21fc6e87', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-07 03:12:08.448053+00', ''),
	('00000000-0000-0000-0000-000000000000', '93c553b3-f5d0-445a-a946-b4a42c446f74', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-07 03:29:28.151308+00', ''),
	('00000000-0000-0000-0000-000000000000', '6f43ea51-47f0-47b5-b586-d4d329ace5cc', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-07 03:29:28.154108+00', ''),
	('00000000-0000-0000-0000-000000000000', '0d0012af-739b-4acb-9485-c7983c41467d', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-07 03:29:57.559943+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f7fad14a-f3c4-4600-b481-a99eeb0c967e', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-07 04:29:21.078596+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fef7728e-fa19-4fc0-a1e5-b678c0bb61ba', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-07 04:29:21.080283+00', ''),
	('00000000-0000-0000-0000-000000000000', '247c278f-cc9a-41d3-b09a-96151c36d89c', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-07 23:21:47.947936+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b8481c69-885b-4a95-9585-e7a8d5b4a2b2', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-07 23:21:47.968245+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f7202a5f-cae8-41cd-a8fb-0c0ce725fd61', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-09 01:35:16.664199+00', ''),
	('00000000-0000-0000-0000-000000000000', '5c3d0804-3e54-4622-9493-d79c409e89fb', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-09 01:35:16.676726+00', ''),
	('00000000-0000-0000-0000-000000000000', '28ba7a57-cbdd-479b-9810-109eeb0ea87f', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-09 01:35:27.763883+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ad4eb5f9-e508-4193-a5c5-7d1691c555ad', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-09 01:35:30.878067+00', ''),
	('00000000-0000-0000-0000-000000000000', '52128bae-7d13-4686-93e7-0689f33c9cd4', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-10 04:59:57.047814+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ffaeac3e-63dd-4fae-a290-13c547e509ea', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-10 04:59:57.063648+00', ''),
	('00000000-0000-0000-0000-000000000000', '659602a5-b9c3-4607-a881-0b2046a467a6', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-10 05:07:37.425568+00', ''),
	('00000000-0000-0000-0000-000000000000', '4a6bacb9-60c4-45a3-b1e9-e9408ce06066', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-10 05:11:16.145915+00', ''),
	('00000000-0000-0000-0000-000000000000', '1c7446fb-7064-4ba0-ad82-da8fa49712dc', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-10 05:11:55.794922+00', ''),
	('00000000-0000-0000-0000-000000000000', '6e7d0e87-eb05-4446-921a-971dd6efcac1', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-10 05:12:48.456243+00', ''),
	('00000000-0000-0000-0000-000000000000', '7c549b3b-290e-43c1-a121-2789e281d7e5', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-10 05:16:35.276289+00', ''),
	('00000000-0000-0000-0000-000000000000', '2bca1979-88b0-4bcd-ba7d-a3ea266c7e17', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-10 22:12:07.636325+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b432340f-92dc-4471-81c5-18d58bb1c4f4', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-10 22:13:18.936649+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c0ba7bff-7fc2-4cd5-804b-eb8ecf7a8e8d', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-13 20:52:13.927304+00', ''),
	('00000000-0000-0000-0000-000000000000', '65b2da8e-5ddc-40e5-abcb-b0c5e494bf0a', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-13 20:52:19.803155+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f5099cf4-e851-433f-988f-f42bc030c8c3', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-13 22:54:02.605713+00', ''),
	('00000000-0000-0000-0000-000000000000', 'de8aa19c-ca26-4bd4-b27d-db6c8dd4ac29', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-13 22:54:02.609776+00', ''),
	('00000000-0000-0000-0000-000000000000', '2d40835a-8388-468e-8add-f2770136fea4', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-13 22:56:02.393242+00', ''),
	('00000000-0000-0000-0000-000000000000', '79acb006-1bef-4f7b-b977-8dfd4e0500b8', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-14 16:39:14.665003+00', ''),
	('00000000-0000-0000-0000-000000000000', '24d7423f-df76-49f8-a9c7-6a223c931f5e', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-14 17:37:13.243716+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eaea3608-e1dd-4096-ae7a-2c86ee89058a', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-14 19:07:27.421937+00', ''),
	('00000000-0000-0000-0000-000000000000', '326a28e4-4636-41c4-8949-61aad971a707', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-14 19:07:27.425413+00', ''),
	('00000000-0000-0000-0000-000000000000', '27e9fc83-ef18-4691-94c5-982fa120c116', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-14 19:59:04.75734+00', ''),
	('00000000-0000-0000-0000-000000000000', '3cbb4442-c15b-49b4-ae61-bd48231c0332', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-14 19:59:04.758557+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b7367194-2bed-4ff5-8e85-168ec2ee8e94', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-14 19:59:10.626122+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b85e1b7e-b17f-4e47-9a14-21173c90776f', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-14 19:59:15.31168+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b39cae35-4641-4222-bfed-715d966d195c', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-14 22:46:02.594323+00', ''),
	('00000000-0000-0000-0000-000000000000', '6989177a-eb4c-4811-9c7a-6511412c86d3', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-14 22:50:30.845803+00', ''),
	('00000000-0000-0000-0000-000000000000', '8330a8e0-709a-47ed-ba60-3b4e6ba8f5a9', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-14 22:50:50.883861+00', ''),
	('00000000-0000-0000-0000-000000000000', '809c0873-422d-4635-9c92-000861d3488f', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-14 22:51:01.554628+00', ''),
	('00000000-0000-0000-0000-000000000000', '9b814c4f-4f18-43a1-bdd2-98b48133e354', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-17 00:49:19.993184+00', ''),
	('00000000-0000-0000-0000-000000000000', 'edb0b2cb-b48a-4c2b-b31b-196f1e26d116', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-17 00:49:20.009377+00', ''),
	('00000000-0000-0000-0000-000000000000', '1248eda8-626f-408d-ab62-e8a1281e47ea', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-17 01:01:01.511977+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ddc2711c-b1dc-4671-90f9-668220ca41d0', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-24 15:40:44.928272+00', ''),
	('00000000-0000-0000-0000-000000000000', '6f8c85f1-1ffb-42cf-a706-cc8488149e7e', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-24 17:44:07.126818+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a4f0f186-d748-40d2-a024-1983aa3f8981', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-24 17:44:07.135164+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a453e299-ab61-4107-a330-1cb8538324e0', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-24 17:44:09.547778+00', ''),
	('00000000-0000-0000-0000-000000000000', '08aa5eb6-d810-4d75-868e-2c80e0215c54', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-24 18:42:37.750002+00', ''),
	('00000000-0000-0000-0000-000000000000', '4e314dad-529d-4f8f-83c5-42b47122383d', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-24 18:42:37.751622+00', ''),
	('00000000-0000-0000-0000-000000000000', '9c3ad02a-f106-43f9-8c86-b2f3cfc61155', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-24 19:40:37.810647+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c1e6a12c-e29b-49df-8aa0-3bc1a6fa873f', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-24 19:40:37.811416+00', ''),
	('00000000-0000-0000-0000-000000000000', 'efdfe2a0-df6f-464d-b637-2e7a67d1f36d', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-26 14:04:31.145472+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd8bc3645-2c5a-4dd4-82d9-c261671ee16d', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-28 15:34:00.018119+00', ''),
	('00000000-0000-0000-0000-000000000000', '69e1469e-3530-4e27-9597-09e99326af81', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-28 15:34:00.026119+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fbe498ae-7098-4b2f-83f7-bd4ee1ae27d7', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-28 15:34:02.342809+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c9c07a52-72ed-4b7a-9ffa-f0cdff38f750', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-28 19:03:35.327382+00', ''),
	('00000000-0000-0000-0000-000000000000', '9f80a971-b651-40f0-8be0-4ea289e007f1', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-28 19:03:35.330708+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e658c134-5c6d-4f1b-9ac7-79c170fa9fed', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-28 19:03:40.514143+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c5cd9415-59b3-487c-bea4-a2dc182338ca', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-28 19:03:42.470449+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e8555010-1a6e-47f6-a1f8-b2b25294508b', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-28 20:01:46.014277+00', ''),
	('00000000-0000-0000-0000-000000000000', '67e883c5-ce34-4742-9df1-fc917c471366', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-28 20:01:46.017933+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e2d1c150-4639-4969-8fb4-98d07332f810', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-28 20:05:54.489658+00', ''),
	('00000000-0000-0000-0000-000000000000', '441ffd6c-f338-4064-8092-620235ddeb0c', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-28 20:05:56.750082+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e198ded5-219a-40eb-85b8-fc4f47d43679', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-28 23:28:21.501906+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ff7f6854-85de-4a8c-8b0c-ac4ec9592d1a', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-28 23:28:21.505023+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ce856463-708d-433b-b9df-557e1abd5f4c', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-30 00:32:10.685241+00', ''),
	('00000000-0000-0000-0000-000000000000', '6c75eee7-566b-4cdc-9c1a-2b63e248411d', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-30 00:32:10.700078+00', ''),
	('00000000-0000-0000-0000-000000000000', '488c6d91-8dd8-4b82-be03-a269f8ede66a', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-30 00:32:13.62556+00', ''),
	('00000000-0000-0000-0000-000000000000', '24d11d2e-6c60-41cf-b529-833dd90dc6f9', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-30 00:36:51.424338+00', ''),
	('00000000-0000-0000-0000-000000000000', '13a2e288-686e-4861-97cc-6f09b5ca90c9', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-30 00:36:51.426888+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f0bc8394-49f9-4b2c-93d5-d0904cdb726f', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-30 00:37:00.88608+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f1413bbc-f68a-4ad1-940c-d2b1e1416570', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-30 00:37:02.306088+00', ''),
	('00000000-0000-0000-0000-000000000000', '254ea81a-2806-4276-9486-9945b6ebe933', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-30 00:37:06.207625+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b0dbd4a5-29ae-4719-a6a3-8cefd70696c5', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-30 00:45:33.775369+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b26dd12b-2a1b-44f2-8c76-9086d595180d', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-30 02:17:35.647674+00', ''),
	('00000000-0000-0000-0000-000000000000', '94d0c6f6-41e4-474c-9a9d-7a7669e59f0b', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-30 02:17:35.651293+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ea5a71bd-14d4-4b33-8787-17c570e3f3e7', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-30 17:33:52.659336+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ca442664-cf64-49a6-b3e3-6f13c22c2a05', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-30 17:33:52.668604+00', ''),
	('00000000-0000-0000-0000-000000000000', '96db8356-3041-4920-8e9d-488b25f6be22', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-30 17:33:56.676837+00', ''),
	('00000000-0000-0000-0000-000000000000', '47fa6117-11e4-4348-8a7d-ac8bd2c75b33', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-30 17:33:58.627556+00', ''),
	('00000000-0000-0000-0000-000000000000', '610c7fe6-4c8f-4d07-a069-ff4cd1e433e7', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-30 19:43:39.759035+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fbd5e260-a765-4ab8-a934-483d084afb46', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-30 19:43:39.761739+00', ''),
	('00000000-0000-0000-0000-000000000000', '38f1b0fe-c7f1-41cc-aa4e-ce2e0afadf6e', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-30 19:46:18.08658+00', ''),
	('00000000-0000-0000-0000-000000000000', '1039ed01-137c-45b0-b1d1-4df5e8643f9c', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-30 19:46:26.446923+00', ''),
	('00000000-0000-0000-0000-000000000000', '84588796-552c-48d2-9a3b-8446f7b3d362', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-30 20:13:54.603311+00', ''),
	('00000000-0000-0000-0000-000000000000', '52a2cc73-dade-416e-99fe-15eaac72c8a7', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-30 20:44:29.686547+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c9f2aa8f-4303-4e75-9dae-ebb4d4125cea', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-30 20:44:29.68982+00', ''),
	('00000000-0000-0000-0000-000000000000', '639f49da-7f93-4b08-9898-59163dfaee98', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-01 00:54:19.949466+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e3613ea2-8bdf-43d0-aed8-8a618b26ac6c', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-01 00:54:19.952587+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c3bb4a94-6541-45ff-8bcb-5409aa2d6812', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-01 23:29:39.483137+00', ''),
	('00000000-0000-0000-0000-000000000000', '0c6dcab6-4070-4fde-ae61-642da42daf08', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-01 23:29:39.492498+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ca0d8d80-c18d-4e39-a2a4-23b89145ab21', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-01 23:50:30.107331+00', ''),
	('00000000-0000-0000-0000-000000000000', '5f25bd66-004b-4452-a404-f8d9dbcce599', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-01 23:50:30.111376+00', ''),
	('00000000-0000-0000-0000-000000000000', '37c0878d-d4c8-479e-bba1-7d842fc24b6b', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-02 00:48:40.784721+00', ''),
	('00000000-0000-0000-0000-000000000000', '603ca63f-0830-449a-896d-ffd925dc5cd7', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-02 00:48:40.787311+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bf602728-ae95-43e7-a10f-b8a23f08d54a', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-02 13:47:43.291936+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c72d0b0d-3618-4225-b1f6-75d7cd5e981d', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-02 13:47:43.301157+00', ''),
	('00000000-0000-0000-0000-000000000000', '39fe7bfe-b95b-4e3b-bf0a-d2f56239398d', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-02 17:16:06.467094+00', ''),
	('00000000-0000-0000-0000-000000000000', '70c46faa-b245-40b5-969e-7d08a0c490b5', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-02 17:16:06.472114+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c124ba2a-ae4c-4db6-9794-63aabf4243cd', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-03 00:32:55.093024+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c646d8a4-11fe-4970-aed2-c4703eb86e83', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-03 00:32:55.096195+00', ''),
	('00000000-0000-0000-0000-000000000000', '40a47fc2-e7a9-4526-b123-5a94ed4cfa3e', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-03 02:41:18.975251+00', ''),
	('00000000-0000-0000-0000-000000000000', '79d925dc-0aa2-442f-86c9-76f1f0c85dc8', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-03 02:41:18.976687+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd6db34a5-49d8-45c1-a32b-128564aeca01', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-03 03:39:18.782431+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cd2689a5-649e-4e7b-941a-49403654406d', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-03 03:39:18.783208+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cd865d86-3b31-42d4-a1ae-5cd693f5b299', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-03 04:37:44.048854+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a71f6277-81ea-4ff3-ab4e-8fe5fdaaa87d', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-03 04:37:44.050353+00', ''),
	('00000000-0000-0000-0000-000000000000', '9ae94857-e257-4fc5-99d7-79c42173d8a1', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-03 05:16:43.528249+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aeb93a25-afac-4f29-948b-5db8d62bb986', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-03 05:16:43.530188+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e7eab82a-de19-4231-91a3-40f855c91d20', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-03 14:09:34.484812+00', ''),
	('00000000-0000-0000-0000-000000000000', '601ff08e-0bca-4dff-a541-77537ae79bc3', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-03 14:09:34.494492+00', ''),
	('00000000-0000-0000-0000-000000000000', '84e3b555-a581-4e96-b5fd-7e74cbe06449', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-03 15:29:11.416184+00', ''),
	('00000000-0000-0000-0000-000000000000', '2802ad8a-c356-4b55-b4da-631ddba2c125', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-03 15:29:11.418454+00', ''),
	('00000000-0000-0000-0000-000000000000', '63e22859-1343-4fbc-b540-c6245208ab91', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-03 15:29:15.502511+00', ''),
	('00000000-0000-0000-0000-000000000000', '6389f1c1-8cc7-451a-a1d8-11f3c2829558', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-03 15:30:44.752407+00', ''),
	('00000000-0000-0000-0000-000000000000', '0c89dc63-6d1a-44a0-b483-e4880a7981b7', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-05 03:25:26.720615+00', ''),
	('00000000-0000-0000-0000-000000000000', '13b8b833-3d72-46d3-8c75-7a66e8cc06f6', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-05 03:25:26.726246+00', ''),
	('00000000-0000-0000-0000-000000000000', '8c10a7fb-e075-4aef-ab26-c3fedf07e4df', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-05 03:25:28.501245+00', ''),
	('00000000-0000-0000-0000-000000000000', '4a34f1ee-c579-4ca0-a034-afd338e16d53', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-06 21:17:51.526496+00', ''),
	('00000000-0000-0000-0000-000000000000', '844c615d-6ee2-42a7-ae1c-6221a94c4749', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-06 21:17:51.544524+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd17a9f48-8e9d-4fea-8cc7-f2aeb8c2f95e', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-06 22:24:31.014583+00', ''),
	('00000000-0000-0000-0000-000000000000', '1e9a6bd3-1f3d-4bfa-863c-ed62da5ed828', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-06 22:24:31.019068+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c806e82d-dd55-4dfb-8928-184a9720fcf5', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-06 22:24:33.72015+00', ''),
	('00000000-0000-0000-0000-000000000000', '810d654c-715d-40b1-8868-ed3f17521cf0', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-06 22:24:35.791352+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e5950a9a-d042-4c6f-8c62-74ac231ac22a', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-07 01:00:42.724334+00', ''),
	('00000000-0000-0000-0000-000000000000', '6498b5fd-01f9-4bda-bb20-168f421b4d7e', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-07 01:00:42.736607+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e87b7776-7d70-479b-a9be-2af4f4915cdb', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-08 02:26:37.559448+00', ''),
	('00000000-0000-0000-0000-000000000000', 'faf083cb-9909-425a-a771-16cc9ef66e45', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-08 02:26:37.569097+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd0066960-9ca0-411f-b825-5cc1035f5fc1', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-08 04:32:14.089557+00', ''),
	('00000000-0000-0000-0000-000000000000', '28927cc6-89ed-4ace-a62b-7ed9354c860c', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-08 04:32:14.091716+00', ''),
	('00000000-0000-0000-0000-000000000000', '17eddc38-4a23-4c20-a9f1-dd624d113bf3', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-08 21:37:18.131786+00', ''),
	('00000000-0000-0000-0000-000000000000', '1a371682-44c7-4c61-ba52-0cbc7a942874', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-08 21:37:18.14249+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd4bf9956-3cea-4886-8dbe-702bd2630dcb', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-08 21:37:20.405327+00', ''),
	('00000000-0000-0000-0000-000000000000', '39f61cfe-2b98-466d-b3ef-69c0b08f3ab4', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-08 22:35:39.651025+00', ''),
	('00000000-0000-0000-0000-000000000000', '054510c0-686a-4ec4-93fc-820893114fea', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-08 22:35:39.654426+00', ''),
	('00000000-0000-0000-0000-000000000000', '71688687-2ecc-4f30-a5f1-07689e928188', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-08 22:38:26.202532+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b084a886-352a-4dbb-a97f-6be00513548c', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-08 23:39:23.052211+00', ''),
	('00000000-0000-0000-0000-000000000000', '471adf70-8a83-4189-bb96-6f6b205d5305', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-08 23:39:23.054354+00', ''),
	('00000000-0000-0000-0000-000000000000', '6b4871b6-18b1-4c2c-8504-74a388733321', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-08 23:39:47.663215+00', ''),
	('00000000-0000-0000-0000-000000000000', '0efff337-cc5e-443b-a645-0fd09044c0fb', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-09 21:12:06.511626+00', ''),
	('00000000-0000-0000-0000-000000000000', '9788ac84-e614-4169-9f0e-ea3ca8292f59', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-09 21:12:06.516828+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a3138dbc-a16a-4b82-ac7c-6d6b00680adc', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-09 21:12:09.209116+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c99babbc-91b4-4713-b595-8201e715d9d9', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-09 22:10:55.064859+00', ''),
	('00000000-0000-0000-0000-000000000000', '2fde7313-7190-46f0-98e5-a36333e0e719', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-09 22:10:55.068138+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cb105eed-13c1-4507-8c01-5a048e8213ad', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-09 23:30:01.566257+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f42d88ac-2158-4cd8-bc92-d9c066cf0fa4', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-09 23:30:01.567639+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e6896929-ff9e-43db-a444-30504a556cc5', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-12 03:13:00.578694+00', ''),
	('00000000-0000-0000-0000-000000000000', '47238191-538d-4358-b711-737a4ed5740e', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-12 03:13:00.583705+00', ''),
	('00000000-0000-0000-0000-000000000000', 'be0702bc-d0ae-4853-af61-78a649d0445d', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-12 03:13:02.377988+00', ''),
	('00000000-0000-0000-0000-000000000000', '6c373980-a446-40b1-b0a9-4d44d038cce5', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-12 17:31:55.719887+00', ''),
	('00000000-0000-0000-0000-000000000000', '13466638-c5f5-42e6-b860-0e8f75231b00', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-12 17:31:55.735063+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c649fc8a-f807-44b0-9ccf-67c2fe94e24d', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-12 17:31:59.383706+00', ''),
	('00000000-0000-0000-0000-000000000000', 'abbcf03d-e319-41ef-9411-14ce32c8de95', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-12 19:44:37.954555+00', ''),
	('00000000-0000-0000-0000-000000000000', '2401a5c9-e53c-4b69-bdb9-1a4c0b6fd30d', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-12 19:44:37.959146+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e592a84c-7aec-477d-80d5-a0c2b340ba2f', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-12 21:11:43.284442+00', ''),
	('00000000-0000-0000-0000-000000000000', '62a501a5-6d78-4b5e-9d33-e45d3c238274', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-12 21:11:43.286283+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a2f9677b-6bea-4c5d-be32-d19b9dd47f5b', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-12 22:14:28.506467+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dc090ff7-9bd9-4a27-98b9-b4d55742c69e', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-12 22:14:28.509867+00', ''),
	('00000000-0000-0000-0000-000000000000', '49c978a0-253b-4849-a80e-ccef0954259f', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-13 00:09:50.770316+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a99078dd-0d28-42e4-b525-eb3d3de0ef18', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-13 00:09:50.774303+00', ''),
	('00000000-0000-0000-0000-000000000000', '0b215dbc-d5d1-4af4-b67e-2176096cd089', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-13 03:30:11.491073+00', ''),
	('00000000-0000-0000-0000-000000000000', '00c6dced-32d7-420f-9b53-e4a1b8bcdd27', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-13 03:30:11.493006+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a1ec1b01-4098-4a94-9122-372dd258c00d', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-19 03:26:42.658474+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd0b801a7-0832-49ef-b4bf-c61d4f971f86', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-19 03:26:42.669647+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c015be2a-ad1f-481e-b663-eeef7e1535e2', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-19 03:27:47.257232+00', ''),
	('00000000-0000-0000-0000-000000000000', '2c9db351-02b0-4e2f-8e7e-d6f8cbc4c3c1', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-24 00:42:33.110468+00', ''),
	('00000000-0000-0000-0000-000000000000', '1d91700f-85db-4f8d-9c1f-d523d9ddf8cd', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-24 00:42:33.11913+00', ''),
	('00000000-0000-0000-0000-000000000000', '5867af4e-68fb-49b1-b1b0-4a4a619d7a34', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-24 00:42:36.943244+00', ''),
	('00000000-0000-0000-0000-000000000000', '0c9af388-683a-4115-9923-4dfd0e0382d7', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-24 00:42:39.279819+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a9326507-8e19-4175-99f1-4adf5265cf8b', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-24 01:42:42.57391+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b5646de7-d083-4296-847b-3478dcadbf9a', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-24 01:42:42.579442+00', ''),
	('00000000-0000-0000-0000-000000000000', '363bb869-3f51-4509-a201-577f055f6076', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-25 00:14:07.934778+00', ''),
	('00000000-0000-0000-0000-000000000000', '62aef4ad-5533-4b34-8af1-05c0642aae69', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-25 00:14:07.939482+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cbcc1579-3360-427b-b394-416262f9de1d', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-25 15:20:27.170142+00', ''),
	('00000000-0000-0000-0000-000000000000', '5861c2c1-1d04-4bbb-95af-8d226d115c68', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-25 15:20:27.17885+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ffe13902-6bc3-4599-99e4-518e5be93c85', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-25 15:20:38.479601+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fb67a86d-763e-488e-8502-f69b68c764c2', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-25 15:20:40.159851+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cb8a9410-1152-4ea9-96ed-6f6e4d46f692', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-25 22:49:20.974585+00', ''),
	('00000000-0000-0000-0000-000000000000', '53bca70b-884d-42a6-8204-cb21a6199fdc', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-25 22:49:20.981988+00', ''),
	('00000000-0000-0000-0000-000000000000', '3726bda0-963c-4238-8d82-9ad6c21ee038', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-25 22:49:34.059342+00', ''),
	('00000000-0000-0000-0000-000000000000', '321a406c-64b9-4da0-85cd-a5ab57455ab7', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-25 22:49:35.668495+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ee37d54a-73a5-4bd8-b0cd-110cd4d99284', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-25 22:51:11.330953+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b770c87b-9ef9-49c2-bb06-e30e85b5bcbc', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-26 21:09:29.163153+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c5cb9c84-1742-4e71-983b-c0207ec2177c', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-27 18:48:31.101798+00', ''),
	('00000000-0000-0000-0000-000000000000', '7b74c44d-87a9-451d-a3f5-4b3e12d97efd', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-27 18:48:31.112682+00', ''),
	('00000000-0000-0000-0000-000000000000', '095d9e6e-8a00-4fbc-8f84-6c2dbb908905', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-27 19:20:54.3152+00', ''),
	('00000000-0000-0000-0000-000000000000', '9ef5c278-02c5-4681-8dbe-63df1e4eb9f1', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-27 19:20:54.31886+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f94380f0-3632-4737-84ac-fcdf8ebca39e', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-27 19:20:58.105369+00', ''),
	('00000000-0000-0000-0000-000000000000', '43a0d484-edc2-460b-8fb8-e8a747eb6355', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-27 22:16:46.49206+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd8c5954e-9628-4815-a691-fae58e23ff8e', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-27 22:16:46.497369+00', ''),
	('00000000-0000-0000-0000-000000000000', '23f4a964-18dd-4bf6-a7e3-b94bb3025592', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-28 00:09:30.255012+00', ''),
	('00000000-0000-0000-0000-000000000000', '191f97e2-f019-4dd4-a262-e5f76518b8ad', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-28 00:09:30.259224+00', ''),
	('00000000-0000-0000-0000-000000000000', '30c04b4e-a183-448f-a51c-5b388d739299', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-28 01:48:17.505412+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a7236f59-0fee-4f06-a747-be9606c52373', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-28 01:48:20.431244+00', ''),
	('00000000-0000-0000-0000-000000000000', '51fb7fd7-525f-487a-9102-30f7ee2df21f', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-28 04:42:11.696431+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c515b661-e8d5-4e79-b061-9dc2d9bfb92b', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-28 04:42:22.591294+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c790b725-8093-44ea-aacb-78f57845f3e2', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-28 04:49:33.903306+00', ''),
	('00000000-0000-0000-0000-000000000000', '23a0677f-a39c-465d-b924-73832e0b466d', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-28 04:49:36.860834+00', ''),
	('00000000-0000-0000-0000-000000000000', '4c370eda-1349-4450-93d7-5ef9d6cce35b', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-28 05:10:10.435685+00', ''),
	('00000000-0000-0000-0000-000000000000', '395ce19b-224f-475d-ae12-bb943741dfef', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-28 21:46:21.362409+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ba6f0960-06d4-4b26-9b24-8822db5249bb', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-28 21:46:21.385589+00', ''),
	('00000000-0000-0000-0000-000000000000', '0f366934-0f18-4756-845e-2c168147d696', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-29 02:37:54.643604+00', ''),
	('00000000-0000-0000-0000-000000000000', '4085a05f-ebec-43c1-8b2a-8168b9bd14d7', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-29 02:37:54.645988+00', ''),
	('00000000-0000-0000-0000-000000000000', '5721face-b969-4b7b-9fba-c11e709e27df', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-29 03:36:05.89719+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fc0fccf1-e03e-455b-adfe-e76c91e16825', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-29 03:36:05.898734+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bb5fb399-9e51-4489-aef8-269416e4b56d', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-29 03:36:26.996024+00', ''),
	('00000000-0000-0000-0000-000000000000', '2b995235-cda5-425a-868a-9d1307a61e8f', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-29 03:49:57.858869+00', ''),
	('00000000-0000-0000-0000-000000000000', '561edcb2-4ab0-4c25-9701-b54db24c46a4', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-29 03:49:57.859645+00', ''),
	('00000000-0000-0000-0000-000000000000', '87031ee3-e717-4bab-ade9-02300280785b', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-29 03:50:01.347318+00', ''),
	('00000000-0000-0000-0000-000000000000', '71b501cb-67dd-46db-becd-8fb0ff91e9b7', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-29 03:50:03.58911+00', ''),
	('00000000-0000-0000-0000-000000000000', '58bdc488-8c72-40b4-b895-be58410cf9fd', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-29 04:05:20.841522+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd36b2cd7-6556-4c41-8457-13a9283df3a8', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-29 05:03:35.306738+00', ''),
	('00000000-0000-0000-0000-000000000000', '9dd59c91-c5a1-4a8d-b732-ae4e298fa413', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-29 05:03:35.307574+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd49de1cd-d243-49a6-9636-5a534f9c9b44', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-29 05:07:09.881009+00', ''),
	('00000000-0000-0000-0000-000000000000', '8da36985-333a-4672-b605-a4567ce4d7b6', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-29 21:52:35.885314+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b153519d-d019-4313-a66b-624744178ecc', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-29 21:52:35.905909+00', ''),
	('00000000-0000-0000-0000-000000000000', '072bbe31-2ecd-489f-9a1a-ee8faa39247b', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-29 22:30:45.819967+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd81e4976-0f4f-464d-9a85-15a701bf2dfd', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-30 02:54:48.250471+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c1ecbba5-0f6c-47f1-801b-573de4031f71', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-30 02:54:48.256485+00', ''),
	('00000000-0000-0000-0000-000000000000', '91a4eb4f-2f90-4253-895b-f42f2841da9e', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-30 02:54:50.696434+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd6536bea-fba7-4d7e-8f59-1ad0649ace07', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-30 23:03:38.651989+00', ''),
	('00000000-0000-0000-0000-000000000000', '12c579f9-b69a-4988-99ff-336f28b45cb6', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-30 23:03:38.662513+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cecd7629-d877-4bde-8d7d-6039d6d19bf6', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-30 23:03:42.566073+00', ''),
	('00000000-0000-0000-0000-000000000000', '3c3baf39-8882-44c5-97c7-94a7013bee21', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-30 23:03:44.308677+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd479fce2-858c-47fd-9948-ee2054159350', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-31 04:07:08.306952+00', ''),
	('00000000-0000-0000-0000-000000000000', '51be14af-2101-4352-a6d5-bb4414b61a3e', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-31 04:07:08.313031+00', ''),
	('00000000-0000-0000-0000-000000000000', '857e336f-dd6f-46ef-8179-b8dcab3c7107', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-31 04:07:18.799897+00', ''),
	('00000000-0000-0000-0000-000000000000', '480fe141-acd9-45a3-ad60-29c523c6c46b', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-31 04:07:20.80529+00', ''),
	('00000000-0000-0000-0000-000000000000', '6c0935c1-ad9f-40df-82ee-0609dac1fad0', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-31 17:18:01.320295+00', ''),
	('00000000-0000-0000-0000-000000000000', '57ad5f57-9654-48d9-b48e-2352cdccd382', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-31 17:18:01.334441+00', ''),
	('00000000-0000-0000-0000-000000000000', '07514c10-1e9e-4b83-9e59-9f875421849e', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-31 17:18:05.374567+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ec382267-5236-47a9-bc85-a8e285327183', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-31 17:18:06.744408+00', ''),
	('00000000-0000-0000-0000-000000000000', '1810a962-889b-40ba-9fbe-ba996c216ebf', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-31 20:06:13.719239+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c383f119-96d7-41b6-a173-1e349fd1b8e4', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-31 20:06:13.726027+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b5627965-a8af-4437-b860-c64c709b9b45', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-31 23:13:27.975177+00', ''),
	('00000000-0000-0000-0000-000000000000', '4a070f3c-8957-43db-ac09-51d43636141f', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-31 23:13:27.977229+00', ''),
	('00000000-0000-0000-0000-000000000000', '8438fd40-06e3-438c-a5fd-93bf353d4c54', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-01 04:22:21.391405+00', ''),
	('00000000-0000-0000-0000-000000000000', '7cb3a873-3624-487b-9d2a-6fb7f39f3dde', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-06-01 04:22:23.770323+00', ''),
	('00000000-0000-0000-0000-000000000000', '8d5be3df-14e2-4a4c-8815-ae35d2efb75c', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-02 19:59:47.133524+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e81e78a9-465c-4891-a1d1-39eade88a25e', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-02 19:59:47.145594+00', ''),
	('00000000-0000-0000-0000-000000000000', '77f5a586-72af-4898-9f1f-53ca5b0328e5', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-06-02 19:59:50.313036+00', ''),
	('00000000-0000-0000-0000-000000000000', '8bdb5206-2033-4efb-bd95-4a642e437d75', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-06-02 19:59:51.905664+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a99d863d-61eb-4873-8254-5c8e45abeaa4', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-06-02 20:00:08.778775+00', ''),
	('00000000-0000-0000-0000-000000000000', 'df8c858b-fc07-4288-b3cb-cbb4d5e06db8', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-03 03:10:17.213714+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ef5f224d-79d5-41ef-8bfc-d7dcfd79f17b', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-03 03:10:17.221744+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd6c936e2-5f48-41dc-a0cc-c65384d25b15', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-06-03 03:11:03.081837+00', ''),
	('00000000-0000-0000-0000-000000000000', '4ca66584-b612-4b6d-8343-67b39bda1e79', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-06-09 17:27:09.82972+00', ''),
	('00000000-0000-0000-0000-000000000000', '5b0ef6fe-126e-4640-9296-9600327a1f2d', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-09 18:19:38.268723+00', ''),
	('00000000-0000-0000-0000-000000000000', '4442904e-7f4b-4233-a067-936fb03fd784', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-09 18:19:38.270855+00', ''),
	('00000000-0000-0000-0000-000000000000', '158a2504-31b3-47e9-967f-6bd8ee387475', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-06-09 18:19:41.558572+00', ''),
	('00000000-0000-0000-0000-000000000000', '8c985776-ccb8-4789-8f04-19b240b9bd1b', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-09 19:18:08.875488+00', ''),
	('00000000-0000-0000-0000-000000000000', '6ad8405a-5821-4594-8e24-3d1869601147', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-09 19:18:08.877952+00', ''),
	('00000000-0000-0000-0000-000000000000', '576bc6fe-b08c-4065-b609-ff37fc831cba', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-09 20:16:08.96947+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f879ff31-25f5-4d00-8240-27bdfa235667', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-09 20:16:08.971024+00', ''),
	('00000000-0000-0000-0000-000000000000', '2569ab32-e8ef-4b7d-9834-e3856830dd22', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-06-09 20:49:30.406112+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ac493881-8b5e-40ce-af6e-3b60ce84ccb5', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-10 16:57:39.086638+00', ''),
	('00000000-0000-0000-0000-000000000000', '80f1da11-5b97-4a7d-82b2-be586ddcf322', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-10 16:57:39.107848+00', ''),
	('00000000-0000-0000-0000-000000000000', '81591fcb-2818-44a7-8c5d-de37e25471ec', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-06-10 16:57:42.967838+00', ''),
	('00000000-0000-0000-0000-000000000000', '27efea77-9dda-4e3b-a2ee-9a2473807f88', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-10 17:56:09.749236+00', ''),
	('00000000-0000-0000-0000-000000000000', '38bb2eb7-73e3-440b-b4b0-c98ad5715870', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-10 17:56:09.752073+00', ''),
	('00000000-0000-0000-0000-000000000000', '57fad13f-d917-4a41-9fb0-6e28680c10a0', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-10 18:54:09.922685+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd1d6f6b9-f30a-41bf-907a-0768ca6c3b52', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-10 18:54:09.923576+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aed18076-0308-4148-a658-6ea2100205fe', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-10 19:52:09.96941+00', ''),
	('00000000-0000-0000-0000-000000000000', '974a0aaa-d0fb-4d9a-b04e-51dd3d065ffa', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-10 19:52:09.97097+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bceabcd1-3282-4320-8937-c0f8ddf16ce5', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-10 20:50:10.064355+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b4006f79-f246-43e1-a076-3a561678ab66', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-10 20:50:10.065182+00', ''),
	('00000000-0000-0000-0000-000000000000', '15e03081-fd52-45c9-a2a0-03bef78f310c', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-10 21:48:29.252237+00', ''),
	('00000000-0000-0000-0000-000000000000', 'abc99cbe-0832-4db5-b0fe-384054d7a609', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-10 21:48:29.254211+00', ''),
	('00000000-0000-0000-0000-000000000000', '41aeb84b-1cff-42b5-a66e-d1ae0a2c7daf', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-14 23:06:18.488238+00', ''),
	('00000000-0000-0000-0000-000000000000', '9a074eb0-9662-4e91-b0b3-526ac5e4b97d', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-14 23:06:18.504188+00', ''),
	('00000000-0000-0000-0000-000000000000', '80f9f38e-f6e2-465c-8ea7-f47caf008cac', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-06-14 23:06:21.916263+00', ''),
	('00000000-0000-0000-0000-000000000000', '6a84a791-c0ac-4b9d-a80b-2db270ac717a', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-06-14 23:06:23.932685+00', ''),
	('00000000-0000-0000-0000-000000000000', '9a92002b-f39b-4ef7-a4f0-32262306409a', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-16 22:28:18.726518+00', ''),
	('00000000-0000-0000-0000-000000000000', '81c2f2cc-749a-4992-8cb1-8daf0b33a8bf', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-16 22:28:18.754273+00', ''),
	('00000000-0000-0000-0000-000000000000', '03b9527c-e19c-4c5a-898c-3a16ac0e6306', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-06-16 22:28:21.65896+00', ''),
	('00000000-0000-0000-0000-000000000000', '27d8bce4-b235-4f20-91ae-2939bb1491ca', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-16 23:26:47.697326+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd7fbda4f-6d71-4d72-9d8a-b3de0711291e', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-16 23:26:47.704483+00', ''),
	('00000000-0000-0000-0000-000000000000', '1db8a049-0947-499d-91fa-ea7a366458fb', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-06-17 00:02:10.777371+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bcd6e2cf-56f4-4f76-8b40-11f10b29c5dc', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-20 03:38:37.438351+00', ''),
	('00000000-0000-0000-0000-000000000000', '7a4fbca4-e6a6-4e00-a544-42b3618186b3', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-20 03:38:37.452985+00', ''),
	('00000000-0000-0000-0000-000000000000', '6eb33797-b0d1-4038-83ff-4e6a9ff54f4e', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-06-20 03:38:42.087363+00', ''),
	('00000000-0000-0000-0000-000000000000', '699003f2-d6c2-4e7c-831c-10640a1045b9', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-06-20 03:38:43.851041+00', ''),
	('00000000-0000-0000-0000-000000000000', '401006c0-cd91-4e9d-82fc-c3523f432a7a', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-06-30 05:13:20.730194+00', ''),
	('00000000-0000-0000-0000-000000000000', '913f4990-16b9-4b99-a538-1851daf30d96', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-30 22:54:25.248903+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e5ab0bb1-e776-403b-8a93-4097dfab427f', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-30 22:54:25.257239+00', ''),
	('00000000-0000-0000-0000-000000000000', '40ce78c9-28cd-4c68-8a9b-d7464a7ce049', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-06-30 22:54:28.486769+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bfca2731-9d58-4815-b05c-595415c0ce11', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-30 23:54:29.112475+00', ''),
	('00000000-0000-0000-0000-000000000000', '66eac28c-6bb5-4e2a-851c-0b78f2db68e5', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-30 23:54:29.113311+00', ''),
	('00000000-0000-0000-0000-000000000000', '241a00e4-b5a2-4079-bbd6-0b701b10c2fb', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-06-30 23:57:34.115841+00', ''),
	('00000000-0000-0000-0000-000000000000', '7c671ad3-09eb-4fbd-a9b4-552671100f4c', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-04 23:20:15.522122+00', ''),
	('00000000-0000-0000-0000-000000000000', '53412e29-e8e0-4f4d-b5f4-438b0de832ca', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-04 23:20:15.529113+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a741e8a0-7db5-4a8c-9c31-d24dadb1cfc3', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-04 23:20:19.116321+00', ''),
	('00000000-0000-0000-0000-000000000000', '9c154318-5df2-48eb-8a63-ff62d36cf7e8', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-04 23:20:21.458925+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c0ca42f5-05d4-4044-a02f-62c05692d0db', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-05 01:22:42.438099+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd4f1413d-a204-4f5e-8bd9-30b3061071bf', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-05 01:22:42.439678+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e12a48db-09d1-4a59-819f-97431df6a22f', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-06 00:03:46.285115+00', ''),
	('00000000-0000-0000-0000-000000000000', '080e8b1b-f61b-42b1-ace0-8aad7ab7e1a7', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-06 00:03:46.300175+00', ''),
	('00000000-0000-0000-0000-000000000000', '98ea07a2-74dd-4bc3-b1fe-ca3438f842b2', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-06 14:59:42.051736+00', ''),
	('00000000-0000-0000-0000-000000000000', '12811f8e-64ad-4e51-be58-671e7a91b8c1', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-06 14:59:42.060202+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c1aa855d-ce6a-4db7-86ff-413af6aad52f', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-06 16:02:04.582215+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aef52385-70c0-4677-8df3-3ad55c9e4600', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-06 16:02:04.584785+00', ''),
	('00000000-0000-0000-0000-000000000000', '049260c1-128e-4bc2-b048-7e1fa90cee15', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-06 19:55:45.711096+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e5881d49-84e2-4d75-a750-8d709cd14210', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-06 19:55:45.713326+00', ''),
	('00000000-0000-0000-0000-000000000000', '699aae71-11b8-4a5c-9788-fc2fe955baf8', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-06 20:56:31.477914+00', ''),
	('00000000-0000-0000-0000-000000000000', '34ae5a0a-8fc0-45e5-b125-4e72748fbde1', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-06 20:56:31.479526+00', ''),
	('00000000-0000-0000-0000-000000000000', '23b3f7c9-b28a-4345-9247-a79ff5fa9eb2', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-08 01:33:00.977838+00', ''),
	('00000000-0000-0000-0000-000000000000', '2e0a86ba-7f18-48a2-bd87-7ee9996054cf', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-08 01:33:00.98759+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ce5e5b19-861f-44d6-b136-2f418c25ae44', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-08 02:44:06.583183+00', ''),
	('00000000-0000-0000-0000-000000000000', '709fb38e-1a11-435c-be9a-617c7e44e1d0', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-08 02:44:06.585779+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd71b7329-3f39-428e-a683-9a86c9494c0e', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-09 00:40:19.654057+00', ''),
	('00000000-0000-0000-0000-000000000000', '3048e699-507d-46f0-973c-2560262268bf', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-09 00:40:19.659334+00', ''),
	('00000000-0000-0000-0000-000000000000', 'de340519-dde1-43c2-9d34-9cd0a461d862', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-09 15:28:58.967692+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a7f78592-c9e1-4e91-959f-2c2d14c17a17', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-09 15:28:58.979479+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b8ee6622-b28b-407c-8325-1b2feb392d6d', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-09 15:30:24.808267+00', ''),
	('00000000-0000-0000-0000-000000000000', '198ee7a7-32e1-4cbe-b7f5-d842b9cdccb9', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-09 22:21:23.432922+00', ''),
	('00000000-0000-0000-0000-000000000000', '825bdf51-1314-4600-b6b5-ddb31e82561a', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-09 22:21:23.439312+00', ''),
	('00000000-0000-0000-0000-000000000000', '0e9e2feb-8ccc-4587-a0c0-c3f971c57551', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-09 22:52:41.746208+00', ''),
	('00000000-0000-0000-0000-000000000000', '083ae3a4-df41-41bb-9b17-a92eaad602e6', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-09 22:52:44.932044+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fde47e3f-6f1e-47bc-b4b9-143c5e94514d', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-10 06:10:30.959068+00', ''),
	('00000000-0000-0000-0000-000000000000', '19ce04e8-db81-4d7d-b616-0b2a477f2a53', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-10 06:10:30.962446+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ecb2279c-e427-4ca9-8bb8-9f75b20df7af', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-10 14:16:29.761146+00', ''),
	('00000000-0000-0000-0000-000000000000', '3cafb640-a729-4019-acc5-83afc5709535', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-10 14:16:29.765757+00', ''),
	('00000000-0000-0000-0000-000000000000', '7d91c2e0-9654-4631-8328-20518008f474', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-10 14:26:32.913978+00', ''),
	('00000000-0000-0000-0000-000000000000', '82265ed7-359c-41c7-a7de-777a53bff367', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-10 14:26:32.918314+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f555d832-505b-4348-b146-03c21f6398a3', '{"action":"logout","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-10 14:45:32.71928+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e1726606-4111-424c-9c37-851d09ab7c15', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-10 14:45:36.380314+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a1b89035-177e-46cc-965c-c363bf6742b8', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-10 15:45:32.315245+00', ''),
	('00000000-0000-0000-0000-000000000000', '10fb2376-8119-4344-8926-436c84f3b32a', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-10 15:45:32.321231+00', ''),
	('00000000-0000-0000-0000-000000000000', '941be8ac-d9da-42d2-8551-375e7e7f1cc8', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-10 16:44:02.506198+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c8d72fa3-b638-4de9-b15c-6c3c73882f37', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-10 16:44:02.510532+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c7cf507c-09d2-4205-9d2e-d8a62224fa3e', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-10 17:42:32.475747+00', ''),
	('00000000-0000-0000-0000-000000000000', '8494b609-9964-4382-8172-4d1a6b3b39d4', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-10 17:42:32.480023+00', ''),
	('00000000-0000-0000-0000-000000000000', '21d76c9a-e1ce-45ff-b916-2f85eac26725', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-10 18:41:02.49424+00', ''),
	('00000000-0000-0000-0000-000000000000', '4bfc5b34-9b1e-4354-9afa-2d82824c323c', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-10 18:41:02.495119+00', ''),
	('00000000-0000-0000-0000-000000000000', 'adbb3359-58fe-4a17-b69d-37d41d506a44', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-10 19:39:32.569118+00', ''),
	('00000000-0000-0000-0000-000000000000', '947b5096-31cf-4e9d-8306-15f7410e5e3f', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-10 19:39:32.577296+00', ''),
	('00000000-0000-0000-0000-000000000000', '88ef5575-8906-4584-91fd-58f426080c05', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-10 20:38:02.645847+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e89132bd-97bb-4662-90ec-ce23415014a3', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-10 20:38:02.647537+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c93f4b6e-e2b7-49e6-ac3d-d7c490081728', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-10 21:36:32.725549+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dbb2fcd4-7a01-4d8c-827f-3e0807bc8e6f', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-10 21:36:32.728611+00', ''),
	('00000000-0000-0000-0000-000000000000', '71186e67-8ed2-4441-a697-51e0584987a1', '{"action":"logout","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-10 22:30:54.900578+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ca269b97-59ed-4967-8f48-96bc94646d47', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-10 22:30:58.417359+00', ''),
	('00000000-0000-0000-0000-000000000000', '279c853f-e0db-427d-81a2-598ad8fcbc75', '{"action":"logout","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-10 22:49:19.220221+00', ''),
	('00000000-0000-0000-0000-000000000000', '44923600-ee7c-4829-9652-53822e054cdf', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-10 22:49:22.857153+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bc004122-f82e-4d4a-a65b-93180f33bd18', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-10 23:49:05.654872+00', ''),
	('00000000-0000-0000-0000-000000000000', '74ab0c55-9180-470c-a38b-81cab5453879', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-10 23:49:05.65692+00', ''),
	('00000000-0000-0000-0000-000000000000', '59344367-cec5-4499-b053-9e77c6405e48', '{"action":"logout","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-10 23:49:10.024599+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd7accf88-3d1a-48ae-82b4-5fbcc3fe031c', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-10 23:49:12.53059+00', ''),
	('00000000-0000-0000-0000-000000000000', '9bafa2ce-b69a-4a8f-8827-9c41d103e625', '{"action":"logout","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-10 23:55:34.030902+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ecc94243-d251-4580-a7a9-e7229b3ee4d1', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-11 04:37:15.513911+00', ''),
	('00000000-0000-0000-0000-000000000000', '4d3d6f29-d858-4b37-a89c-02a182dbf633', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-11 04:37:15.523154+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fcaf9c3a-6245-4511-ad36-7b82c4d31f58', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-11 05:25:27.94721+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ae2428b3-781a-44b0-be5d-ca7b9010c7a1', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-11 05:25:29.574551+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd3918e79-1868-489e-be5e-aa47e7abe0c6', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-11 15:29:31.813937+00', ''),
	('00000000-0000-0000-0000-000000000000', '7ede90a5-f74d-42e3-8150-ba71bcbca7bc', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-11 15:29:31.828032+00', ''),
	('00000000-0000-0000-0000-000000000000', '132f2c49-bbe5-48c1-bc78-fdf5f9b28ab9', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-12 01:18:58.130222+00', ''),
	('00000000-0000-0000-0000-000000000000', '6db03960-88b7-4897-93de-dee10b00d03a', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-12 01:18:58.134874+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd3fc8682-481e-4d3c-8577-40d1e4940edd', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-12 01:56:22.36447+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f53e5e1c-2da1-4488-893c-4b5f87c3923b', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-12 01:56:24.500443+00', ''),
	('00000000-0000-0000-0000-000000000000', '342c7e1b-ee80-42b2-958e-cb5905207ff2', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-12 06:20:29.866435+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a3d85973-278e-4b63-aa42-83dbd11052f6', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-12 06:20:29.873105+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e2afbbb1-6905-4c5c-b2cb-0486ef06ede9', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-12 06:20:32.011079+00', ''),
	('00000000-0000-0000-0000-000000000000', '1419909e-66f1-484c-ba6b-e9a85783ff5d', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-12 14:09:18.381439+00', ''),
	('00000000-0000-0000-0000-000000000000', '92fe6636-0e8f-4791-b875-b415b8b0f861', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-12 14:09:18.390391+00', ''),
	('00000000-0000-0000-0000-000000000000', '2c397ed1-9204-4204-8e51-b0646405b507', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-14 03:30:54.801901+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ff20ddb3-4de3-4571-ae4b-821db0cd7ffb', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-14 03:30:54.805588+00', ''),
	('00000000-0000-0000-0000-000000000000', '8ecf1ddb-dfd2-48a5-8fff-524d9cb8c7b7', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-14 19:50:20.694136+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dc855d68-41a3-426b-b15f-68c1ade2a0cf', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-14 19:50:20.696393+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f3155f36-c74e-4747-8187-bfe25466ca2f', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-17 17:51:05.412425+00', ''),
	('00000000-0000-0000-0000-000000000000', '8c5373dc-aa99-40b3-b626-b2c9caba44a5', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-17 17:51:05.427981+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd9acc940-4321-4207-a096-4dcb69b7f09c', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-17 17:51:09.91948+00', ''),
	('00000000-0000-0000-0000-000000000000', '14337b81-fcba-4633-b26f-281c810eee78', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-17 17:51:11.776756+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f9bdb60e-2acf-43f3-aace-4721a90897e8', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-17 23:34:04.899168+00', ''),
	('00000000-0000-0000-0000-000000000000', '36c6a2e3-4dd6-49cb-9c5f-5834a947acc6', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-17 23:34:04.901877+00', ''),
	('00000000-0000-0000-0000-000000000000', '43ba35a4-be58-4fbe-b35a-1d7540127265', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-19 00:34:21.604365+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fc60c282-ec88-47ce-9e9e-62554dd87531', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-19 00:34:21.614002+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a7cda9dd-6a06-4248-b3ca-6bd34620b2f2', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-19 00:40:28.836388+00', ''),
	('00000000-0000-0000-0000-000000000000', '3d96c22e-43ad-495d-904d-7708cd491beb', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-19 00:40:30.693441+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd5a08618-2c63-49a6-b64e-cf38fcf5bb4e', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-19 15:46:04.924788+00', ''),
	('00000000-0000-0000-0000-000000000000', '79d6a875-3535-4d1f-8d7a-70132dca5a17', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-19 15:46:04.929886+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ce28abdd-818f-46ae-b6a9-0175132a30a3', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-19 18:47:58.059344+00', ''),
	('00000000-0000-0000-0000-000000000000', '7ad7b6e7-eb3e-4e9c-b1b1-a5902009a6bb', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-19 18:47:58.06617+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c019ab20-8099-4ca5-9803-db53abc8b337', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-19 21:53:07.167729+00', ''),
	('00000000-0000-0000-0000-000000000000', '2cd6b516-ef79-4289-bacd-5e0f6b13b477', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-19 21:53:07.170335+00', ''),
	('00000000-0000-0000-0000-000000000000', '0eba1502-5460-4ff8-8623-126ef4cf8632', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-20 04:58:41.833811+00', ''),
	('00000000-0000-0000-0000-000000000000', '86217f52-f81d-43e1-81b3-7dcf38a01b66', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-20 04:58:41.836619+00', ''),
	('00000000-0000-0000-0000-000000000000', '64ea27d3-e9d3-4197-b728-f266f139ce7d', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-20 05:43:53.202313+00', ''),
	('00000000-0000-0000-0000-000000000000', '3bdff549-a607-43af-8a97-2cbfacb050c3', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-20 05:43:54.849101+00', ''),
	('00000000-0000-0000-0000-000000000000', '44a99d73-5a27-40ae-9266-5f94d537cc5d', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-20 06:00:32.424672+00', ''),
	('00000000-0000-0000-0000-000000000000', '8caba860-2e5c-4f96-8e69-e13a7b4f9cb1', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-20 06:00:44.852022+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dd22936f-bf07-4c7b-bec5-8e85c7b89c8a', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-20 16:26:14.648039+00', ''),
	('00000000-0000-0000-0000-000000000000', '2d3340cd-f213-4b60-af7d-8f3c0a600803', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-20 16:26:14.654155+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c0038a5b-56cb-43f6-9054-5946edc70522', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-20 19:09:45.098546+00', ''),
	('00000000-0000-0000-0000-000000000000', '0957d051-8395-458e-8a0c-2322da3e2f1a', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-20 19:09:45.100098+00', ''),
	('00000000-0000-0000-0000-000000000000', '3f70946b-e312-4447-ba3a-0015835ce61d', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-20 19:10:01.613546+00', ''),
	('00000000-0000-0000-0000-000000000000', '97196ba0-0ae7-4a24-b1f7-16e452afcbc1', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-20 19:10:03.40527+00', ''),
	('00000000-0000-0000-0000-000000000000', '09759238-19af-4cb7-9d77-cdeb5a8553a2', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-20 19:58:28.39048+00', ''),
	('00000000-0000-0000-0000-000000000000', '1a1e97f1-e0cd-4556-89da-a60e3ac6fc16', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-20 19:59:04.340151+00', ''),
	('00000000-0000-0000-0000-000000000000', '1365fa9c-37f7-413c-81b1-23672a2c75bc', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-21 16:54:43.897821+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd8674cdb-da8a-4d19-8609-5f394c582084', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-21 16:54:43.90902+00', ''),
	('00000000-0000-0000-0000-000000000000', '68a046a3-55a3-4f99-971d-bc320d9673ed', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-22 00:13:43.603825+00', ''),
	('00000000-0000-0000-0000-000000000000', '02ff9496-f7c1-4090-ba53-d68cbbf7a634', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-22 00:13:43.60653+00', ''),
	('00000000-0000-0000-0000-000000000000', '9dfc2dfd-7c28-4166-a65c-7aabd35da82f', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-13 00:45:37.529354+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f5819381-27f9-475c-ac35-7c4300d545c5', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-13 00:45:37.537009+00', ''),
	('00000000-0000-0000-0000-000000000000', '39fad8a6-c2c2-4d79-9e08-66cee28930cf', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-13 00:45:42.365248+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c640b085-8ce8-4b7b-9045-6106da803136', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-08-13 00:45:43.744958+00', ''),
	('00000000-0000-0000-0000-000000000000', '1ccd9935-cf1b-42ec-947d-609a27f444cf', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-08-13 22:10:24.552003+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ed5c4fa7-1a0c-45f0-acf2-191a1db19c98', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-13 23:23:08.872179+00', ''),
	('00000000-0000-0000-0000-000000000000', '6bfa430a-1743-48df-90d3-c6ab02dc32be', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-13 23:23:08.875018+00', ''),
	('00000000-0000-0000-0000-000000000000', '1d568cdb-d6d6-4693-b0e5-0f8670c0f1c3', '{"action":"logout","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-13 23:24:34.191395+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd2718d52-1c9f-4baa-8561-efb55f339377', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-08-13 23:24:38.622253+00', ''),
	('00000000-0000-0000-0000-000000000000', '25ffe989-5ad8-402d-b317-c1f3b70e5002', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-13 23:27:42.268968+00', ''),
	('00000000-0000-0000-0000-000000000000', '5ac63868-635e-4e0b-86aa-94cb09b2ff80', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-13 23:27:42.269785+00', ''),
	('00000000-0000-0000-0000-000000000000', '1615e71e-83b5-4c73-8996-88124bc55f47', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-13 23:27:50.195705+00', ''),
	('00000000-0000-0000-0000-000000000000', '714b5277-0c37-4199-88c9-e404b554e8cb', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-08-13 23:27:51.769752+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b262fa7a-a53b-499b-b9dd-2e1899f11005', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-15 18:54:09.024686+00', ''),
	('00000000-0000-0000-0000-000000000000', '372bac24-3eaa-4947-971d-146a225741f1', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-15 18:54:09.035203+00', ''),
	('00000000-0000-0000-0000-000000000000', 'edddd817-ce3e-496e-bb8c-170b35215e92', '{"action":"logout","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-15 18:54:26.466835+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dfa6fa15-5c23-4def-bb3d-1c9f4ee22add', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-08-15 18:54:30.076203+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dc86a1d7-c4a5-4f3f-aa3f-62920433906c', '{"action":"logout","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-15 18:58:53.028841+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c4ac0c7a-8cfb-432c-a708-9bc7c3568a80', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-08-15 18:58:55.902316+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ae5cdedf-a772-474b-bcfb-1eb04c700e24', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-15 20:41:13.020332+00', ''),
	('00000000-0000-0000-0000-000000000000', '7ff0c3c5-2430-414a-b421-302f7b4f15a1', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-15 20:41:13.02235+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a721b1c6-435f-4219-aac4-c7e79ddb785f', '{"action":"logout","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-15 21:21:54.560039+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f49c0678-deae-492e-89c5-2c4043246c27', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-08-15 21:21:56.513998+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a4505118-e74e-4021-ad6e-d81419c0526e', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-15 22:28:55.609457+00', ''),
	('00000000-0000-0000-0000-000000000000', '317a6b23-0436-497e-9af4-7dafd8598dff', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-15 22:28:55.611543+00', ''),
	('00000000-0000-0000-0000-000000000000', '4585b9a0-e256-4de6-a193-d8e6fc233a27', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-19 23:21:05.117381+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f500fc93-437c-4330-b550-c9bdf30ea584', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-19 23:21:05.126882+00', ''),
	('00000000-0000-0000-0000-000000000000', '1d6990ec-d7c6-4522-8d91-1cbc7214012f', '{"action":"logout","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-19 23:21:11.482878+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cf6c45e2-78c7-4962-9a64-8584e6e3625a', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-08-19 23:21:16.930192+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd1556d58-e269-4226-83d7-bb4b86ffb6da', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-25 18:15:14.518899+00', ''),
	('00000000-0000-0000-0000-000000000000', '103d64cb-a519-4dab-b121-3b3daeb88af1', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-25 18:15:14.532627+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b4e0175a-9ad4-4f96-a2d4-b25b6e27ab33', '{"action":"logout","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-25 18:15:18.742427+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a1cb696f-9063-4a79-83bf-7c0349ae5630', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-08-25 18:15:22.168633+00', ''),
	('00000000-0000-0000-0000-000000000000', '2373d494-c416-4e07-b8fd-9fd1c3f8b33a', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-25 19:13:45.097792+00', ''),
	('00000000-0000-0000-0000-000000000000', '87595e2c-49ef-442d-878a-a25c6a67e893', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-25 19:13:45.100255+00', ''),
	('00000000-0000-0000-0000-000000000000', '7e5abbe3-7e7e-4675-be45-f6488095d032', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-25 20:12:15.22999+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fb11be45-d081-4f75-ae1e-012734bd2498', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-25 20:12:15.233501+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f5a2c297-14b6-41f6-ab3a-dab845641b0c', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-25 21:10:45.255947+00', ''),
	('00000000-0000-0000-0000-000000000000', 'def75424-1d8e-47ff-b7e0-32861015d649', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-25 21:10:45.257874+00', ''),
	('00000000-0000-0000-0000-000000000000', '3c50ae83-7fdd-4859-95f7-f90f1736b41d', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-25 22:09:15.384479+00', ''),
	('00000000-0000-0000-0000-000000000000', '84865911-c870-4785-b6fb-ced0f14eacc4', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-25 22:09:15.387182+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ef56a70b-0f64-4c4a-b195-87a9c3c10350', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-25 23:07:45.374019+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd3e1d6e8-78c5-4918-8776-84883ddc6d59', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-25 23:07:45.375473+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd330156f-9baf-4afc-8e7d-8fddbe1cffcf', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-26 00:13:43.164399+00', ''),
	('00000000-0000-0000-0000-000000000000', '9ffa5225-5679-4f09-9f47-f18dea294765', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-26 00:13:43.165954+00', ''),
	('00000000-0000-0000-0000-000000000000', '616648c2-5a60-4cae-9c8d-91fbdaf73101', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-28 02:56:33.47233+00', ''),
	('00000000-0000-0000-0000-000000000000', '06798bf6-52c6-4aee-b9c5-576a8e4b533d', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-28 02:56:33.484008+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a14b30e0-2efe-4c08-9c0d-bf22fdf1470c', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-28 02:56:37.033794+00', ''),
	('00000000-0000-0000-0000-000000000000', '4b4a3326-d56a-4168-baa4-42ecb446b772', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-08-28 02:56:39.171288+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e42b661a-5de3-4c07-be64-f8cd9a0e61e9', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-28 04:21:36.578919+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd53beabd-e1bd-4b0b-9375-29a5bee769af', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-28 04:21:36.5805+00', ''),
	('00000000-0000-0000-0000-000000000000', '1af04fbe-0c51-4dc1-8e86-3ce834a25611', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-28 05:35:14.073523+00', ''),
	('00000000-0000-0000-0000-000000000000', '66f61724-096c-4b7f-918c-a691a59166eb', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-28 05:35:14.075794+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a5929281-56cd-4304-95d9-a64426b3022d', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-28 05:48:18.36613+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c2a8eaa4-afc6-424f-bd38-6f3b13ce59c3', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-08-28 05:48:20.022813+00', ''),
	('00000000-0000-0000-0000-000000000000', '40dfd8f9-6e8a-4374-8faa-683bbc4f66b2', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-28 23:33:00.632214+00', ''),
	('00000000-0000-0000-0000-000000000000', '170629e1-f2cf-4f96-b91f-9a0e23a00c5f', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-28 23:33:00.638188+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f372b177-f171-42d8-8f88-b1c8f65fc3c1', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-29 15:36:11.347862+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fa21b677-1d00-4b63-a27d-45abae94d357', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-29 15:36:11.351788+00', ''),
	('00000000-0000-0000-0000-000000000000', '38dac7ab-4025-4c01-ada0-1653760f8508', '{"action":"logout","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-29 15:36:18.0243+00', ''),
	('00000000-0000-0000-0000-000000000000', '85ca2e7d-f675-467d-b8c8-5e8aa41fd17d', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-08-29 15:36:48.154871+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ffad30b2-1255-4128-a428-b6b1aa56c700', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-29 18:31:55.927935+00', ''),
	('00000000-0000-0000-0000-000000000000', '9a94ab4a-028a-4b2d-b84e-96ef4295e9a9', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-29 18:31:55.931309+00', ''),
	('00000000-0000-0000-0000-000000000000', '35f0130b-4f75-4e2d-8d93-58f3a9faba72', '{"action":"logout","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-29 18:32:13.769167+00', ''),
	('00000000-0000-0000-0000-000000000000', '08c682a0-5d1f-4e45-b969-d0f9d400df8e', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-08-29 18:32:16.500263+00', ''),
	('00000000-0000-0000-0000-000000000000', '2f5d2747-b7d9-4f13-baff-83a058b5775c', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-29 22:11:02.725917+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cea8802d-0edf-48d1-a06d-61c123e8ef2e', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-29 22:11:02.727998+00', ''),
	('00000000-0000-0000-0000-000000000000', '7b49f3cd-f152-482f-83d1-753ea51f6e72', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-29 22:11:06.757745+00', ''),
	('00000000-0000-0000-0000-000000000000', '76aecc1d-15ce-40ca-b4a9-d27da5ba9772', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-08-29 22:11:08.635015+00', ''),
	('00000000-0000-0000-0000-000000000000', '4b9348e9-fae1-426d-813c-85e292bdb9b5', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-29 23:09:58.415779+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b5c1d5f8-a3bb-4508-b9c6-7424a984e7bb', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-29 23:09:58.417342+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a84edc3d-3bce-4d87-9819-592b75e4723f', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-29 23:50:42.695982+00', ''),
	('00000000-0000-0000-0000-000000000000', '1799e3fc-1b59-4ac8-af11-178b475dfbe0', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-08-29 23:50:44.391392+00', ''),
	('00000000-0000-0000-0000-000000000000', '624d70e5-9bb6-4a36-b6d5-ff833e643920', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-30 00:50:45.267699+00', ''),
	('00000000-0000-0000-0000-000000000000', '471d7974-9c39-4728-a82a-fab039f0c9a8', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-30 00:50:45.272602+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a3481f60-5aa2-4a77-b21d-54285d75474e', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-30 01:15:59.420469+00', ''),
	('00000000-0000-0000-0000-000000000000', '31ea7f67-cb13-4765-a948-56e02b59f63a', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-08-30 01:16:01.377965+00', ''),
	('00000000-0000-0000-0000-000000000000', '4e217219-0d5d-4a91-87f1-6fd1fc2cafd0', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-30 02:34:09.779299+00', ''),
	('00000000-0000-0000-0000-000000000000', '4a63627f-33bd-4979-b281-9d37c2fb800f', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-30 02:34:09.781438+00', ''),
	('00000000-0000-0000-0000-000000000000', '4875f001-512b-46ad-ba02-5c39d20db9bc', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-30 02:49:27.468151+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e184f3e4-2e89-4c24-aded-7f5727c638b9', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-08-30 02:49:29.04081+00', ''),
	('00000000-0000-0000-0000-000000000000', '7511c2a9-47ce-4e6a-8f2f-fdae688481fc', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-30 06:36:52.883534+00', ''),
	('00000000-0000-0000-0000-000000000000', '5aa36ead-00cf-4546-94ff-58500ce7321b', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-08-30 06:36:52.892047+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a21fbaf8-e41f-4b23-9a10-000c9d272616', '{"action":"logout","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-08-30 06:36:58.528358+00', ''),
	('00000000-0000-0000-0000-000000000000', '33403754-1932-4137-a5d5-1078cbfbc266', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-08-30 06:36:59.902799+00', ''),
	('00000000-0000-0000-0000-000000000000', '15e858bf-c2c6-4981-861e-57c49845192c', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-09-02 01:59:29.375723+00', ''),
	('00000000-0000-0000-0000-000000000000', '31059228-ccc5-49c9-b27b-6a86985ba1b8', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-09-02 02:07:06.413033+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b002f10f-0d42-4be1-9891-84f75297c2d7', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-02 04:18:09.55934+00', ''),
	('00000000-0000-0000-0000-000000000000', '0037c6cf-9e07-4d89-b5ab-a5cebdf269fa', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-02 04:18:09.562441+00', ''),
	('00000000-0000-0000-0000-000000000000', '2700a030-269e-4ca9-b709-b78f869005df', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-09-02 04:18:20.981125+00', ''),
	('00000000-0000-0000-0000-000000000000', '6f73a0a3-8e3d-46c2-9c98-e658e62aae41', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-02 15:26:23.386846+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ff80f193-e88f-475d-ac92-2a0505646f27', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-02 15:26:23.395547+00', ''),
	('00000000-0000-0000-0000-000000000000', '9cdcac2a-009c-4e0c-8f2f-8dfad00bc1cc', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-02 23:31:21.207065+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a47a49c5-5eba-4454-86af-1c47b6e95f71', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-02 23:31:21.214411+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b0e3ecdd-a0ac-47b2-a348-2cb09e423a40', '{"action":"logout","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account"}', '2025-09-02 23:31:32.437395+00', ''),
	('00000000-0000-0000-0000-000000000000', '34bfec29-0d21-4f1f-9508-78d0d3904531', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-09-02 23:31:34.301157+00', ''),
	('00000000-0000-0000-0000-000000000000', '088c1e4e-bc49-45f9-be87-157b580131c1', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-04 17:33:35.881452+00', ''),
	('00000000-0000-0000-0000-000000000000', '1358dd3b-7dad-4148-a6b4-e4d520327986', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-04 17:33:35.898919+00', ''),
	('00000000-0000-0000-0000-000000000000', '235a2272-d7a2-496b-875f-43c54a5877fb', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-09 01:09:39.684516+00', ''),
	('00000000-0000-0000-0000-000000000000', 'afadb73b-c0c1-4580-84e4-89ee2012865b', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-09 01:09:39.701842+00', ''),
	('00000000-0000-0000-0000-000000000000', '9d520def-480d-4047-87be-0539631d83f6', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-09-09 01:09:44.368571+00', ''),
	('00000000-0000-0000-0000-000000000000', 'de8c5d32-be9d-4777-867c-ffcce49383df', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-09-13 01:57:25.100597+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c7def333-d559-4dc4-87f1-e34514b2b691', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-13 03:51:04.841935+00', ''),
	('00000000-0000-0000-0000-000000000000', '09c5eaf6-7f1e-4956-aaba-07e52179c41d', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-13 03:51:04.845859+00', ''),
	('00000000-0000-0000-0000-000000000000', '96a51ee7-4cb4-407a-8c5a-6f46e2834507', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-09-13 03:51:22.800819+00', ''),
	('00000000-0000-0000-0000-000000000000', '046101b0-61a9-43ad-96e2-a2862f6ffe3a', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-14 01:50:08.134432+00', ''),
	('00000000-0000-0000-0000-000000000000', '4fd64040-b340-476b-838f-4ab925d665f9', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-14 01:50:08.143417+00', ''),
	('00000000-0000-0000-0000-000000000000', '7bd88199-219a-49c7-a93a-5b29fce986f5', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-09-14 01:50:12.332337+00', ''),
	('00000000-0000-0000-0000-000000000000', '82d02d22-ee54-4cab-9c39-2440c9e587ad', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-14 01:56:16.738945+00', ''),
	('00000000-0000-0000-0000-000000000000', '7bbbb9af-716c-411b-bec8-ac4125e5e665', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-14 01:56:16.740466+00', ''),
	('00000000-0000-0000-0000-000000000000', '0c49dcd8-afb3-4d37-9b16-4ffac224629e', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-09-14 01:56:57.264251+00', ''),
	('00000000-0000-0000-0000-000000000000', '60cb717d-2173-4c22-8f0f-6d252b84fffd', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-15 22:01:10.406533+00', ''),
	('00000000-0000-0000-0000-000000000000', '5f56e53d-526b-4ce8-a768-41a115025ac7', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-15 22:01:10.423466+00', ''),
	('00000000-0000-0000-0000-000000000000', '661333cd-ddb6-491c-8a68-168cb6c77c95', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-09-15 22:01:27.716132+00', ''),
	('00000000-0000-0000-0000-000000000000', '7a92873c-150b-4c97-9a4c-a680029efefd', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-16 15:58:38.708592+00', ''),
	('00000000-0000-0000-0000-000000000000', '001965bf-04e1-406e-b41e-d3b6c5103fa5', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-16 15:58:38.72137+00', ''),
	('00000000-0000-0000-0000-000000000000', '061f0957-6df8-492c-8fee-2f7bbd5a5be9', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-16 17:06:05.84784+00', ''),
	('00000000-0000-0000-0000-000000000000', '3aab55d3-b0f4-43e0-8347-26b8834f3f0c', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-16 17:06:05.851042+00', ''),
	('00000000-0000-0000-0000-000000000000', '36ab8cf6-d431-488d-a902-8f03f1c703f5', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-16 21:37:31.87312+00', ''),
	('00000000-0000-0000-0000-000000000000', '7d545127-8abe-42f9-bc2d-91019f4b98d2', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-16 21:37:31.875125+00', ''),
	('00000000-0000-0000-0000-000000000000', '18133bd0-cbdb-4af3-844f-1ff98aebea81', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-20 22:23:20.03356+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd632f172-e1af-42f2-8686-33e5deb1b61d', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-20 22:23:20.050288+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e14483ca-386c-4d0c-95e1-a6fac2c428b6', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-09-20 22:23:24.840611+00', ''),
	('00000000-0000-0000-0000-000000000000', '71a7ec99-1576-4d75-abfd-0f2cb3730d60', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-21 21:08:07.185528+00', ''),
	('00000000-0000-0000-0000-000000000000', '26812082-a094-46b6-a75f-7171d61ed52c', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-21 21:08:07.205706+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f566de94-91fa-4ed3-a12b-904df81cb54e', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-09-21 21:08:10.80289+00', ''),
	('00000000-0000-0000-0000-000000000000', '15de31b2-b843-450a-b6a7-64ca36748950', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-21 22:22:09.784678+00', ''),
	('00000000-0000-0000-0000-000000000000', '95ae0198-5052-4898-a2b9-2270d6961c70', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-21 22:22:09.788506+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e9fb9139-bbe4-4260-a327-2fbc623eff21', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-09-21 22:28:03.087441+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ead14b8a-ecd2-471c-a05d-3568f6ba74cd', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-21 22:45:45.775415+00', ''),
	('00000000-0000-0000-0000-000000000000', '648d9546-6308-41d4-bd89-14105ff02593', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-21 22:45:45.777932+00', ''),
	('00000000-0000-0000-0000-000000000000', '97d6ebaa-0cd8-4a73-916c-6fe4089b9e7c', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-23 23:44:19.871814+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f5288b81-0c24-4e24-9f24-137bbb413bb7', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-23 23:44:19.886258+00', ''),
	('00000000-0000-0000-0000-000000000000', '02dba89b-7de1-41d3-9a5a-901d36808c5b', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-09-23 23:44:28.920818+00', ''),
	('00000000-0000-0000-0000-000000000000', '52f0af1b-0351-42e6-8a21-99eac787bfa3', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-24 01:31:48.605976+00', ''),
	('00000000-0000-0000-0000-000000000000', '934a2d51-7c94-4c0d-984f-3b41ee395b78', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-24 01:31:48.608391+00', ''),
	('00000000-0000-0000-0000-000000000000', '2c0f3482-fddc-4fc0-b0dd-b4c538106562', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-25 21:54:25.615986+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd4bd0fd8-0662-4ed3-ba65-3479e9ea5ea5', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-25 21:54:25.630696+00', ''),
	('00000000-0000-0000-0000-000000000000', '0d5c4c4f-0c8a-4548-bff2-b985e77e69fc', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-09-25 21:54:34.237496+00', ''),
	('00000000-0000-0000-0000-000000000000', '9fba4d2b-cbaa-4732-872d-ca1e0228f582', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-25 23:56:18.837178+00', ''),
	('00000000-0000-0000-0000-000000000000', '28f97bde-feab-4492-9a0b-217b6230997b', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-25 23:56:18.839832+00', ''),
	('00000000-0000-0000-0000-000000000000', '7bf3c96b-16fc-4393-be07-f38e0c9fc6fe', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-27 03:11:04.541435+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b7706966-baaf-4f58-a72d-10f2ce27260d', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-09-27 03:11:04.546699+00', ''),
	('00000000-0000-0000-0000-000000000000', '649342ff-c49f-495d-80ca-de6031a9fcb3', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-09-27 03:11:08.028762+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c7c6bdb6-fef3-4b2a-a123-c97dd44b8ac1', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-04 03:38:56.087777+00', ''),
	('00000000-0000-0000-0000-000000000000', '5c649c7b-e6ba-47ad-830d-ef9d53cb3f67', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-10-04 15:59:14.345201+00', ''),
	('00000000-0000-0000-0000-000000000000', '32893a6b-ed29-4953-9e56-a15b8468512f', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-10-04 15:59:14.355376+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a03f92c6-5218-44ad-b8b9-dd49a8ae083b', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-04 15:59:20.584936+00', ''),
	('00000000-0000-0000-0000-000000000000', '9c30a30f-232e-4725-a4f1-0911d13cd8c7', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-10-08 20:21:30.474764+00', ''),
	('00000000-0000-0000-0000-000000000000', '3e14f405-b3b2-4468-b4da-3311a35e2f62', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-10-08 20:21:30.489399+00', ''),
	('00000000-0000-0000-0000-000000000000', '344fd490-72ec-4ceb-9d9d-2040bd990808', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-08 20:25:05.008125+00', ''),
	('00000000-0000-0000-0000-000000000000', '1762eba8-47a4-4568-99b0-5fcb0e575fdc', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-10-08 21:23:11.085941+00', ''),
	('00000000-0000-0000-0000-000000000000', '1071f7b0-224e-42d7-983b-e6024071630c', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-10-08 21:23:11.090196+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd8c07318-0c93-4f2b-b8fd-89f1a4c0910a', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-08 21:25:47.825217+00', ''),
	('00000000-0000-0000-0000-000000000000', '3e41ee70-c7a9-4fe8-9387-8441d2465f2a', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"kenydiaz83@icloud.com","user_id":"569fce55-af94-4084-8ecb-8a8c5ab3f638","user_phone":""}}', '2025-10-08 21:34:03.643602+00', ''),
	('00000000-0000-0000-0000-000000000000', '873de6b6-31b7-457a-9e51-23458f1502eb', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"radiadores_diaz@hotmail.com","user_id":"20ab2698-6ada-4946-b72f-fa05e1c4183c","user_phone":""}}', '2025-10-08 21:35:53.964461+00', ''),
	('00000000-0000-0000-0000-000000000000', '236be05c-3e01-46df-a7dc-f7a3fe0d1486', '{"action":"logout","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account"}', '2025-10-08 21:43:49.96466+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dd76c36a-5ef5-4275-96d4-6580cf990a6e', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-08 21:43:53.266556+00', ''),
	('00000000-0000-0000-0000-000000000000', '789e682a-4d9a-493a-9fad-fad18aefb944', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-10-08 22:42:06.313086+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c4ad8de3-15aa-4b7e-884e-cd3855b0343b', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-10-08 22:42:06.315857+00', ''),
	('00000000-0000-0000-0000-000000000000', '26bb2b39-f6f3-4eb4-be0c-95491d2c1fb8', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-10-08 23:45:38.006955+00', ''),
	('00000000-0000-0000-0000-000000000000', '7168d39b-7125-4265-b0df-5a83aef7ac8d', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-10-08 23:45:38.009556+00', ''),
	('00000000-0000-0000-0000-000000000000', '19c76199-a9f3-4586-90c8-d9b174d3e376', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-08 23:45:41.136355+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dd1f4bee-d4c2-4aa7-a1c9-6a4b1c302984', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-10-09 14:52:43.05082+00', ''),
	('00000000-0000-0000-0000-000000000000', '0d87b3ac-7514-484a-828e-e101d257d958', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-10-09 14:52:43.067087+00', ''),
	('00000000-0000-0000-0000-000000000000', '227f7e86-9e20-457a-87a9-4016886d231a', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-09 14:52:54.708145+00', ''),
	('00000000-0000-0000-0000-000000000000', '4af599bb-3645-4840-a956-668a910b2264', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-10-09 15:51:22.438071+00', ''),
	('00000000-0000-0000-0000-000000000000', '8ac83d2d-956a-4f86-b37b-b21f7e03e401', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-10-09 15:51:22.44072+00', ''),
	('00000000-0000-0000-0000-000000000000', '06549f98-8385-4d9b-bbac-92304265e44b', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-09 16:21:28.23494+00', ''),
	('00000000-0000-0000-0000-000000000000', '6e8255de-8ec2-444c-b268-42a7c4acd7b2', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-10-09 17:19:37.7094+00', ''),
	('00000000-0000-0000-0000-000000000000', '9967a179-a254-4ff6-b450-36c79d08055c', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-10-09 17:19:37.712302+00', ''),
	('00000000-0000-0000-0000-000000000000', '5eff8619-3e51-4f26-bf00-540aa5297358', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-10-09 18:17:37.704181+00', ''),
	('00000000-0000-0000-0000-000000000000', '943e2aeb-a21f-4244-80e3-c0642d746a53', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-10-09 18:17:37.704968+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dbf7e218-b863-47db-a1a1-71a62a65a78c', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-10-09 19:15:37.831106+00', ''),
	('00000000-0000-0000-0000-000000000000', '40665d52-5d44-4170-b8eb-eb4a8591f112', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-10-09 19:15:37.833273+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ede0b80f-ba90-4d59-b1b7-1f6d08bbf5e0', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-10-09 20:13:37.903494+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c5b0dc40-4e37-4064-9f1d-903a37537238', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-10-09 20:13:37.906113+00', ''),
	('00000000-0000-0000-0000-000000000000', '5647b656-da00-4f49-bfe0-a112d8bffef1', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-09 20:25:34.257947+00', ''),
	('00000000-0000-0000-0000-000000000000', '0938f116-8876-4514-9fe1-093f6e6d3fb4', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-10-09 22:44:55.365998+00', ''),
	('00000000-0000-0000-0000-000000000000', '51c80c94-7add-414b-b6e9-ca9ffa3a9f6b', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-10-09 22:44:55.367472+00', ''),
	('00000000-0000-0000-0000-000000000000', '8a9ef4d8-5218-4bba-bd82-4a28553876f9', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-13 04:46:02.135599+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f5d3644f-8463-4cd5-b097-4e9590ea739f', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-10-20 23:11:08.58576+00', ''),
	('00000000-0000-0000-0000-000000000000', '95ec65ca-5376-4bdc-be86-5e1307f19999', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-10-20 23:11:08.599902+00', ''),
	('00000000-0000-0000-0000-000000000000', '64ac9de5-945f-430a-944d-60472dc66d58', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-20 23:11:13.254785+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e93d52b8-0690-45c1-b6eb-57aab45b0a3e', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-10-23 00:25:35.015835+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dd89fb67-942a-426c-ae6b-d0496f98e1b4', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-10-23 00:25:35.036246+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f62f586e-1642-43b1-badf-0c2184e9e78f', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-23 00:25:39.149353+00', ''),
	('00000000-0000-0000-0000-000000000000', '58ea79d6-56e7-4cef-a7f4-4adeaafb58f1', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-10-25 17:30:31.569193+00', ''),
	('00000000-0000-0000-0000-000000000000', '8b7a0b36-3b44-4d19-ad9f-56e9e657e8c2', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-10-25 17:30:31.579805+00', ''),
	('00000000-0000-0000-0000-000000000000', '5253607f-0986-48d2-8392-32739a94f283', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-10-25 17:30:35.465776+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ee99208b-afb3-4246-a0a5-1bbd8d6eaad2', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-11-04 15:05:51.262462+00', ''),
	('00000000-0000-0000-0000-000000000000', '6bd58d3a-97a4-471b-8a41-422f5cbb790c', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-11-04 15:05:51.280165+00', ''),
	('00000000-0000-0000-0000-000000000000', '75ce678a-7514-4916-874b-8371a3cb08b2', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-11-04 15:05:53.787053+00', ''),
	('00000000-0000-0000-0000-000000000000', '17ef517c-0b3c-4e60-bc8e-25b5bcfaa5f9', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-11-04 21:29:58.901423+00', ''),
	('00000000-0000-0000-0000-000000000000', '55f998e1-c3c4-42d0-b4f0-545cbf972b2d', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-11-04 21:29:58.907763+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aeee6e07-55be-4de2-a235-c6ce3d2a5e95', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-11-06 00:53:20.22594+00', ''),
	('00000000-0000-0000-0000-000000000000', '1a34f078-7a71-4e01-8420-4320d4f0371c', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-11-09 02:02:36.125632+00', ''),
	('00000000-0000-0000-0000-000000000000', '8a9b6f57-ae94-419c-9af8-fb95ab31885f', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-11-09 02:02:36.149424+00', ''),
	('00000000-0000-0000-0000-000000000000', '0af24235-45bc-4147-a703-46a63d9238c0', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-11-09 02:02:40.791126+00', ''),
	('00000000-0000-0000-0000-000000000000', '030ef3bf-82d0-4124-9135-69e4bded78cd', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-11-12 22:43:06.765379+00', ''),
	('00000000-0000-0000-0000-000000000000', '4f1a2e75-ae4a-40b8-a465-6767a195415e', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-11-12 22:43:06.794288+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a5ae43a2-5018-4f79-88cc-c58518748e33', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-11-12 22:43:08.998362+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b29dfdf9-8aee-4db7-a982-47ee1df79de7', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-11-12 23:47:32.347738+00', ''),
	('00000000-0000-0000-0000-000000000000', '845019d3-c601-44e1-838d-624ccdfb5b75', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-11-12 23:47:32.370396+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e1460abb-59f5-4161-8efd-d6a7606d5fe6', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-11-14 00:51:04.78086+00', ''),
	('00000000-0000-0000-0000-000000000000', '86912ee8-2432-4234-b1fe-5c15e1f3e86b', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-11-14 00:51:04.803375+00', ''),
	('00000000-0000-0000-0000-000000000000', '183e6a19-a44c-41dd-9568-c43eb8144e0f', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-11-14 00:51:09.830256+00', ''),
	('00000000-0000-0000-0000-000000000000', '576eca5a-9721-4756-9249-18aa08918754', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-11-21 12:19:56.920654+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ebbc53c1-ea21-4b73-a9de-d65d1dc8e0dc', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-11-21 12:19:56.953241+00', ''),
	('00000000-0000-0000-0000-000000000000', '8e0d32b7-0519-43c0-ab77-fdbf5b355af1', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-11-21 12:20:02.19469+00', ''),
	('00000000-0000-0000-0000-000000000000', '4adf7d38-49f4-446f-83b6-cfb6dd3a0c81', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-11-21 17:23:22.12915+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e8566ad9-0d7e-46b6-8bbf-a661f459cb1a', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-11-21 17:23:22.152755+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c2c218c5-a4f4-48f9-8c20-ed5c01ffa055', '{"action":"login","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-11-21 17:23:24.714757+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b82d70d3-2c4a-4946-a414-ff53a74e1e14', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-11-21 23:12:25.186482+00', ''),
	('00000000-0000-0000-0000-000000000000', '0a78e647-83a7-43f3-b1ad-2aee91b699e5', '{"action":"token_revoked","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-11-21 23:12:25.218323+00', ''),
	('00000000-0000-0000-0000-000000000000', '0dc70870-5302-46fd-bdb1-0d53058bab14', '{"action":"token_refreshed","actor_id":"67f28c39-a33a-436d-b004-5418dacc32d6","actor_username":"elotin@hotmail.com","actor_via_sso":false,"log_type":"token"}', '2025-11-21 23:12:26.375858+00', ''),
	('00000000-0000-0000-0000-000000000000', '87a76091-8447-48c1-bb3a-be8aa1f24400', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-11-25 06:33:11.643207+00', ''),
	('00000000-0000-0000-0000-000000000000', '261b4418-773e-46c7-a827-8d34eda64ab9', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-11-25 06:33:11.663429+00', ''),
	('00000000-0000-0000-0000-000000000000', '4d7b55d5-978b-41da-9c39-c18b43ed23a1', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-11-25 06:33:16.929637+00', ''),
	('00000000-0000-0000-0000-000000000000', '58d52a5d-77b2-4a12-bc8c-285549cc9853', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-12-29 23:54:04.920412+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b2b4ff99-e877-4172-a740-cdf7d338edbc', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-12-29 23:54:04.939625+00', ''),
	('00000000-0000-0000-0000-000000000000', '4de04f8c-cf26-4661-9b1b-4816ad32c3da', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-12-29 23:54:09.188196+00', ''),
	('00000000-0000-0000-0000-000000000000', '8740536c-6891-49a8-bd3a-4c31cb68597e', '{"action":"token_refreshed","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2026-01-09 01:35:24.314434+00', ''),
	('00000000-0000-0000-0000-000000000000', '8652943b-7f81-4cb5-8865-91ab10bbd4ca', '{"action":"token_revoked","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"token"}', '2026-01-09 01:35:24.344607+00', ''),
	('00000000-0000-0000-0000-000000000000', '455a5429-26ed-43f6-8e10-1f4342d94770', '{"action":"login","actor_id":"2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59","actor_username":"roelmdz@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2026-01-09 01:35:28.31428+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '67f28c39-a33a-436d-b004-5418dacc32d6', 'authenticated', 'authenticated', 'elotin@hotmail.com', '$2a$10$cm65YxhWwPlaSBVATPlj7uqQyijE7LPZY40FVQLjBDQc7dZ529X8C', '2025-03-11 01:47:49.338815+00', NULL, '', NULL, '', NULL, '', '', NULL, '2025-11-21 17:23:24.71598+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "67f28c39-a33a-436d-b004-5418dacc32d6", "email": "elotin@hotmail.com", "role_id": "1", "last_name": "Diaz", "first_name": "Eloisa", "email_verified": true, "phone_verified": false}', NULL, '2025-03-11 01:47:49.330524+00', '2025-11-21 23:12:25.250036+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '569fce55-af94-4084-8ecb-8a8c5ab3f638', 'authenticated', 'authenticated', 'kenydiaz83@icloud.com', '$2a$10$XRK7FJPYKLw47uRsYLWbu.UlDh5DWHFfEf7P5wUXj7Jp.4tDhH9.K', '2025-10-08 21:34:03.648081+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{"email_verified": true}', NULL, '2025-10-08 21:34:03.625296+00', '2025-10-08 21:34:03.650996+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '20ab2698-6ada-4946-b72f-fa05e1c4183c', 'authenticated', 'authenticated', 'radiadores_diaz@hotmail.com', '$2a$10$BSBdJ4fXhR/oqa0qN8xzneck5XFci98mE.Hx0NVghqti2Q3p121Wy', '2025-10-08 21:35:53.967263+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{"email_verified": true}', NULL, '2025-10-08 21:35:53.962133+00', '2025-10-08 21:35:53.968771+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', 'authenticated', 'authenticated', 'roelmdz@gmail.com', '$2a$10$a9/V1/MvytcdEOtE0/ikxeDQlIetWVPhmUr6wL8sBZpVUerrPv5Pe', '2025-02-11 02:35:19.680562+00', NULL, '', NULL, '', NULL, '', '', NULL, '2026-01-09 01:35:28.317678+00', '{"provider": "email", "providers": ["email"]}', '{"email_verified": true}', NULL, '2025-02-11 02:35:19.675407+00', '2026-01-09 01:35:28.337369+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '{"sub": "2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59", "email": "roelmdz@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2025-02-11 02:35:19.678211+00', '2025-02-11 02:35:19.678264+00', '2025-02-11 02:35:19.678264+00', 'c6efc780-26dd-4f0f-9c95-a81ac23b6db4'),
	('67f28c39-a33a-436d-b004-5418dacc32d6', '67f28c39-a33a-436d-b004-5418dacc32d6', '{"sub": "67f28c39-a33a-436d-b004-5418dacc32d6", "email": "elotin@hotmail.com", "role_id": "1", "last_name": "Diaz", "first_name": "Eloisa", "email_verified": false, "phone_verified": false}', 'email', '2025-03-11 01:47:49.335902+00', '2025-03-11 01:47:49.335948+00', '2025-03-11 01:47:49.335948+00', '71c66e5d-2350-4eaa-9952-df20d0ae1f85'),
	('569fce55-af94-4084-8ecb-8a8c5ab3f638', '569fce55-af94-4084-8ecb-8a8c5ab3f638', '{"sub": "569fce55-af94-4084-8ecb-8a8c5ab3f638", "email": "kenydiaz83@icloud.com", "email_verified": false, "phone_verified": false}', 'email', '2025-10-08 21:34:03.639581+00', '2025-10-08 21:34:03.639648+00', '2025-10-08 21:34:03.639648+00', '9256724e-4489-4392-bbc8-020b34d4add4'),
	('20ab2698-6ada-4946-b72f-fa05e1c4183c', '20ab2698-6ada-4946-b72f-fa05e1c4183c', '{"sub": "20ab2698-6ada-4946-b72f-fa05e1c4183c", "email": "radiadores_diaz@hotmail.com", "email_verified": false, "phone_verified": false}', 'email', '2025-10-08 21:35:53.96353+00', '2025-10-08 21:35:53.963582+00', '2025-10-08 21:35:53.963582+00', '95337970-91ae-4a75-9304-d532929db4ca');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id", "refresh_token_hmac_key", "refresh_token_counter", "scopes") VALUES
	('3399daa4-b3a0-4cbe-adf2-b18148c9aac1', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-11-09 02:02:40.791905+00', '2025-12-29 23:54:04.972757+00', NULL, 'aal1', NULL, '2025-12-29 23:54:04.972644', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '189.219.248.66', NULL, NULL, NULL, NULL, NULL),
	('d299e43e-e2d3-4763-aa9e-c6b03e3beeaa', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-09-14 01:50:12.33591+00', '2025-09-20 22:23:20.087634+00', NULL, 'aal1', NULL, '2025-09-20 22:23:20.086877', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '189.219.248.5', NULL, NULL, NULL, NULL, NULL),
	('c18e0561-d36e-412b-9567-2adff763c0df', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-09-20 22:23:24.845056+00', '2025-09-21 21:08:07.230929+00', NULL, 'aal1', NULL, '2025-09-21 21:08:07.230844', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '187.161.119.81', NULL, NULL, NULL, NULL, NULL),
	('96f5f818-6093-41b4-af12-83044c45c2bc', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-09-02 01:59:29.390047+00', '2025-09-02 01:59:29.390047+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '189.219.248.5', NULL, NULL, NULL, NULL, NULL),
	('ec6a1580-25bd-42bc-a610-7911cddda509', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-09-02 02:07:06.416613+00', '2025-09-02 04:18:09.569599+00', NULL, 'aal1', NULL, '2025-09-02 04:18:09.569529', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '189.219.248.5', NULL, NULL, NULL, NULL, NULL),
	('fa95c917-f94d-4919-b6cc-296670a53d9a', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-09-21 21:08:10.806347+00', '2025-09-21 22:22:09.798839+00', NULL, 'aal1', NULL, '2025-09-21 22:22:09.798768', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '187.161.119.81', NULL, NULL, NULL, NULL, NULL),
	('bc6d253e-49e7-4115-b90b-86bf29a6f5d7', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-09-14 01:56:57.265001+00', '2025-09-21 22:45:45.786669+00', NULL, 'aal1', NULL, '2025-09-21 22:45:45.786598', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '187.161.119.81', NULL, NULL, NULL, NULL, NULL),
	('3c56eb3c-b156-4e2e-be0f-8e57d66496cb', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-10-13 04:46:02.150759+00', '2025-10-13 04:46:02.150759+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '189.219.248.5', NULL, NULL, NULL, NULL, NULL),
	('b4845efd-395e-4b2f-9fd1-f733e5e343df', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-08-30 06:36:59.903654+00', '2025-09-09 01:09:39.732024+00', NULL, 'aal1', NULL, '2025-09-09 01:09:39.730968', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '189.219.248.5', NULL, NULL, NULL, NULL, NULL),
	('b1b2bfa8-8892-4ea4-8eff-957dee5d0c2f', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-10-04 15:59:20.586877+00', '2025-10-20 23:11:08.644521+00', NULL, 'aal1', NULL, '2025-10-20 23:11:08.643803', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '189.219.248.5', NULL, NULL, NULL, NULL, NULL),
	('0ae65334-1681-463f-9807-6f86c5ec7417', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-09-09 01:09:44.370046+00', '2025-09-14 01:50:08.16455+00', NULL, 'aal1', NULL, '2025-09-14 01:50:08.164469', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '189.219.248.5', NULL, NULL, NULL, NULL, NULL),
	('22ce2b9e-6187-4ff2-af19-34d2ecc11dea', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-09-02 04:18:20.982502+00', '2025-09-14 01:56:16.745386+00', NULL, 'aal1', NULL, '2025-09-14 01:56:16.745319', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '189.219.248.5', NULL, NULL, NULL, NULL, NULL),
	('95d989f7-234c-4ce8-a173-d38403c1b147', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-10-20 23:11:13.260774+00', '2025-10-23 00:25:35.074818+00', NULL, 'aal1', NULL, '2025-10-23 00:25:35.07474', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '189.219.248.5', NULL, NULL, NULL, NULL, NULL),
	('b2f42c4c-c6e2-4c6e-b73f-92e57a8c7152', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-10-08 21:43:53.268815+00', '2025-10-08 23:45:38.013911+00', NULL, 'aal1', NULL, '2025-10-08 23:45:38.013828', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '189.219.113.44', NULL, NULL, NULL, NULL, NULL),
	('cf2aab1f-d57a-454c-90a4-e7d79906c9ac', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-09-21 22:28:03.090165+00', '2025-09-27 03:11:04.560356+00', NULL, 'aal1', NULL, '2025-09-27 03:11:04.560279', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '189.219.248.5', NULL, NULL, NULL, NULL, NULL),
	('7d9ae2db-7cef-4a95-b0d3-1bbc870f72cc', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-09-27 03:11:08.034441+00', '2025-09-27 03:11:08.034441+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '189.219.248.5', NULL, NULL, NULL, NULL, NULL),
	('c1f7c935-6b72-4384-a63e-f5aea67f56e2', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-10-04 03:38:56.105429+00', '2025-10-04 15:59:14.372663+00', NULL, 'aal1', NULL, '2025-10-04 15:59:14.372589', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '187.161.119.81', NULL, NULL, NULL, NULL, NULL),
	('c454a678-599c-47e5-8e97-923374d7afd4', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-10-23 00:25:39.150896+00', '2025-10-25 17:30:31.61134+00', NULL, 'aal1', NULL, '2025-10-25 17:30:31.611263', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '187.161.119.81', NULL, NULL, NULL, NULL, NULL),
	('7f2aec1a-72bf-4638-804d-3d6540fbda21', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-10-08 23:45:41.143982+00', '2025-10-09 14:52:43.095308+00', NULL, 'aal1', NULL, '2025-10-09 14:52:43.094556', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '189.219.113.44', NULL, NULL, NULL, NULL, NULL),
	('c1f846b2-d9bd-4654-9a08-15129f69311c', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-10-09 14:52:54.710635+00', '2025-10-09 15:51:22.446065+00', NULL, 'aal1', NULL, '2025-10-09 15:51:22.445996', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '189.219.113.44', NULL, NULL, NULL, NULL, NULL),
	('025e5bc7-e77f-4697-9baf-074bb3371a5e', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-10-09 20:25:34.266541+00', '2025-11-04 15:05:51.317942+00', NULL, 'aal1', NULL, '2025-11-04 15:05:51.317114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '189.219.113.44', NULL, NULL, NULL, NULL, NULL),
	('c30c81f4-7426-4efd-8afa-60e379717b96', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-11-06 00:53:20.244455+00', '2025-11-14 00:51:04.852679+00', NULL, 'aal1', NULL, '2025-11-14 00:51:04.852577', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '189.219.248.66', NULL, NULL, NULL, NULL, NULL),
	('bb8b9d2c-6aca-4ebe-a66b-7f7062e97798', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-10-09 16:21:28.243065+00', '2025-10-09 20:13:37.910664+00', NULL, 'aal1', NULL, '2025-10-09 20:13:37.910595', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '189.219.113.44', NULL, NULL, NULL, NULL, NULL),
	('a122d898-a55d-43dd-8ee7-d604f4d51f70', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-10-25 17:30:35.467183+00', '2025-11-09 02:02:36.201863+00', NULL, 'aal1', NULL, '2025-11-09 02:02:36.199425', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '189.219.248.66', NULL, NULL, NULL, NULL, NULL),
	('ec297f9e-a599-45c7-9474-4c4e0a44d4c7', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-11-04 15:05:53.794891+00', '2025-11-12 22:43:06.851642+00', NULL, 'aal1', NULL, '2025-11-12 22:43:06.84986', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '189.219.113.44', NULL, NULL, NULL, NULL, NULL),
	('ffb6b8e2-418b-42bf-99a0-93251cbd56ea', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-11-14 00:51:09.83173+00', '2025-11-21 12:19:57.001308+00', NULL, 'aal1', NULL, '2025-11-21 12:19:56.999997', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '189.219.248.66', NULL, NULL, NULL, NULL, NULL),
	('e031f888-45ba-4354-83c9-fb61e3dc0673', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-11-12 22:43:09.004261+00', '2025-11-21 17:23:22.188905+00', NULL, 'aal1', NULL, '2025-11-21 17:23:22.187669', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '189.219.113.44', NULL, NULL, NULL, NULL, NULL),
	('001128a4-e030-4643-92c6-2434deda34d3', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-11-21 17:23:24.716067+00', '2025-11-21 23:12:26.380456+00', NULL, 'aal1', NULL, '2025-11-21 23:12:26.379775', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '189.219.113.44', NULL, NULL, NULL, NULL, NULL),
	('2abb7d06-45bd-4b01-b315-23a978665b83', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-11-21 12:20:02.201855+00', '2025-11-25 06:33:11.699034+00', NULL, 'aal1', NULL, '2025-11-25 06:33:11.697231', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '189.219.248.66', NULL, NULL, NULL, NULL, NULL),
	('fb2e51de-86e4-4625-a981-c1e3b55653f8', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-11-25 06:33:16.935107+00', '2025-11-25 06:33:16.935107+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '189.219.248.66', NULL, NULL, NULL, NULL, NULL),
	('2db8f7d8-0091-4d1f-adc0-272bb39957fc', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-12-29 23:54:09.190832+00', '2026-01-09 01:35:24.386693+00', NULL, 'aal1', NULL, '2026-01-09 01:35:24.386582', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '189.219.248.66', NULL, NULL, NULL, NULL, NULL),
	('dfa627f0-68e6-4720-887b-d9f3c11fdbb8', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2026-01-09 01:35:28.31777+00', '2026-01-09 01:35:28.31777+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '189.219.248.66', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('b4845efd-395e-4b2f-9fd1-f733e5e343df', '2025-08-30 06:36:59.908568+00', '2025-08-30 06:36:59.908568+00', 'password', '28276320-2a11-4053-befe-ef66c67dba85'),
	('96f5f818-6093-41b4-af12-83044c45c2bc', '2025-09-02 01:59:29.417861+00', '2025-09-02 01:59:29.417861+00', 'password', '035f0d04-85ce-4864-a5e4-29af6653355a'),
	('ec6a1580-25bd-42bc-a610-7911cddda509', '2025-09-02 02:07:06.421911+00', '2025-09-02 02:07:06.421911+00', 'password', '7f84e62b-5aa8-4b5e-8c00-2a3a7b7a31f1'),
	('22ce2b9e-6187-4ff2-af19-34d2ecc11dea', '2025-09-02 04:18:20.987123+00', '2025-09-02 04:18:20.987123+00', 'password', '6cb255b9-55fb-4f9e-aab0-4de93c313208'),
	('0ae65334-1681-463f-9807-6f86c5ec7417', '2025-09-09 01:09:44.379375+00', '2025-09-09 01:09:44.379375+00', 'password', 'e40743fa-be7f-41f1-bc2c-5326e85b0ba0'),
	('d299e43e-e2d3-4763-aa9e-c6b03e3beeaa', '2025-09-14 01:50:12.342808+00', '2025-09-14 01:50:12.342808+00', 'password', 'fd3af3d5-f6ac-49b0-9d31-c35ee7732033'),
	('bc6d253e-49e7-4115-b90b-86bf29a6f5d7', '2025-09-14 01:56:57.266932+00', '2025-09-14 01:56:57.266932+00', 'password', '90dd7e07-424a-44db-a231-8a532dd0b274'),
	('c18e0561-d36e-412b-9567-2adff763c0df', '2025-09-20 22:23:24.854997+00', '2025-09-20 22:23:24.854997+00', 'password', '8cb1348e-6f51-484a-a25b-c38f06059a88'),
	('fa95c917-f94d-4919-b6cc-296670a53d9a', '2025-09-21 21:08:10.81595+00', '2025-09-21 21:08:10.81595+00', 'password', 'f104221a-2076-4027-8e10-eb7308a60cf6'),
	('cf2aab1f-d57a-454c-90a4-e7d79906c9ac', '2025-09-21 22:28:03.097627+00', '2025-09-21 22:28:03.097627+00', 'password', 'da643eec-129b-4b4f-9afe-157713bd0b2d'),
	('7d9ae2db-7cef-4a95-b0d3-1bbc870f72cc', '2025-09-27 03:11:08.041667+00', '2025-09-27 03:11:08.041667+00', 'password', '7887365d-47f2-46a4-8c97-686f921d912d'),
	('c1f7c935-6b72-4384-a63e-f5aea67f56e2', '2025-10-04 03:38:56.12685+00', '2025-10-04 03:38:56.12685+00', 'password', 'e184b83f-5afc-44a6-aac3-d15fb327c819'),
	('b1b2bfa8-8892-4ea4-8eff-957dee5d0c2f', '2025-10-04 15:59:20.591861+00', '2025-10-04 15:59:20.591861+00', 'password', 'bb8a6d1c-3450-45ac-8027-7081b682c935'),
	('b2f42c4c-c6e2-4c6e-b73f-92e57a8c7152', '2025-10-08 21:43:53.276715+00', '2025-10-08 21:43:53.276715+00', 'password', '4ef5b9fb-17b1-4483-b248-daa58741d382'),
	('7f2aec1a-72bf-4638-804d-3d6540fbda21', '2025-10-08 23:45:41.146884+00', '2025-10-08 23:45:41.146884+00', 'password', 'e2c6d7d4-54d8-4966-a0a3-0c09d7c276d7'),
	('c1f846b2-d9bd-4654-9a08-15129f69311c', '2025-10-09 14:52:54.720095+00', '2025-10-09 14:52:54.720095+00', 'password', '426fe95e-f8bb-459b-9a2d-bb9d070af10a'),
	('bb8b9d2c-6aca-4ebe-a66b-7f7062e97798', '2025-10-09 16:21:28.247687+00', '2025-10-09 16:21:28.247687+00', 'password', 'dca4d1c5-6abf-4aae-a347-31b315b3cf08'),
	('025e5bc7-e77f-4697-9baf-074bb3371a5e', '2025-10-09 20:25:34.27246+00', '2025-10-09 20:25:34.27246+00', 'password', '0992cfb0-9477-4417-9b48-aa049531becc'),
	('3c56eb3c-b156-4e2e-be0f-8e57d66496cb', '2025-10-13 04:46:02.184235+00', '2025-10-13 04:46:02.184235+00', 'password', 'eb4cdb6a-f131-4765-b78d-624329a5ad80'),
	('95d989f7-234c-4ce8-a173-d38403c1b147', '2025-10-20 23:11:13.271935+00', '2025-10-20 23:11:13.271935+00', 'password', '3d3c2f93-55b6-4e87-ba3d-d4df8775425a'),
	('c454a678-599c-47e5-8e97-923374d7afd4', '2025-10-23 00:25:39.160036+00', '2025-10-23 00:25:39.160036+00', 'password', 'c21030ba-a4d7-4bf8-b1ad-f1f1adc54c46'),
	('a122d898-a55d-43dd-8ee7-d604f4d51f70', '2025-10-25 17:30:35.474981+00', '2025-10-25 17:30:35.474981+00', 'password', '26f68375-fd05-4b65-b3ec-25cbace25dce'),
	('ec297f9e-a599-45c7-9474-4c4e0a44d4c7', '2025-11-04 15:05:53.801735+00', '2025-11-04 15:05:53.801735+00', 'password', '59bc723e-5753-4b27-9e6d-9847a819b27f'),
	('c30c81f4-7426-4efd-8afa-60e379717b96', '2025-11-06 00:53:20.27592+00', '2025-11-06 00:53:20.27592+00', 'password', '9c85d681-b4f4-4b1e-96e6-b9900f9b28a9'),
	('3399daa4-b3a0-4cbe-adf2-b18148c9aac1', '2025-11-09 02:02:40.813295+00', '2025-11-09 02:02:40.813295+00', 'password', '673c1079-97ba-477c-a797-7549b5e8257a'),
	('e031f888-45ba-4354-83c9-fb61e3dc0673', '2025-11-12 22:43:09.024307+00', '2025-11-12 22:43:09.024307+00', 'password', 'b386c0e4-b410-4b81-9996-32b901148e43'),
	('ffb6b8e2-418b-42bf-99a0-93251cbd56ea', '2025-11-14 00:51:09.852337+00', '2025-11-14 00:51:09.852337+00', 'password', '23ea7fe8-ae38-4464-b29f-e4926e30d26c'),
	('2abb7d06-45bd-4b01-b315-23a978665b83', '2025-11-21 12:20:02.223212+00', '2025-11-21 12:20:02.223212+00', 'password', '85b620f8-b319-485f-be88-a267c583b51c'),
	('001128a4-e030-4643-92c6-2434deda34d3', '2025-11-21 17:23:24.725679+00', '2025-11-21 17:23:24.725679+00', 'password', 'ee61be0d-a33e-4917-b99c-81df4cf34a2e'),
	('fb2e51de-86e4-4625-a981-c1e3b55653f8', '2025-11-25 06:33:16.953028+00', '2025-11-25 06:33:16.953028+00', 'password', '7147730c-897a-4bab-accf-a722d80727e8'),
	('2db8f7d8-0091-4d1f-adc0-272bb39957fc', '2025-12-29 23:54:09.20268+00', '2025-12-29 23:54:09.20268+00', 'password', '7e6feacd-a272-4200-a948-687fc73c09c6'),
	('dfa627f0-68e6-4720-887b-d9f3c11fdbb8', '2026-01-09 01:35:28.337731+00', '2026-01-09 01:35:28.337731+00', 'password', '934e2f62-2a61-4b69-80b9-8cff2345e840');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 376, 'lcktu6snvbxm', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', true, '2025-10-20 23:11:13.266747+00', '2025-10-23 00:25:35.038729+00', NULL, '95d989f7-234c-4ce8-a173-d38403c1b147'),
	('00000000-0000-0000-0000-000000000000', 377, 'jcmazg7ejrcf', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', false, '2025-10-23 00:25:35.061305+00', '2025-10-23 00:25:35.061305+00', 'lcktu6snvbxm', '95d989f7-234c-4ce8-a173-d38403c1b147'),
	('00000000-0000-0000-0000-000000000000', 378, 'c3witwq2b2dq', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', true, '2025-10-23 00:25:39.158228+00', '2025-10-25 17:30:31.583963+00', NULL, 'c454a678-599c-47e5-8e97-923374d7afd4'),
	('00000000-0000-0000-0000-000000000000', 379, '7bozuz2udzfu', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', false, '2025-10-25 17:30:31.599486+00', '2025-10-25 17:30:31.599486+00', 'c3witwq2b2dq', 'c454a678-599c-47e5-8e97-923374d7afd4'),
	('00000000-0000-0000-0000-000000000000', 373, 'wjnwfovydehq', '67f28c39-a33a-436d-b004-5418dacc32d6', true, '2025-10-09 22:44:55.369397+00', '2025-11-04 15:05:51.28277+00', '7mgxrc3qnn2q', '025e5bc7-e77f-4697-9baf-074bb3371a5e'),
	('00000000-0000-0000-0000-000000000000', 381, 'hyu7kyc3pf3m', '67f28c39-a33a-436d-b004-5418dacc32d6', false, '2025-11-04 15:05:51.300638+00', '2025-11-04 15:05:51.300638+00', 'wjnwfovydehq', '025e5bc7-e77f-4697-9baf-074bb3371a5e'),
	('00000000-0000-0000-0000-000000000000', 382, 'sntejme27dty', '67f28c39-a33a-436d-b004-5418dacc32d6', true, '2025-11-04 15:05:53.798091+00', '2025-11-04 21:29:58.908328+00', NULL, 'ec297f9e-a599-45c7-9474-4c4e0a44d4c7'),
	('00000000-0000-0000-0000-000000000000', 380, 'tifjf44gpzhy', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', true, '2025-10-25 17:30:35.471882+00', '2025-11-09 02:02:36.15324+00', NULL, 'a122d898-a55d-43dd-8ee7-d604f4d51f70'),
	('00000000-0000-0000-0000-000000000000', 383, 'yvjtdt75zcvd', '67f28c39-a33a-436d-b004-5418dacc32d6', true, '2025-11-04 21:29:58.91157+00', '2025-11-12 22:43:06.801285+00', 'sntejme27dty', 'ec297f9e-a599-45c7-9474-4c4e0a44d4c7'),
	('00000000-0000-0000-0000-000000000000', 384, '3ikltijhxj5f', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', true, '2025-11-06 00:53:20.254067+00', '2025-11-14 00:51:04.807304+00', NULL, 'c30c81f4-7426-4efd-8afa-60e379717b96'),
	('00000000-0000-0000-0000-000000000000', 316, 'gnu4us25g6hf', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', false, '2025-09-02 01:59:29.400446+00', '2025-09-02 01:59:29.400446+00', NULL, '96f5f818-6093-41b4-af12-83044c45c2bc'),
	('00000000-0000-0000-0000-000000000000', 317, 'dfb4kgrkwaqi', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', true, '2025-09-02 02:07:06.418552+00', '2025-09-02 04:18:09.564112+00', NULL, 'ec6a1580-25bd-42bc-a610-7911cddda509'),
	('00000000-0000-0000-0000-000000000000', 318, '4d5hvkzwd4gk', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', false, '2025-09-02 04:18:09.566614+00', '2025-09-02 04:18:09.566614+00', 'dfb4kgrkwaqi', 'ec6a1580-25bd-42bc-a610-7911cddda509'),
	('00000000-0000-0000-0000-000000000000', 319, 'zagxsnuh6rfw', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', true, '2025-09-02 04:18:20.983923+00', '2025-09-02 15:26:23.397368+00', NULL, '22ce2b9e-6187-4ff2-af19-34d2ecc11dea'),
	('00000000-0000-0000-0000-000000000000', 320, 'dlpdx5wxdfyr', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', true, '2025-09-02 15:26:23.401875+00', '2025-09-04 17:33:35.901906+00', 'zagxsnuh6rfw', '22ce2b9e-6187-4ff2-af19-34d2ecc11dea'),
	('00000000-0000-0000-0000-000000000000', 315, 'zujqaik7txfj', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', true, '2025-08-30 06:36:59.906588+00', '2025-09-09 01:09:39.703098+00', NULL, 'b4845efd-395e-4b2f-9fd1-f733e5e343df'),
	('00000000-0000-0000-0000-000000000000', 324, 'ub5o3v5r2ua5', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', false, '2025-09-09 01:09:39.715184+00', '2025-09-09 01:09:39.715184+00', 'zujqaik7txfj', 'b4845efd-395e-4b2f-9fd1-f733e5e343df'),
	('00000000-0000-0000-0000-000000000000', 325, 'dt7wlmqh42ff', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', true, '2025-09-09 01:09:44.375893+00', '2025-09-14 01:50:08.145441+00', NULL, '0ae65334-1681-463f-9807-6f86c5ec7417'),
	('00000000-0000-0000-0000-000000000000', 329, 'sjlunmtiy6xo', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', false, '2025-09-14 01:50:08.155085+00', '2025-09-14 01:50:08.155085+00', 'dt7wlmqh42ff', '0ae65334-1681-463f-9807-6f86c5ec7417'),
	('00000000-0000-0000-0000-000000000000', 323, 'kwpbtdxq4z3w', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', true, '2025-09-04 17:33:35.917829+00', '2025-09-14 01:56:16.740961+00', 'dlpdx5wxdfyr', '22ce2b9e-6187-4ff2-af19-34d2ecc11dea'),
	('00000000-0000-0000-0000-000000000000', 331, 'j4bn7vv5up2l', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', false, '2025-09-14 01:56:16.742351+00', '2025-09-14 01:56:16.742351+00', 'kwpbtdxq4z3w', '22ce2b9e-6187-4ff2-af19-34d2ecc11dea'),
	('00000000-0000-0000-0000-000000000000', 330, 'zw2uepx4r45h', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', true, '2025-09-14 01:50:12.341543+00', '2025-09-20 22:23:20.055138+00', NULL, 'd299e43e-e2d3-4763-aa9e-c6b03e3beeaa'),
	('00000000-0000-0000-0000-000000000000', 338, '3yqilxj4wosh', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', false, '2025-09-20 22:23:20.067158+00', '2025-09-20 22:23:20.067158+00', 'zw2uepx4r45h', 'd299e43e-e2d3-4763-aa9e-c6b03e3beeaa'),
	('00000000-0000-0000-0000-000000000000', 339, 'xglg2jmq4tum', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', true, '2025-09-20 22:23:24.851873+00', '2025-09-21 21:08:07.209464+00', NULL, 'c18e0561-d36e-412b-9567-2adff763c0df'),
	('00000000-0000-0000-0000-000000000000', 340, 'pealdakju527', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', false, '2025-09-21 21:08:07.219967+00', '2025-09-21 21:08:07.219967+00', 'xglg2jmq4tum', 'c18e0561-d36e-412b-9567-2adff763c0df'),
	('00000000-0000-0000-0000-000000000000', 341, 'cnkmppezuai6', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', true, '2025-09-21 21:08:10.814074+00', '2025-09-21 22:22:09.793602+00', NULL, 'fa95c917-f94d-4919-b6cc-296670a53d9a'),
	('00000000-0000-0000-0000-000000000000', 342, '6dvhczavpse5', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', false, '2025-09-21 22:22:09.795024+00', '2025-09-21 22:22:09.795024+00', 'cnkmppezuai6', 'fa95c917-f94d-4919-b6cc-296670a53d9a'),
	('00000000-0000-0000-0000-000000000000', 332, 'nrff4xgfb25j', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', true, '2025-09-14 01:56:57.265824+00', '2025-09-21 22:45:45.780377+00', NULL, 'bc6d253e-49e7-4115-b90b-86bf29a6f5d7'),
	('00000000-0000-0000-0000-000000000000', 344, 'ruahgsrgesne', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', false, '2025-09-21 22:45:45.783263+00', '2025-09-21 22:45:45.783263+00', 'nrff4xgfb25j', 'bc6d253e-49e7-4115-b90b-86bf29a6f5d7'),
	('00000000-0000-0000-0000-000000000000', 343, 't6rz5pvozuzf', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', true, '2025-09-21 22:28:03.091338+00', '2025-09-24 01:31:48.609607+00', NULL, 'cf2aab1f-d57a-454c-90a4-e7d79906c9ac'),
	('00000000-0000-0000-0000-000000000000', 347, 'bvcu2cazsk3g', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', true, '2025-09-24 01:31:48.613264+00', '2025-09-27 03:11:04.547808+00', 't6rz5pvozuzf', 'cf2aab1f-d57a-454c-90a4-e7d79906c9ac'),
	('00000000-0000-0000-0000-000000000000', 351, 'xfhrjfiurdgm', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', false, '2025-09-27 03:11:04.554175+00', '2025-09-27 03:11:04.554175+00', 'bvcu2cazsk3g', 'cf2aab1f-d57a-454c-90a4-e7d79906c9ac'),
	('00000000-0000-0000-0000-000000000000', 352, 'xysneq575clv', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', false, '2025-09-27 03:11:08.039719+00', '2025-09-27 03:11:08.039719+00', NULL, '7d9ae2db-7cef-4a95-b0d3-1bbc870f72cc'),
	('00000000-0000-0000-0000-000000000000', 353, 'w6x267xqxnje', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', true, '2025-10-04 03:38:56.112086+00', '2025-10-04 15:59:14.356004+00', NULL, 'c1f7c935-6b72-4384-a63e-f5aea67f56e2'),
	('00000000-0000-0000-0000-000000000000', 354, 'ev5lyhzauz4m', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', false, '2025-10-04 15:59:14.362457+00', '2025-10-04 15:59:14.362457+00', 'w6x267xqxnje', 'c1f7c935-6b72-4384-a63e-f5aea67f56e2'),
	('00000000-0000-0000-0000-000000000000', 360, 'vweucn2pc3t3', '67f28c39-a33a-436d-b004-5418dacc32d6', true, '2025-10-08 21:43:53.272346+00', '2025-10-08 22:42:06.317738+00', NULL, 'b2f42c4c-c6e2-4c6e-b73f-92e57a8c7152'),
	('00000000-0000-0000-0000-000000000000', 361, 'w45hvkg2jlh3', '67f28c39-a33a-436d-b004-5418dacc32d6', true, '2025-10-08 22:42:06.320945+00', '2025-10-08 23:45:38.010179+00', 'vweucn2pc3t3', 'b2f42c4c-c6e2-4c6e-b73f-92e57a8c7152'),
	('00000000-0000-0000-0000-000000000000', 362, 't4rgzth46eu5', '67f28c39-a33a-436d-b004-5418dacc32d6', false, '2025-10-08 23:45:38.011478+00', '2025-10-08 23:45:38.011478+00', 'w45hvkg2jlh3', 'b2f42c4c-c6e2-4c6e-b73f-92e57a8c7152'),
	('00000000-0000-0000-0000-000000000000', 363, 'qiv7lkt7kqi4', '67f28c39-a33a-436d-b004-5418dacc32d6', true, '2025-10-08 23:45:41.145685+00', '2025-10-09 14:52:43.068412+00', NULL, '7f2aec1a-72bf-4638-804d-3d6540fbda21'),
	('00000000-0000-0000-0000-000000000000', 364, 'qhhyqo2ry7ht', '67f28c39-a33a-436d-b004-5418dacc32d6', false, '2025-10-09 14:52:43.08007+00', '2025-10-09 14:52:43.08007+00', 'qiv7lkt7kqi4', '7f2aec1a-72bf-4638-804d-3d6540fbda21'),
	('00000000-0000-0000-0000-000000000000', 365, 'w5rbfm3wupzp', '67f28c39-a33a-436d-b004-5418dacc32d6', true, '2025-10-09 14:52:54.718318+00', '2025-10-09 15:51:22.442385+00', NULL, 'c1f846b2-d9bd-4654-9a08-15129f69311c'),
	('00000000-0000-0000-0000-000000000000', 366, 'ahcgnpm7ck2d', '67f28c39-a33a-436d-b004-5418dacc32d6', false, '2025-10-09 15:51:22.443755+00', '2025-10-09 15:51:22.443755+00', 'w5rbfm3wupzp', 'c1f846b2-d9bd-4654-9a08-15129f69311c'),
	('00000000-0000-0000-0000-000000000000', 367, 'g3ahysdqnmwy', '67f28c39-a33a-436d-b004-5418dacc32d6', true, '2025-10-09 16:21:28.245742+00', '2025-10-09 17:19:37.712827+00', NULL, 'bb8b9d2c-6aca-4ebe-a66b-7f7062e97798'),
	('00000000-0000-0000-0000-000000000000', 368, '7gffsgi4eyan', '67f28c39-a33a-436d-b004-5418dacc32d6', true, '2025-10-09 17:19:37.714313+00', '2025-10-09 18:17:37.705485+00', 'g3ahysdqnmwy', 'bb8b9d2c-6aca-4ebe-a66b-7f7062e97798'),
	('00000000-0000-0000-0000-000000000000', 369, 'h22tco4b6aik', '67f28c39-a33a-436d-b004-5418dacc32d6', true, '2025-10-09 18:17:37.70609+00', '2025-10-09 19:15:37.833818+00', '7gffsgi4eyan', 'bb8b9d2c-6aca-4ebe-a66b-7f7062e97798'),
	('00000000-0000-0000-0000-000000000000', 370, 'wfh7cuvnybeg', '67f28c39-a33a-436d-b004-5418dacc32d6', true, '2025-10-09 19:15:37.835847+00', '2025-10-09 20:13:37.906667+00', 'h22tco4b6aik', 'bb8b9d2c-6aca-4ebe-a66b-7f7062e97798'),
	('00000000-0000-0000-0000-000000000000', 371, 'xgf77dfd56rm', '67f28c39-a33a-436d-b004-5418dacc32d6', false, '2025-10-09 20:13:37.907356+00', '2025-10-09 20:13:37.907356+00', 'wfh7cuvnybeg', 'bb8b9d2c-6aca-4ebe-a66b-7f7062e97798'),
	('00000000-0000-0000-0000-000000000000', 372, '7mgxrc3qnn2q', '67f28c39-a33a-436d-b004-5418dacc32d6', true, '2025-10-09 20:25:34.270559+00', '2025-10-09 22:44:55.368036+00', NULL, '025e5bc7-e77f-4697-9baf-074bb3371a5e'),
	('00000000-0000-0000-0000-000000000000', 374, 'dmivypxvn2b4', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', false, '2025-10-13 04:46:02.163084+00', '2025-10-13 04:46:02.163084+00', NULL, '3c56eb3c-b156-4e2e-be0f-8e57d66496cb'),
	('00000000-0000-0000-0000-000000000000', 355, 'xwz4wjvxpjzw', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', true, '2025-10-04 15:59:20.589133+00', '2025-10-20 23:11:08.604361+00', NULL, 'b1b2bfa8-8892-4ea4-8eff-957dee5d0c2f'),
	('00000000-0000-0000-0000-000000000000', 375, 'b2pzhpuuhuoa', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', false, '2025-10-20 23:11:08.624164+00', '2025-10-20 23:11:08.624164+00', 'xwz4wjvxpjzw', 'b1b2bfa8-8892-4ea4-8eff-957dee5d0c2f'),
	('00000000-0000-0000-0000-000000000000', 385, '7dsvehcjr5cf', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', false, '2025-11-09 02:02:36.176256+00', '2025-11-09 02:02:36.176256+00', 'tifjf44gpzhy', 'a122d898-a55d-43dd-8ee7-d604f4d51f70'),
	('00000000-0000-0000-0000-000000000000', 387, 'il7ja5peucna', '67f28c39-a33a-436d-b004-5418dacc32d6', false, '2025-11-12 22:43:06.828188+00', '2025-11-12 22:43:06.828188+00', 'yvjtdt75zcvd', 'ec297f9e-a599-45c7-9474-4c4e0a44d4c7'),
	('00000000-0000-0000-0000-000000000000', 388, 'gde4q7jc5hcr', '67f28c39-a33a-436d-b004-5418dacc32d6', true, '2025-11-12 22:43:09.021255+00', '2025-11-12 23:47:32.37176+00', NULL, 'e031f888-45ba-4354-83c9-fb61e3dc0673'),
	('00000000-0000-0000-0000-000000000000', 390, 'hkuln7uvkavs', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', false, '2025-11-14 00:51:04.831945+00', '2025-11-14 00:51:04.831945+00', '3ikltijhxj5f', 'c30c81f4-7426-4efd-8afa-60e379717b96'),
	('00000000-0000-0000-0000-000000000000', 391, 'ts7ilxawsp3r', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', true, '2025-11-14 00:51:09.85113+00', '2025-11-21 12:19:56.956776+00', NULL, 'ffb6b8e2-418b-42bf-99a0-93251cbd56ea'),
	('00000000-0000-0000-0000-000000000000', 392, '7ib2oinjsq76', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', false, '2025-11-21 12:19:56.98027+00', '2025-11-21 12:19:56.98027+00', 'ts7ilxawsp3r', 'ffb6b8e2-418b-42bf-99a0-93251cbd56ea'),
	('00000000-0000-0000-0000-000000000000', 389, 'kasfue3mnyff', '67f28c39-a33a-436d-b004-5418dacc32d6', true, '2025-11-12 23:47:32.392096+00', '2025-11-21 17:23:22.15524+00', 'gde4q7jc5hcr', 'e031f888-45ba-4354-83c9-fb61e3dc0673'),
	('00000000-0000-0000-0000-000000000000', 394, 'ea6iauvo7krz', '67f28c39-a33a-436d-b004-5418dacc32d6', false, '2025-11-21 17:23:22.174722+00', '2025-11-21 17:23:22.174722+00', 'kasfue3mnyff', 'e031f888-45ba-4354-83c9-fb61e3dc0673'),
	('00000000-0000-0000-0000-000000000000', 395, 'ansmes5pqh3s', '67f28c39-a33a-436d-b004-5418dacc32d6', true, '2025-11-21 17:23:24.723999+00', '2025-11-21 23:12:25.221834+00', NULL, '001128a4-e030-4643-92c6-2434deda34d3'),
	('00000000-0000-0000-0000-000000000000', 396, '7je4ywmt45g4', '67f28c39-a33a-436d-b004-5418dacc32d6', false, '2025-11-21 23:12:25.243062+00', '2025-11-21 23:12:25.243062+00', 'ansmes5pqh3s', '001128a4-e030-4643-92c6-2434deda34d3'),
	('00000000-0000-0000-0000-000000000000', 393, 's5q6c6cmouv5', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', true, '2025-11-21 12:20:02.220615+00', '2025-11-25 06:33:11.666436+00', NULL, '2abb7d06-45bd-4b01-b315-23a978665b83'),
	('00000000-0000-0000-0000-000000000000', 397, 'vbn6j42dopvd', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', false, '2025-11-25 06:33:11.680913+00', '2025-11-25 06:33:11.680913+00', 's5q6c6cmouv5', '2abb7d06-45bd-4b01-b315-23a978665b83'),
	('00000000-0000-0000-0000-000000000000', 398, 'xzyw2tgqzu7s', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', false, '2025-11-25 06:33:16.948142+00', '2025-11-25 06:33:16.948142+00', NULL, 'fb2e51de-86e4-4625-a981-c1e3b55653f8'),
	('00000000-0000-0000-0000-000000000000', 386, 'bghf4ig7fxua', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', true, '2025-11-09 02:02:40.811442+00', '2025-12-29 23:54:04.941474+00', NULL, '3399daa4-b3a0-4cbe-adf2-b18148c9aac1'),
	('00000000-0000-0000-0000-000000000000', 399, 'tjuzb5we6nsc', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', false, '2025-12-29 23:54:04.955602+00', '2025-12-29 23:54:04.955602+00', 'bghf4ig7fxua', '3399daa4-b3a0-4cbe-adf2-b18148c9aac1'),
	('00000000-0000-0000-0000-000000000000', 400, '4k5gyvdsfgom', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', true, '2025-12-29 23:54:09.201318+00', '2026-01-09 01:35:24.345301+00', NULL, '2db8f7d8-0091-4d1f-adc0-272bb39957fc'),
	('00000000-0000-0000-0000-000000000000', 401, 'xzxq7n6no4pf', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', false, '2026-01-09 01:35:24.366572+00', '2026-01-09 01:35:24.366572+00', '4k5gyvdsfgom', '2db8f7d8-0091-4d1f-adc0-272bb39957fc'),
	('00000000-0000-0000-0000-000000000000', 402, 'u6hng6wrbl5d', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', false, '2026-01-09 01:35:28.333518+00', '2026-01-09 01:35:28.333518+00', NULL, 'dfa627f0-68e6-4720-887b-d9f3c11fdbb8');


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: brand_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."brand_type" ("active", "created_at", "updated_at", "id", "type") VALUES
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 1, 'Automotive'),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 2, 'Heavy-Duty');


--
-- Data for Name: brand; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."brand" ("active", "created_at", "updated_at", "id", "name", "brand_type_id") VALUES
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 1, 'Acura', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 2, 'Pontiac', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 3, 'Chrysler / Jeep', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 4, 'Infiniti', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 5, 'Saab', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 6, 'Subaru', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 7, 'Honda', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 8, 'Suzuki', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 9, 'Hyundai', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 10, 'Toyota', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 11, 'Mercedes-Benz', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 12, 'BMW', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 13, 'Nissan', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 14, 'Renault', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 15, 'Volkswagen', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 16, 'Ford', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 17, 'MG', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 18, 'Audi', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 19, 'Kia', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 20, 'Porsche', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 21, 'Land Rover', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 22, 'MINI', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 23, 'Fiat', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 24, 'Jaguar', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 25, 'Isuzu', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 26, 'Volvo', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 27, 'Lexus', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 28, 'Chevrolet / GM', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 29, 'Datsun', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 30, 'Mitsubishi', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 31, 'Seat', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 32, 'Peugeot', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 33, 'Mazda', 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 34, 'Case', 2),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 35, 'John Deere', 2),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 36, 'Kenworth', 2),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 37, 'Perkins', 2),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 38, 'Scania', 2),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 39, 'Caterpillar', 2),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 40, 'Ford', 2),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 41, 'Freightliner', 2),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 42, 'Hino', 2),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 43, 'International', 2),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 44, 'Mercedes', 2),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 45, 'Peterbilt', 2),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 46, 'Toyota', 2),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 47, 'Volvo', 2),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 48, 'Baic', 1);


--
-- Data for Name: car_model; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."car_model" ("active", "created_at", "updated_at", "id", "name", "brand_id") VALUES
	(true, '2024-09-09 02:14:13.371', '2024-09-09 02:14:13.371', 6, 'F150', 16),
	(true, '2024-09-09 02:14:54.297', '2024-09-09 02:14:54.297', 7, 'LOBO', 16),
	(true, '2024-09-09 02:15:08.181', '2024-09-09 02:15:08.181', 8, 'EXPEDITION', 16),
	(true, '2024-09-09 02:15:28.335', '2024-09-09 02:15:28.335', 9, 'NAVIGATOR', 16),
	(true, '2025-04-01 04:09:08.957559', '2025-04-01 04:09:08.957559', 12, 'F350 SUPER DUTY', 16),
	(true, '2025-04-01 17:59:11.721809', '2025-04-01 17:59:11.721809', 13, 'EXPLORER', 16),
	(true, '2025-04-01 17:59:57.686116', '2025-04-01 17:59:57.686116', 14, 'SPORT TRAC', 16),
	(true, '2025-04-01 18:00:22.481042', '2025-04-01 18:00:22.481042', 15, 'MOUNTAINEER', 16),
	(true, '2025-04-07 02:44:47.895933', '2025-04-07 02:44:47.895933', 16, 'ML', 11),
	(true, '2025-04-07 02:45:04.755666', '2025-04-07 02:45:04.755666', 17, 'GL', 11),
	(true, '2025-04-13 23:41:09.429475', '2025-04-13 23:41:09.429475', 18, 'A180', 11),
	(false, '2024-09-09 01:36:55.613', '2024-09-09 01:36:55.613', 2, 'F150', 40),
	(false, '2024-09-09 01:38:14.445', '2024-09-09 01:38:14.445', 4, 'EXPEDITION', 40),
	(false, '2024-09-09 01:38:53.085', '2024-09-09 01:38:53.085', 5, 'NAVIGATOR', 40),
	(false, '2025-04-01 03:49:33.099033', '2025-04-01 03:49:33.099033', 11, 'F350 ', 40),
	(true, '2025-05-08 22:28:52.645957', '2025-05-08 22:28:52.645957', 20, 'KANGOO', 14),
	(true, '2025-05-08 22:31:58.414455', '2025-05-08 22:31:58.414455', 21, 'DUSTER OSHO', 14),
	(true, '2025-05-08 22:32:41.699599', '2025-05-08 22:32:41.699599', 22, 'OROCH', 14),
	(true, '2025-05-08 23:14:17.201558', '2025-05-08 23:14:17.201558', 23, 'MINI COOPER', 22),
	(true, '2025-05-09 21:19:42.416299', '2025-05-09 21:19:42.416299', 26, 'BMW X1', 12),
	(true, '2025-05-09 21:20:24.180133', '2025-05-09 21:20:24.180133', 27, 'BMW X2', 12),
	(false, '2025-05-08 23:15:49.515797', '2025-05-08 23:15:49.515797', 24, 'X1', 12),
	(false, '2025-05-08 23:16:22.748236', '2025-05-08 23:16:22.748236', 25, 'X2', 12),
	(true, '2025-04-13 23:41:35.448714', '2025-04-13 23:41:35.448714', 19, 'A200', 11),
	(true, '2025-06-16 22:50:32.169028', '2025-06-16 22:50:32.169028', 28, 'UP', 15),
	(true, '2025-06-16 23:23:19.490469', '2025-06-16 23:23:19.490469', 29, 'CHEROKEE', 3),
	(true, '2025-06-30 23:14:40.672382', '2025-06-30 23:14:40.672382', 30, 'Q5', 18),
	(false, '2024-08-28 22:03:11.74', '2024-08-28 22:03:11.74', 1, 'A3', 18),
	(false, '2024-09-09 01:37:58.337', '2024-09-09 01:37:58.337', 3, 'AUDI A3', 18),
	(true, '2025-06-30 23:42:48.455238', '2025-06-30 23:42:48.455238', 31, 'AVEO', 28),
	(true, '2025-06-30 23:49:33.697479', '2025-06-30 23:49:33.697479', 32, 'GROOVE', 28),
	(true, '2025-06-30 23:59:25.443325', '2025-06-30 23:59:25.443325', 33, 'INSIGHT', 7),
	(true, '2025-07-01 00:03:38.740353', '2025-07-01 00:03:38.740353', 34, '320i', 12),
	(true, '2025-07-10 22:40:53.246329', '2025-07-10 22:40:53.246329', 35, 'RIO', 19),
	(true, '2025-07-10 22:41:56.215988', '2025-07-10 22:41:56.215988', 36, 'ACCENT', 9),
	(true, '2025-07-10 23:09:32.857115', '2025-07-10 23:09:32.857115', 37, 'ECOSPORT', 16),
	(true, '2025-07-10 23:29:50.353001', '2025-07-10 23:29:50.353001', 38, '508', 32),
	(true, '2025-07-10 23:52:34.753818', '2025-07-10 23:52:34.753818', 39, 'CRETA', 9),
	(true, '2025-08-13 22:50:24.620659', '2025-08-13 22:50:24.620659', 41, 'DURANGO', 3),
	(false, '2025-08-13 22:50:24.369492', '2025-08-13 22:50:24.369492', 40, 'DURANGO', 3),
	(true, '2025-08-29 16:20:59.357162', '2025-08-29 16:20:59.357162', 42, 'Uno attractive ', 23),
	(true, '2025-08-29 18:34:46.581198', '2025-08-29 18:34:46.581198', 43, 'Palio', 23),
	(true, '2025-08-29 18:35:58.398851', '2025-08-29 18:35:58.398851', 44, 'VISION', 3),
	(true, '2025-08-29 18:36:30.798633', '2025-08-29 18:36:30.798633', 45, 'RAM PROMASTER RAPID', 3),
	(true, '2025-09-13 02:13:55.919438', '2025-09-13 02:13:55.919438', 46, 'TRACKER', 8),
	(true, '2025-10-08 21:17:56.111955', '2025-10-08 21:17:56.111955', 47, 'Q7', 18),
	(true, '2025-10-08 21:21:20.418275', '2025-10-08 21:21:20.418275', 48, 'A4', 18),
	(true, '2025-10-08 21:36:48.568813', '2025-10-08 21:36:48.568813', 49, 'A6', 18),
	(true, '2025-10-08 21:42:23.037181', '2025-10-08 21:42:23.037181', 50, 'JETTA A4', 18);


--
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: vehicle; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: client_vehicle; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: control_fields; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: file_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."file_type" ("active", "created_at", "updated_at", "id", "name") VALUES
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 1, 'Brand Image'),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 2, 'Product Image');


--
-- Data for Name: file; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."file" ("active", "created_at", "updated_at", "id", "name", "mime_type", "storage_path", "object_id", "order_id", "file_type_id") VALUES
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 1, 'Acura Logo', 'image/png', '/brands/logos/acura.png', 1, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 2, 'Pontiac Logo', 'image/png', '/brands/logos/pontiac.png', 2, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 3, 'Chrysler Logo', 'image/jpeg', '/brands/logos/chrysler.jpg', 3, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 4, 'Infiniti Logo', 'image/jpeg', '/brands/logos/infiniti.jpg', 4, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 5, 'Saab Logo', 'image/jpeg', '/brands/logos/saab.jpg', 5, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 6, 'Subaru Logo', 'image/png', '/brands/logos/subaru.png', 6, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 7, 'Honda Logo', 'image/png', '/brands/logos/honda.png', 7, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 8, 'Suzuki Logo', 'image/jpeg', '/brands/logos/suzuki.jpg', 8, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 9, 'Hyundai Logo', 'image/jpeg', '/brands/logos/hyundai.jpg', 9, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 10, 'Toyota Logo', 'image/png', '/brands/logos/toyota.png', 10, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 11, 'Mercedes-Benz Logo', 'image/jpeg', '/brands/logos/mercedes.jpeg', 11, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 12, 'BMW Logo', 'image/png', '/brands/logos/bmw.png', 12, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 13, 'Nissan Logo', 'image/jpeg', '/brands/logos/nissan.jpeg', 13, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 14, 'Renault Logo', 'image/jpeg', '/brands/logos/renault.jpeg', 14, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 15, 'Volkswagen Logo', 'image/png', '/brands/logos/volkswagen.png', 15, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 16, 'Ford Logo', 'image/jpeg', '/brands/logos/ford.jpeg', 16, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 17, 'MG Logo', 'image/jpeg', '/brands/logos/mg.jpg', 17, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 18, 'Audi Logo', 'image/jpeg', '/brands/logos/audi.jpg', 18, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 19, 'Kia Logo', 'image/jpeg', '/brands/logos/kia.jpg', 19, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 20, 'Porsche Logo', 'image/jpeg', '/brands/logos/porsche.jpg', 20, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 21, 'Land Rover Logo', 'image/png', '/brands/logos/land_rover.png', 21, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 22, 'MINI Logo', 'image/jpeg', '/brands/logos/mini.jpg', 22, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 23, 'Fiat Logo', 'image/jpeg', '/brands/logos/fiat.jpg', 23, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 24, 'Jaguar Logo', 'image/jpeg', '/brands/logos/jaguar.jpg', 24, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 25, 'Isuzu Logo', 'image/jpeg', '/brands/logos/isuzu.jpg', 25, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 26, 'Volvo Logo', 'image/jpeg', '/brands/logos/volvo.jpg', 26, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 27, 'Lexus Logo', 'image/jpeg', '/brands/logos/lexus.jpg', 27, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 28, 'Chevrolet Logo', 'image/png', '/brands/logos/chevrolet.png', 28, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 29, 'Datsun Logo', 'image/png', '/brands/logos/datsun.png', 29, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 30, 'Mitsubishi Logo', 'image/jpeg', '/brands/logos/mitsubishi.jpg', 30, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 31, 'Seat Logo', 'image/png', '/brands/logos/seat.png', 31, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 32, 'Peugeot Logo', 'image/jpeg', '/brands/logos/peugeot.jpg', 32, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 33, 'Mazda Logo', 'image/jpeg', '/brands/logos/mazda.jpg', 33, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 34, 'Case Logo', 'image/png', '/brands/logos/case.png', 34, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 35, 'John Deere Logo', 'image/png', '/brands/logos/john_deere.png', 35, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 36, 'Kenworth Logo', 'image/png', '/brands/logos/kenworth.png', 36, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 37, 'Perkins Logo', 'image/png', '/brands/logos/perkins.png', 37, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 38, 'Scania Logo', 'image/png', '/brands/logos/scania.png', 38, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 39, 'Caterpillar Logo', 'image/png', '/brands/logos/caterpillar.png', 39, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 40, 'Ford Trucks Logo', 'image/jpeg', '/brands/logos/ford.jpeg', 40, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 41, 'Freightliner Logo', 'image/jpeg', '/brands/logos/freightliner.jpg', 41, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 42, 'Hino Logo', 'image/png', '/brands/logos/hino.png', 42, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 43, 'International Logo', 'image/jpeg', '/brands/logos/international.jpg', 43, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 44, 'Mercedes Trucks Logo', 'image/jpeg', '/brands/logos/mercedes.jpeg', 44, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 45, 'Peterbilt Logo', 'image/png', '/brands/logos/peterbilt.png', 45, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 46, 'Toyota Trucks Logo', 'image/png', '/brands/logos/toyota.png', 46, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 47, 'Volvo Trucks Logo', 'image/jpeg', '/brands/logos/volvo.jpg', 47, NULL, 1),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 48, 'Baic Logo', 'image/jpeg', '/brands/logos/baic.jpg', 48, NULL, 1),
	(true, '2024-08-28 22:04:17.822702', '2024-08-28 22:04:17.822702', 49, '3eac9741-b20d-4aac-a288-d12ead68721c', 'image/jpeg', '/products/images/3eac9741-b20d-4aac-a288-d12ead68721c', 1, 1, 2),
	(true, '2024-08-28 22:04:17.827813', '2024-08-28 22:04:17.827813', 50, 'bb28cbbe-85bd-45b5-80b8-fc4f80463810', 'image/png', '/products/images/bb28cbbe-85bd-45b5-80b8-fc4f80463810', 1, 2, 2),
	(true, '2025-04-01 03:59:07.293855', '2025-04-30 01:19:59.929811', 59, '8974ee4b-2577-4360-93f9-9b7a37d5dea0', 'image/webp', 'products/images/8974ee4b-2577-4360-93f9-9b7a37d5dea0', 5, 1, 2),
	(true, '2025-04-01 03:59:07.293855', '2025-04-30 01:19:59.929811', 60, 'e6183337-e315-4918-a71c-61eb9a6e092a', 'image/webp', 'products/images/e6183337-e315-4918-a71c-61eb9a6e092a', 5, 2, 2),
	(true, '2025-04-07 02:52:53.327246', '2025-04-07 02:52:53.327246', 64, '1f139847-899f-48a8-9329-41f4e055bda9', 'image/webp', 'products/images/1f139847-899f-48a8-9329-41f4e055bda9', 7, 1, 2),
	(true, '2025-04-07 02:52:53.327246', '2025-04-07 02:52:53.327246', 65, '06423099-ea12-4d9d-9ae2-4755a6a6c7db', 'image/webp', 'products/images/06423099-ea12-4d9d-9ae2-4755a6a6c7db', 7, 2, 2),
	(true, '2025-04-07 02:52:53.327246', '2025-04-07 02:52:53.327246', 66, '0978d9bc-3f00-41e3-9802-072004ede8ba', 'image/webp', 'products/images/0978d9bc-3f00-41e3-9802-072004ede8ba', 7, 3, 2),
	(true, '2025-04-01 18:11:09.420789', '2025-04-13 23:02:59.521433', 62, 'a4e7da3b-17c7-4c0e-b784-d6e0fe1ec386', 'image/jpeg', 'products/images/a4e7da3b-17c7-4c0e-b784-d6e0fe1ec386', 6, 1, 2),
	(true, '2025-04-01 18:11:09.420789', '2025-04-13 23:02:59.521433', 63, '44908a74-ad7c-41d7-b64a-2bf3d8167481', 'image/jpeg', 'products/images/44908a74-ad7c-41d7-b64a-2bf3d8167481', 6, 2, 2),
	(true, '2025-04-13 23:46:21.597718', '2025-04-13 23:46:21.597718', 67, 'ce4f3f71-61e0-4301-a197-a52cf5993c2d', 'image/webp', 'products/images/ce4f3f71-61e0-4301-a197-a52cf5993c2d', 8, 1, 2),
	(true, '2025-04-13 23:46:21.597718', '2025-04-13 23:46:21.597718', 68, '3fdb5f03-d3d7-40a5-8ba9-c96313f93c05', 'image/webp', 'products/images/3fdb5f03-d3d7-40a5-8ba9-c96313f93c05', 8, 2, 2),
	(true, '2025-04-13 23:46:21.597718', '2025-04-13 23:46:21.597718', 69, 'a06a63bb-6b85-4de0-bbb5-ed64576e0729', 'image/webp', 'products/images/a06a63bb-6b85-4de0-bbb5-ed64576e0729', 8, 3, 2),
	(true, '2025-04-13 23:46:21.597718', '2025-04-13 23:46:21.597718', 70, '5c68a426-d9e6-496b-9d63-a6470b33b5e6', 'image/webp', 'products/images/5c68a426-d9e6-496b-9d63-a6470b33b5e6', 8, 4, 2),
	(true, '2025-04-28 19:34:56.727615', '2025-06-09 21:15:14.089265', 71, '54748c9c-5d1e-48fb-b15d-218915f89c5f', 'image/png', 'products/images/54748c9c-5d1e-48fb-b15d-218915f89c5f', 3, 1, 2),
	(true, '2025-04-28 19:34:56.727615', '2025-06-09 21:15:14.089265', 72, '0b9a6019-18e6-4eb1-afba-f01f71746c9f', 'image/png', 'products/images/0b9a6019-18e6-4eb1-afba-f01f71746c9f', 3, 2, 2),
	(true, '2025-04-01 04:26:55.645669', '2025-04-30 01:19:59.929811', 61, 'd6a827d2-a9e0-4460-8fdb-818eb5b1e5fa', 'image/webp', 'products/images/d6a827d2-a9e0-4460-8fdb-818eb5b1e5fa', 5, 3, 2),
	(true, '2025-05-08 22:35:15.444569', '2025-05-08 22:35:15.444569', 79, '370dd647-01c5-4160-bfe7-2314d61401a6', 'image/jpeg', 'products/images/370dd647-01c5-4160-bfe7-2314d61401a6', 9, 1, 2),
	(true, '2025-05-08 22:35:15.444569', '2025-05-08 22:35:15.444569', 80, '110dbc44-292e-49fe-a60f-2dcb6250fd17', 'image/jpeg', 'products/images/110dbc44-292e-49fe-a60f-2dcb6250fd17', 9, 2, 2),
	(true, '2025-06-16 23:23:36.471869', '2025-06-16 23:23:36.471869', 88, 'd5b8f162-54e9-4598-b46d-06fd80b7c632', 'image/jpeg', 'products/images/d5b8f162-54e9-4598-b46d-06fd80b7c632', 13, 1, 2),
	(true, '2025-06-16 23:23:36.471869', '2025-06-16 23:23:36.471869', 89, '1db3f109-f458-47e7-82aa-95c86152cd73', 'image/jpeg', 'products/images/1db3f109-f458-47e7-82aa-95c86152cd73', 13, 2, 2),
	(true, '2025-05-08 23:19:48.265516', '2025-05-09 21:22:24.209236', 81, 'bb9692f3-1cc6-40aa-a796-65b7bd4a4a0b', 'image/jpeg', 'products/images/bb9692f3-1cc6-40aa-a796-65b7bd4a4a0b', 10, 1, 2),
	(true, '2025-04-28 19:48:43.679715', '2025-05-09 21:57:47.405815', 75, 'f822dfc6-9de5-4ea2-ba3c-c33146c41dcf', 'image/png', 'products/images/f822dfc6-9de5-4ea2-ba3c-c33146c41dcf', 2, 1, 2),
	(true, '2025-04-28 19:48:43.679715', '2025-05-09 21:57:47.405815', 76, 'af55162c-d68d-4888-8340-d61a72d523a3', 'image/png', 'products/images/af55162c-d68d-4888-8340-d61a72d523a3', 2, 2, 2),
	(true, '2025-04-28 19:48:43.679715', '2025-05-09 21:57:47.405815', 77, '76545d87-8273-4d4b-8e93-3835582b0d45', 'image/png', 'products/images/76545d87-8273-4d4b-8e93-3835582b0d45', 2, 3, 2),
	(true, '2025-04-28 19:48:43.679715', '2025-05-09 21:57:47.405815', 78, '0d065a0c-fc40-4258-930f-194cf1e98c6f', 'image/png', 'products/images/0d065a0c-fc40-4258-930f-194cf1e98c6f', 2, 4, 2),
	(true, '2025-06-16 23:23:36.471869', '2025-06-16 23:23:36.471869', 90, '812c0a52-49a0-4f39-9ffb-452145ad649f', 'image/jpeg', 'products/images/812c0a52-49a0-4f39-9ffb-452145ad649f', 13, 3, 2),
	(true, '2025-05-29 04:50:08.043605', '2025-05-30 03:09:15.886068', 82, '64d91b52-4620-4297-b894-bddc16a0c36a', 'image/png', 'products/images/64d91b52-4620-4297-b894-bddc16a0c36a', 11, 1, 2),
	(true, '2025-05-29 04:50:08.043605', '2025-05-30 03:09:15.886068', 83, 'cd52744b-2176-44c1-97c8-416a1691c5a2', 'image/png', 'products/images/cd52744b-2176-44c1-97c8-416a1691c5a2', 11, 2, 2),
	(true, '2025-05-29 04:50:08.043605', '2025-05-30 03:09:15.886068', 84, '2b94576a-23a4-495c-b64e-b90fe5ac380b', 'image/png', 'products/images/2b94576a-23a4-495c-b64e-b90fe5ac380b', 11, 3, 2),
	(true, '2025-05-29 04:50:08.043605', '2025-05-30 03:09:15.886068', 85, 'd38dc30f-8bc5-485b-8505-6feb3cbfa31e', 'image/png', 'products/images/d38dc30f-8bc5-485b-8505-6feb3cbfa31e', 11, 4, 2),
	(true, '2025-04-28 19:38:21.709919', '2025-06-09 20:59:38.881871', 73, 'ea8bc0df-a3f3-4e6f-8df2-af547e3dc36e', 'image/png', 'products/images/ea8bc0df-a3f3-4e6f-8df2-af547e3dc36e', 4, 1, 2),
	(true, '2025-04-28 19:38:21.709919', '2025-06-09 20:59:38.881871', 74, '406261d4-bcd2-405a-bf68-7eede5b04192', 'image/png', 'products/images/406261d4-bcd2-405a-bf68-7eede5b04192', 4, 2, 2),
	(true, '2025-06-16 22:54:11.696887', '2025-07-10 22:51:47.121925', 87, '1a2a3d42-3e14-4041-ab8e-c4cf3ae03b77', 'image/png', 'products/images/1a2a3d42-3e14-4041-ab8e-c4cf3ae03b77', 12, 2, 2),
	(true, '2025-06-30 23:49:44.119686', '2025-06-30 23:49:44.119686', 95, '62730cec-243f-46f2-b100-b406a7c1bbb7', 'image/jpeg', 'products/images/62730cec-243f-46f2-b100-b406a7c1bbb7', 16, 1, 2),
	(true, '2025-06-30 23:59:55.557848', '2025-06-30 23:59:55.557848', 96, '3ba14f38-31f8-4c7f-9b55-2d8621f9fcd2', 'image/jpeg', 'products/images/3ba14f38-31f8-4c7f-9b55-2d8621f9fcd2', 17, 1, 2),
	(true, '2025-06-30 23:59:55.557848', '2025-06-30 23:59:55.557848', 97, 'a218d9b2-2802-425a-8c2a-3af0097f3479', 'image/jpeg', 'products/images/a218d9b2-2802-425a-8c2a-3af0097f3479', 17, 2, 2),
	(true, '2025-07-01 00:07:34.902344', '2025-07-01 00:07:34.902344', 98, '5541606e-a1aa-4936-bd51-b4c90e10e99b', 'image/jpeg', 'products/images/5541606e-a1aa-4936-bd51-b4c90e10e99b', 18, 1, 2),
	(true, '2025-07-10 23:11:19.806973', '2025-07-10 23:13:51.411315', 103, '294d03b3-7709-4397-a04a-ae1f1e588097', 'image/jpeg', 'products/images/294d03b3-7709-4397-a04a-ae1f1e588097', 20, 1, 2),
	(true, '2025-07-10 22:47:25.396787', '2025-07-10 22:47:25.396787', 101, 'df0089e1-f0c4-4ae7-961b-1f6f76cea31f', 'image/jpeg', 'products/images/df0089e1-f0c4-4ae7-961b-1f6f76cea31f', 19, 1, 2),
	(true, '2025-07-10 22:47:25.396787', '2025-07-10 22:47:25.396787', 102, 'd09a2c08-ed9a-44a2-9cfb-709d27de8fb3', 'image/jpeg', 'products/images/d09a2c08-ed9a-44a2-9cfb-709d27de8fb3', 19, 2, 2),
	(true, '2025-06-16 22:54:11.696887', '2025-07-10 22:51:47.121925', 86, '74ec6d2d-0784-41c0-ae26-07d2bea2b1d1', 'image/png', 'products/images/74ec6d2d-0784-41c0-ae26-07d2bea2b1d1', 12, 2, 2),
	(true, '2025-07-10 23:11:19.806973', '2025-07-10 23:13:51.411315', 104, 'a0dff005-98e5-4efe-af9d-84ce12f8106c', 'image/jpeg', 'products/images/a0dff005-98e5-4efe-af9d-84ce12f8106c', 20, 2, 2),
	(true, '2025-07-10 23:11:19.806973', '2025-07-10 23:13:51.411315', 105, '01a329d3-4f11-4872-96c9-8e5c991dc5e6', 'image/jpeg', 'products/images/01a329d3-4f11-4872-96c9-8e5c991dc5e6', 20, 3, 2),
	(true, '2025-07-10 23:30:58.620133', '2025-07-10 23:30:58.620133', 106, 'fd4e2457-7057-42a5-81f6-8987892da62a', 'image/png', 'products/images/fd4e2457-7057-42a5-81f6-8987892da62a', 21, 1, 2),
	(true, '2025-07-10 23:30:58.620133', '2025-07-10 23:30:58.620133', 107, '2b311dcb-5ad3-44b6-9215-d08ee75dc840', 'image/jpeg', 'products/images/2b311dcb-5ad3-44b6-9215-d08ee75dc840', 21, 2, 2),
	(true, '2025-07-10 23:52:52.562339', '2025-07-10 23:55:20.094087', 108, '8b28c55c-9145-4aee-b07a-80d35f694500', 'image/jpeg', 'products/images/8b28c55c-9145-4aee-b07a-80d35f694500', 22, 1, 2),
	(true, '2025-07-10 23:52:52.562339', '2025-07-10 23:55:20.094087', 109, 'aa90ab6c-ce5b-4619-bcc2-a5f63464d921', 'image/jpeg', 'products/images/aa90ab6c-ce5b-4619-bcc2-a5f63464d921', 22, 2, 2),
	(true, '2025-07-10 23:52:52.562339', '2025-07-10 23:55:20.094087', 110, 'd91d6d84-f81e-4458-ac5b-88e69fbdbed2', 'image/jpeg', 'products/images/d91d6d84-f81e-4458-ac5b-88e69fbdbed2', 22, 3, 2),
	(true, '2025-08-13 22:56:10.506873', '2025-08-13 22:56:10.506873', 111, '853ad243-44d4-4dbb-8953-799432759214', 'image/jpeg', 'products/images/853ad243-44d4-4dbb-8953-799432759214', 23, 1, 2),
	(true, '2025-08-13 23:29:28.19409', '2025-08-13 23:29:28.19409', 112, '3bb808fc-56e2-43ea-9c24-47c347c32577', 'image/jpeg', 'products/images/3bb808fc-56e2-43ea-9c24-47c347c32577', 24, 1, 2),
	(true, '2025-08-13 23:29:28.19409', '2025-08-13 23:29:28.19409', 113, '645e4e12-bc62-47a3-ac0e-8eaeed7dc96d', 'image/jpeg', 'products/images/645e4e12-bc62-47a3-ac0e-8eaeed7dc96d', 24, 2, 2),
	(true, '2025-08-13 23:36:15.159666', '2025-08-13 23:36:15.159666', 114, 'f9c4240e-1c39-4400-9f4d-588f0f51136e', 'image/jpeg', 'products/images/f9c4240e-1c39-4400-9f4d-588f0f51136e', 25, 1, 2),
	(true, '2025-08-13 23:36:15.159666', '2025-08-13 23:36:15.159666', 115, '5be6bd6d-0ba2-4ee2-85fb-7c8c39786de8', 'image/jpeg', 'products/images/5be6bd6d-0ba2-4ee2-85fb-7c8c39786de8', 25, 2, 2),
	(true, '2025-08-29 16:25:14.701632', '2025-08-29 16:25:14.701632', 116, 'ab50c90d-6bb8-41ef-b55b-e6201e803a83', 'image/jpeg', 'products/images/ab50c90d-6bb8-41ef-b55b-e6201e803a83', 26, 1, 2),
	(true, '2025-08-29 18:37:01.3554', '2025-08-29 18:37:01.3554', 117, 'f9fd3495-1c16-4964-b7d5-1ded03495030', 'image/jpeg', 'products/images/f9fd3495-1c16-4964-b7d5-1ded03495030', 27, 1, 2),
	(true, '2025-06-30 23:18:26.800104', '2025-10-08 23:47:51.22002', 91, 'e9249cd9-3471-49f8-a0cc-4f313a6f8c09', 'image/jpeg', 'products/images/e9249cd9-3471-49f8-a0cc-4f313a6f8c09', 14, 1, 2),
	(true, '2025-06-30 23:43:08.81727', '2025-09-13 03:53:00.240344', 94, 'abe7bddb-16d6-4e0a-83f5-1f390e913009', 'image/jpeg', 'products/images/abe7bddb-16d6-4e0a-83f5-1f390e913009', 15, 1, 2),
	(true, '2025-09-13 02:17:14.239792', '2025-09-14 01:57:39.626366', 118, '4f7f8a20-98e1-4290-930e-f2ec42018d4d.jpg', 'image/jpeg', 'products/images/4f7f8a20-98e1-4290-930e-f2ec42018d4d.jpg', 28, 1, 2),
	(true, '2025-09-13 02:17:14.239792', '2025-09-14 01:57:39.626366', 119, '8ecad0ff-4de6-42b5-bed3-c1a4d752ae32.jpg', 'image/jpeg', 'products/images/8ecad0ff-4de6-42b5-bed3-c1a4d752ae32.jpg', 28, 2, 2),
	(true, '2025-10-08 21:17:57.112914', '2025-10-08 21:17:57.112914', 120, '6b0154cc-eb63-4b18-9772-a987ebb8983b.jpg', 'image/jpeg', 'products/images/6b0154cc-eb63-4b18-9772-a987ebb8983b.jpg', 29, 1, 2),
	(true, '2025-10-08 21:20:33.494272', '2025-10-08 23:47:10.195172', 121, 'a7f01838-0d82-49cd-bb17-8196f38a1833.jpg', 'image/jpeg', 'products/images/a7f01838-0d82-49cd-bb17-8196f38a1833.jpg', 30, 1, 2),
	(true, '2025-06-30 23:28:16.287191', '2025-10-08 23:47:51.22002', 92, '1342e57c-a5ef-4f2f-b84a-17dd1ba78d3d', 'image/jpeg', 'products/images/1342e57c-a5ef-4f2f-b84a-17dd1ba78d3d', 14, 2, 2),
	(true, '2025-06-30 23:34:01.853737', '2025-10-08 23:47:51.22002', 93, '211dedfa-849c-4de3-96dd-8bf94fc209d1', 'image/jpeg', 'products/images/211dedfa-849c-4de3-96dd-8bf94fc209d1', 14, 3, 2);


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."person" ("active", "created_at", "updated_at", "id", "name", "last_name", "birth_date", "email", "phone_number", "address") VALUES
	(true, '2024-08-27 04:19:53.601431', '2024-08-27 04:19:53.601431', 1, 'John', 'Doe', '1990-01-01', 'admin@refadiaz.com', '123-456-7890', '123 Main St, Springfield, USA'),
	(true, '2024-08-29 16:53:20.32', '2024-08-29 16:53:20.32', 2, 'Eloisa', 'Diaz', '2024-08-29', 'elotin@hotmail.com', '8114131923', 'Felix Gzz Salinas 1203. Col. Ancón del Huajuco.  Mty nl.  Cp.64820'),
	(true, '2025-03-09 16:18:39.647747', '2025-03-09 16:18:39.647747', 4, 'Roel', 'Mendoza', '1990-01-01', 'roelmdz@gmail.com', '8121116439', 'Letia 714'),
	(true, '2025-03-09 23:05:47.298077', '2025-03-09 23:05:47.298077', 5, 'Eloisa', 'Diaz', '1990-01-01', 'elotin@hotmail.com', '8114131923', 'feliz gzz salinas 1203 Mty'),
	(true, '2025-03-10 22:49:25.230511', '2025-03-10 22:49:25.230511', 6, 'Eloisa', 'Diaz', '2025-03-10', 'roelmdz@gmail.com', '8114131923', 'feliz gzz salinas 1203 Mty'),
	(true, '2025-03-11 01:47:50.109232', '2025-03-11 01:47:50.109232', 7, 'Eloisa', 'Diaz', '2000-03-11', 'elotin@hotmail.com', '8114131923', 'feliz gzz salinas 1203 Mty'),
	(true, '2025-10-08 21:34:03.77559', '2025-10-08 21:34:03.77559', 8, 'Kenya', 'Díaz', '1983-11-29', 'kenydiaz83@icloud.com', '8180139310', ''),
	(true, '2025-10-08 21:35:54.218662', '2025-10-08 21:35:54.218662', 9, 'Lucy', 'Guerrero', '1973-11-04', 'radiadores_diaz@hotmail.com', '8119646531', '');


--
-- Data for Name: price; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."price" ("active", "created_at", "updated_at", "id", "cost", "description") VALUES
	(true, '2024-08-28 22:04:17.76565', '2024-08-28 22:04:17.76565', 1, '$200.00', 'Precio de compra de Eduardo roel mendoza aguilar'),
	(true, '2024-08-28 22:04:17.76565', '2024-08-28 22:04:17.76565', 2, '$2,000.00', 'Nuevo instalado'),
	(true, '2024-09-09 01:48:49.150284', '2024-09-09 01:48:49.150284', 4, '$2,900.00', 'RADIADOR  NUEVO SUELTO'),
	(true, '2024-09-09 01:48:49.150284', '2024-09-09 01:48:49.150284', 5, '$6,500.00', 'RADIADOR NUEVO INSTALADO '),
	(true, '2024-09-09 01:48:49.150284', '2024-09-09 01:48:49.150284', 6, '$1,500.00', 'REPARACION SUELTO A RESERVA DE QUE EL PANAL FUNCIONES'),
	(true, '2024-09-09 01:48:49.150284', '2024-09-09 01:48:49.150284', 7, '$3,800.00', 'REPARACION INSTALADO A RESERVA DE QUE EL PANAL FUNCIONE'),
	(true, '2024-09-09 01:48:49.150284', '2024-09-09 01:48:49.150284', 3, '$1,800.00', 'Precio de compra de FRONTERA'),
	(true, '2024-09-09 02:18:35.732387', '2024-09-09 02:18:35.732387', 8, '$2,100.00', 'Precio de compra de DEYAC'),
	(true, '2024-09-09 02:18:35.732387', '2024-09-09 02:18:35.732387', 9, '$3,500.00', 'RADIADOR NUEVO SUELTO'),
	(true, '2024-09-09 02:18:35.732387', '2024-09-09 02:18:35.732387', 10, '$6,800.00', 'RADIADOR NUEVO INSTALADO'),
	(true, '2024-09-09 02:24:55.975721', '2024-09-09 02:24:55.975721', 11, '$2,100.00', 'Precio de compra de FRONTERA'),
	(true, '2024-09-09 02:24:55.975721', '2024-09-09 02:24:55.975721', 12, '$3,500.00', 'RADIADOR NUEVO SUELTO'),
	(true, '2024-09-09 02:24:55.975721', '2024-09-09 02:24:55.975721', 13, '$6,800.00', 'RADIADOR NUEVO INSTALADO'),
	(true, '2025-04-01 03:59:07.293855', '2025-04-01 03:59:07.293855', 14, '$4,700.00', 'Precio de compra de VENCEDORES'),
	(true, '2025-04-01 03:59:07.293855', '2025-04-01 03:59:07.293855', 15, '$6,500.00', 'Precio de compra de FRONTERA'),
	(true, '2025-04-01 03:59:07.293855', '2025-04-01 03:59:07.293855', 16, '$7,500.00', 'RADIADOR SUELTO '),
	(true, '2025-04-01 04:10:41.557897', '2025-04-01 04:10:41.557897', 17, '$4,700.00', 'Precio de compra de VENCEDORES'),
	(true, '2025-04-01 04:10:41.557897', '2025-04-01 04:10:41.557897', 18, '$6,500.00', 'Precio de compra de FRONTERA'),
	(true, '2025-04-01 04:10:41.557897', '2025-04-01 04:10:41.557897', 19, '$7,500.00', 'RADIADOR NUEVO SUELTO'),
	(true, '2025-04-01 04:20:45.972377', '2025-04-01 04:20:45.972377', 20, '$4,700.00', 'Precio de compra de VENCEDORES'),
	(true, '2025-04-01 04:20:45.972377', '2025-04-01 04:20:45.972377', 21, '$6,500.00', 'Precio de compra de FRONTERA'),
	(true, '2025-04-01 04:26:55.645669', '2025-04-01 04:26:55.645669', 22, '$4,700.00', 'Precio de compra de VENCEDORES'),
	(true, '2025-04-01 04:26:55.645669', '2025-04-01 04:26:55.645669', 23, '$6,500.00', 'Precio de compra de FRONTERA'),
	(true, '2025-04-01 04:27:44.219943', '2025-04-01 04:27:44.219943', 24, '$4,700.00', 'Precio de compra de VENCEDORES'),
	(true, '2025-04-01 04:27:44.219943', '2025-04-01 04:27:44.219943', 25, '$6,500.00', 'Precio de compra de FRONTERA'),
	(true, '2025-04-01 18:11:09.420789', '2025-04-01 18:11:09.420789', 26, '$2,300.00', 'Precio de compra de FRONTERA'),
	(true, '2025-04-01 18:11:09.420789', '2025-04-01 18:11:09.420789', 27, '$2,300.00', 'Precio de compra de FRONTERA'),
	(true, '2025-04-01 18:11:09.420789', '2025-04-01 18:11:09.420789', 28, '$2,500.00', 'Precio de compra de DEYAC'),
	(true, '2025-04-01 18:11:09.420789', '2025-04-01 18:11:09.420789', 29, '$2,500.00', 'Precio de compra de DEYAC'),
	(true, '2025-04-01 18:11:09.420789', '2025-04-01 18:11:09.420789', 30, '$3,500.00', 'RADIADOR NUEVO SUELTO'),
	(true, '2025-04-01 18:11:09.420789', '2025-04-01 18:11:09.420789', 31, '$6,800.00', 'RADIADOR NUEVO INSTALADO '),
	(true, '2025-04-01 18:11:09.420789', '2025-04-01 18:11:09.420789', 32, '$1,500.00', 'SERVICIO Y CAMBIAR TANQUE SUPERIOR SUELTO '),
	(true, '2025-04-01 18:11:09.420789', '2025-04-01 18:11:09.420789', 33, '$4,200.00', 'SERVICIO Y CAMBIAR TANQUE SUPERIOR INSTALADO '),
	(true, '2025-04-01 18:13:29.093883', '2025-04-01 18:13:29.093883', 34, '$2,300.00', 'Precio de compra de FRONTERA'),
	(true, '2025-04-01 18:13:29.093883', '2025-04-01 18:13:29.093883', 35, '$2,300.00', 'Precio de compra de FRONTERA'),
	(true, '2025-04-01 18:13:29.093883', '2025-04-01 18:13:29.093883', 36, '$2,500.00', 'Precio de compra de DEYAC'),
	(true, '2025-04-01 18:13:29.093883', '2025-04-01 18:13:29.093883', 37, '$2,500.00', 'Precio de compra de DEYAC'),
	(true, '2025-04-01 21:07:53.328374', '2025-04-01 21:07:53.328374', 38, '$2,300.00', 'Precio de compra de FRONTERA'),
	(true, '2025-04-01 21:07:53.328374', '2025-04-01 21:07:53.328374', 39, '$2,300.00', 'Precio de compra de FRONTERA'),
	(true, '2025-04-01 21:07:53.328374', '2025-04-01 21:07:53.328374', 40, '$2,500.00', 'Precio de compra de DEYAC'),
	(true, '2025-04-01 21:07:53.328374', '2025-04-01 21:07:53.328374', 41, '$2,500.00', 'Precio de compra de DEYAC'),
	(true, '2025-04-01 21:07:53.328374', '2025-04-01 21:07:53.328374', 42, '$3,500.00', 'Precio de compra de PHAR'),
	(true, '2025-04-01 21:09:06.154885', '2025-04-01 21:09:06.154885', 43, '$2,300.00', 'Precio de compra de FRONTERA'),
	(true, '2025-04-01 21:09:06.154885', '2025-04-01 21:09:06.154885', 44, '$2,500.00', 'Precio de compra de DEYAC'),
	(true, '2025-04-01 21:09:06.154885', '2025-04-01 21:09:06.154885', 45, '$3,500.00', 'Precio de compra de PHAR'),
	(true, '2025-04-01 21:09:06.154885', '2025-04-01 21:09:06.154885', 46, '$2,300.00', 'Precio de compra de FRONTERA'),
	(true, '2025-04-01 21:09:06.154885', '2025-04-01 21:09:06.154885', 47, '$2,500.00', 'Precio de compra de DEYAC'),
	(true, '2025-04-01 21:12:03.15974', '2025-04-01 21:12:03.15974', 48, '$2,300.00', 'Precio de compra de FRONTERA'),
	(true, '2025-04-01 21:12:03.15974', '2025-04-01 21:12:03.15974', 49, '$2,500.00', 'Precio de compra de DEYAC'),
	(true, '2025-04-01 21:12:03.15974', '2025-04-01 21:12:03.15974', 50, '$3,500.00', 'Precio de compra de PHAR'),
	(true, '2025-04-01 21:13:28.595761', '2025-04-01 21:13:28.595761', 51, '$2,300.00', 'Precio de compra de FRONTERA'),
	(true, '2025-04-01 21:13:28.595761', '2025-04-01 21:13:28.595761', 52, '$2,500.00', 'Precio de compra de DEYAC'),
	(true, '2025-04-01 21:13:28.595761', '2025-04-01 21:13:28.595761', 53, '$3,500.00', 'Precio de compra de PHAR'),
	(true, '2025-04-01 21:15:24.610284', '2025-04-01 21:15:24.610284', 54, '$2,300.00', 'Precio de compra de FRONTERA'),
	(true, '2025-04-01 21:15:24.610284', '2025-04-01 21:15:24.610284', 55, '$2,500.00', 'Precio de compra de DEYAC'),
	(true, '2025-04-01 21:15:24.610284', '2025-04-01 21:15:24.610284', 56, '$3,500.00', 'Precio de compra de PHAR'),
	(true, '2025-04-01 21:16:51.398533', '2025-04-01 21:16:51.398533', 57, '$2,300.00', 'Precio de compra de FRONTERA'),
	(true, '2025-04-01 21:16:51.398533', '2025-04-01 21:16:51.398533', 58, '$2,500.00', 'Precio de compra de DEYAC'),
	(true, '2025-04-01 21:16:51.398533', '2025-04-01 21:16:51.398533', 59, '$3,500.00', 'Precio de compra de PHAR'),
	(true, '2025-04-06 03:29:14.956463', '2025-04-06 03:29:14.956463', 60, '$2,300.00', 'Precio de compra de FRONTERA'),
	(true, '2025-04-06 03:29:14.956463', '2025-04-06 03:29:14.956463', 61, '$2,500.00', 'Precio de compra de DEYAC'),
	(true, '2025-04-06 03:29:14.956463', '2025-04-06 03:29:14.956463', 62, '$3,500.00', 'Precio de compra de PHAR'),
	(true, '2025-04-06 03:34:20.139731', '2025-04-06 03:34:20.139731', 63, '$4,700.00', 'Precio de compra de VENCEDORES'),
	(true, '2025-04-06 03:34:20.139731', '2025-04-06 03:34:20.139731', 64, '$6,500.00', 'Precio de compra de FRONTERA'),
	(true, '2025-04-06 03:38:15.799905', '2025-04-06 03:38:15.799905', 65, '$4,700.00', 'Precio de compra de VENCEDORES'),
	(true, '2025-04-06 03:38:15.799905', '2025-04-06 03:38:15.799905', 66, '$6,500.00', 'Precio de compra de FRONTERA'),
	(true, '2025-04-06 03:41:06.112721', '2025-04-06 03:41:06.112721', 67, '$4,700.00', 'Precio de compra de VENCEDORES'),
	(true, '2025-04-06 03:41:06.112721', '2025-04-06 03:41:06.112721', 68, '$6,500.00', 'Precio de compra de FRONTERA'),
	(true, '2025-04-07 02:52:53.327246', '2025-04-07 02:52:53.327246', 69, '$2,300.00', 'Precio de compra de VENCEDORES'),
	(true, '2025-04-07 02:52:53.327246', '2025-04-07 02:52:53.327246', 70, '$3,800.00', 'Precio de compra de RUNSA'),
	(true, '2025-04-07 02:52:53.327246', '2025-04-07 02:52:53.327246', 71, '$1,500.00', 'SUELTO SERVICIO Y CAMBIAR TANQUE '),
	(true, '2025-04-07 02:52:53.327246', '2025-04-07 02:52:53.327246', 72, '$3,500.00', 'SUELTO NUEVO '),
	(true, '2025-04-07 02:52:53.327246', '2025-04-07 02:52:53.327246', 73, '$5,200.00', 'INSTALADO SERVICIO Y CAMBIAR TANQUE '),
	(true, '2025-04-07 02:52:53.327246', '2025-04-07 02:52:53.327246', 74, '$7,800.00', 'INSTALADO RADIADOR NUEVO '),
	(true, '2025-04-13 23:02:59.521433', '2025-04-13 23:02:59.521433', 75, '$2,300.00', 'Precio de compra de FRONTERA'),
	(true, '2025-04-13 23:02:59.521433', '2025-04-13 23:02:59.521433', 76, '$2,300.00', 'Precio de compra de FRONTERA'),
	(true, '2025-04-13 23:02:59.521433', '2025-04-13 23:02:59.521433', 77, '$2,500.00', 'Precio de compra de DEYAC'),
	(true, '2025-04-13 23:02:59.521433', '2025-04-13 23:02:59.521433', 78, '$2,500.00', 'Precio de compra de DEYAC'),
	(true, '2025-04-13 23:02:59.521433', '2025-04-13 23:02:59.521433', 79, '$3,500.00', 'Precio de compra de PHAR'),
	(true, '2025-04-13 23:46:21.597718', '2025-04-13 23:46:21.597718', 80, '$2,000.00', 'Precio de compra de REACH'),
	(true, '2025-04-13 23:46:21.597718', '2025-04-13 23:46:21.597718', 81, '$3,600.00', 'RADIADOR NUEVO SUELTO'),
	(true, '2025-04-13 23:46:21.597718', '2025-04-13 23:46:21.597718', 82, '$7,800.00', 'RADIADOR NUEVO INSTALADO'),
	(true, '2025-04-13 23:46:21.597718', '2025-04-13 23:46:21.597718', 83, '$4,800.00', 'SERVICIO O REPARACION INSTALADO EN CASO DE FUGA EN PANAL '),
	(true, '2025-04-28 19:34:56.727615', '2025-04-28 19:34:56.727615', 84, '$2,100.00', 'Precio de compra de DEYAC'),
	(true, '2025-04-28 19:38:21.709919', '2025-04-28 19:38:21.709919', 85, '$2,100.00', 'Precio de compra de FRONTERA'),
	(true, '2025-04-28 19:48:43.679715', '2025-04-28 19:48:43.679715', 86, '$1,800.00', 'Precio de compra de FRONTERA'),
	(true, '2025-04-30 01:09:35.832737', '2025-04-30 01:09:35.832737', 87, '$1,800.00', 'Precio de compra de FRONTERA'),
	(true, '2025-04-30 01:11:05.211628', '2025-04-30 01:11:05.211628', 88, '$1,800.00', 'Precio de compra de FRONTERA'),
	(true, '2025-04-30 01:14:29.742252', '2025-04-30 01:14:29.742252', 89, '$1,800.00', 'Precio de compra de FRONTERA'),
	(true, '2025-04-30 01:19:59.929811', '2025-04-30 01:19:59.929811', 90, '$4,700.00', 'Precio de compra de VENCEDORES'),
	(true, '2025-04-30 01:19:59.929811', '2025-04-30 01:19:59.929811', 91, '$6,500.00', 'Precio de compra de FRONTERA'),
	(true, '2025-04-30 20:34:45.942175', '2025-04-30 20:34:45.942175', 92, '$2,100.00', 'Precio de compra de DEYAC'),
	(true, '2025-05-08 22:35:15.444569', '2025-05-08 22:35:15.444569', 93, '$1,200.00', 'Precio de compra de VENCEDORES'),
	(true, '2025-05-08 22:35:15.444569', '2025-05-08 22:35:15.444569', 94, '$1,750.00', 'Precio de compra de PHAR'),
	(true, '2025-05-08 22:35:15.444569', '2025-05-08 22:35:15.444569', 95, '$2,500.00', 'RADIADOR NUEVO SUELTO '),
	(true, '2025-05-08 22:35:15.444569', '2025-05-08 22:35:15.444569', 96, '$5,600.00', 'RADIADOR NUEVO INSTALADO'),
	(true, '2025-05-08 23:19:48.265516', '2025-05-08 23:19:48.265516', 97, '$2,100.00', 'Precio de compra de REACH'),
	(true, '2025-05-08 23:19:48.265516', '2025-05-08 23:19:48.265516', 98, '$1,500.00', 'Precio de compra de VENCEDORES'),
	(true, '2025-05-08 23:19:48.265516', '2025-05-08 23:19:48.265516', 99, '$3,200.00', 'RADIADOR NUEVO SUELTO'),
	(true, '2025-05-08 23:46:28.363103', '2025-05-08 23:46:28.363103', 100, '$2,100.00', 'Precio de compra de REACH'),
	(true, '2025-05-08 23:46:28.363103', '2025-05-08 23:46:28.363103', 101, '$1,500.00', 'Precio de compra de VENCEDORES'),
	(true, '2025-05-09 21:21:10.042089', '2025-05-09 21:21:10.042089', 102, '$2,100.00', 'Precio de compra de REACH'),
	(true, '2025-05-09 21:21:10.042089', '2025-05-09 21:21:10.042089', 103, '$1,500.00', 'Precio de compra de VENCEDORES'),
	(true, '2025-05-09 21:22:24.209236', '2025-05-09 21:22:24.209236', 104, '$2,100.00', 'Precio de compra de REACH'),
	(true, '2025-05-09 21:22:24.209236', '2025-05-09 21:22:24.209236', 105, '$1,500.00', 'Precio de compra de VENCEDORES'),
	(true, '2025-05-09 21:57:47.405815', '2025-05-09 21:57:47.405815', 106, '$1,800.00', 'Precio de compra de FRONTERA'),
	(true, '2025-05-12 03:15:22.657305', '2025-05-12 03:15:22.657305', 107, '$2,100.00', 'Precio de compra de FRONTERA'),
	(true, '2025-05-29 04:50:08.043605', '2025-05-29 04:50:08.043605', 108, '$2,000.00', 'Precio de compra de PHAR'),
	(true, '2025-05-29 04:50:08.043605', '2025-05-29 04:50:08.043605', 109, '$1,500.00', 'SERVICIO Y CAMBIAR TANQUE A LA MANO '),
	(true, '2025-05-29 04:50:08.043605', '2025-05-29 04:50:08.043605', 110, '$3,800.00', 'SERVICIO Y CAMBIAR TANQUE INSTALADO'),
	(true, '2025-05-29 04:50:08.043605', '2025-05-29 04:50:08.043605', 111, '$6,500.00', 'RADIADOR NUEVO INSTALADO'),
	(true, '2025-05-29 04:50:08.043605', '2025-05-29 04:50:08.043605', 112, '$2,800.00', 'RADIADOR NUEVO SUELTO (VARIA SEGUN TIPO)'),
	(true, '2025-05-29 05:00:58.220311', '2025-05-29 05:00:58.220311', 113, '$2,100.00', 'Precio de compra de DEYAC'),
	(true, '2025-05-29 05:08:15.177946', '2025-05-29 05:08:15.177946', 114, '$2,000.00', 'Precio de compra de PHAR'),
	(true, '2025-05-30 03:09:15.886068', '2025-05-30 03:09:15.886068', 115, '$2,000.00', 'Precio de compra de PHAR'),
	(true, '2025-05-30 03:09:15.886068', '2025-05-30 03:09:15.886068', 116, '$2,000.00', 'Precio de compra de FRONTERA'),
	(true, '2025-05-30 03:09:15.886068', '2025-05-30 03:09:15.886068', 117, '$2,000.00', 'Precio de compra de FRONTERA'),
	(true, '2025-06-09 20:59:38.881871', '2025-06-09 20:59:38.881871', 118, '$2,500.00', 'Precio de compra de FRONTERA'),
	(true, '2025-06-09 20:59:38.881871', '2025-06-09 20:59:38.881871', 119, '$2,200.00', 'Precio de compra de PHAR'),
	(true, '2025-06-09 20:59:38.881871', '2025-06-09 20:59:38.881871', 120, '$3,200.00', 'RADIADOR NUEVO SUELTO '),
	(true, '2025-06-09 21:05:15.099656', '2025-06-09 21:05:15.099656', 121, '$2,100.00', 'Precio de compra de DEYAC'),
	(true, '2025-06-09 21:05:15.099656', '2025-06-09 21:05:15.099656', 122, '$2,000.00', 'Precio de compra de PHAR'),
	(true, '2025-06-09 21:15:14.089265', '2025-06-09 21:15:14.089265', 123, '$2,100.00', 'Precio de compra de DEYAC'),
	(true, '2025-06-09 21:15:14.089265', '2025-06-09 21:15:14.089265', 124, '$2,000.00', 'Precio de compra de PHAR'),
	(true, '2025-06-09 21:15:14.089265', '2025-06-09 21:15:14.089265', 125, '$3,200.00', 'RADIADOR NUEVO SUELTO'),
	(true, '2025-06-16 22:54:11.696887', '2025-06-16 22:54:11.696887', 126, '$1,100.00', 'Precio de compra de REACH'),
	(true, '2025-06-16 22:54:11.696887', '2025-06-16 22:54:11.696887', 127, '$700.00', 'Precio de compra de DEYAC'),
	(true, '2025-06-16 22:54:11.696887', '2025-06-16 22:54:11.696887', 128, '$1,500.00', 'RADIADOR NUEVO SULETO'),
	(true, '2025-06-16 23:23:36.471869', '2025-06-16 23:23:36.471869', 129, '$10,800.00', 'Precio de compra de RUNSA'),
	(true, '2025-06-16 23:23:36.471869', '2025-06-16 23:23:36.471869', 130, '$10,000.00', 'RADIADOR NUEVO ORIGINAL SUELTO'),
	(true, '2025-06-30 23:18:26.800104', '2025-06-30 23:18:26.800104', 131, '$2,100.00', 'Precio de compra de PHAR'),
	(true, '2025-06-30 23:18:26.800104', '2025-06-30 23:18:26.800104', 132, '$1,800.00', 'Precio de compra de PHAR'),
	(true, '2025-06-30 23:18:26.800104', '2025-06-30 23:18:26.800104', 133, '$1,500.00', 'SERVICIO Y CAMBIAR TAPA SUELTO '),
	(true, '2025-06-30 23:18:26.800104', '2025-06-30 23:18:26.800104', 134, '$4,800.00', 'SERVICIO Y CAMBIAR TAPA CON CARRO '),
	(true, '2025-06-30 23:18:26.800104', '2025-06-30 23:18:26.800104', 135, '$2,900.00', 'RADIADOR NUEVO SUELTO'),
	(true, '2025-06-30 23:18:26.800104', '2025-06-30 23:18:26.800104', 136, '$7,600.00', 'RADIADOR NUEVO INSTALADO '),
	(true, '2025-06-30 23:28:16.287191', '2025-06-30 23:28:16.287191', 137, '$2,100.00', 'Precio de compra de PHAR'),
	(true, '2025-06-30 23:28:16.287191', '2025-06-30 23:28:16.287191', 138, '$1,800.00', 'Precio de compra de PHAR'),
	(true, '2025-06-30 23:34:01.853737', '2025-06-30 23:34:01.853737', 139, '$1,800.00', 'Precio de compra de PHAR'),
	(true, '2025-06-30 23:34:01.853737', '2025-06-30 23:34:01.853737', 140, '$1,800.00', 'Precio de compra de PHAR'),
	(true, '2025-06-30 23:34:58.409106', '2025-06-30 23:34:58.409106', 141, '$1,800.00', 'Precio de compra de PHAR'),
	(true, '2025-06-30 23:34:58.409106', '2025-06-30 23:34:58.409106', 142, '$1,800.00', 'Precio de compra de PHAR'),
	(true, '2025-07-10 22:44:22.567814', '2025-07-10 22:44:22.567814', 143, '$1,500.00', 'Precio de compra de PHAR'),
	(true, '2025-07-10 22:44:22.567814', '2025-07-10 22:44:22.567814', 144, '$1,200.00', 'SERVICIO Y TAPA SUELTO'),
	(true, '2025-07-10 22:44:22.567814', '2025-07-10 22:44:22.567814', 145, '$3,800.00', 'SERVICIO Y TAPA CON CARRO'),
	(true, '2025-07-10 22:44:22.567814', '2025-07-10 22:44:22.567814', 146, '$2,500.00', 'RADIADOR NUEVO SUELTO '),
	(true, '2025-07-10 22:44:22.567814', '2025-07-10 22:44:22.567814', 147, '$5,800.00', 'RADIADOR NUEVO INSTALADO '),
	(true, '2025-07-10 22:45:40.32003', '2025-07-10 22:45:40.32003', 148, '$1,500.00', 'Precio de compra de PHAR'),
	(true, '2025-07-10 22:47:25.396787', '2025-07-10 22:47:25.396787', 149, '$1,500.00', 'Precio de compra de PHAR'),
	(true, '2025-07-10 22:51:47.121925', '2025-07-10 22:51:47.121925', 150, '$1,100.00', 'Precio de compra de REACH'),
	(true, '2025-07-10 22:51:47.121925', '2025-07-10 22:51:47.121925', 151, '$700.00', 'Precio de compra de DEYAC'),
	(true, '2025-07-10 22:51:47.121925', '2025-07-10 22:51:47.121925', 152, '$1,800.00', 'RADIADOR NUEVO SUELTO'),
	(true, '2025-07-10 23:11:19.806973', '2025-07-10 23:11:19.806973', 153, '$1,500.00', 'Precio de compra de VENCEDORES'),
	(true, '2025-07-10 23:11:19.806973', '2025-07-10 23:11:19.806973', 154, '$2,500.00', 'RADIADOR NUEVO SUELTO'),
	(true, '2025-07-10 23:13:51.411315', '2025-07-10 23:13:51.411315', 155, '$1,500.00', 'Precio de compra de VENCEDORES'),
	(true, '2025-07-10 23:30:58.620133', '2025-07-10 23:30:58.620133', 156, '$1,300.00', 'Precio de compra de VENCEDORES'),
	(true, '2025-07-10 23:30:58.620133', '2025-07-10 23:30:58.620133', 157, '$2,500.00', 'RADIADOR NUEVO SUELTO'),
	(true, '2025-07-10 23:55:20.094087', '2025-07-10 23:55:20.094087', 158, '$1,000.00', 'SERVICIO Y SOLDAR SUELTO SI NO ES TAPA'),
	(true, '2025-07-10 23:55:20.094087', '2025-07-10 23:55:20.094087', 159, '$4,800.00', 'SERVICIO Y SOLDAR CON CARRO'),
	(true, '2025-08-13 22:56:10.506873', '2025-08-13 22:56:10.506873', 160, '$2,500.00', 'Precio de compra de REACH'),
	(true, '2025-08-13 22:56:10.506873', '2025-08-13 22:56:10.506873', 161, '$3,800.00', 'INSTALADO SERVICIO Y CAMBIAR TANQUE DE PLASTICO'),
	(true, '2025-08-13 22:56:10.506873', '2025-08-13 22:56:10.506873', 162, '$6,800.00', 'RADIADOR NUEVO INSTALADO'),
	(true, '2025-08-13 22:56:10.506873', '2025-08-13 22:56:10.506873', 163, '$3,500.00', 'RADIADOR NUEVO SULETO'),
	(true, '2025-09-13 02:17:14.239792', '2025-09-13 02:17:14.239792', 164, '$1,500.00', 'Precio de compra'),
	(true, '2025-09-13 02:17:14.239792', '2025-09-13 02:17:14.239792', 165, '$2,800.00', 'RADIADOR NUEVO SUELTO'),
	(true, '2025-09-13 02:17:36.746378', '2025-09-13 02:17:36.746378', 166, '$1,500.00', 'Precio de compra'),
	(true, '2025-09-13 02:17:36.746378', '2025-09-13 02:17:36.746378', 167, '$2,800.00', 'RADIADOR NUEVO SUELTO'),
	(true, '2025-09-14 01:57:39.626366', '2025-09-14 01:57:39.626366', 168, '$1,500.00', 'Precio de compra'),
	(true, '2025-09-14 01:57:39.626366', '2025-09-14 01:57:39.626366', 169, '$2,800.00', 'RADIADOR NUEVO SUELTO'),
	(true, '2025-10-08 20:50:30.245608', '2025-10-08 20:50:30.245608', 170, '$1,800.00', 'Precio de compra'),
	(true, '2025-10-08 20:50:30.245608', '2025-10-08 20:50:30.245608', 171, '$1,800.00', 'Precio de compra'),
	(true, '2025-10-08 20:50:30.245608', '2025-10-08 20:50:30.245608', 172, '$1,500.00', 'SERVICIO Y CAMBIAR TAPA SUELTO '),
	(true, '2025-10-08 20:50:30.245608', '2025-10-08 20:50:30.245608', 173, '$4,800.00', 'SERVICIO Y CAMBIAR TAPA CON CARRO '),
	(true, '2025-10-08 20:50:30.245608', '2025-10-08 20:50:30.245608', 174, '$2,900.00', 'RADIADOR NUEVO SUELTO'),
	(true, '2025-10-08 20:50:30.245608', '2025-10-08 20:50:30.245608', 175, '$7,600.00', 'RADIADOR NUEVO INSTALADO '),
	(true, '2025-10-08 21:02:34.130436', '2025-10-08 21:02:34.130436', 176, '$1,800.00', 'Precio de compra'),
	(true, '2025-10-08 21:02:34.130436', '2025-10-08 21:02:34.130436', 177, '$1,800.00', 'Precio de compra'),
	(true, '2025-10-08 21:02:34.130436', '2025-10-08 21:02:34.130436', 178, '$1,500.00', 'SERVICIO Y CAMBIAR TAPA SUELTO '),
	(true, '2025-10-08 21:02:34.130436', '2025-10-08 21:02:34.130436', 179, '$4,800.00', 'SERVICIO Y CAMBIAR TAPA CON CARRO '),
	(true, '2025-10-08 21:02:34.130436', '2025-10-08 21:02:34.130436', 180, '$2,900.00', 'RADIADOR NUEVO SUELTO'),
	(true, '2025-10-08 21:02:34.130436', '2025-10-08 21:02:34.130436', 181, '$7,600.00', 'RADIADOR NUEVO INSTALADO '),
	(true, '2025-10-08 21:27:17.090213', '2025-10-08 21:27:17.090213', 182, '$2,800.00', 'Precio de compra'),
	(true, '2025-10-08 21:27:17.090213', '2025-10-08 21:27:17.090213', 183, '$1,500.00', 'Precio de compra'),
	(true, '2025-10-08 21:28:24.817169', '2025-10-08 21:28:24.817169', 184, '$2,800.00', 'Precio de compra'),
	(true, '2025-10-08 21:28:24.817169', '2025-10-08 21:28:24.817169', 185, '$1,500.00', 'Precio de compra'),
	(true, '2025-10-08 21:28:24.817169', '2025-10-08 21:28:24.817169', 186, '$3,200.00', 'RADIADOR NUEVO SUELTO'),
	(true, '2025-10-08 21:28:24.817169', '2025-10-08 21:28:24.817169', 187, '$7,500.00', 'RADIADOR NUEVO INSTALADO '),
	(true, '2025-10-08 21:28:24.817169', '2025-10-08 21:28:24.817169', 188, '$1,500.00', 'REPARACION SUELTO'),
	(true, '2025-10-08 21:28:24.817169', '2025-10-08 21:28:24.817169', 189, '$4,800.00', 'REPARACION CON LA UNIDAD'),
	(true, '2025-10-08 21:36:48.939525', '2025-10-08 21:36:48.939525', 190, '$2,800.00', 'Precio de compra'),
	(true, '2025-10-08 21:36:48.939525', '2025-10-08 21:36:48.939525', 191, '$1,500.00', 'Precio de compra'),
	(true, '2025-10-08 21:36:48.939525', '2025-10-08 21:36:48.939525', 192, '$3,200.00', 'RADIADOR NUEVO SUELTO'),
	(true, '2025-10-08 21:36:48.939525', '2025-10-08 21:36:48.939525', 193, '$7,500.00', 'RADIADOR NUEVO INSTALADO '),
	(true, '2025-10-08 21:36:48.939525', '2025-10-08 21:36:48.939525', 194, '$1,500.00', 'REPARACION SUELTO'),
	(true, '2025-10-08 21:36:48.939525', '2025-10-08 21:36:48.939525', 195, '$4,800.00', 'REPARACION CON LA UNIDAD'),
	(true, '2025-10-08 21:42:22.891148', '2025-10-08 21:42:22.891148', 196, '$2,800.00', 'Precio de compra'),
	(true, '2025-10-08 21:42:22.891148', '2025-10-08 21:42:22.891148', 197, '$1,500.00', 'Precio de compra'),
	(true, '2025-10-08 21:42:22.891148', '2025-10-08 21:42:22.891148', 198, '$3,200.00', 'RADIADOR NUEVO SUELTO'),
	(true, '2025-10-08 21:42:22.891148', '2025-10-08 21:42:22.891148', 199, '$7,500.00', 'RADIADOR NUEVO INSTALADO '),
	(true, '2025-10-08 21:42:22.891148', '2025-10-08 21:42:22.891148', 200, '$1,500.00', 'REPARACION SUELTO'),
	(true, '2025-10-08 21:42:22.891148', '2025-10-08 21:42:22.891148', 201, '$4,800.00', 'REPARACION CON LA UNIDAD'),
	(true, '2025-10-08 23:47:10.195172', '2025-10-08 23:47:10.195172', 202, '$2,800.00', 'Precio de compra'),
	(true, '2025-10-08 23:47:10.195172', '2025-10-08 23:47:10.195172', 203, '$1,300.00', 'Precio de compra'),
	(true, '2025-10-08 23:47:10.195172', '2025-10-08 23:47:10.195172', 204, '$3,200.00', 'RADIADOR NUEVO SUELTO'),
	(true, '2025-10-08 23:47:10.195172', '2025-10-08 23:47:10.195172', 205, '$7,500.00', 'RADIADOR NUEVO INSTALADO '),
	(true, '2025-10-08 23:47:10.195172', '2025-10-08 23:47:10.195172', 206, '$1,500.00', 'REPARACION SUELTO'),
	(true, '2025-10-08 23:47:10.195172', '2025-10-08 23:47:10.195172', 207, '$4,800.00', 'REPARACION CON LA UNIDAD'),
	(true, '2025-10-08 23:47:51.22002', '2025-10-08 23:47:51.22002', 208, '$1,800.00', 'Precio de compra'),
	(true, '2025-10-08 23:47:51.22002', '2025-10-08 23:47:51.22002', 209, '$1,800.00', 'Precio de compra'),
	(true, '2025-10-08 23:47:51.22002', '2025-10-08 23:47:51.22002', 210, '$1,500.00', 'SERVICIO Y CAMBIAR TAPA SUELTO '),
	(true, '2025-10-08 23:47:51.22002', '2025-10-08 23:47:51.22002', 211, '$4,800.00', 'SERVICIO Y CAMBIAR TAPA CON CARRO '),
	(true, '2025-10-08 23:47:51.22002', '2025-10-08 23:47:51.22002', 212, '$2,900.00', 'RADIADOR NUEVO SUELTO'),
	(true, '2025-10-08 23:47:51.22002', '2025-10-08 23:47:51.22002', 213, '$7,600.00', 'RADIADOR NUEVO INSTALADO ');


--
-- Data for Name: product_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."product_type" ("active", "created_at", "updated_at", "id", "name") VALUES
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 1, 'RADIATOR');


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."product" ("active", "created_at", "updated_at", "id", "name", "comments", "stock_count", "dpi", "product_type_id") VALUES
	(true, '2025-04-07 02:52:53.327246', '2025-04-07 02:52:53.327246', 7, 'DPI13505 ML (2012-2019)-GL (2012-2019) [1]', 'TANQUE ???
EL PANAL NO SIEMPRE AGUNTA LA REPARACION.', 1, 'DPI13505', 1),
	(true, '2025-04-01 18:11:09.420789', '2025-04-13 23:02:59.521433', 6, 'DPI2952  DPI2816 EXPLORER (2006-2010)-SPORT TRAC (2006-2010)-MOUNTAINEER (2006-2010) [1]', 'LA REPARACION ES A RESERVA DE QUE EL PANAL AGUANTE YA QUE SE PUDRE. 

HAY DOS TIPOS DE CONECTORES: 
* CONECTOR RAPIDO O ESPECIAL IMAGEN 1 (DPI2816). SE BATALLAN EN QUITAR, POR ESO A VECES LOS DEJAN PEGADOS ALLA Y TRAEN EL ENFRIADOR SUELTO EN EL TANQUE INFERIOR.

* CONECTOR NORMAL ESTA EN LA IMAGEN 2 (DPI2952). 

SI EL PANAL NO ES ORIGINAL NUESTRA TAPA YA NO QUEDA. ', 1, 'DPI2952  DPI2816', 1),
	(true, '2025-04-13 23:46:21.597718', '2025-04-13 23:46:21.597718', 8, 'REA41-13432.126 A180 (2012-2017)-A200 (2012-2017) [1]', 'NO HAY TAPA PARA REPARACION. TIENE QUE SER NUEVO.
', 1, 'REA41-13432.126', 1),
	(true, '2024-09-09 01:48:49.150284', '2025-05-09 21:57:47.405815', 2, 'DPI13510 LOBO (2015-2020)-NAVIGATOR (2018-2021)-F150 (2015-2020)-EXPEDITION (2015-2020) [1]', 'PANAL Y ENFRIADOR DEL RADIADOR SE PUDREN. NO SIEMPRE PROCEDE LA REPARACION. HAY QUE COTIZAR PREFERENTEMENTE EL NUEVO. ADEMAS EL PANAL TRAE RETARDADOR Y ES COMPLICADO EL SONDEO.
POR LO TANTO CASI NO HAY RECONSTRUIDOS.
ENFRIADOR LO TRAE POR ATRAS. 
UNA TOMA ES DE CANDADO Y LA OTRA TOMA ES LISA. 
', 1, 'DPI13510', 1),
	(true, '2025-06-16 23:23:36.471869', '2025-06-16 23:23:36.471869', 13, ' CHEROKEE (2023-2024) [0]', 'DE ESTA CHEROKEE NO SE HA ENCONTRADO NADA MAS QUE EL ORIGINAL COMO EN  $10,000. ESTA ES LA QUE SE LE DAÑO EL PURGADOR. 
REACH MANEJA UNO PERO SE PARECE. NO ES. 
RUNSA  ID193700 HABRIA QUE VER QUE SI TRAIGA EL PURGADOR COMO EL DE LAS IMAGENES. 
VENCEDORES MANEJA LA TAPA CH242 PERO AUNQUE ES MUY PARECIDA NO ES IGUAL Y LAS MEDIDAS NO COINCIDEN. ', 0, '', 1),
	(true, '2025-04-01 03:59:07.293855', '2025-04-30 01:19:59.929811', 5, 'DPI13717 F350 SUPER DUTY (2018-2022) [1]', 'LAS TOMAS SON DE CANDADO
CUANDO ES AUTOMATICO EL ENFRIADOR VA POR LA PARTE DE ATRAS. 
MIDE EN PULGADAS  30 7/16 X 28 1/16 
MIDE EN MM  710  X 775', 1, 'DPI13717', 1),
	(true, '2025-05-08 22:35:15.444569', '2025-05-08 22:35:15.444569', 9, ' KANGOO (2019-2024)-DUSTER OSHO (2017-2023)-OROCH (2018-2021) [1]', 'Trae la toma y por el costado una tomita chiquita. 
No hay tapas por el momento. Solo nuevo.', 1, '', 1),
	(true, '2025-05-08 23:19:48.265516', '2025-05-09 21:22:24.209236', 10, ' MINI COOPER (2013-2019)-BMW X1 (2016-2022)-BMW X2 (2016-2022) [1]', 'HAY VARIOS TIPOS MUUUUY PARECIDOS Y VARÍAN POR MONTAJES Y POR MEDIDA DEL PANAL. EN ALGUNOS LAS PATAS SON MAS LARGAS Y EN OTROS MAS CORTAS.

LAS IMAGINES SON DE DOS TIPOS DE MEDIDAS. REVISAR BIEN LAS MEDIDAS, PATAS, MONTAJE Y TOMAS. 
NO HAY TAPAS. SOLO NUEVO. 
LA CLAVE DE "VENCEDORES" MIDE 26 13/16 X 14 1/8
LA CLAVE DE REACH MIDE 26 3/4 X 11 3/4 (SI QUEDA PARA EL DE 12")', 1, '', 1),
	(true, '2025-05-29 04:50:08.043605', '2025-05-30 03:09:15.886068', 11, 'DPI2141 F150 (1997-2008)-LOBO (1997-2008)-EXPEDITION (1997-2008) [1]', 'ES IMPORTANTE VER QUÉ TIPO DE CONECTORES DE TRANSMISIONES TRAE.
EL ORIGINAL VIENE CASI SIEMPRE EN 1 LINEA.
SE VENDE DE 1 LINEA LATERAL DELGADO
SE VENDE DE 1 LINEA LATERAL ANCHO
SE VENDE DE 2 LINEAS (ANCHO)

PHAR 2141 CONECTOR NORMAL 1 PULGADA CABECERA VOLADA HACIA ATRAS
FRONTERA 2819 CONECTOR ESPECIAL LATERAL ANCHO Y PANAL ANCHO
FRONTERA 2818 CONECTOR ESPECIAL LATERAL DELGADO', 1, 'DPI2141', 1),
	(true, '2024-09-09 02:24:55.975721', '2025-06-09 20:59:38.881871', 4, 'DPI 13226 F150 (2011-2014)-LOBO (2011-2014)-EXPEDITION (2011-2014)-NAVIGATOR (2015-2017) [0]', 'ESTE RADIADOR ES SIN TAPON, HAY OTRO QUE ES CON TAPON.
PANAL Y ENFRIADOR SE PUDREN. NO SIEMPRE PROCEDE LA REPARACION.
EL ENFRIADOR ESTA POR LA PARTE DE ATRAS.
UNA TOMA ES DE CANDADO Y OTRA ES LISA. 
HAY TOMAS DE 1 1/2 Y TOMAS DE 1 3/4. HAY QUE PREGUNTAR. 
', 0, 'DPI 13226', 1),
	(true, '2024-09-09 02:18:35.732387', '2025-06-09 21:15:14.089265', 3, 'DPI 13099 NAVIGATOR (2015-2017)-F150 (2009-2014)-LOBO (2009-2014)-EXPEDITION (2009-2014) [1]', 'ESTE RADIADOR ES CON TAPON, HAY OTRO QUE ES SIN TAPON.
PANAL Y ENFRIADOR SE PUDREN. NO SIEMPRE PROCEDE LA REPARACION.
EL ENFRIADOR ESTA POR LA PARTE DE ATRAS.
UNA TOMA ES DE CANDADO Y OTRA ES LISA. 
OJO: UNAS TOMAS PUEDEN SER DE 1 1/2 Y OTRAS 1 3/4, HAY QUE PREGUNTAR. 
', 1, 'DPI 13099', 1),
	(true, '2025-06-16 22:54:11.696887', '2025-07-10 22:51:47.121925', 12, ' UP (2014-2018) [1]', 'NO HAY TAPAS AUN. SOLO NUEVO. ', 1, '', 1),
	(true, '2025-06-30 23:49:44.119686', '2025-06-30 23:49:44.119686', 16, ' GROOVE (2022-2025) [0]', 'NO HAY NADA DE MOMENTO. SOLO IMAGEN. 
SE PARECE MUCHO AL AVEO 2024 PERO SIN TOMA ADICIONAL. ', 0, '', 1),
	(true, '2025-06-30 23:59:55.557848', '2025-06-30 23:59:55.557848', 17, ' INSIGHT (2022-2025) [0]', 'DE ESTE HONDA HIBRIDO AUN NO HAY NADA. SOLO IMAGEN. ', 0, '', 1),
	(true, '2025-07-01 00:07:34.902344', '2025-07-01 00:07:34.902344', 18, ' 320i (2022-2025) [0]', 'ESTE BMW NO ENCONTRAMOS NADA DE TAPA NI NUEVO CON LAS MISMAS TOMAS. HAY VARIOS PARECIDOS PERO NO SON. ', 0, '', 1),
	(true, '2025-07-10 22:44:22.567814', '2025-07-10 22:47:25.396787', 19, ' RIO (2018-2022)-ACCENT (2018-2022) [0]', 'SE PUEDE CAMBIAR TAPA.
SIEMPRE ES IMPORTANTE REVISAR LOS MONTAJES PORQUE APLICA PARA HYUNDAI Y PARA KIA Y SON MUY PARECIDOS. 

EL RIO TRAE EL MONTAJE CARGADO AL INICIO. 

SI LO COMPRO CON PHAR EL PANAL ES UN POCO MAS ANGOSTO PERO CHAROLAS Y TAPAS SON DEL MISMO TAMAÑO QUE EL ORIGINAL. ESTA CORRECTO. ', 0, '', 1),
	(true, '2025-07-10 23:11:19.806973', '2025-07-10 23:13:51.411315', 20, 'DPI13826 ECOSPORT (2018-2022) [2]', 'NO HAY TAPA AUN. SOLO NUEVO.
MEDIDAS DEL PANAL SON  15 1/8 X 27 13/16', 2, 'DPI13826', 1),
	(true, '2025-07-10 23:30:58.620133', '2025-07-10 23:30:58.620133', 21, ' 508 (2010-2018) [0]', 'NO HAY TAPA AUN. SOLO RADIADOR NUEVO. 
MEDIDAS DEL PANAL  14 /15/16 X 21 7/16', 0, '', 1),
	(true, '2025-07-10 23:52:52.562339', '2025-07-10 23:55:20.094087', 22, ' CRETA (2024-2025) [0]', 'NO HAY NADA AUN. SOLO REPARAR EL PANAL O SOLDARLO.
LA VERDAD ES QUE EL RADIADOR ES TAN DELGADO QUE UN BANQUETAZO Y SE DOBLA. 
AL PARECER EL RADIADOR NO TRAE ENFRIADOR. ', 0, '', 1),
	(true, '2025-08-13 22:56:10.506873', '2025-08-13 22:56:10.506873', 23, ' CHEROKEE (2016-2020)-DURANGO (2016-2020) [1]', 'ESTA DURANGO ES SIN CUELLO. EL TAPON VA EN EL RECUPERADOR. 

APLICA PARA CHEROKEE Y DURANGO. SIEMPRE ES MUY IMPORTANTE VER LOS MONTAJES DE LAS TAPAS. HAY MUCHO PARECIDOS PERO NO COINCIDEN. 
', 1, '', 1),
	(true, '2025-08-13 23:29:28.19409', '2025-08-13 23:29:28.19409', 24, ' CHEROKEE (2023-2025) [0]', 'ESTA CHEROKEE NO HAY NADA. AL PARECER SOLO AGENCIA. SEGUN ES CHEROKEE 2023. ESTA ES CON CUELLO. Y HAY OTRA QUE ES SIN CUELLO MUY PARECIDA. 
AL PARECER LA TAPA INFERIOR EN AMBAS ES LA MISMA. PERO AUN NADA. NI TAPA NI COMPLETO. 
EVER A VECES TIENE. ', 0, '', 1),
	(true, '2025-08-13 23:36:15.159666', '2025-08-13 23:36:15.159666', 25, ' CHEROKEE (2024-2025) [0]', 'ESTA CHEROKEE NO HAY NADA. AL PARECER SOLO AGENCIA. SEGUN ES CHEROKEE 2024-25. ESTA ES SIN CUELLO. Y HAY OTRA QUE ES CON CUELLO MUY PARECIDA. 
AL PARECER LA TAPA INFERIOR EN AMBAS ES LA MISMA. PERO AUN NADA. NI TAPA NI COMPLETO. 
EVER A VECES TIENE.', 0, '', 1),
	(true, '2025-08-29 16:25:14.701632', '2025-08-29 16:25:14.701632', 26, ' Uno attractive  (2012-2018) [0]', 'Este radiador no tenemos nada aun. Es parecido al promaster y otros pero las medidas y los montajes son diferentes. ', 0, '', 1),
	(true, '2025-08-29 18:37:01.3554', '2025-08-29 18:37:01.3554', 27, ' Palio (2011-2016)-VISION (2015-2018)-RAM PROMASTER RAPID (2017-2024) [0]', 'Este modelo aplica para Fiat y para Ram. No hay tapas, solo nuevo. ', 0, '', 1),
	(true, '2025-06-30 23:43:08.81727', '2025-09-13 03:53:00.240344', 15, ' AVEO (2024-2025) [0]', 'AVEO !!!  4L  2024, 2025. NO HAY NADA SOLO IMAGEN.
ES MUY PARECIDO AL GROOVE PERO SIN UNA TOMA ADICIONAL. ', 0, '1', 1),
	(true, '2025-09-13 02:17:14.239792', '2025-09-14 01:57:39.626366', 28, 'TRACKER (2021-2025) [0]', 'EL ORIGINAL VIENE COMO EN TUBO REDONDO. EL DE VENCEDORES VIENE EN TUBO PLANO. NO HAY TAPAS AUN. ', 0, '', 1),
	(true, '2025-10-08 21:17:57.112914', '2025-10-08 21:17:57.112914', 29, '1  [0]', 'EXISTE PARA OTRO AUDI Q5 MUY PARECIDO PERO TRAE MONTAJES DIFERENTES. ESTE NO TRAE TRIANGULO, EL OTRO SI. 
ESTE SE PIDE A RUNSA Y DEYAC. 
EL PROBLEMA PRINCIPAL ES PANAL Y NO SIEMPRE SE REPARA. POR ESO ES IMPORTANTE COTIZAR NUEVO. ', 0, '1', 1),
	(true, '2025-10-08 21:20:33.494272', '2025-10-08 23:47:10.195172', 30, 'Q7 (2017-2024)-A4 (2017-2021) [0]', 'SE PUEDE CAMBIAR TAPA PERO EL PANAL NO SIEMPRE AGUANTA.
HAY OTRO AUDI QUE ES MUY PARECIDO PERO SI TRAE TRIANGULITO COMO MONATJE. 

ESTE RADIADOR SE COMRPA EN RUNSA O DEYAC.', 0, '', 1),
	(true, '2025-06-30 23:18:26.800104', '2025-10-08 23:47:51.22002', 14, '13188 Q5 (2011-2017) [0]', 'SE PUEDE CAMBIAR TAPA PERO EL PANAL NO SIEMPRE AGUANTA.
HAY OTRO AUDI QUE ES MUY PARECIDO PERO NO TRAE TRIANGULITO (APARECE PARA Q7)

SI ES AUTOMATICO CON TRIANGULITO  13188 PH
SI ES ESTADAR CON TRIANGULITO 191074 PH 

CUANDO ES SIN TRIANGULO ES CON RUNSA (ID:150784) Y DEYAC ????? ', 0, '13188', 1);


--
-- Data for Name: product_car_model; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."product_car_model" ("active", "created_at", "updated_at", "product_id", "car_model_id", "initial_year", "last_year") VALUES
	(true, '2025-06-09 20:59:38.881871', '2025-06-09 20:59:38.881871', 4, 6, 2011, 2014),
	(true, '2025-06-09 20:59:38.881871', '2025-06-09 20:59:38.881871', 4, 7, 2011, 2014),
	(true, '2025-06-09 20:59:38.881871', '2025-06-09 20:59:38.881871', 4, 8, 2011, 2014),
	(true, '2025-06-09 20:59:38.881871', '2025-06-09 20:59:38.881871', 4, 9, 2015, 2017),
	(true, '2025-06-09 21:15:14.089265', '2025-06-09 21:15:14.089265', 3, 9, 2015, 2017),
	(true, '2025-06-09 21:15:14.089265', '2025-06-09 21:15:14.089265', 3, 6, 2009, 2014),
	(true, '2025-06-09 21:15:14.089265', '2025-06-09 21:15:14.089265', 3, 7, 2009, 2014),
	(true, '2025-06-09 21:15:14.089265', '2025-06-09 21:15:14.089265', 3, 8, 2009, 2014),
	(true, '2025-06-16 23:23:36.471869', '2025-06-16 23:23:36.471869', 13, 29, 2023, 2024),
	(true, '2025-04-07 02:52:53.327246', '2025-04-07 02:52:53.327246', 7, 16, 2012, 2019),
	(true, '2025-04-07 02:52:53.327246', '2025-04-07 02:52:53.327246', 7, 17, 2012, 2019),
	(true, '2025-04-13 23:02:59.521433', '2025-04-13 23:02:59.521433', 6, 13, 2006, 2010),
	(true, '2025-04-13 23:02:59.521433', '2025-04-13 23:02:59.521433', 6, 14, 2006, 2010),
	(true, '2025-04-13 23:02:59.521433', '2025-04-13 23:02:59.521433', 6, 15, 2006, 2010),
	(true, '2025-04-13 23:46:21.597718', '2025-04-13 23:46:21.597718', 8, 18, 2012, 2017),
	(true, '2025-04-13 23:46:21.597718', '2025-04-13 23:46:21.597718', 8, 19, 2012, 2017),
	(true, '2025-04-30 01:19:59.929811', '2025-04-30 01:19:59.929811', 5, 12, 2018, 2022),
	(true, '2025-05-08 22:35:15.444569', '2025-05-08 22:35:15.444569', 9, 20, 2019, 2024),
	(true, '2025-05-08 22:35:15.444569', '2025-05-08 22:35:15.444569', 9, 21, 2017, 2023),
	(true, '2025-05-08 22:35:15.444569', '2025-05-08 22:35:15.444569', 9, 22, 2018, 2021),
	(true, '2025-05-09 21:22:24.209236', '2025-05-09 21:22:24.209236', 10, 23, 2013, 2019),
	(true, '2025-05-09 21:22:24.209236', '2025-05-09 21:22:24.209236', 10, 26, 2016, 2022),
	(true, '2025-05-09 21:22:24.209236', '2025-05-09 21:22:24.209236', 10, 27, 2016, 2022),
	(true, '2025-05-09 21:57:47.405815', '2025-05-09 21:57:47.405815', 2, 7, 2015, 2020),
	(true, '2025-05-09 21:57:47.405815', '2025-05-09 21:57:47.405815', 2, 9, 2018, 2021),
	(true, '2025-05-09 21:57:47.405815', '2025-05-09 21:57:47.405815', 2, 6, 2015, 2020),
	(true, '2025-05-09 21:57:47.405815', '2025-05-09 21:57:47.405815', 2, 8, 2015, 2020),
	(true, '2025-05-30 03:09:15.886068', '2025-05-30 03:09:15.886068', 11, 6, 1997, 2008),
	(true, '2025-05-30 03:09:15.886068', '2025-05-30 03:09:15.886068', 11, 7, 1997, 2008),
	(true, '2025-05-30 03:09:15.886068', '2025-05-30 03:09:15.886068', 11, 8, 1997, 2008),
	(true, '2025-06-30 23:49:44.119686', '2025-06-30 23:49:44.119686', 16, 32, 2022, 2025),
	(true, '2025-06-30 23:59:55.557848', '2025-06-30 23:59:55.557848', 17, 33, 2022, 2025),
	(true, '2025-07-01 00:07:34.902344', '2025-07-01 00:07:34.902344', 18, 34, 2022, 2025),
	(true, '2025-07-10 22:47:25.396787', '2025-07-10 22:47:25.396787', 19, 35, 2018, 2022),
	(true, '2025-07-10 22:47:25.396787', '2025-07-10 22:47:25.396787', 19, 36, 2018, 2022),
	(true, '2025-07-10 22:51:47.121925', '2025-07-10 22:51:47.121925', 12, 28, 2014, 2018),
	(true, '2025-07-10 23:13:51.411315', '2025-07-10 23:13:51.411315', 20, 37, 2018, 2022),
	(true, '2025-07-10 23:30:58.620133', '2025-07-10 23:30:58.620133', 21, 38, 2010, 2018),
	(true, '2025-07-10 23:55:20.094087', '2025-07-10 23:55:20.094087', 22, 39, 2024, 2025),
	(true, '2025-08-13 22:56:10.506873', '2025-08-13 22:56:10.506873', 23, 29, 2016, 2020),
	(true, '2025-08-13 22:56:10.506873', '2025-08-13 22:56:10.506873', 23, 41, 2016, 2020),
	(true, '2025-08-13 23:29:28.19409', '2025-08-13 23:29:28.19409', 24, 29, 2023, 2025),
	(true, '2025-08-13 23:36:15.159666', '2025-08-13 23:36:15.159666', 25, 29, 2024, 2025),
	(true, '2025-08-29 16:25:14.701632', '2025-08-29 16:25:14.701632', 26, 42, 2012, 2018),
	(true, '2025-08-29 18:37:01.3554', '2025-08-29 18:37:01.3554', 27, 43, 2011, 2016),
	(true, '2025-08-29 18:37:01.3554', '2025-08-29 18:37:01.3554', 27, 44, 2015, 2018),
	(true, '2025-08-29 18:37:01.3554', '2025-08-29 18:37:01.3554', 27, 45, 2017, 2024),
	(true, '2025-09-13 03:53:00.240344', '2025-09-13 03:53:00.240344', 15, 31, 2024, 2025),
	(true, '2025-09-14 01:57:39.626366', '2025-09-14 01:57:39.626366', 28, 46, 2021, 2025),
	(true, '2025-10-08 23:47:10.195172', '2025-10-08 23:47:10.195172', 30, 47, 2017, 2024),
	(true, '2025-10-08 23:47:10.195172', '2025-10-08 23:47:10.195172', 30, 48, 2017, 2021),
	(true, '2025-10-08 23:47:51.22002', '2025-10-08 23:47:51.22002', 14, 30, 2011, 2017);


--
-- Data for Name: product_price; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."product_price" ("active", "created_at", "updated_at", "product_id", "price_id") VALUES
	(true, '2024-09-09 01:48:49.150284', '2024-09-09 01:48:49.150284', 2, 4),
	(true, '2024-09-09 01:48:49.150284', '2024-09-09 01:48:49.150284', 2, 5),
	(true, '2024-09-09 01:48:49.150284', '2024-09-09 01:48:49.150284', 2, 6),
	(true, '2024-09-09 01:48:49.150284', '2024-09-09 01:48:49.150284', 2, 7),
	(true, '2024-09-09 02:18:35.732387', '2024-09-09 02:18:35.732387', 3, 10),
	(true, '2024-09-09 02:24:55.975721', '2024-09-09 02:24:55.975721', 4, 13),
	(true, '2025-04-01 04:10:41.557897', '2025-04-01 04:10:41.557897', 5, 19),
	(true, '2025-04-01 18:11:09.420789', '2025-04-01 18:11:09.420789', 6, 30),
	(true, '2025-04-01 18:11:09.420789', '2025-04-01 18:11:09.420789', 6, 31),
	(true, '2025-04-01 18:11:09.420789', '2025-04-01 18:11:09.420789', 6, 32),
	(true, '2025-04-01 18:11:09.420789', '2025-04-01 18:11:09.420789', 6, 33),
	(true, '2025-04-07 02:52:53.327246', '2025-04-07 02:52:53.327246', 7, 71),
	(true, '2025-04-07 02:52:53.327246', '2025-04-07 02:52:53.327246', 7, 72),
	(true, '2025-04-07 02:52:53.327246', '2025-04-07 02:52:53.327246', 7, 73),
	(true, '2025-04-07 02:52:53.327246', '2025-04-07 02:52:53.327246', 7, 74),
	(true, '2025-04-13 23:46:21.597718', '2025-04-13 23:46:21.597718', 8, 81),
	(true, '2025-04-13 23:46:21.597718', '2025-04-13 23:46:21.597718', 8, 82),
	(true, '2025-04-13 23:46:21.597718', '2025-04-13 23:46:21.597718', 8, 83),
	(true, '2025-05-08 22:35:15.444569', '2025-05-08 22:35:15.444569', 9, 95),
	(true, '2025-05-08 22:35:15.444569', '2025-05-08 22:35:15.444569', 9, 96),
	(true, '2025-05-08 23:19:48.265516', '2025-05-08 23:19:48.265516', 10, 99),
	(true, '2025-05-29 04:50:08.043605', '2025-05-29 04:50:08.043605', 11, 109),
	(true, '2025-05-29 04:50:08.043605', '2025-05-29 04:50:08.043605', 11, 110),
	(true, '2025-05-29 04:50:08.043605', '2025-05-29 04:50:08.043605', 11, 111),
	(true, '2025-05-29 04:50:08.043605', '2025-05-29 04:50:08.043605', 11, 112),
	(true, '2025-06-09 20:59:38.881871', '2025-06-09 20:59:38.881871', 4, 120),
	(true, '2025-06-09 21:15:14.089265', '2025-06-09 21:15:14.089265', 3, 125),
	(true, '2025-06-16 23:23:36.471869', '2025-06-16 23:23:36.471869', 13, 130),
	(true, '2025-07-10 22:44:22.567814', '2025-07-10 22:44:22.567814', 19, 144),
	(true, '2025-07-10 22:44:22.567814', '2025-07-10 22:44:22.567814', 19, 145),
	(true, '2025-07-10 22:44:22.567814', '2025-07-10 22:44:22.567814', 19, 146),
	(true, '2025-07-10 22:44:22.567814', '2025-07-10 22:44:22.567814', 19, 147),
	(true, '2025-07-10 22:51:47.121925', '2025-07-10 22:51:47.121925', 12, 152),
	(true, '2025-07-10 23:11:19.806973', '2025-07-10 23:11:19.806973', 20, 154),
	(true, '2025-07-10 23:30:58.620133', '2025-07-10 23:30:58.620133', 21, 157),
	(true, '2025-07-10 23:55:20.094087', '2025-07-10 23:55:20.094087', 22, 158),
	(true, '2025-07-10 23:55:20.094087', '2025-07-10 23:55:20.094087', 22, 159),
	(true, '2025-08-13 22:56:10.506873', '2025-08-13 22:56:10.506873', 23, 161),
	(true, '2025-08-13 22:56:10.506873', '2025-08-13 22:56:10.506873', 23, 162),
	(true, '2025-08-13 22:56:10.506873', '2025-08-13 22:56:10.506873', 23, 163),
	(true, '2025-09-14 01:57:39.626366', '2025-09-14 01:57:39.626366', 28, 169),
	(true, '2025-10-08 23:47:10.195172', '2025-10-08 23:47:10.195172', 30, 204),
	(true, '2025-10-08 23:47:10.195172', '2025-10-08 23:47:10.195172', 30, 205),
	(true, '2025-10-08 23:47:10.195172', '2025-10-08 23:47:10.195172', 30, 206),
	(true, '2025-10-08 23:47:10.195172', '2025-10-08 23:47:10.195172', 30, 207),
	(true, '2025-10-08 23:47:51.22002', '2025-10-08 23:47:51.22002', 14, 210),
	(true, '2025-10-08 23:47:51.22002', '2025-10-08 23:47:51.22002', 14, 211),
	(true, '2025-10-08 23:47:51.22002', '2025-10-08 23:47:51.22002', 14, 212),
	(true, '2025-10-08 23:47:51.22002', '2025-10-08 23:47:51.22002', 14, 213);


--
-- Data for Name: provider; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."provider" ("active", "created_at", "updated_at", "id", "name", "phone_number", "address", "comments") VALUES
	(true, '2024-09-09 01:47:51.870737', '2024-09-09 01:47:51.870737', 2, 'FRONTERA', '8129710460', 'AV. CHAPULTEPEC 2321', NULL),
	(true, '2024-09-09 02:18:00.601047', '2024-09-09 02:18:00.601047', 3, 'DEYAC', '8118217749', 'AV. RUIZ CORTINES 1383', NULL),
	(true, '2025-04-01 03:53:56.69661', '2025-04-01 03:53:56.69661', 4, 'VENCEDORES', '6564227094', 'DURANGO', 'SALVADOR'),
	(true, '2025-04-01 21:06:05.096252', '2025-04-01 21:06:05.096252', 5, 'PHAR', '8113891514', 'MONTERREY', 'EDUARDO O KARLA'),
	(true, '2025-04-07 02:52:03.220459', '2025-04-07 02:52:03.220459', 6, 'RUNSA', '5548775784', 'CIUDAD DE MEXICO', 'POR WHATS APP'),
	(true, '2025-04-13 23:45:40.568279', '2025-04-13 23:45:40.568279', 7, 'REACH', '5546071928', 'MEXICO', 'FATIMA'),
	(false, '2025-08-13 22:54:12.708788', '2025-08-13 22:54:12.708788', 8, 'REACH ', '5546071928', 'MEXICO', 'FATIMA');


--
-- Data for Name: provider_product; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."provider_product" ("active", "created_at", "updated_at", "product_id", "price_id", "provider_id", "num_series") VALUES
	(true, '2025-04-07 02:52:53.327246', '2025-04-07 02:52:53.327246', 7, 69, 4, '13505'),
	(true, '2025-04-07 02:52:53.327246', '2025-04-07 02:52:53.327246', 7, 70, 6, '138716'),
	(true, '2025-04-01 18:11:09.420789', '2025-04-13 23:02:59.521433', 6, 76, 2, '2952 o 2816'),
	(true, '2025-04-01 18:11:09.420789', '2025-04-13 23:02:59.521433', 6, 76, 2, '2952 o 2816'),
	(true, '2025-04-01 18:11:09.420789', '2025-04-13 23:02:59.521433', 6, 78, 3, '2952 o 2816'),
	(true, '2025-04-01 18:11:09.420789', '2025-04-13 23:02:59.521433', 6, 78, 3, '2952 o 2816'),
	(true, '2025-04-01 21:07:53.328374', '2025-04-13 23:02:59.521433', 6, 79, 5, '2952 o 2816'),
	(true, '2025-04-13 23:46:21.597718', '2025-04-13 23:46:21.597718', 8, 80, 7, 'REA41-13432.126'),
	(true, '2025-04-01 03:59:07.293855', '2025-04-30 01:19:59.929811', 5, 90, 4, '13717'),
	(true, '2025-04-01 03:59:07.293855', '2025-04-30 01:19:59.929811', 5, 91, 2, '0'),
	(true, '2025-05-08 22:35:15.444569', '2025-05-08 22:35:15.444569', 9, 93, 4, 'RVRE073'),
	(true, '2025-05-08 22:35:15.444569', '2025-05-08 22:35:15.444569', 9, 94, 5, 'LHRP15011'),
	(true, '2025-05-08 23:19:48.265516', '2025-05-09 21:22:24.209236', 10, 104, 7, 'REA41-13544.026'),
	(true, '2025-05-08 23:19:48.265516', '2025-05-09 21:22:24.209236', 10, 105, 4, 'T28171'),
	(true, '2024-09-09 01:48:49.150284', '2025-05-09 21:57:47.405815', 2, 106, 2, 'AM13510'),
	(true, '2025-05-29 04:50:08.043605', '2025-05-30 03:09:15.886068', 11, 115, 5, '2141'),
	(true, '2025-05-30 03:09:15.886068', '2025-05-30 03:09:15.886068', 11, 117, 2, '2819'),
	(true, '2024-09-09 02:24:55.975721', '2025-06-09 20:59:38.881871', 4, 118, 2, '13229'),
	(true, '2025-06-09 20:59:38.881871', '2025-06-09 20:59:38.881871', 4, 119, 5, '13226'),
	(true, '2024-09-09 02:18:35.732387', '2025-06-09 21:15:14.089265', 3, 123, 3, 'DPI1214'),
	(true, '2025-06-09 21:05:15.099656', '2025-06-09 21:15:14.089265', 3, 124, 5, 'A13099-26C'),
	(true, '2025-06-16 23:23:36.471869', '2025-06-16 23:23:36.471869', 13, 129, 6, 'ID193700'),
	(true, '2025-07-10 22:44:22.567814', '2025-07-10 22:47:25.396787', 19, 149, 5, 'I70211-16C'),
	(true, '2025-06-16 22:54:11.696887', '2025-07-10 22:51:47.121925', 12, 150, 7, 'REA40-21887'),
	(true, '2025-06-16 22:54:11.696887', '2025-07-10 22:51:47.121925', 12, 151, 3, '1665300USA'),
	(true, '2025-07-10 23:11:19.806973', '2025-07-10 23:13:51.411315', 20, 155, 4, 'T13826'),
	(true, '2025-07-10 23:30:58.620133', '2025-07-10 23:30:58.620133', 21, 156, 4, 'T88045'),
	(true, '2025-08-13 22:56:10.506873', '2025-08-13 22:56:10.506873', 23, 160, 7, 'REA41-13656.026'),
	(true, '2025-09-13 02:17:14.239792', '2025-09-14 01:57:39.626366', 28, 168, 4, 'RVCV383'),
	(true, '2025-10-08 21:27:17.090213', '2025-10-08 23:47:10.195172', 30, 202, 6, '150784'),
	(true, '2025-10-08 21:27:17.090213', '2025-10-08 23:47:10.195172', 30, 203, 3, 'RAAVW7140026S'),
	(true, '2025-06-30 23:18:26.800104', '2025-10-08 23:47:51.22002', 14, 209, 5, 'I91074 ESTANDAR'),
	(true, '2025-06-30 23:18:26.800104', '2025-10-08 23:47:51.22002', 14, 209, 5, 'I91074 ESTANDAR');


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."role" ("active", "created_at", "updated_at", "id", "description") VALUES
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 1, 'ADMINISTRADOR'),
	(true, '2024-08-27 04:18:03.643261', '2024-08-27 04:18:03.643261', 2, 'EMPLEADO');


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."user" ("active", "created_at", "updated_at", "id", "person_id", "role_id") VALUES
	(true, '2025-03-09 16:18:39.647747', '2025-03-09 16:18:39.647747', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', 4, 1),
	(false, '2025-03-09 23:05:47.298077', '2025-03-09 23:05:47.298077', '601d4615-89bd-4f01-816a-d70c17150818', 5, 1),
	(false, '2024-08-27 04:20:51.713494', '2024-08-27 04:20:51.713494', 'CiBU5tQFJ6ees9vWRo6ge8p1ltV2', 1, 1),
	(false, '2025-03-10 22:49:25.230511', '2025-03-10 22:49:25.230511', '414a31b9-6404-4d08-8ea1-181d47bf67fe', 6, 1),
	(false, '2024-08-29 16:53:20.319', '2024-08-29 16:53:20.319', 'b05mcEhKKEYJURE6bcR94bpX4j53', 2, 1),
	(true, '2025-03-11 01:47:50.109232', '2025-03-11 01:47:50.109232', '67f28c39-a33a-436d-b004-5418dacc32d6', 7, 1),
	(true, '2025-10-08 21:34:03.77559', '2025-10-08 21:34:03.77559', '569fce55-af94-4084-8ecb-8a8c5ab3f638', 8, 2),
	(true, '2025-10-08 21:35:54.218662', '2025-10-08 21:35:54.218662', '20ab2698-6ada-4946-b72f-fa05e1c4183c', 9, 2);


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type") VALUES
	('application', 'application', NULL, '2025-02-23 17:38:39.284389+00', '2025-02-23 17:38:39.284389+00', true, false, NULL, NULL, NULL, 'STANDARD'),
	('radiators', 'radiators', NULL, '2025-03-09 01:35:07.309128+00', '2025-03-09 01:35:07.309128+00', false, false, NULL, NULL, NULL, 'STANDARD'),
	('providers', 'providers', NULL, '2025-03-09 01:35:08.219722+00', '2025-03-09 01:35:08.219722+00', false, false, NULL, NULL, NULL, 'STANDARD'),
	('car-models', 'car-models', NULL, '2025-03-09 01:35:08.568606+00', '2025-03-09 01:35:08.568606+00', false, false, NULL, NULL, NULL, 'STANDARD'),
	('brands', 'brands', NULL, '2025-03-09 01:35:06.884288+00', '2025-03-09 01:35:06.884288+00', true, false, NULL, NULL, NULL, 'STANDARD'),
	('products', 'products', NULL, '2025-03-09 01:35:05.347862+00', '2025-03-09 01:35:05.347862+00', true, false, NULL, NULL, NULL, 'STANDARD');


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata", "level") VALUES
	('ae82daf3-f72f-428c-917c-0e029d1b0cdf', 'products', 'images/ab50c90d-6bb8-41ef-b55b-e6201e803a83', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-08-29 16:25:14.174863+00', '2025-08-29 16:25:14.174863+00', '2025-08-29 16:25:14.174863+00', '{"eTag": "\"74c9ab9afd210ff7043af5d645f771e1\"", "size": 239249, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-08-29T16:25:15.000Z", "contentLength": 239249, "httpStatusCode": 200}', '6b0f5a35-9fc7-4c1d-8f8a-969530d71f38', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('f492f5b3-73fb-4652-a4e0-5edf84022c01', 'products', 'images/6b0154cc-eb63-4b18-9772-a987ebb8983b.jpg', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-10-08 21:17:56.234088+00', '2025-10-08 21:17:56.234088+00', '2025-10-08 21:17:56.234088+00', '{"eTag": "\"d2979cedd59642d28eec016a0d01a09c\"", "size": 242591, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-10-08T21:17:57.000Z", "contentLength": 242591, "httpStatusCode": 200}', '9ea4babd-4f87-4a6c-bba6-38edce41d8e1', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('f891c03d-eb10-4e10-83fe-9d7e60143605', 'products', 'images/a7f01838-0d82-49cd-bb17-8196f38a1833.jpg', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-10-08 21:20:32.588405+00', '2025-10-08 21:20:32.588405+00', '2025-10-08 21:20:32.588405+00', '{"eTag": "\"d2979cedd59642d28eec016a0d01a09c\"", "size": 242591, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-10-08T21:20:33.000Z", "contentLength": 242591, "httpStatusCode": 200}', 'f534ed91-5ed1-444f-8962-72d21553c7f2', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('a7221069-720e-477c-926f-ab8da0069c08', 'products', 'images/f9fd3495-1c16-4964-b7d5-1ded03495030', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-08-29 18:37:00.48543+00', '2025-08-29 18:37:00.48543+00', '2025-08-29 18:37:00.48543+00', '{"eTag": "\"c2cba1b73cc98e804d2a48b54f3b74da\"", "size": 407808, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-08-29T18:37:01.000Z", "contentLength": 407808, "httpStatusCode": 200}', '50c2076b-f37d-4fde-be4b-f40a396dff2f', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('fd5b99e3-6a61-4c0d-a985-5ac0205bf71f', 'products', 'images/8ecad0ff-4de6-42b5-bed3-c1a4d752ae32.jpg', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-09-13 02:17:13.507896+00', '2025-09-13 02:17:13.507896+00', '2025-09-13 02:17:13.507896+00', '{"eTag": "\"bab31724ef5d9b86a211d6d4039a4f1d\"", "size": 31440, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-09-13T02:17:14.000Z", "contentLength": 31440, "httpStatusCode": 200}', '743642f9-2008-40da-ba63-8a0ceb1b09a0', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('17c038af-e346-4a2c-a499-a972f18b5d76', 'products', 'images/4f7f8a20-98e1-4290-930e-f2ec42018d4d.jpg', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-09-13 02:17:13.548077+00', '2025-09-13 02:17:13.548077+00', '2025-09-13 02:17:13.548077+00', '{"eTag": "\"20b2eed50d957eb5cfdcc5495781d988\"", "size": 37785, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-09-13T02:17:14.000Z", "contentLength": 37785, "httpStatusCode": 200}', '2c322fd3-d522-4ff1-bb3f-e46f77a4ee56', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('3fdb010a-d6f2-435b-aa69-54caaa7754e6', 'products', 'documents/.keep', NULL, '2025-03-09 01:35:09.614233+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 01:35:09.614233+00', '{"eTag": "\"d41d8cd98f00b204e9800998ecf8427e\"", "size": 0, "mimetype": "application/octet-stream", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T01:35:10.000Z", "contentLength": 0, "httpStatusCode": 200}', 'dbb1bead-f6be-409f-9ccb-c9128510d746', NULL, '{}', 2),
	('df791c47-86b1-46a5-b7fa-92c77a03a922', 'brands', 'images/.keep', NULL, '2025-03-09 01:35:10.446481+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 01:35:10.446481+00', '{"eTag": "\"d41d8cd98f00b204e9800998ecf8427e\"", "size": 0, "mimetype": "application/octet-stream", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T01:35:11.000Z", "contentLength": 0, "httpStatusCode": 200}', 'a0a2b4cd-5cdb-4a23-88e2-1b79c4c3d436', NULL, '{}', 2),
	('52451e59-f5e9-4b07-9d4d-743fc1e77bba', 'car-models', 'images/.keep', NULL, '2025-03-09 01:35:13.303867+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 01:35:13.303867+00', '{"eTag": "\"d41d8cd98f00b204e9800998ecf8427e\"", "size": 0, "mimetype": "application/octet-stream", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T01:35:14.000Z", "contentLength": 0, "httpStatusCode": 200}', 'e0d42d18-abeb-4c4d-b322-9daa7e3b436d', NULL, '{}', 2),
	('d5f73936-7b91-4524-a3e3-cf0383b330d3', 'products', 'images/.keep', NULL, '2025-03-09 01:35:08.874783+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 01:35:08.874783+00', '{"eTag": "\"d41d8cd98f00b204e9800998ecf8427e\"", "size": 0, "mimetype": "application/octet-stream", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T01:35:09.000Z", "contentLength": 0, "httpStatusCode": 200}', '2d7e42b8-8242-4ec4-9cdf-dc5335779e51', NULL, '{}', 2),
	('fb436faf-334a-4caa-b032-ec34eece84e1', 'providers', 'images/.keep', NULL, '2025-03-09 01:35:12.590199+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 01:35:12.590199+00', '{"eTag": "\"d41d8cd98f00b204e9800998ecf8427e\"", "size": 0, "mimetype": "application/octet-stream", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T01:35:13.000Z", "contentLength": 0, "httpStatusCode": 200}', '4ef421f2-deec-4d1d-9c7b-89da632672b5', NULL, '{}', 2),
	('38c9427d-9582-467e-8366-7e1a63516e84', 'radiators', 'images/.keep', NULL, '2025-03-09 01:35:11.024906+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 01:35:11.024906+00', '{"eTag": "\"d41d8cd98f00b204e9800998ecf8427e\"", "size": 0, "mimetype": "application/octet-stream", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T01:35:11.000Z", "contentLength": 0, "httpStatusCode": 200}', 'b2a3529e-8e10-4aca-9cca-fee956b5535d', NULL, '{}', 2),
	('89323a75-2b89-4d6e-8984-005c3c859774', 'products', 'images/01a329d3-4f11-4872-96c9-8e5c991dc5e6', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-07-10 23:11:19.151969+00', '2025-08-27 05:32:13.046564+00', '2025-07-10 23:11:19.151969+00', '{"eTag": "\"f3f36432d91ef07abe0301beefe54e5d\"", "size": 30713, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-10T23:11:20.000Z", "contentLength": 30713, "httpStatusCode": 200}', '5d081c34-66d8-4c0e-b9ea-287cee353440', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('6d238fe5-d22e-425f-870e-1a64c97ce3ce', 'products', 'images/06423099-ea12-4d9d-9ae2-4755a6a6c7db', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-04-07 02:52:52.513411+00', '2025-08-27 05:32:13.046564+00', '2025-04-07 02:52:52.513411+00', '{"eTag": "\"491c13d679b3fe916893453794c0a724\"", "size": 13550, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-04-07T02:52:53.000Z", "contentLength": 13550, "httpStatusCode": 200}', 'e4eb8f40-66c5-470d-9e52-78aaca469d08', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('1a76d1c7-c24b-4dcc-ab0f-41590e31f5bf', 'products', 'images/0978d9bc-3f00-41e3-9802-072004ede8ba', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-04-07 02:52:52.442113+00', '2025-08-27 05:32:13.046564+00', '2025-04-07 02:52:52.442113+00', '{"eTag": "\"c566d220d7f0810d91d60a96bd8d9fee\"", "size": 14750, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-04-07T02:52:53.000Z", "contentLength": 14750, "httpStatusCode": 200}', '62c7972f-950b-4264-bea0-fcafacedefb7', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('6448d259-bfd0-4c33-a746-b4685469c3e7', 'products', 'images/0b9a6019-18e6-4eb1-afba-f01f71746c9f', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-04-28 19:34:56.119167+00', '2025-08-27 05:32:13.046564+00', '2025-04-28 19:34:56.119167+00', '{"eTag": "\"7f4440b427cfceb34bfb7bfee2614638\"", "size": 433180, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-04-28T19:34:57.000Z", "contentLength": 433180, "httpStatusCode": 200}', 'b4a85bbc-54ee-481c-916e-b5f1761f2fae', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '{}', 2),
	('d42452cd-d0c7-4b0e-b532-d29a46c7ae25', 'products', 'images/0d065a0c-fc40-4258-930f-194cf1e98c6f', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-04-28 19:48:42.94562+00', '2025-08-27 05:32:13.046564+00', '2025-04-28 19:48:42.94562+00', '{"eTag": "\"4e277e503d42636728bb69a4e422cfd1\"", "size": 199400, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-04-28T19:48:43.000Z", "contentLength": 199400, "httpStatusCode": 200}', '834fbe85-c02c-4180-a12d-3bba0f57124d', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '{}', 2),
	('38be98ad-88b1-4c1d-8a13-de85d9325fd3', 'products', 'images/110dbc44-292e-49fe-a60f-2dcb6250fd17', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-05-08 22:35:14.852081+00', '2025-08-27 05:32:13.046564+00', '2025-05-08 22:35:14.852081+00', '{"eTag": "\"14f7715cfa38d61f56404c23954c9de8\"", "size": 34544, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-05-08T22:35:15.000Z", "contentLength": 34544, "httpStatusCode": 200}', 'a5bca534-7a4e-4415-9a58-2cc92c04041c', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('da949ab3-8721-4799-b5ba-12a8055114fb', 'products', 'images/1342e57c-a5ef-4f2f-b84a-17dd1ba78d3d', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-06-30 23:28:15.691856+00', '2025-08-27 05:32:13.046564+00', '2025-06-30 23:28:15.691856+00', '{"eTag": "\"ee4af9ce092fe85fa9d7ab753f4810e5\"", "size": 277572, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-06-30T23:28:16.000Z", "contentLength": 277572, "httpStatusCode": 200}', 'a4615595-61ea-435c-9797-7e398192f142', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('34ed449e-3ef3-4cad-9367-fc89cad5a4d9', 'products', 'images/1a2a3d42-3e14-4041-ab8e-c4cf3ae03b77', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-06-16 22:54:11.288913+00', '2025-08-27 05:32:13.046564+00', '2025-06-16 22:54:11.288913+00', '{"eTag": "\"ab472dea340ad25ae56c869db9e6cf14\"", "size": 999779, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-06-16T22:54:12.000Z", "contentLength": 999779, "httpStatusCode": 200}', '1834b280-afdf-4e53-87fc-659243d12eb1', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('0bfea9fc-563a-433d-8257-6d711997269d', 'products', 'images/1db3f109-f458-47e7-82aa-95c86152cd73', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-06-16 23:23:35.55933+00', '2025-08-27 05:32:13.046564+00', '2025-06-16 23:23:35.55933+00', '{"eTag": "\"b1f6310195ee36e2344db0e7bae0b843\"", "size": 248773, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-06-16T23:23:36.000Z", "contentLength": 248773, "httpStatusCode": 200}', '0cee0f6f-c647-40a8-8295-e95545b07510', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('6b3cf6ff-67d7-4a49-936b-6db0e6a794d6', 'products', 'images/1eacdf9f-bc38-409c-83de-7bbc3d69132b', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-07-10 22:44:21.902259+00', '2025-08-27 05:32:13.046564+00', '2025-07-10 22:44:21.902259+00', '{"eTag": "\"ba7d4e9afc95b0ce69571016acfaf8a6\"", "size": 24524, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-10T22:44:22.000Z", "contentLength": 24524, "httpStatusCode": 200}', 'f14eb35c-b657-4a4f-9b21-d4d3cec9d000', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('746a10b5-b9ca-46d4-9bb1-cd8b4b0b30a6', 'products', 'images/1f139847-899f-48a8-9329-41f4e055bda9', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-04-07 02:52:52.49749+00', '2025-08-27 05:32:13.046564+00', '2025-04-07 02:52:52.49749+00', '{"eTag": "\"1805444af2c63e5ec2a15adcd4413ae2\"", "size": 119902, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-04-07T02:52:53.000Z", "contentLength": 119902, "httpStatusCode": 200}', '7ea3fc3d-ee6a-4da0-bb7d-8287ed564c25', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('4fcb171c-baed-4937-922f-c3cdca9d4519', 'products', 'images/211dedfa-849c-4de3-96dd-8bf94fc209d1', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-06-30 23:34:01.268907+00', '2025-08-27 05:32:13.046564+00', '2025-06-30 23:34:01.268907+00', '{"eTag": "\"d2979cedd59642d28eec016a0d01a09c\"", "size": 242591, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-06-30T23:34:02.000Z", "contentLength": 242591, "httpStatusCode": 200}', 'aeab5207-e668-46a9-8c63-edc01f4d23e2', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('25969a81-9ff9-415d-aa75-ee1a6e83c403', 'products', 'images/294d03b3-7709-4397-a04a-ae1f1e588097', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-07-10 23:11:19.182646+00', '2025-08-27 05:32:13.046564+00', '2025-07-10 23:11:19.182646+00', '{"eTag": "\"0e615d324380e1b8f752f210196fa5cb\"", "size": 264791, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-10T23:11:20.000Z", "contentLength": 264791, "httpStatusCode": 200}', 'da57aa00-e5f9-4b08-af5c-0513a7a1258c', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('38242679-7364-4555-bf4c-5b7e55488a96', 'products', 'images/2b311dcb-5ad3-44b6-9215-d08ee75dc840', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-07-10 23:30:57.132087+00', '2025-08-27 05:32:13.046564+00', '2025-07-10 23:30:57.132087+00', '{"eTag": "\"79b0e453e1c50a904c35fd203fe05f81\"", "size": 250163, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-10T23:30:58.000Z", "contentLength": 250163, "httpStatusCode": 200}', 'e8fcefb5-aecf-42a0-aeb5-3c3ec33582be', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('1645240d-aa51-4e41-a91c-b61fb51250ef', 'products', 'images/2b94576a-23a4-495c-b64e-b90fe5ac380b', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-05-29 04:50:07.27747+00', '2025-08-27 05:32:13.046564+00', '2025-05-29 04:50:07.27747+00', '{"eTag": "\"0dfb42aa3ca9307ec6477d53f6d1a96c\"", "size": 2281677, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-29T04:50:08.000Z", "contentLength": 2281677, "httpStatusCode": 200}', '1cc166b8-54a3-4845-8f1a-e145893cd981', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('b89e68fe-df76-4453-97e6-08512fc38b3b', 'products', 'images/370dd647-01c5-4160-bfe7-2314d61401a6', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-05-08 22:35:14.841697+00', '2025-08-27 05:32:13.046564+00', '2025-05-08 22:35:14.841697+00', '{"eTag": "\"87098ba5d95a9eafa7df06557191500e\"", "size": 88139, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-05-08T22:35:15.000Z", "contentLength": 88139, "httpStatusCode": 200}', '53d20792-4252-4e67-8148-ba56d02b0e3e', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('7fedbce3-ce42-42c2-be7e-b10486be9ecb', 'products', 'images/3ba14f38-31f8-4c7f-9b55-2d8621f9fcd2', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-06-30 23:59:54.887474+00', '2025-08-27 05:32:13.046564+00', '2025-06-30 23:59:54.887474+00', '{"eTag": "\"f8765f2717e4922d54f96cb112602601\"", "size": 72837, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-06-30T23:59:55.000Z", "contentLength": 72837, "httpStatusCode": 200}', 'f43af14b-3753-473e-832b-5032dfe0b4cf', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('9e7823f8-c910-4587-bb4e-0eb1c910be6e', 'products', 'images/3bb808fc-56e2-43ea-9c24-47c347c32577', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-08-13 23:29:27.429738+00', '2025-08-27 05:32:13.046564+00', '2025-08-13 23:29:27.429738+00', '{"eTag": "\"ffcdc700fcfe45c868b6ac028c4605ea\"", "size": 28768, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-08-13T23:29:28.000Z", "contentLength": 28768, "httpStatusCode": 200}', '2b7eb778-71ea-431a-a11a-d916eb6d50c3', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('ace108d7-ed80-4538-92a0-ece0ba11a4de', 'products', 'images/3fdb5f03-d3d7-40a5-8ba9-c96313f93c05', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-04-13 23:46:20.802782+00', '2025-08-27 05:32:13.046564+00', '2025-04-13 23:46:20.802782+00', '{"eTag": "\"acda29c4aacfc0e4a1efd98dff5e92a9\"", "size": 146386, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-04-13T23:46:21.000Z", "contentLength": 146386, "httpStatusCode": 200}', '665e5a82-04ec-4f00-b7de-523a017dae53', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('902e9b83-2fe8-4a31-a606-6be43d963fb1', 'products', 'images/406261d4-bcd2-405a-bf68-7eede5b04192', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-04-28 19:38:21.09586+00', '2025-08-27 05:32:13.046564+00', '2025-04-28 19:38:21.09586+00', '{"eTag": "\"0d58cebebde081ce582b86b8ec86b803\"", "size": 540931, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-04-28T19:38:21.000Z", "contentLength": 540931, "httpStatusCode": 200}', 'baf89eeb-1fd0-4849-a05e-96623c50cd23', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '{}', 2),
	('19e0e016-aa17-49b4-a72d-921b25914d06', 'products', 'images/44908a74-ad7c-41d7-b64a-2bf3d8167481', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-04-01 18:11:08.254567+00', '2025-08-27 05:32:13.046564+00', '2025-04-01 18:11:08.254567+00', '{"eTag": "\"1ec558df56247df1d4386b94b82ecde9\"", "size": 524679, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-04-01T18:11:08.000Z", "contentLength": 524679, "httpStatusCode": 200}', 'eec371c3-f57b-49d9-82f2-d472bdc1a0c1', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('ef3d876c-a100-4c36-b98f-15547409c6f2', 'products', 'images/54748c9c-5d1e-48fb-b15d-218915f89c5f', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-04-28 19:34:56.075628+00', '2025-08-27 05:32:13.046564+00', '2025-04-28 19:34:56.075628+00', '{"eTag": "\"6087fe330d64c81fe23e89192235e32f\"", "size": 308289, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-04-28T19:34:57.000Z", "contentLength": 308289, "httpStatusCode": 200}', '1a6cf681-0225-49b0-aacd-f4449c57ef14', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '{}', 2),
	('132172ca-028b-4bbc-996c-4ce101922c82', 'products', 'images/5541606e-a1aa-4936-bd51-b4c90e10e99b', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-07-01 00:07:34.155918+00', '2025-08-27 05:32:13.046564+00', '2025-07-01 00:07:34.155918+00', '{"eTag": "\"31c8e8b1b91ed0c45375a09704c12a85\"", "size": 331857, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-01T00:07:35.000Z", "contentLength": 331857, "httpStatusCode": 200}', '28b5cc78-e67a-4d51-8292-b494269455ca', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('cf7de15a-a939-4ede-a395-d78b00c3c1f9', 'products', 'images/5be6bd6d-0ba2-4ee2-85fb-7c8c39786de8', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-08-13 23:36:14.222203+00', '2025-08-27 05:32:13.046564+00', '2025-08-13 23:36:14.222203+00', '{"eTag": "\"a35a9b7944f3001fb0616f3f3b5f7cee\"", "size": 20166, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-08-13T23:36:15.000Z", "contentLength": 20166, "httpStatusCode": 200}', '0b752726-d18d-4eaa-8f7f-eee71bca5856', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('4cce61cc-30b1-48d6-8cb6-8c468b5ccf15', 'products', 'images/5c68a426-d9e6-496b-9d63-a6470b33b5e6', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-04-13 23:46:20.940342+00', '2025-08-27 05:32:13.046564+00', '2025-04-13 23:46:20.940342+00', '{"eTag": "\"cfe9556767146f1d38c6c9228943ba90\"", "size": 34134, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-04-13T23:46:21.000Z", "contentLength": 34134, "httpStatusCode": 200}', 'a4a30056-711c-4f61-bd11-2f6f14041320', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('4048a14a-a4bb-428c-9256-c07b010792b1', 'products', 'images/62730cec-243f-46f2-b100-b406a7c1bbb7', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-06-30 23:49:43.507008+00', '2025-08-27 05:32:13.046564+00', '2025-06-30 23:49:43.507008+00', '{"eTag": "\"78ac7567f3bfd6f834a2e74c18b6bb0e\"", "size": 390819, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-06-30T23:49:44.000Z", "contentLength": 390819, "httpStatusCode": 200}', '84549c18-23ac-4b6e-a075-c53f12eaf9f7', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('85179b30-a3a2-4742-9a08-5a8212c840b4', 'products', 'images/645e4e12-bc62-47a3-ac0e-8eaeed7dc96d', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-08-13 23:29:27.534317+00', '2025-08-27 05:32:13.046564+00', '2025-08-13 23:29:27.534317+00', '{"eTag": "\"5a22728afff013b4072afdfa570ee4f0\"", "size": 23355, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-08-13T23:29:28.000Z", "contentLength": 23355, "httpStatusCode": 200}', 'de5af68e-6ef8-4b63-9e85-345666254cc8', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('dafdd6f6-ca37-4d4b-8295-3269375c5895', 'products', 'images/64d91b52-4620-4297-b894-bddc16a0c36a', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-05-29 04:50:03.27193+00', '2025-08-27 05:32:13.046564+00', '2025-05-29 04:50:03.27193+00', '{"eTag": "\"ad707809050d93d9fc3bb8f74b58619c\"", "size": 381506, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-29T04:50:03.000Z", "contentLength": 381506, "httpStatusCode": 200}', '6a81aed9-aa39-4bd8-92d3-e2f02b40c0de', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('58d21a29-334b-4b82-87b0-ec4c525aef9e', 'products', 'images/74ec6d2d-0784-41c0-ae26-07d2bea2b1d1', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-06-16 22:54:11.128709+00', '2025-08-27 05:32:13.046564+00', '2025-06-16 22:54:11.128709+00', '{"eTag": "\"a9bf216ad8b76ee710e737d9da261195\"", "size": 748993, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-06-16T22:54:12.000Z", "contentLength": 748993, "httpStatusCode": 200}', '939ddcda-23f9-4105-9454-2cb88ff018c0', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('95f5086d-fec7-4cc6-af07-0f32bdca4408', 'products', 'images/76545d87-8273-4d4b-8e93-3835582b0d45', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-04-28 19:48:43.081603+00', '2025-08-27 05:32:13.046564+00', '2025-04-28 19:48:43.081603+00', '{"eTag": "\"ecf966b1c888b612b534014d6aaa884b\"", "size": 218371, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-04-28T19:48:43.000Z", "contentLength": 218371, "httpStatusCode": 200}', 'c8413b13-9395-4909-9a92-140b6846b572', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '{}', 2),
	('1478e548-f6f0-47e7-9997-987d47a0ce02', 'products', 'images/812c0a52-49a0-4f39-9ffb-452145ad649f', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-06-16 23:23:36.024902+00', '2025-08-27 05:32:13.046564+00', '2025-06-16 23:23:36.024902+00', '{"eTag": "\"c5a31dc9920ec983b231f1556ac11c23\"", "size": 151388, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-06-16T23:23:36.000Z", "contentLength": 151388, "httpStatusCode": 200}', 'fcee999b-7867-46ff-8301-67eb07908a1b', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('1a38311c-a32c-420d-91b8-73924ee29316', 'products', 'images/853ad243-44d4-4dbb-8953-799432759214', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-08-13 22:56:09.892562+00', '2025-08-27 05:32:13.046564+00', '2025-08-13 22:56:09.892562+00', '{"eTag": "\"cf60e9c9ee1f852b723a9480e895ff4c\"", "size": 587448, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-08-13T22:56:10.000Z", "contentLength": 587448, "httpStatusCode": 200}', 'fae6840d-d12b-4002-9081-3fa306adef18', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('8a25a372-dd49-4d21-be45-425c56e63b69', 'products', 'images/8974ee4b-2577-4360-93f9-9b7a37d5dea0', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-04-01 03:59:05.794468+00', '2025-08-27 05:32:13.046564+00', '2025-04-01 03:59:05.794468+00', '{"eTag": "\"eebddb6cbf2271e22c0b61befdb467a6\"", "size": 11718, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-04-01T03:59:06.000Z", "contentLength": 11718, "httpStatusCode": 200}', '17b0cf10-16d7-4ac9-acec-a08ba2e8c7d1', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('1ba65a89-5ee2-41f6-b11b-82df5209cc01', 'products', 'images/8b28c55c-9145-4aee-b07a-80d35f694500', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-07-10 23:52:51.856171+00', '2025-08-27 05:32:13.046564+00', '2025-07-10 23:52:51.856171+00', '{"eTag": "\"de898d179ee525c69a5b1880c4ca2c04\"", "size": 41703, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-10T23:52:52.000Z", "contentLength": 41703, "httpStatusCode": 200}', 'eeaf264e-e4be-4fb2-877d-502ddac162ea', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('6f9cc3ba-12c4-44ba-b7b9-52dbd8ef5d0d', 'products', 'images/a06a63bb-6b85-4de0-bbb5-ed64576e0729', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-04-13 23:46:20.437972+00', '2025-08-27 05:32:13.046564+00', '2025-04-13 23:46:20.437972+00', '{"eTag": "\"eb9099614451cde8e276bc67603911f0\"", "size": 36840, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-04-13T23:46:21.000Z", "contentLength": 36840, "httpStatusCode": 200}', 'd510b6a1-b916-4a67-94fb-29dec504186d', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('02b86aaf-7830-416b-9f64-72170e4dfd16', 'products', 'images/a0dff005-98e5-4efe-af9d-84ce12f8106c', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-07-10 23:11:19.07927+00', '2025-08-27 05:32:13.046564+00', '2025-07-10 23:11:19.07927+00', '{"eTag": "\"5e3954adf6bda59d534ea4be4894b549\"", "size": 33584, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-10T23:11:20.000Z", "contentLength": 33584, "httpStatusCode": 200}', '1580ea9e-bfc8-461a-bc08-2dcc5e448e57', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('78c478f5-4c69-4a51-8510-ce419724b775', 'products', 'images/a218d9b2-2802-425a-8c2a-3af0097f3479', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-06-30 23:59:54.602813+00', '2025-08-27 05:32:13.046564+00', '2025-06-30 23:59:54.602813+00', '{"eTag": "\"385ad82099efa6ccbdbdd237c8c73a92\"", "size": 41957, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-06-30T23:59:55.000Z", "contentLength": 41957, "httpStatusCode": 200}', '39de3a87-2198-49d3-b2ee-3ef9e83414ee', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('245744fb-16de-49b5-ab2e-9e93193db63d', 'products', 'images/a4e7da3b-17c7-4c0e-b784-d6e0fe1ec386', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-04-01 18:11:08.313924+00', '2025-08-27 05:32:13.046564+00', '2025-04-01 18:11:08.313924+00', '{"eTag": "\"8ba251ea7155e538f7c39ed892bdf4ac\"", "size": 917176, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-04-01T18:11:08.000Z", "contentLength": 917176, "httpStatusCode": 200}', '2b578250-547d-4754-89d8-a4b123888286', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('1ff6d41e-9d60-4503-bc86-d8d1d8145984', 'products', 'images/aa90ab6c-ce5b-4619-bcc2-a5f63464d921', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-07-10 23:52:51.865085+00', '2025-08-27 05:32:13.046564+00', '2025-07-10 23:52:51.865085+00', '{"eTag": "\"01d08e377a4ba354c1817b5d89347362\"", "size": 28673, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-10T23:52:52.000Z", "contentLength": 28673, "httpStatusCode": 200}', '7ef06fc3-b4ac-4554-bd9e-602354144711', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('b1c59f6f-ffb4-4f99-b567-3c6cff84e93f', 'products', 'images/abe7bddb-16d6-4e0a-83f5-1f390e913009', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-06-30 23:43:08.374516+00', '2025-08-27 05:32:13.046564+00', '2025-06-30 23:43:08.374516+00', '{"eTag": "\"b746510e0ef8a11e5015b0df1316acbf\"", "size": 556533, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-06-30T23:43:09.000Z", "contentLength": 556533, "httpStatusCode": 200}', '706853c0-a373-48b2-b057-cd9150fac2b3', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('3f8b4d4a-a43c-4a67-a33e-e3c460b06f96', 'products', 'images/af55162c-d68d-4888-8340-d61a72d523a3', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-04-28 19:48:43.058479+00', '2025-08-27 05:32:13.046564+00', '2025-04-28 19:48:43.058479+00', '{"eTag": "\"bfd4c2f89329e059bd6cb42d646aaa50\"", "size": 277498, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-04-28T19:48:43.000Z", "contentLength": 277498, "httpStatusCode": 200}', '8988b004-6574-4057-bcff-5e7aa0e26f5f', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '{}', 2),
	('e4b34762-ae72-4d23-b9c7-a9758b95ef29', 'products', 'images/bb9692f3-1cc6-40aa-a796-65b7bd4a4a0b', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-05-08 23:19:47.67125+00', '2025-08-27 05:32:13.046564+00', '2025-05-08 23:19:47.67125+00', '{"eTag": "\"58bf26788a7ea260f5ed119757bcc697\"", "size": 606673, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-05-08T23:19:48.000Z", "contentLength": 606673, "httpStatusCode": 200}', 'b00b1242-63b9-46ea-8eb9-3d38ddf3431c', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('6de88b31-b192-430a-bfad-0504d70c1d9c', 'products', 'images/cd52744b-2176-44c1-97c8-416a1691c5a2', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-05-29 04:50:02.648493+00', '2025-08-27 05:32:13.046564+00', '2025-05-29 04:50:02.648493+00', '{"eTag": "\"4345ce519ae3ae70c81934f9ab6e4743\"", "size": 254098, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-29T04:50:03.000Z", "contentLength": 254098, "httpStatusCode": 200}', '48f1f834-d4c5-4fc2-b5d7-23b742aea77c', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('a5b84db1-7901-4b7a-b880-09a37e80f207', 'products', 'images/ce4f3f71-61e0-4301-a197-a52cf5993c2d', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-04-13 23:46:20.597294+00', '2025-08-27 05:32:13.046564+00', '2025-04-13 23:46:20.597294+00', '{"eTag": "\"e2af17fe6c246158b4750a6060d9b854\"", "size": 157100, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-04-13T23:46:21.000Z", "contentLength": 157100, "httpStatusCode": 200}', 'dd7f78c5-87fe-4b1c-ba0b-c78fa5559a48', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('cc420e29-0564-48a1-934a-ee8942e76e68', 'products', 'images/d09a2c08-ed9a-44a2-9cfb-709d27de8fb3', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-07-10 22:47:24.774566+00', '2025-08-27 05:32:13.046564+00', '2025-07-10 22:47:24.774566+00', '{"eTag": "\"94a192e96293995f73767f1d52e2503c\"", "size": 209320, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-10T22:47:25.000Z", "contentLength": 209320, "httpStatusCode": 200}', '88dd4501-33fa-4241-9e7e-79eb93bc4532', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('fe8d34e7-d4a2-4a50-8b20-5811b26ed4ac', 'products', 'images/d38dc30f-8bc5-485b-8505-6feb3cbfa31e', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-05-29 04:50:07.649575+00', '2025-08-27 05:32:13.046564+00', '2025-05-29 04:50:07.649575+00', '{"eTag": "\"617094e0325835ad57f73f3b50e85c3b\"", "size": 2677252, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-29T04:50:08.000Z", "contentLength": 2677252, "httpStatusCode": 200}', 'bfc96740-ff88-494f-8f08-204c1524ea39', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('b75b3736-c585-4bfc-bcd2-3857d2ddc30a', 'products', 'images/d5b8f162-54e9-4598-b46d-06fd80b7c632', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-06-16 23:23:35.646261+00', '2025-08-27 05:32:13.046564+00', '2025-06-16 23:23:35.646261+00', '{"eTag": "\"75c6443c8178c119bf1801107d14fef7\"", "size": 422357, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-06-16T23:23:36.000Z", "contentLength": 422357, "httpStatusCode": 200}', '98a886d7-30dd-4e87-b413-afbab2dbdb27', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('1ed31e54-40c0-40a1-a5d6-477f3bc696ba', 'products', 'images/d6a827d2-a9e0-4460-8fdb-818eb5b1e5fa', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-04-01 04:26:55.19409+00', '2025-08-27 05:32:13.046564+00', '2025-04-01 04:26:55.19409+00', '{"eTag": "\"83168f870141f62df681346555863615\"", "size": 29978, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-04-01T04:26:56.000Z", "contentLength": 29978, "httpStatusCode": 200}', '07fc4c68-6de8-49d7-8eaa-c57dbc7a1448', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('92bffd4c-e76a-425c-b7f1-c9a61f2ddd42', 'products', 'images/d91d6d84-f81e-4458-ac5b-88e69fbdbed2', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-07-10 23:52:51.83515+00', '2025-08-27 05:32:13.046564+00', '2025-07-10 23:52:51.83515+00', '{"eTag": "\"1b02b81df3a156b4c6d92709469bbbf1\"", "size": 16776, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-10T23:52:52.000Z", "contentLength": 16776, "httpStatusCode": 200}', '169cd3ef-1a1c-4cc6-919b-bdf303e190c4', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('53daccbc-bb4c-4912-b40d-e720bde566e8', 'products', 'images/df0089e1-f0c4-4ae7-961b-1f6f76cea31f', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-07-10 22:47:24.791148+00', '2025-08-27 05:32:13.046564+00', '2025-07-10 22:47:24.791148+00', '{"eTag": "\"24ad4572e1c87a086da0e6abc782e711\"", "size": 220538, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-10T22:47:25.000Z", "contentLength": 220538, "httpStatusCode": 200}', '50d7cff2-7314-4080-8b58-0cbabd9516a1', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('d274a0fe-bb6a-4c3f-907a-d9f345e6babd', 'products', 'images/e6183337-e315-4918-a71c-61eb9a6e092a', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-04-01 03:59:05.872237+00', '2025-08-27 05:32:13.046564+00', '2025-04-01 03:59:05.872237+00', '{"eTag": "\"7c65ae5bb055e136256599e3415391c4\"", "size": 13470, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-04-01T03:59:06.000Z", "contentLength": 13470, "httpStatusCode": 200}', '74f8ef4f-7bb9-4974-aeb4-b487a16f721d', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('50775108-edf8-4d06-839b-8ec61a695633', 'products', 'images/e9249cd9-3471-49f8-a0cc-4f313a6f8c09', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-06-30 23:18:26.023729+00', '2025-08-27 05:32:13.046564+00', '2025-06-30 23:18:26.023729+00', '{"eTag": "\"6721f01174b1184a5042c4c1a5c1fefe\"", "size": 275697, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-06-30T23:18:26.000Z", "contentLength": 275697, "httpStatusCode": 200}', 'ef2629a1-9e35-4827-a6ee-7cb228a7fc37', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('c771394d-7313-4144-b045-ef1a76b7296a', 'products', 'images/ea8bc0df-a3f3-4e6f-8df2-af547e3dc36e', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-04-28 19:38:21.086044+00', '2025-08-27 05:32:13.046564+00', '2025-04-28 19:38:21.086044+00', '{"eTag": "\"7c0313c8d179d38ba1401ec1520331ea\"", "size": 337462, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-04-28T19:38:21.000Z", "contentLength": 337462, "httpStatusCode": 200}', 'fc9695d6-6c77-4848-85d5-215c6d9f17f9', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '{}', 2),
	('40a3e19a-09f0-42ea-84b1-9eb0cf0471a0', 'products', 'images/f822dfc6-9de5-4ea2-ba3c-c33146c41dcf', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '2025-04-28 19:48:43.016226+00', '2025-08-27 05:32:13.046564+00', '2025-04-28 19:48:43.016226+00', '{"eTag": "\"05f5c36ee3bc4da7872ddd695dce21eb\"", "size": 298138, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-04-28T19:48:43.000Z", "contentLength": 298138, "httpStatusCode": 200}', '9a75210c-f811-4e7c-9c7e-09961540fe11', '2ce2e19e-39cb-4ab2-98ef-83d6fbf2fa59', '{}', 2),
	('dd130f57-25f8-4d00-9d78-53154edf8acc', 'products', 'images/f83e682b-ac61-42af-9928-07f44031c316', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-07-10 22:44:21.937734+00', '2025-08-27 05:32:13.046564+00', '2025-07-10 22:44:21.937734+00', '{"eTag": "\"efa48a29b7c282dfccaf4e751954708c\"", "size": 34723, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-07-10T22:44:22.000Z", "contentLength": 34723, "httpStatusCode": 200}', '164935cf-3191-4bb3-bd4d-e1c48a29afc2', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('ea3e3bc0-44c9-4133-8e65-f13509557f92', 'products', 'images/f9c4240e-1c39-4400-9f4d-588f0f51136e', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-08-13 23:36:14.426553+00', '2025-08-27 05:32:13.046564+00', '2025-08-13 23:36:14.426553+00', '{"eTag": "\"bc00f73ad5e13baf7f26c0c49d1f3a75\"", "size": 605994, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-08-13T23:36:15.000Z", "contentLength": 605994, "httpStatusCode": 200}', 'f1603d89-f637-45bc-8f51-f28a769e90f0', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('ab8b41d9-6c7e-4c53-b927-012820486ca1', 'products', 'images/fd4e2457-7057-42a5-81f6-8987892da62a', '67f28c39-a33a-436d-b004-5418dacc32d6', '2025-07-10 23:30:57.939453+00', '2025-08-27 05:32:13.046564+00', '2025-07-10 23:30:57.939453+00', '{"eTag": "\"67d67fc39379f76b43f2e4ee3075d402\"", "size": 3069719, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-07-10T23:30:58.000Z", "contentLength": 3069719, "httpStatusCode": 200}', '896743b8-c49e-437a-af79-3b4545b43401', '67f28c39-a33a-436d-b004-5418dacc32d6', '{}', 2),
	('1d444810-a2ab-4d79-94f6-2b7860c8c706', 'brands', 'logos/.DS_Store', NULL, '2025-03-09 16:29:46.34265+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:29:46.34265+00', '{"eTag": "\"80d49c2f1db59ac8daac44b4f9b5ce00\"", "size": 10244, "mimetype": "application/octet-stream", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:29:47.000Z", "contentLength": 10244, "httpStatusCode": 200}', '4f9df991-ec32-4122-97d4-23ef95ab749b', NULL, '{}', 2),
	('1cd71bfb-a8a5-4e70-98cf-0a08c66c1081', 'brands', 'logos/.keep', NULL, '2025-03-09 01:35:10.722366+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 01:35:10.722366+00', '{"eTag": "\"d41d8cd98f00b204e9800998ecf8427e\"", "size": 0, "mimetype": "application/octet-stream", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T01:35:11.000Z", "contentLength": 0, "httpStatusCode": 200}', '3e534e86-5239-48fe-b47d-430f67a689ca', NULL, '{}', 2),
	('ad4a334c-38cf-4dd9-85c0-3577fa54d9ad', 'providers', 'logos/.keep', NULL, '2025-03-09 01:35:12.940297+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 01:35:12.940297+00', '{"eTag": "\"d41d8cd98f00b204e9800998ecf8427e\"", "size": 0, "mimetype": "application/octet-stream", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T01:35:13.000Z", "contentLength": 0, "httpStatusCode": 200}', '0ad97bea-d33b-453f-a3d0-4625cc00b5da', NULL, '{}', 2),
	('80f35935-d74c-43d0-911a-0c36825f1aef', 'brands', 'logos/acura.png', NULL, '2025-03-09 16:29:46.924382+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:29:46.924382+00', '{"eTag": "\"8f6ede63fb513c93ca37358ecba52100\"", "size": 5144, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:29:47.000Z", "contentLength": 5144, "httpStatusCode": 200}', 'b596bd49-6253-4e87-9b1e-2177c874fc13', NULL, '{}', 2),
	('2e49e208-0ad3-4516-b6be-479b88bfadbd', 'brands', 'logos/audi.jpg', NULL, '2025-03-09 16:29:47.411562+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:29:47.411562+00', '{"eTag": "\"d5f3765d319cd7117e7f992966909812\"", "size": 100689, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:29:48.000Z", "contentLength": 100689, "httpStatusCode": 200}', '2c7df7c9-6b91-422a-ac07-793728a77fc5', NULL, '{}', 2),
	('17f840cb-6311-4e62-a94f-3285e08cf1e6', 'brands', 'logos/baic.jpg', NULL, '2025-03-09 16:29:48.006786+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:29:48.006786+00', '{"eTag": "\"2574b8242d2149e522b813cbd8ea67f7\"", "size": 30723, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:29:48.000Z", "contentLength": 30723, "httpStatusCode": 200}', 'b7848491-b35f-4b2f-a6a1-788ae85aed55', NULL, '{}', 2),
	('bfe6f011-c0fd-4325-9b5c-25477213faf2', 'brands', 'logos/bmw.png', NULL, '2025-03-09 16:29:49.448351+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:29:49.448351+00', '{"eTag": "\"6f3b0ed1327767ddeef1a5c45cf33739\"", "size": 500388, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:29:50.000Z", "contentLength": 500388, "httpStatusCode": 200}', '32322368-7149-47ab-b8d9-31d5ac9645b4', NULL, '{}', 2),
	('58ee0883-e6b5-48d7-8008-5bff0603d5fb', 'brands', 'logos/case.png', NULL, '2025-03-09 16:29:50.375236+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:29:50.375236+00', '{"eTag": "\"c8aac8a4dfeac24524c1b99b7a41206f\"", "size": 142164, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:29:51.000Z", "contentLength": 142164, "httpStatusCode": 200}', '0a589e4e-ab7c-4d14-8871-91be6a001d2d', NULL, '{}', 2),
	('cb4bebfd-2259-404f-b16a-ca8427688eb3', 'brands', 'logos/caterpillar.png', NULL, '2025-03-09 16:29:51.167203+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:29:51.167203+00', '{"eTag": "\"6ef0caa8ced35d775717daad04e1c725\"", "size": 23377, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:29:52.000Z", "contentLength": 23377, "httpStatusCode": 200}', '2bfbec29-c873-401d-96ba-ef508f17a7f2', NULL, '{}', 2),
	('08948c2c-783c-4c3a-a6e2-64d72b4a7e44', 'brands', 'logos/chevrolet.png', NULL, '2025-03-09 16:29:51.821571+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:29:51.821571+00', '{"eTag": "\"661e90a222fc499b9c7cc736e2cd9cda\"", "size": 147695, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:29:52.000Z", "contentLength": 147695, "httpStatusCode": 200}', 'bfb426b0-985b-4165-8259-f9854bfda4f8', NULL, '{}', 2),
	('9cde2a4a-0c15-4327-963b-ab838c1bbfe0', 'brands', 'logos/chrysler.jpg', NULL, '2025-03-09 16:29:52.146018+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:29:52.146018+00', '{"eTag": "\"932d11449157cd578806aca186ab1f7d\"", "size": 10163, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:29:53.000Z", "contentLength": 10163, "httpStatusCode": 200}', '3eb2988b-e0eb-46f1-a3ba-2f5f53604121', NULL, '{}', 2),
	('ed405e2b-70d8-4c33-b0b3-268c07a9b7c2', 'brands', 'logos/daewoo.jpg', NULL, '2025-03-09 16:29:52.53767+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:29:52.53767+00', '{"eTag": "\"5d3aeebd54096b091cb2a54166db2ef7\"", "size": 25750, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:29:53.000Z", "contentLength": 25750, "httpStatusCode": 200}', '3200f1a7-cc26-4767-9e57-c4707e71b7e6', NULL, '{}', 2),
	('12348e1c-f177-4799-b47b-3301bc6a4ec2', 'brands', 'logos/datsun.png', NULL, '2025-03-09 16:29:52.894753+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:29:52.894753+00', '{"eTag": "\"6dd9cd73ed1dc8d66ce5aaa2ed2352c8\"", "size": 26154, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:29:53.000Z", "contentLength": 26154, "httpStatusCode": 200}', '2405a29d-1d9f-46b5-ae7c-c52da38b7a0d', NULL, '{}', 2),
	('4f818171-de32-44b9-9ac4-10db24292fac', 'brands', 'logos/ferrari.jpg', NULL, '2025-03-09 16:29:53.506873+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:29:53.506873+00', '{"eTag": "\"be4cad262e0b895d08280411b407aceb\"", "size": 145559, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:29:54.000Z", "contentLength": 145559, "httpStatusCode": 200}', 'ad870293-91e0-434e-96fc-b18b2384e0ab', NULL, '{}', 2),
	('d436ba42-fe93-47b3-a130-bd6d3c5adc90', 'brands', 'logos/fiat.jpg', NULL, '2025-03-09 16:29:56.029607+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:29:56.029607+00', '{"eTag": "\"06b04fa237f21671395175b6f261100c\"", "size": 59930, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:29:56.000Z", "contentLength": 59930, "httpStatusCode": 200}', '8abffde8-0fce-44b2-b672-7b8e938d81f8', NULL, '{}', 2),
	('820c1456-6b75-4684-b73d-72aba6db5c70', 'brands', 'logos/ford.jpeg', NULL, '2025-03-09 16:29:56.443722+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:29:56.443722+00', '{"eTag": "\"880b37893ca6dd8464f33ee0c8880aab\"", "size": 5995, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:29:57.000Z", "contentLength": 5995, "httpStatusCode": 200}', '4c79775b-945f-44f1-a858-0b0365659cb5', NULL, '{}', 2),
	('d8b5b9f0-3b99-4e9e-8a70-069dc56ef903', 'brands', 'logos/freightliner.jpg', NULL, '2025-03-09 16:29:56.821106+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:29:56.821106+00', '{"eTag": "\"2f21d5b956c2a8e547ca0b1147c80f5f\"", "size": 14566, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:29:57.000Z", "contentLength": 14566, "httpStatusCode": 200}', '998cd38c-bcdf-46fc-b1ab-57f570ea204d', NULL, '{}', 2),
	('1bec9001-6251-48e8-9b51-73c1a089316a', 'brands', 'logos/gm.png', NULL, '2025-03-09 16:29:57.168773+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:29:57.168773+00', '{"eTag": "\"d4ce857246a8037ab3dd6b608947423c\"", "size": 47404, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:29:58.000Z", "contentLength": 47404, "httpStatusCode": 200}', '41d674ab-e60c-4181-8b36-327fb1415fd8', NULL, '{}', 2),
	('52820777-83a8-4ff3-b0f8-ef7e5f3588b1', 'brands', 'logos/hino.png', NULL, '2025-03-09 16:29:57.855449+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:29:57.855449+00', '{"eTag": "\"be24ed39126aebb8eea78ef1abc7ed48\"", "size": 21196, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:29:58.000Z", "contentLength": 21196, "httpStatusCode": 200}', '86fce96b-b93e-49a7-a224-b38cc1d270b3', NULL, '{}', 2),
	('7c4b422a-0e1f-47da-9063-cf488090ccf5', 'brands', 'logos/honda.png', NULL, '2025-03-09 16:29:58.314288+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:29:58.314288+00', '{"eTag": "\"67974fa867f46b7056ffc1d4f62cb759\"", "size": 68948, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:29:59.000Z", "contentLength": 68948, "httpStatusCode": 200}', '651c7e7f-eec4-4882-83c5-65bf5818507b', NULL, '{}', 2),
	('7b69967b-db15-4628-bf3b-65f64a90703b', 'brands', 'logos/hyundai.jpg', NULL, '2025-03-09 16:29:59.087577+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:29:59.087577+00', '{"eTag": "\"d2f3a2feb314ac72d4042587c38a6f55\"", "size": 39187, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:00.000Z", "contentLength": 39187, "httpStatusCode": 200}', 'cc83e1e3-96a5-4c97-97f7-ff02935fcc51', NULL, '{}', 2),
	('360defc5-4678-42f4-b383-e6845036b907', 'brands', 'logos/infiniti.jpg', NULL, '2025-03-09 16:29:59.672702+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:29:59.672702+00', '{"eTag": "\"1f27ec8ef6f1621b1cbe646d083705c1\"", "size": 49981, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:00.000Z", "contentLength": 49981, "httpStatusCode": 200}', 'de5465ec-6a4e-40eb-a669-935de833bd86', NULL, '{}', 2),
	('1fc7baf0-5206-4cf1-a2d9-15f36caf0a96', 'brands', 'logos/international.jpg', NULL, '2025-03-09 16:30:00.424287+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:00.424287+00', '{"eTag": "\"a4f902e46833cc3b985eac3816e384ad\"", "size": 19040, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:01.000Z", "contentLength": 19040, "httpStatusCode": 200}', '87970f48-7cbd-431c-b27c-cd8c00eb334c', NULL, '{}', 2),
	('527e8b69-6a98-48c1-9906-01cf0b3e2da4', 'brands', 'logos/isuzu.jpg', NULL, '2025-03-09 16:30:01.147603+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:01.147603+00', '{"eTag": "\"5fcc5ff76995977b26b31299c9b2ee64\"", "size": 20816, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:02.000Z", "contentLength": 20816, "httpStatusCode": 200}', 'e8d523c2-58d9-43b8-b652-b0514ac50c98', NULL, '{}', 2),
	('b603d1c5-4b81-4bb0-8881-2c09e6fdd827', 'brands', 'logos/jaguar.jpg', NULL, '2025-03-09 16:30:05.34691+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:05.34691+00', '{"eTag": "\"c2cd4068ea410a0398045dfe4f40267b\"", "size": 10625, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:05.000Z", "contentLength": 10625, "httpStatusCode": 200}', 'd3ff6d5a-881b-4ad4-905b-7dfefd9e9b68', NULL, '{}', 2),
	('8faf60f4-288d-4543-ac34-c143283c8794', 'brands', 'logos/jeep.jpg', NULL, '2025-03-09 16:30:05.796646+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:05.796646+00', '{"eTag": "\"c2a82b5e5496c8a572f8a373a9b4be6d\"", "size": 27260, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:06.000Z", "contentLength": 27260, "httpStatusCode": 200}', 'a1365fc0-5d68-4af1-af8f-8a0ee9ddee94', NULL, '{}', 2),
	('24d19432-632c-4b91-ba78-2d822091f4e4', 'brands', 'logos/john_deere.png', NULL, '2025-03-09 16:30:06.109137+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:06.109137+00', '{"eTag": "\"bbc13cabe7d37f5611e1a4151ec5c3f5\"", "size": 62977, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:07.000Z", "contentLength": 62977, "httpStatusCode": 200}', '383c5551-4705-4d89-ae1c-11ad60319bc6', NULL, '{}', 2),
	('2ed3fd1e-30f7-44b0-973d-7e78437a218e', 'brands', 'logos/kenworth.png', NULL, '2025-03-09 16:30:07.39715+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:07.39715+00', '{"eTag": "\"3093c594fa73eb5ce2218710d162cb6e\"", "size": 590778, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:08.000Z", "contentLength": 590778, "httpStatusCode": 200}', '02e46cc7-0719-4ecc-8a13-486492d834be', NULL, '{}', 2),
	('f8986135-179b-46c1-bba2-1a8be875b802', 'brands', 'logos/kia.jpg', NULL, '2025-03-09 16:30:07.875558+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:07.875558+00', '{"eTag": "\"bc17f886ddc9b2daae78a8438805e844\"", "size": 7400, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:08.000Z", "contentLength": 7400, "httpStatusCode": 200}', '97ce4daf-a634-4a10-8424-f17c0597ac32', NULL, '{}', 2),
	('bdcd9aff-8209-46f6-be5c-c3f1ca656406', 'brands', 'logos/lamborghini.jpg', NULL, '2025-03-09 16:30:08.400983+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:08.400983+00', '{"eTag": "\"bcb057687a1d569b707672b4e23e8899\"", "size": 124499, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:09.000Z", "contentLength": 124499, "httpStatusCode": 200}', 'dcf41201-c879-4223-8327-981123f443df', NULL, '{}', 2),
	('384a2792-9c74-4a25-a2b6-6bce3bfc5b42', 'brands', 'logos/land_rover.png', NULL, '2025-03-09 16:30:11.474324+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:11.474324+00', '{"eTag": "\"1d47152a770ea9da0ca4ce6d6a086df8\"", "size": 1392239, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:12.000Z", "contentLength": 1392239, "httpStatusCode": 200}', '89a04486-a7bf-44b7-b87b-cdcb102b6fec', NULL, '{}', 2),
	('47bc99db-599e-477c-900c-e352400adefd', 'brands', 'logos/lexus.jpg', NULL, '2025-03-09 16:30:11.866674+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:11.866674+00', '{"eTag": "\"2c4dae3c0dcb56cbf2a10ee519b7ad6a\"", "size": 5731, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:12.000Z", "contentLength": 5731, "httpStatusCode": 200}', '46daa9e6-604c-498b-ba0d-5fcd2b07d20c', NULL, '{}', 2),
	('5ca789c4-1d7c-44fc-a35a-8fb50c178f28', 'brands', 'logos/mahindra.jpg', NULL, '2025-03-09 16:30:12.224833+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:12.224833+00', '{"eTag": "\"37e6f9a3d6a2eaadbb11cf1961f4c683\"", "size": 19139, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:13.000Z", "contentLength": 19139, "httpStatusCode": 200}', '7b888969-6e8e-46c1-a0ff-28754794819d', NULL, '{}', 2),
	('c05a1549-e8be-47f5-bdc7-9908e9b7a9ef', 'brands', 'logos/maserati.jpg', NULL, '2025-03-09 16:30:12.851556+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:12.851556+00', '{"eTag": "\"b59771f3e6a5b6c1bb03ec0b7aee44f3\"", "size": 82243, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:13.000Z", "contentLength": 82243, "httpStatusCode": 200}', 'df0ab464-58d8-4757-a054-dcf23bfe5471', NULL, '{}', 2),
	('7bb2b33c-e60b-4fbb-b4ae-57c716671aed', 'brands', 'logos/mazda.jpg', NULL, '2025-03-09 16:30:13.307155+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:13.307155+00', '{"eTag": "\"5a71f6afca33c90bd46694c830b8bb39\"", "size": 75736, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:14.000Z", "contentLength": 75736, "httpStatusCode": 200}', '5224d409-e280-447a-bb59-ef0dd74fbce8', NULL, '{}', 2),
	('093a95c9-8f3f-4036-9bfc-bcc60268720a', 'brands', 'logos/mercedes.jpeg', NULL, '2025-03-09 16:30:13.750095+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:13.750095+00', '{"eTag": "\"c45c59ca2b2d24bfecc2eeca4c3f7de5\"", "size": 7293, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:14.000Z", "contentLength": 7293, "httpStatusCode": 200}', '2525ad05-8414-4a99-bafb-fecca6ecda21', NULL, '{}', 2),
	('d0421d27-e7c3-4b70-8561-77f86b17e277', 'brands', 'logos/mg.jpg', NULL, '2025-03-09 16:30:14.44537+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:14.44537+00', '{"eTag": "\"519880f1187097e5e99ac67b1611f2c2\"", "size": 10881, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:15.000Z", "contentLength": 10881, "httpStatusCode": 200}', 'a145483b-3a36-4c91-9532-3948bc71c937', NULL, '{}', 2),
	('731b93c4-9a64-4bd6-8e93-df3b03b8ca2b', 'brands', 'logos/mini.jpg', NULL, '2025-03-09 16:30:14.975731+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:14.975731+00', '{"eTag": "\"0709cae16592420ab0a42ed1f10ac987\"", "size": 45775, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:15.000Z", "contentLength": 45775, "httpStatusCode": 200}', '22574e9f-c716-41a6-92b7-939970ffde1b', NULL, '{}', 2),
	('405dad52-f8eb-4015-8ecb-5de441f92667', 'brands', 'logos/mitsubishi.jpg', NULL, '2025-03-09 16:30:15.623414+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:15.623414+00', '{"eTag": "\"23b5edbdca54d797687feee41ed8bbdf\"", "size": 89817, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:16.000Z", "contentLength": 89817, "httpStatusCode": 200}', '8021c470-43e4-4896-9e97-51e065b00b34', NULL, '{}', 2),
	('57e33f4c-8446-499e-bac3-1ffca4f90d80', 'brands', 'logos/nissan.jpeg', NULL, '2025-03-09 16:30:15.949126+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:15.949126+00', '{"eTag": "\"a627c7a68d12bba988cf28befa7701d0\"", "size": 25279, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:16.000Z", "contentLength": 25279, "httpStatusCode": 200}', 'b80985de-c69e-451c-8b8f-a57fdf8d0e30', NULL, '{}', 2),
	('1c2e6932-c701-4648-b424-542175dcf175', 'brands', 'logos/perkins.png', NULL, '2025-03-09 16:30:16.324465+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:16.324465+00', '{"eTag": "\"f2b502cef48ad5bfc45e24bdcff20b2c\"", "size": 14385, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:17.000Z", "contentLength": 14385, "httpStatusCode": 200}', '27b1604a-ea19-4953-aade-3d796064615d', NULL, '{}', 2),
	('33f2432b-4bfd-40e3-bbb7-a70697d1b88a', 'brands', 'logos/peterbilt.png', NULL, '2025-03-09 16:30:16.755008+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:16.755008+00', '{"eTag": "\"e2865ae80dfb9cffefd25a427e5e9bd6\"", "size": 12724, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:17.000Z", "contentLength": 12724, "httpStatusCode": 200}', 'fa0b936e-33a7-491d-adeb-f4656bb51b88', NULL, '{}', 2),
	('29986fb7-e5ea-485a-b226-7bc457db0d44', 'brands', 'logos/peugeot.jpg', NULL, '2025-03-09 16:30:17.386719+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:17.386719+00', '{"eTag": "\"66ab16edf397495c86683e60fd7484aa\"", "size": 41465, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:18.000Z", "contentLength": 41465, "httpStatusCode": 200}', '78e34085-435e-4338-9c54-2e9e88ffe781', NULL, '{}', 2),
	('6b3f6740-8626-49ad-b3d6-acb5194d0e04', 'brands', 'logos/pontiac.png', NULL, '2025-03-09 16:30:17.79712+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:17.79712+00', '{"eTag": "\"2de719c5847b88536d96d1a4c8564ab1\"", "size": 60024, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:18.000Z", "contentLength": 60024, "httpStatusCode": 200}', '49196b67-c4b2-4975-aabc-ee8c4aac93f4', NULL, '{}', 2),
	('334ce570-5fae-488d-bbb4-dbad3bb06533', 'brands', 'logos/porsche.jpg', NULL, '2025-03-09 16:30:18.620029+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:18.620029+00', '{"eTag": "\"34260e1260d03f8fc1e65339020deae0\"", "size": 200808, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:19.000Z", "contentLength": 200808, "httpStatusCode": 200}', '4e257086-ac8e-4319-9e92-ea6d273c5c8a', NULL, '{}', 2),
	('2d6231d7-25f6-4220-aa9f-d17e936693f4', 'brands', 'logos/renault.jpeg', NULL, '2025-03-09 16:30:19.204057+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:19.204057+00', '{"eTag": "\"e0cf991ab6083d68cf33f9a42d1db171\"", "size": 29287, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:20.000Z", "contentLength": 29287, "httpStatusCode": 200}', '4bb9b867-ffa1-4a48-a5a7-51225a7ae76b', NULL, '{}', 2),
	('14db001e-284a-47c2-b79e-05a6508099d8', 'brands', 'logos/rolls_royce.jpg', NULL, '2025-03-09 16:30:20.659192+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:20.659192+00', '{"eTag": "\"70833a63560612e6dcf613b54525af47\"", "size": 44710, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:21.000Z", "contentLength": 44710, "httpStatusCode": 200}', '680f5eac-266d-4f5c-8e78-58792b686a5f', NULL, '{}', 2),
	('395a7168-580f-40d0-b79d-0858722e4dd1', 'brands', 'logos/saab.jpg', NULL, '2025-03-09 16:30:21.183466+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:21.183466+00', '{"eTag": "\"c25bde3c9b37c8859368648db83218ed\"", "size": 52297, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:22.000Z", "contentLength": 52297, "httpStatusCode": 200}', 'c1134281-e929-4b81-b6ff-e7488b2e2938', NULL, '{}', 2),
	('a60b3316-ab03-44d3-a9ae-b2a78fe203eb', 'brands', 'logos/scania.png', NULL, '2025-03-09 16:30:21.535949+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:21.535949+00', '{"eTag": "\"c0aa33ce82b2aee19ac8aed8be727a4b\"", "size": 29667, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:22.000Z", "contentLength": 29667, "httpStatusCode": 200}', 'd074f04e-f7e9-48f8-af0b-7d755917ef29', NULL, '{}', 2),
	('583c0010-fa97-49fb-aac2-2e8e978d7d75', 'brands', 'logos/seat.png', NULL, '2025-03-09 16:30:22.20758+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:22.20758+00', '{"eTag": "\"621652fc610246981154ee8d5021f461\"", "size": 196090, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:23.000Z", "contentLength": 196090, "httpStatusCode": 200}', 'a91b5879-fb9d-479b-868e-64b5245080a9', NULL, '{}', 2),
	('e2095746-db80-42b0-b283-6a113b290d39', 'brands', 'logos/skoda.png', NULL, '2025-03-09 16:30:22.699147+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:22.699147+00', '{"eTag": "\"0936f8ec58d599e94ac2839bcc0fc37e\"", "size": 124160, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:23.000Z", "contentLength": 124160, "httpStatusCode": 200}', 'b296cf2e-5c95-429b-acdc-ff83c0242e8d', NULL, '{}', 2),
	('e9a858e4-f4fd-4575-a92a-a054c0b3d6bb', 'brands', 'logos/ssangyong.jpg', NULL, '2025-03-09 16:30:23.380971+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:23.380971+00', '{"eTag": "\"67baf740ba02abf7f3c790397e0e4429\"", "size": 10915, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:24.000Z", "contentLength": 10915, "httpStatusCode": 200}', '21a6ed30-1e74-4b4c-b9d6-bb72dd483530', NULL, '{}', 2),
	('23ca0209-2099-4329-adda-2da3b642516d', 'brands', 'logos/subaru.png', NULL, '2025-03-09 16:30:24.502208+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:24.502208+00', '{"eTag": "\"67b5e82dd16ae0b13785bcbd4cdfcc56\"", "size": 213923, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:25.000Z", "contentLength": 213923, "httpStatusCode": 200}', '473d4304-16cd-4644-93da-e26e1b954c4e', NULL, '{}', 2),
	('fafe70a9-0967-438f-8198-d15b917c5c6b', 'brands', 'logos/suzuki.jpg', NULL, '2025-03-09 16:30:25.071742+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:25.071742+00', '{"eTag": "\"c6a97fa633ae8a0e9cc9f623b40251c2\"", "size": 16896, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:26.000Z", "contentLength": 16896, "httpStatusCode": 200}', 'b3108ad2-be97-479a-a3fc-9b0771b04898', NULL, '{}', 2),
	('75c52344-a1ba-4fc0-ab88-ff3c8d7dbb3e', 'brands', 'logos/tata.jpg', NULL, '2025-03-09 16:30:26.066354+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:26.066354+00', '{"eTag": "\"378a2f8cbfc656c26f64d02421aab233\"", "size": 42015, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:26.000Z", "contentLength": 42015, "httpStatusCode": 200}', '770c175b-1728-45e8-8c61-90c0710c7bef', NULL, '{}', 2),
	('c887d983-a0f4-4fe5-ac49-a9490f01594f', 'brands', 'logos/toyota.png', NULL, '2025-03-09 16:30:26.522299+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:26.522299+00', '{"eTag": "\"fb4a51aa57489ba058b909faa204aff5\"", "size": 5448, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:27.000Z", "contentLength": 5448, "httpStatusCode": 200}', '8ef3b844-6463-42fc-9807-835329a8f3c5', NULL, '{}', 2),
	('05a3be07-eaae-45b0-b7bb-446d88479ba2', 'brands', 'logos/volkswagen.png', NULL, '2025-03-09 16:30:26.821747+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:26.821747+00', '{"eTag": "\"ebea8b7b96d5c466d3a11161d99cd9ee\"", "size": 5950, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:27.000Z", "contentLength": 5950, "httpStatusCode": 200}', 'cbc82f65-c9db-4948-9d6b-fe6e318ccfc7', NULL, '{}', 2),
	('6d00e396-0fc5-4c1e-b942-cfafb268ce22', 'brands', 'logos/volvo.jpg', NULL, '2025-03-09 16:30:27.120227+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 16:30:27.120227+00', '{"eTag": "\"431b68e0417e2e524284e0b13ddcfaf7\"", "size": 14845, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T16:30:28.000Z", "contentLength": 14845, "httpStatusCode": 200}', 'af1ea595-f897-4fc1-9b44-f1bc6ca17ebb', NULL, '{}', 2),
	('658a4bfe-bf55-485b-81da-3cd71448839a', 'radiators', 'technical-sheets/.keep', NULL, '2025-03-09 01:35:11.549981+00', '2025-08-27 05:32:13.046564+00', '2025-03-09 01:35:11.549981+00', '{"eTag": "\"d41d8cd98f00b204e9800998ecf8427e\"", "size": 0, "mimetype": "application/octet-stream", "cacheControl": "max-age=3600", "lastModified": "2025-03-09T01:35:12.000Z", "contentLength": 0, "httpStatusCode": 200}', '2f4fbaba-dd2d-4eb1-879b-e2fa7bd6a270', NULL, '{}', 2);


--
-- Data for Name: prefixes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."prefixes" ("bucket_id", "name", "created_at", "updated_at") VALUES
	('products', 'documents', '2025-08-27 05:32:12.998816+00', '2025-08-27 05:32:12.998816+00'),
	('brands', 'images', '2025-08-27 05:32:12.998816+00', '2025-08-27 05:32:12.998816+00'),
	('car-models', 'images', '2025-08-27 05:32:12.998816+00', '2025-08-27 05:32:12.998816+00'),
	('products', 'images', '2025-08-27 05:32:12.998816+00', '2025-08-27 05:32:12.998816+00'),
	('providers', 'images', '2025-08-27 05:32:12.998816+00', '2025-08-27 05:32:12.998816+00'),
	('radiators', 'images', '2025-08-27 05:32:12.998816+00', '2025-08-27 05:32:12.998816+00'),
	('brands', 'logos', '2025-08-27 05:32:12.998816+00', '2025-08-27 05:32:12.998816+00'),
	('providers', 'logos', '2025-08-27 05:32:12.998816+00', '2025-08-27 05:32:12.998816+00'),
	('radiators', 'technical-sheets', '2025-08-27 05:32:12.998816+00', '2025-08-27 05:32:12.998816+00');


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 402, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--
--
-- Name: brand_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."brand_id_seq"', 48, true);


--
-- Name: brand_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."brand_type_id_seq"', 2, true);


--
-- Name: car_model_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."car_model_id_seq"', 50, true);


--
-- Name: client_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."client_id_seq"', 1, false);


--
-- Name: file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."file_id_seq"', 121, true);


--
-- Name: file_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."file_type_id_seq"', 2, true);


--
-- Name: person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."person_id_seq"', 9, true);


--
-- Name: price_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."price_id_seq"', 213, true);


--
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."product_id_seq"', 30, true);


--
-- Name: product_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."product_type_id_seq"', 1, true);


--
-- Name: provider_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."provider_id_seq"', 8, true);


--
-- Name: role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."role_id_seq"', 2, true);


--
-- Name: vehicle_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."vehicle_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
