var dashboardModel = require("../models/dashboardModel");

function selectUsuarios(req, res) {

  dashboardModel.selectUsuarios()
    .then((resultado) => {
      res.status(201).json(resultado);
    }
    ).catch((erro) => {
      console.log(erro);
      console.log(
        "\nHouve um erro ao selecinar KPI USUARIOS Erro: ",
        erro.sqlMessage
      );
      res.status(500).json(erro.sqlMessage);
    });

}

function selectMediaIdade(req, res) {

  dashboardModel.selectMediaIdade()
    .then((resultado) => {
      res.status(201).json(resultado);
    }
    ).catch((erro) => {
      console.log(erro);
      console.log(
        "\nHouve um erro ao selecinar KPI IDADE Erro: ",
        erro.sqlMessage
      );
      res.status(500).json(erro.sqlMessage);
    });

}

function selectGraficoInteresse(req, res) {

  dashboardModel.selectGraficoInteresse()
    .then((resultado) => {
      res.status(201).json(resultado);
    }
    ).catch((erro) => {
      console.log(erro);
      console.log(
        "\nHouve um erro ao selecionar grafico interesse Erro: ",
        erro.sqlMessage
      );
      res.status(500).json(erro.sqlMessage);
    });
}

function selectGraficoPet(req, res) {

  dashboardModel.selectGraficoPet()
    .then((resultado) => {
      res.status(201).json(resultado);
    }
    ).catch((erro) => {
      console.log(erro);
      console.log(
        "\nHouve um erro ao selecionar grafico pet Erro: ",
        erro.sqlMessage
      );
      res.status(500).json(erro.sqlMessage);
    });
}


module.exports = {
  selectUsuarios,
  selectMediaIdade,
  selectGraficoInteresse,
  selectGraficoPet
}