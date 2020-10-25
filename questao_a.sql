-- ------------------------------------------------------------------
-- a) Faça um select que retorne a marca, modelo, cor e valor de todos os carros com valores entre 20000 e 30000.
-- ------------------------------------------------------------------

SELECT mo.idModelo, ma.Marca, mo.Modelo, mo.Cor, mo.valor FROM testesuperlogica.modelo mo
INNER JOIN marca ma ON mo.Marca_codMarca = ma.codMarca
WHERE mo.Valor >= '20000' AND mo.Valor <= '30000';