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

router.get("/employees/:id", catchError(async (req, res, next) => {
    res.json(await MaterialValueService.getAllEmployeeMaterialValues(req.params.id))
}))

router.get("/employeesTable", catchError(async (req, res, next) => {
    res.json(await MaterialValueService.getListOfEmployeesAndMaterialValues())
}))

router.delete("/materialValue/:materialValueId", catchError(async (req, res, next) => {
    await MaterialValueService.deleteEmployeeMaterialValue(req.params.materialValueId)
    res.sendStatus(200)
}))

router.put("/materialValue/:materialValueId", catchError(async (req, res, next) => {
    await MaterialValueService.updateEmployeeMaterialValue(req.params.materialValueId, req.body.newName, req.body.newPrice)
    res.sendStatus(200)
}))

router.put("/employee/:employeeId", catchError(async (req, res, next) => {
    await EmployeeService.updateEmployee(req.params.employeeId, req.body.firstName, req.body.secondName, req.body.patronymic)
    res.sendStatus(200)
}))

router.delete("/employee/:employeeId", catchError(async (req, res, next) => {
    await EmployeeService.deleteEmployee(req.params.employeeId)
    res.sendStatus(200)
}))

module.exports = router