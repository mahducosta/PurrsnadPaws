var express = require("express");
var router = express.Router();

var aquarioController = require("../controllers/dashboardController");

router.get("/selectUsuarios", function (req, res)  {
  aquarioController.selectUsuarios(req, res);
})

router.get("/selectMediaIdade", function (req,res) {
  aquarioController.selectMediaIdade(req,res)
})

router.get("/selectGraficoInteresse", function(req, res){
  aquarioController.selectGraficoInteresse(req,res)
})

router.get("/selectGraficoPet", function (req,res) {
  aquarioController.selectGraficoPet(req,res)
})

module.exports = router;