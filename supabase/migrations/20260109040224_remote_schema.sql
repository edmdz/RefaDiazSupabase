create sequence "public"."brand_id_seq";

create sequence "public"."brand_type_id_seq";

create sequence "public"."car_model_id_seq";

create sequence "public"."client_id_seq";

create sequence "public"."file_id_seq";

create sequence "public"."file_type_id_seq";

create sequence "public"."person_id_seq";

create sequence "public"."price_id_seq";

create sequence "public"."product_id_seq";

create sequence "public"."product_type_id_seq";

create sequence "public"."provider_id_seq";

create sequence "public"."role_id_seq";

create sequence "public"."vehicle_id_seq";

  create table "public"."control_fields" (
    "active" boolean default true,
    "created_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "updated_at" timestamp without time zone not null default CURRENT_TIMESTAMP
      );


  create table "public"."brand" (
    "active" boolean default true,
    "created_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "updated_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "id" integer not null default nextval('public.brand_id_seq'::regclass),
    "name" character varying(300),
    "brand_type_id" integer not null
      ) inherits ("public"."control_fields");



  create table "public"."brand_type" (
    "active" boolean default true,
    "created_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "updated_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "id" integer not null default nextval('public.brand_type_id_seq'::regclass),
    "type" character varying(100)
      ) inherits ("public"."control_fields");



  create table "public"."car_model" (
    "active" boolean default true,
    "created_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "updated_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "id" integer not null default nextval('public.car_model_id_seq'::regclass),
    "name" character varying(100),
    "brand_id" integer
      ) inherits ("public"."control_fields");



  create table "public"."client" (
    "active" boolean default true,
    "created_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "updated_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "id" integer not null default nextval('public.client_id_seq'::regclass),
    "client_name" character varying(300),
    "phone_number" character varying(20),
    "comments" character varying(500)
      ) inherits ("public"."control_fields");



  create table "public"."client_vehicle" (
    "active" boolean default true,
    "created_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "updated_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "vehicle_id" integer not null,
    "client_id" integer not null,
    "color" character varying(300),
    "plate" character varying(600),
    "comments" character varying(700)
      ) inherits ("public"."control_fields");


  create table "public"."file" (
    "active" boolean default true,
    "created_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "updated_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "id" integer not null default nextval('public.file_id_seq'::regclass),
    "name" character varying(255) not null,
    "mime_type" character varying(50) not null,
    "storage_path" text not null,
    "object_id" integer not null,
    "order_id" integer,
    "file_type_id" integer not null
      ) inherits ("public"."control_fields");



  create table "public"."file_type" (
    "active" boolean default true,
    "created_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "updated_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "id" integer not null default nextval('public.file_type_id_seq'::regclass),
    "name" character varying(255) not null
      ) inherits ("public"."control_fields");



  create table "public"."person" (
    "active" boolean default true,
    "created_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "updated_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "id" integer not null default nextval('public.person_id_seq'::regclass),
    "name" character varying(200),
    "last_name" character varying(200),
    "birth_date" date,
    "email" character varying(300),
    "phone_number" character varying(20),
    "address" character varying(300)
      ) inherits ("public"."control_fields");



  create table "public"."price" (
    "active" boolean default true,
    "created_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "updated_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "id" integer not null default nextval('public.price_id_seq'::regclass),
    "cost" money,
    "description" character varying(400)
      ) inherits ("public"."control_fields");



  create table "public"."product" (
    "active" boolean default true,
    "created_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "updated_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "id" integer not null default nextval('public.product_id_seq'::regclass),
    "name" character varying(300),
    "comments" character varying(5000),
    "stock_count" integer,
    "dpi" character varying(300),
    "product_type_id" integer not null
      ) inherits ("public"."control_fields");



  create table "public"."product_car_model" (
    "active" boolean default true,
    "created_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "updated_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "product_id" integer not null,
    "car_model_id" integer,
    "initial_year" integer,
    "last_year" integer
      ) inherits ("public"."control_fields");



  create table "public"."product_price" (
    "active" boolean default true,
    "created_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "updated_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "product_id" integer not null,
    "price_id" integer not null
      ) inherits ("public"."control_fields");



  create table "public"."product_type" (
    "active" boolean default true,
    "created_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "updated_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "id" integer not null default nextval('public.product_type_id_seq'::regclass),
    "name" character varying(255) not null
      ) inherits ("public"."control_fields");



  create table "public"."provider" (
    "active" boolean default true,
    "created_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "updated_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "id" integer not null default nextval('public.provider_id_seq'::regclass),
    "name" character varying(500),
    "phone_number" character varying(20),
    "address" character varying(700),
    "comments" character varying(500)
      ) inherits ("public"."control_fields");



  create table "public"."provider_product" (
    "active" boolean default true,
    "created_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "updated_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "product_id" integer not null,
    "price_id" integer not null,
    "provider_id" integer not null,
    "num_series" character varying(3000)
      ) inherits ("public"."control_fields");



  create table "public"."role" (
    "active" boolean default true,
    "created_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "updated_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "id" integer not null default nextval('public.role_id_seq'::regclass),
    "description" character varying(100)
      ) inherits ("public"."control_fields");



  create table "public"."user" (
    "active" boolean default true,
    "created_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "updated_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "id" character varying(500) not null,
    "person_id" integer,
    "role_id" integer
      ) inherits ("public"."control_fields");



  create table "public"."vehicle" (
    "active" boolean default true,
    "created_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "updated_at" timestamp without time zone not null default CURRENT_TIMESTAMP,
    "id" integer not null default nextval('public.vehicle_id_seq'::regclass),
    "car_model_id" integer,
    "version" character varying(300)
      ) inherits ("public"."control_fields");


