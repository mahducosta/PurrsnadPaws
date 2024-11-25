var database = require("../database/config");

function selectUsuarios() {
  
  var instrucaoSql = `SELECT COUNT(idUsuario) as total from usuario`;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}

function selectMediaIdade() {

  var instrucaoSql = `SELECT TRUNCATE(AVG(TIMESTAMPDIFF(YEAR, dtnasc, CURDATE())),0) as mediaidade FROM usuario`;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);

}

function selectGraficoInteresse() {
  
  var instrucaoSql = `SELECT COUNT(fkUsuario) as total, r.interesse as adoção from resposta as r JOIN usuario as u on r.fkusuario = u.idUsuario GROUP BY r.interesse`;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}

function selectGraficoPet() {
  
  var instrucaoSql = `SELECT COUNT(fkUsuario) as total, r.pet as pet from resposta as r JOIN usuario as u on r.fkusuario = u.idUsuario GROUP BY r.pet ORDER BY r.pet asc`;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}

module.exports = {
  selectUsuarios,
  selectMediaIdade,
  selectGraficoInteresse,
  selectGraficoPet
}
