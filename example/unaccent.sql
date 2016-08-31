-- DROP FUNCTION public.unaccent(text);

CREATE OR REPLACE FUNCTION public.unaccent(text)
  RETURNS text AS
$BODY$
SELECT translate(
    $1,
    'àáâãäåāăąÀÁÂÃÄÅĀĂĄèééêëēĕėęěÈÉĒĔĖĘĚìíîïìĩīĭÌÍÎÏÌĨĪĬòóôõöōŏőÒÓÔÕÖŌŎŐùúûüũūŭůÙÚÛÜŨŪŬŮçÇ',
    'aaaaaaaaaAAAAAAAAAeeeeeeeeeeEEEEEEEiiiiiiiiIIIIIIIIooooooooOOOOOOOOuuuuuuuuUUUUUUUUcC'
);
$BODY$
  LANGUAGE sql IMMUTABLE STRICT
  COST 100;