alter sequence "public"."brand_id_seq" owned by "public"."brand"."id";

alter sequence "public"."brand_type_id_seq" owned by "public"."brand_type"."id";

alter sequence "public"."car_model_id_seq" owned by "public"."car_model"."id";

alter sequence "public"."client_id_seq" owned by "public"."client"."id";

alter sequence "public"."file_id_seq" owned by "public"."file"."id";

alter sequence "public"."file_type_id_seq" owned by "public"."file_type"."id";

alter sequence "public"."person_id_seq" owned by "public"."person"."id";

alter sequence "public"."price_id_seq" owned by "public"."price"."id";

alter sequence "public"."product_id_seq" owned by "public"."product"."id";

alter sequence "public"."product_type_id_seq" owned by "public"."product_type"."id";

alter sequence "public"."provider_id_seq" owned by "public"."provider"."id";

alter sequence "public"."role_id_seq" owned by "public"."role"."id";

alter sequence "public"."vehicle_id_seq" owned by "public"."vehicle"."id";

CREATE UNIQUE INDEX brand_pkey ON public.brand USING btree (id);

CREATE UNIQUE INDEX brand_type_pkey ON public.brand_type USING btree (id);

CREATE UNIQUE INDEX car_model_pkey ON public.car_model USING btree (id);

CREATE UNIQUE INDEX client_pkey ON public.client USING btree (id);

CREATE UNIQUE INDEX file_pkey ON public.file USING btree (id);

CREATE UNIQUE INDEX file_type_pkey ON public.file_type USING btree (id);

CREATE UNIQUE INDEX person_pkey ON public.person USING btree (id);

CREATE UNIQUE INDEX price_pkey ON public.price USING btree (id);

CREATE UNIQUE INDEX product_pkey ON public.product USING btree (id);

CREATE UNIQUE INDEX product_type_pkey ON public.product_type USING btree (id);

CREATE UNIQUE INDEX provider_pkey ON public.provider USING btree (id);

CREATE UNIQUE INDEX role_pkey ON public.role USING btree (id);

CREATE UNIQUE INDEX user_pkey ON public."user" USING btree (id);

CREATE UNIQUE INDEX vehicle_pkey ON public.vehicle USING btree (id);

alter table "public"."brand" add constraint "brand_pkey" PRIMARY KEY using index "brand_pkey";

alter table "public"."brand_type" add constraint "brand_type_pkey" PRIMARY KEY using index "brand_type_pkey";

alter table "public"."car_model" add constraint "car_model_pkey" PRIMARY KEY using index "car_model_pkey";

alter table "public"."client" add constraint "client_pkey" PRIMARY KEY using index "client_pkey";

alter table "public"."file" add constraint "file_pkey" PRIMARY KEY using index "file_pkey";

