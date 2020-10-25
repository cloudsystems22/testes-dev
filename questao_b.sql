-- ------------------------------------------------------------------
-- b) Faça um select que retorne a marca, origem, modelo e ano de fabricação de todos os carros de marcas europeias, ordenado por ano de fabricação.
-- ------------------------------------------------------------------
-- Ascendente
SELECT mo.idModelo, ma.Marca, ma.Origem, mo.Modelo, mo.Ano FROM testesuperlogica.modelo mo
INNER JOIN marca ma ON mo.Marca_codMarca = ma.codMarca
WHERE ma.Origem = 'Italiana' OR ma.Origem = 'Alemã' OR ma.Origem = 'Francesa'
ORDER BY mo.Ano ASC;

-- Descendente
SELECT mo.idModelo, ma.Marca, ma.Origem, mo.Modelo, mo.Ano FROM testesuperlogica.modelo mo
INNER JOIN marca ma ON mo.Marca_codMarca = ma.codMarca
WHERE ma.Origem = 'Italiana' OR ma.Origem = 'Alemã' OR ma.Origem = 'Francesa'
ORDER BY mo.Ano DESC;