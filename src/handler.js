const express = require("express"),
    router = express.Router(),
    EmployeeService = require("./services/EmployeeService"),
    catchError = require("./util")

router.post("/employees", catchError(async (req, res, next) =>  {
    await EmployeeService.createEmployee(req.body.firstName, req.body.secondName, req.body.patronymic)
    res.sendStatus(200)
}))

module.exports = router