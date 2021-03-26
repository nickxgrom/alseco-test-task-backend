const express = require("express"),
    router = express.Router(),
    EmployeeService = require("./services/EmployeeService"),
    MaterialValueService = require("./services/MaterialValueService")
    catchError = require("./util")

router.post("/employees", catchError(async (req, res, next) =>  {
    await EmployeeService.createEmployee(req.body.firstName, req.body.secondName, req.body.patronymic)
    res.sendStatus(200)
}))

router.post("/employees/:id", catchError(async (req, res, next) => {
    await MaterialValueService.createEmployeeMaterialValue(req.params.id, req.body.materialValueName, req.body.materialValuePrice)
    res.sendStatus(200)
}))

module.exports = router