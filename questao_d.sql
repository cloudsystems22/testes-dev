-- ----------------------------------------------------------------------------
-- d) Faça um select que retorne a marca e valor total (renomear a coluna valor para Total) de todos os carros e ordenar por marcas com maior valor agrupado.
-- ----------------------------------------------------------------------------
SELECT ma.Marca, SUM(mo.Valor) 'Valor Total' FROM testesuperlogica.modelo mo
INNER JOIN marca ma ON mo.Marca_codMarca = ma.codMarca
WHERE ma.Origem = 'Italiana' OR ma.Origem = 'Alemã' OR ma.Origem = 'Francesa'
GROUP BY ma.Marca
ORDER BY ma.Marca ASC;
