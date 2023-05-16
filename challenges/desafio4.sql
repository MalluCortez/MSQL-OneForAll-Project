SELECT
  user_name AS pessoa_usuaria,
  IF (YEAR(MAX(rh.reproduction_date)) >= 2021, 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM
  reproduction_history AS rh
    INNER JOIN
  users AS u ON rh.user_id = u.user_id
  GROUP BY pessoa_usuaria
  ORDER BY pessoa_usuaria;
