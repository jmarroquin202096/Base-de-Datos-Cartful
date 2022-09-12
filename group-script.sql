-- Table: public.grupos

-- DROP TABLE IF EXISTS public.grupos;

CREATE TABLE IF NOT EXISTS public.grupos
(
    g_id integer NOT NULL DEFAULT nextval('grupos_g_id_seq'::regclass),
    g_nombre character varying(100) COLLATE pg_catalog."default" NOT NULL,
    g_id_usuario integer NOT NULL,
    CONSTRAINT grupos_pkey PRIMARY KEY (g_id),
    CONSTRAINT usuariosid FOREIGN KEY (g_id_usuario)
        REFERENCES public.usuarios (u_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.grupos
    OWNER to postgres;