alter table "public"."file_type" add constraint "file_type_pkey" PRIMARY KEY using index "file_type_pkey";

alter table "public"."person" add constraint "person_pkey" PRIMARY KEY using index "person_pkey";

alter table "public"."price" add constraint "price_pkey" PRIMARY KEY using index "price_pkey";

alter table "public"."product" add constraint "product_pkey" PRIMARY KEY using index "product_pkey";

alter table "public"."product_type" add constraint "product_type_pkey" PRIMARY KEY using index "product_type_pkey";

alter table "public"."provider" add constraint "provider_pkey" PRIMARY KEY using index "provider_pkey";

alter table "public"."role" add constraint "role_pkey" PRIMARY KEY using index "role_pkey";

alter table "public"."user" add constraint "user_pkey" PRIMARY KEY using index "user_pkey";

alter table "public"."vehicle" add constraint "vehicle_pkey" PRIMARY KEY using index "vehicle_pkey";

alter table "public"."brand" add constraint "brand_brand_type_id_fkey" FOREIGN KEY (brand_type_id) REFERENCES public.brand_type(id) not valid;

alter table "public"."brand" validate constraint "brand_brand_type_id_fkey";

alter table "public"."car_model" add constraint "car_model_brand_id_fkey" FOREIGN KEY (brand_id) REFERENCES public.brand(id) ON DELETE CASCADE not valid;

alter table "public"."car_model" validate constraint "car_model_brand_id_fkey";

alter table "public"."client_vehicle" add constraint "client_vehicle_client_id_fkey" FOREIGN KEY (client_id) REFERENCES public.client(id) ON DELETE CASCADE not valid;

alter table "public"."client_vehicle" validate constraint "client_vehicle_client_id_fkey";

alter table "public"."client_vehicle" add constraint "client_vehicle_vehicle_id_fkey" FOREIGN KEY (vehicle_id) REFERENCES public.vehicle(id) ON DELETE CASCADE not valid;

alter table "public"."client_vehicle" validate constraint "client_vehicle_vehicle_id_fkey";

alter table "public"."file" add constraint "file_file_type_id_fkey" FOREIGN KEY (file_type_id) REFERENCES public.file_type(id) not valid;

alter table "public"."file" validate constraint "file_file_type_id_fkey";

alter table "public"."product" add constraint "product_product_type_id_fkey" FOREIGN KEY (product_type_id) REFERENCES public.product_type(id) not valid;

alter table "public"."product" validate constraint "product_product_type_id_fkey";

alter table "public"."product_car_model" add constraint "product_car_model_car_model_id_fkey" FOREIGN KEY (car_model_id) REFERENCES public.car_model(id) ON DELETE CASCADE not valid;

alter table "public"."product_car_model" validate constraint "product_car_model_car_model_id_fkey";

alter table "public"."product_car_model" add constraint "product_car_model_product_id_fkey" FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE not valid;

alter table "public"."product_car_model" validate constraint "product_car_model_product_id_fkey";

alter table "public"."product_price" add constraint "product_price_price_id_fkey" FOREIGN KEY (price_id) REFERENCES public.price(id) ON DELETE CASCADE not valid;

alter table "public"."product_price" validate constraint "product_price_price_id_fkey";

alter table "public"."product_price" add constraint "product_price_product_id_fkey" FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE not valid;

alter table "public"."product_price" validate constraint "product_price_product_id_fkey";

alter table "public"."provider_product" add constraint "provider_product_price_id_fkey" FOREIGN KEY (price_id) REFERENCES public.price(id) ON DELETE CASCADE not valid;

alter table "public"."provider_product" validate constraint "provider_product_price_id_fkey";

alter table "public"."provider_product" add constraint "provider_product_product_id_fkey" FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE not valid;

alter table "public"."provider_product" validate constraint "provider_product_product_id_fkey";

alter table "public"."provider_product" add constraint "provider_product_provider_id_fkey" FOREIGN KEY (provider_id) REFERENCES public.provider(id) ON DELETE CASCADE not valid;

alter table "public"."provider_product" validate constraint "provider_product_provider_id_fkey";

alter table "public"."user" add constraint "user_person_id_fkey" FOREIGN KEY (person_id) REFERENCES public.person(id) ON DELETE CASCADE not valid;

