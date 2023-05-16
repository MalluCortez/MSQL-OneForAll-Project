SELECT
  UCASE(FORMAT(MIN(p.plan_type_price), 2)) AS faturamento_minimo,
  UCASE(MAX(p.plan_type_price)) AS faturamento_maximo,
  UCASE(ROUND(AVG(p.plan_type_price), 2)) AS faturamento_medio,
  UCASE(ROUND(SUM(p.plan_type_price), 2)) AS faturamento_total
FROM 
	plan as p
		INNER JOIN
	users AS u ON u.plan_id = p.plan_id;