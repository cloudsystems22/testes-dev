-- ------------------------------------------------------------------
-- c) Faça um select que retorne a marca, origem, modelo e valor de todos os carros inclusive as marcas sem nenhum carro.
-- ------------------------------------------------------------------
-- Não é possivel retornar no select Valor de um carro não cadastrado pois temos o campo valor na tabela modelos, e uma vez essa que não existe um registro relacionado,
-- não possivel retorná-lo.
SELECT mo.idModelo, ma.Marca, ma.Origem, mo.Modelo, mo.Valor FROM testesuperlogica.marca ma
INNER JOIN modelo mo ON ma.codMarca = mo.Marca_codMarca