alter table "public"."user" validate constraint "user_person_id_fkey";

alter table "public"."user" add constraint "user_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public.role(id) ON DELETE CASCADE not valid;

alter table "public"."user" validate constraint "user_role_id_fkey";

alter table "public"."vehicle" add constraint "vehicle_car_model_id_fkey" FOREIGN KEY (car_model_id) REFERENCES public.car_model(id) ON DELETE CASCADE not valid;

alter table "public"."vehicle" validate constraint "vehicle_car_model_id_fkey";

grant delete on table "public"."brand" to "anon";

grant insert on table "public"."brand" to "anon";

grant references on table "public"."brand" to "anon";

grant select on table "public"."brand" to "anon";

grant trigger on table "public"."brand" to "anon";

grant truncate on table "public"."brand" to "anon";

grant update on table "public"."brand" to "anon";

grant delete on table "public"."brand" to "authenticated";

grant insert on table "public"."brand" to "authenticated";

grant references on table "public"."brand" to "authenticated";

grant select on table "public"."brand" to "authenticated";

grant trigger on table "public"."brand" to "authenticated";

grant truncate on table "public"."brand" to "authenticated";

grant update on table "public"."brand" to "authenticated";

grant delete on table "public"."brand" to "service_role";

grant insert on table "public"."brand" to "service_role";

grant references on table "public"."brand" to "service_role";

grant select on table "public"."brand" to "service_role";

grant trigger on table "public"."brand" to "service_role";

grant truncate on table "public"."brand" to "service_role";

grant update on table "public"."brand" to "service_role";

grant delete on table "public"."brand_type" to "anon";

grant insert on table "public"."brand_type" to "anon";

grant references on table "public"."brand_type" to "anon";

grant select on table "public"."brand_type" to "anon";

grant trigger on table "public"."brand_type" to "anon";

grant truncate on table "public"."brand_type" to "anon";

grant update on table "public"."brand_type" to "anon";

grant delete on table "public"."brand_type" to "authenticated";

grant insert on table "public"."brand_type" to "authenticated";

grant references on table "public"."brand_type" to "authenticated";

grant select on table "public"."brand_type" to "authenticated";

grant trigger on table "public"."brand_type" to "authenticated";

grant truncate on table "public"."brand_type" to "authenticated";

grant update on table "public"."brand_type" to "authenticated";

grant delete on table "public"."brand_type" to "service_role";

grant insert on table "public"."brand_type" to "service_role";

grant references on table "public"."brand_type" to "service_role";

grant select on table "public"."brand_type" to "service_role";

grant trigger on table "public"."brand_type" to "service_role";

grant truncate on table "public"."brand_type" to "service_role";

grant update on table "public"."brand_type" to "service_role";

grant delete on table "public"."car_model" to "anon";

grant insert on table "public"."car_model" to "anon";

grant references on table "public"."car_model" to "anon";

grant select on table "public"."car_model" to "anon";

grant trigger on table "public"."car_model" to "anon";

grant truncate on table "public"."car_model" to "anon";

grant update on table "public"."car_model" to "anon";

grant delete on table "public"."car_model" to "authenticated";

grant insert on table "public"."car_model" to "authenticated";

grant references on table "public"."car_model" to "authenticated";

grant select on table "public"."car_model" to "authenticated";

grant trigger on table "public"."car_model" to "authenticated";

grant truncate on table "public"."car_model" to "authenticated";

grant update on table "public"."car_model" to "authenticated";

grant delete on table "public"."car_model" to "service_role";

grant insert on table "public"."car_model" to "service_role";

grant references on table "public"."car_model" to "service_role";

grant select on table "public"."car_model" to "service_role";

grant trigger on table "public"."car_model" to "service_role";

grant truncate on table "public"."car_model" to "service_role";

grant update on table "public"."car_model" to "service_role";

grant delete on table "public"."client" to "anon";

grant insert on table "public"."client" to "anon";

grant references on table "public"."client" to "anon";

grant select on table "public"."client" to "anon";

grant trigger on table "public"."client" to "anon";

grant truncate on table "public"."client" to "anon";

grant update on table "public"."client" to "anon";

grant delete on table "public"."client" to "authenticated";

