-- Table: public.usuarios

-- DROP TABLE IF EXISTS public.usuarios;

CREATE TABLE IF NOT EXISTS public.usuarios
(
    u_id integer NOT NULL DEFAULT nextval('usuarios_u_id_seq'::regclass),
    u_nombre character varying(100) COLLATE pg_catalog."default" NOT NULL,
    u_email character varying(100) COLLATE pg_catalog."default" NOT NULL,
    u_contrasena character varying(100) COLLATE pg_catalog."default" NOT NULL,
    u_rol character varying(10) COLLATE pg_catalog."default" DEFAULT 'usuario'::character varying,
    CONSTRAINT usuarios_pkey PRIMARY KEY (u_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.usuarios
    OWNER to postgres;