grant insert on table "public"."client" to "authenticated";

grant references on table "public"."client" to "authenticated";

grant select on table "public"."client" to "authenticated";

grant trigger on table "public"."client" to "authenticated";

grant truncate on table "public"."client" to "authenticated";

grant update on table "public"."client" to "authenticated";

grant delete on table "public"."client" to "service_role";

grant insert on table "public"."client" to "service_role";

grant references on table "public"."client" to "service_role";

grant select on table "public"."client" to "service_role";

grant trigger on table "public"."client" to "service_role";

grant truncate on table "public"."client" to "service_role";

grant update on table "public"."client" to "service_role";

grant delete on table "public"."client_vehicle" to "anon";

grant insert on table "public"."client_vehicle" to "anon";

grant references on table "public"."client_vehicle" to "anon";

grant select on table "public"."client_vehicle" to "anon";

grant trigger on table "public"."client_vehicle" to "anon";

grant truncate on table "public"."client_vehicle" to "anon";

grant update on table "public"."client_vehicle" to "anon";

grant delete on table "public"."client_vehicle" to "authenticated";

grant insert on table "public"."client_vehicle" to "authenticated";

grant references on table "public"."client_vehicle" to "authenticated";

grant select on table "public"."client_vehicle" to "authenticated";

grant trigger on table "public"."client_vehicle" to "authenticated";

grant truncate on table "public"."client_vehicle" to "authenticated";

grant update on table "public"."client_vehicle" to "authenticated";

grant delete on table "public"."client_vehicle" to "service_role";

grant insert on table "public"."client_vehicle" to "service_role";

grant references on table "public"."client_vehicle" to "service_role";

grant select on table "public"."client_vehicle" to "service_role";

grant trigger on table "public"."client_vehicle" to "service_role";

grant truncate on table "public"."client_vehicle" to "service_role";

grant update on table "public"."client_vehicle" to "service_role";

grant delete on table "public"."control_fields" to "anon";

grant insert on table "public"."control_fields" to "anon";

grant references on table "public"."control_fields" to "anon";

grant select on table "public"."control_fields" to "anon";

grant trigger on table "public"."control_fields" to "anon";

grant truncate on table "public"."control_fields" to "anon";

grant update on table "public"."control_fields" to "anon";

grant delete on table "public"."control_fields" to "authenticated";

grant insert on table "public"."control_fields" to "authenticated";

grant references on table "public"."control_fields" to "authenticated";

grant select on table "public"."control_fields" to "authenticated";

grant trigger on table "public"."control_fields" to "authenticated";

grant truncate on table "public"."control_fields" to "authenticated";

grant update on table "public"."control_fields" to "authenticated";

grant delete on table "public"."control_fields" to "service_role";

grant insert on table "public"."control_fields" to "service_role";

grant references on table "public"."control_fields" to "service_role";

grant select on table "public"."control_fields" to "service_role";

grant trigger on table "public"."control_fields" to "service_role";

grant truncate on table "public"."control_fields" to "service_role";

grant update on table "public"."control_fields" to "service_role";

grant delete on table "public"."file" to "anon";

grant insert on table "public"."file" to "anon";

grant references on table "public"."file" to "anon";

grant select on table "public"."file" to "anon";

grant trigger on table "public"."file" to "anon";

grant truncate on table "public"."file" to "anon";

grant update on table "public"."file" to "anon";

grant delete on table "public"."file" to "authenticated";

grant insert on table "public"."file" to "authenticated";

grant references on table "public"."file" to "authenticated";

grant select on table "public"."file" to "authenticated";

grant trigger on table "public"."file" to "authenticated";

grant truncate on table "public"."file" to "authenticated";

grant update on table "public"."file" to "authenticated";

grant delete on table "public"."file" to "service_role";

grant insert on table "public"."file" to "service_role";

grant references on table "public"."file" to "service_role";

grant select on table "public"."file" to "service_role";

grant trigger on table "public"."file" to "service_role";

grant truncate on table "public"."file" to "service_role";

grant update on table "public"."file" to "service_role";

grant delete on table "public"."file_type" to "anon";

grant insert on table "public"."file_type" to "anon";

grant references on table "public"."file_type" to "anon";

grant select on table "public"."file_type" to "anon";

grant trigger on table "public"."file_type" to "anon";

grant truncate on table "public"."file_type" to "anon";

grant update on table "public"."file_type" to "anon";

grant delete on table "public"."file_type" to "authenticated";

grant insert on table "public"."file_type" to "authenticated";

grant references on table "public"."file_type" to "authenticated";

grant select on table "public"."file_type" to "authenticated";

grant trigger on table "public"."file_type" to "authenticated";

grant truncate on table "public"."file_type" to "authenticated";

grant update on table "public"."file_type" to "authenticated";

grant delete on table "public"."file_type" to "service_role";

grant insert on table "public"."file_type" to "service_role";

grant references on table "public"."file_type" to "service_role";

grant select on table "public"."file_type" to "service_role";

grant trigger on table "public"."file_type" to "service_role";

grant truncate on table "public"."file_type" to "service_role";

grant update on table "public"."file_type" to "service_role";

grant delete on table "public"."person" to "anon";

grant insert on table "public"."person" to "anon";

grant references on table "public"."person" to "anon";

grant select on table "public"."person" to "anon";

grant trigger on table "public"."person" to "anon";

grant truncate on table "public"."person" to "anon";

grant update on table "public"."person" to "anon";

grant delete on table "public"."person" to "authenticated";

grant insert on table "public"."person" to "authenticated";

grant references on table "public"."person" to "authenticated";

grant select on table "public"."person" to "authenticated";

grant trigger on table "public"."person" to "authenticated";

grant truncate on table "public"."person" to "authenticated";

grant update on table "public"."person" to "authenticated";

grant delete on table "public"."person" to "service_role";

grant insert on table "public"."person" to "service_role";

grant references on table "public"."person" to "service_role";

grant select on table "public"."person" to "service_role";

grant trigger on table "public"."person" to "service_role";

grant truncate on table "public"."person" to "service_role";

grant update on table "public"."person" to "service_role";

grant delete on table "public"."price" to "anon";

grant insert on table "public"."price" to "anon";

grant references on table "public"."price" to "anon";

grant select on table "public"."price" to "anon";

grant trigger on table "public"."price" to "anon";

grant truncate on table "public"."price" to "anon";

grant update on table "public"."price" to "anon";

grant delete on table "public"."price" to "authenticated";

grant insert on table "public"."price" to "authenticated";

grant references on table "public"."price" to "authenticated";

grant select on table "public"."price" to "authenticated";

grant trigger on table "public"."price" to "authenticated";

grant truncate on table "public"."price" to "authenticated";

grant update on table "public"."price" to "authenticated";

grant delete on table "public"."price" to "service_role";

grant insert on table "public"."price" to "service_role";

grant references on table "public"."price" to "service_role";

grant select on table "public"."price" to "service_role";

grant trigger on table "public"."price" to "service_role";

grant truncate on table "public"."price" to "service_role";

grant update on table "public"."price" to "service_role";

grant delete on table "public"."product" to "anon";

grant insert on table "public"."product" to "anon";

grant references on table "public"."product" to "anon";

grant select on table "public"."product" to "anon";

grant trigger on table "public"."product" to "anon";

grant truncate on table "public"."product" to "anon";

grant update on table "public"."product" to "anon";

grant delete on table "public"."product" to "authenticated";

grant insert on table "public"."product" to "authenticated";

grant references on table "public"."product" to "authenticated";

grant select on table "public"."product" to "authenticated";

grant trigger on table "public"."product" to "authenticated";

grant truncate on table "public"."product" to "authenticated";

grant update on table "public"."product" to "authenticated";

grant delete on table "public"."product" to "service_role";

grant insert on table "public"."product" to "service_role";

grant references on table "public"."product" to "service_role";

grant select on table "public"."product" to "service_role";

grant trigger on table "public"."product" to "service_role";

grant truncate on table "public"."product" to "service_role";

grant update on table "public"."product" to "service_role";

grant delete on table "public"."product_car_model" to "anon";

grant insert on table "public"."product_car_model" to "anon";

grant references on table "public"."product_car_model" to "anon";

grant select on table "public"."product_car_model" to "anon";

grant trigger on table "public"."product_car_model" to "anon";

grant truncate on table "public"."product_car_model" to "anon";

grant update on table "public"."product_car_model" to "anon";

grant delete on table "public"."product_car_model" to "authenticated";

grant insert on table "public"."product_car_model" to "authenticated";

grant references on table "public"."product_car_model" to "authenticated";

grant select on table "public"."product_car_model" to "authenticated";

grant trigger on table "public"."product_car_model" to "authenticated";

grant truncate on table "public"."product_car_model" to "authenticated";

grant update on table "public"."product_car_model" to "authenticated";

grant delete on table "public"."product_car_model" to "service_role";

grant insert on table "public"."product_car_model" to "service_role";

grant references on table "public"."product_car_model" to "service_role";

grant select on table "public"."product_car_model" to "service_role";

grant trigger on table "public"."product_car_model" to "service_role";

grant truncate on table "public"."product_car_model" to "service_role";

grant update on table "public"."product_car_model" to "service_role";

grant delete on table "public"."product_price" to "anon";

grant insert on table "public"."product_price" to "anon";

grant references on table "public"."product_price" to "anon";

grant select on table "public"."product_price" to "anon";

grant trigger on table "public"."product_price" to "anon";

grant truncate on table "public"."product_price" to "anon";

grant update on table "public"."product_price" to "anon";

grant delete on table "public"."product_price" to "authenticated";

grant insert on table "public"."product_price" to "authenticated";

grant references on table "public"."product_price" to "authenticated";

grant select on table "public"."product_price" to "authenticated";

grant trigger on table "public"."product_price" to "authenticated";

grant truncate on table "public"."product_price" to "authenticated";

grant update on table "public"."product_price" to "authenticated";

grant delete on table "public"."product_price" to "service_role";

grant insert on table "public"."product_price" to "service_role";

grant references on table "public"."product_price" to "service_role";

grant select on table "public"."product_price" to "service_role";

grant trigger on table "public"."product_price" to "service_role";

grant truncate on table "public"."product_price" to "service_role";

grant update on table "public"."product_price" to "service_role";

grant delete on table "public"."product_type" to "anon";

grant insert on table "public"."product_type" to "anon";

grant references on table "public"."product_type" to "anon";

grant select on table "public"."product_type" to "anon";

grant trigger on table "public"."product_type" to "anon";

grant truncate on table "public"."product_type" to "anon";

grant update on table "public"."product_type" to "anon";

grant delete on table "public"."product_type" to "authenticated";

grant insert on table "public"."product_type" to "authenticated";

grant references on table "public"."product_type" to "authenticated";

grant select on table "public"."product_type" to "authenticated";

grant trigger on table "public"."product_type" to "authenticated";

grant truncate on table "public"."product_type" to "authenticated";

grant update on table "public"."product_type" to "authenticated";

grant delete on table "public"."product_type" to "service_role";

grant insert on table "public"."product_type" to "service_role";

grant references on table "public"."product_type" to "service_role";

grant select on table "public"."product_type" to "service_role";

grant trigger on table "public"."product_type" to "service_role";

grant truncate on table "public"."product_type" to "service_role";

grant update on table "public"."product_type" to "service_role";

grant delete on table "public"."provider" to "anon";

grant insert on table "public"."provider" to "anon";

grant references on table "public"."provider" to "anon";

grant select on table "public"."provider" to "anon";

grant trigger on table "public"."provider" to "anon";

grant truncate on table "public"."provider" to "anon";

grant update on table "public"."provider" to "anon";

grant delete on table "public"."provider" to "authenticated";

grant insert on table "public"."provider" to "authenticated";

grant references on table "public"."provider" to "authenticated";

grant select on table "public"."provider" to "authenticated";

grant trigger on table "public"."provider" to "authenticated";

grant truncate on table "public"."provider" to "authenticated";

grant update on table "public"."provider" to "authenticated";

grant delete on table "public"."provider" to "service_role";

grant insert on table "public"."provider" to "service_role";

grant references on table "public"."provider" to "service_role";

grant select on table "public"."provider" to "service_role";

grant trigger on table "public"."provider" to "service_role";

grant truncate on table "public"."provider" to "service_role";

grant update on table "public"."provider" to "service_role";

grant delete on table "public"."provider_product" to "anon";

grant insert on table "public"."provider_product" to "anon";

grant references on table "public"."provider_product" to "anon";

grant select on table "public"."provider_product" to "anon";

grant trigger on table "public"."provider_product" to "anon";

grant truncate on table "public"."provider_product" to "anon";

grant update on table "public"."provider_product" to "anon";

grant delete on table "public"."provider_product" to "authenticated";

grant insert on table "public"."provider_product" to "authenticated";

grant references on table "public"."provider_product" to "authenticated";

grant select on table "public"."provider_product" to "authenticated";

grant trigger on table "public"."provider_product" to "authenticated";

grant truncate on table "public"."provider_product" to "authenticated";

grant update on table "public"."provider_product" to "authenticated";

grant delete on table "public"."provider_product" to "service_role";

grant insert on table "public"."provider_product" to "service_role";

grant references on table "public"."provider_product" to "service_role";

grant select on table "public"."provider_product" to "service_role";

grant trigger on table "public"."provider_product" to "service_role";

grant truncate on table "public"."provider_product" to "service_role";

grant update on table "public"."provider_product" to "service_role";

grant delete on table "public"."role" to "anon";

grant insert on table "public"."role" to "anon";

grant references on table "public"."role" to "anon";

grant select on table "public"."role" to "anon";

grant trigger on table "public"."role" to "anon";

grant truncate on table "public"."role" to "anon";

grant update on table "public"."role" to "anon";

grant delete on table "public"."role" to "authenticated";

grant insert on table "public"."role" to "authenticated";

grant references on table "public"."role" to "authenticated";

grant select on table "public"."role" to "authenticated";

grant trigger on table "public"."role" to "authenticated";

grant truncate on table "public"."role" to "authenticated";

grant update on table "public"."role" to "authenticated";

grant delete on table "public"."role" to "service_role";

grant insert on table "public"."role" to "service_role";

grant references on table "public"."role" to "service_role";

grant select on table "public"."role" to "service_role";

grant trigger on table "public"."role" to "service_role";

grant truncate on table "public"."role" to "service_role";

grant update on table "public"."role" to "service_role";

grant delete on table "public"."user" to "anon";

grant insert on table "public"."user" to "anon";

grant references on table "public"."user" to "anon";

grant select on table "public"."user" to "anon";

grant trigger on table "public"."user" to "anon";

grant truncate on table "public"."user" to "anon";

grant update on table "public"."user" to "anon";

grant delete on table "public"."user" to "authenticated";

grant insert on table "public"."user" to "authenticated";

grant references on table "public"."user" to "authenticated";

grant select on table "public"."user" to "authenticated";

grant trigger on table "public"."user" to "authenticated";

grant truncate on table "public"."user" to "authenticated";

grant update on table "public"."user" to "authenticated";

grant delete on table "public"."user" to "service_role";

grant insert on table "public"."user" to "service_role";

grant references on table "public"."user" to "service_role";

grant select on table "public"."user" to "service_role";

grant trigger on table "public"."user" to "service_role";

grant truncate on table "public"."user" to "service_role";

grant update on table "public"."user" to "service_role";

grant delete on table "public"."vehicle" to "anon";

grant insert on table "public"."vehicle" to "anon";

grant references on table "public"."vehicle" to "anon";

grant select on table "public"."vehicle" to "anon";

grant trigger on table "public"."vehicle" to "anon";

grant truncate on table "public"."vehicle" to "anon";

grant update on table "public"."vehicle" to "anon";

grant delete on table "public"."vehicle" to "authenticated";

grant insert on table "public"."vehicle" to "authenticated";

grant references on table "public"."vehicle" to "authenticated";

grant select on table "public"."vehicle" to "authenticated";

grant trigger on table "public"."vehicle" to "authenticated";

grant truncate on table "public"."vehicle" to "authenticated";

grant update on table "public"."vehicle" to "authenticated";

grant delete on table "public"."vehicle" to "service_role";

grant insert on table "public"."vehicle" to "service_role";

grant references on table "public"."vehicle" to "service_role";

grant select on table "public"."vehicle" to "service_role";

grant trigger on table "public"."vehicle" to "service_role";

grant truncate on table "public"."vehicle" to "service_role";

grant update on table "public"."vehicle" to "service_role";


