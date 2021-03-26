const MaterialValue = require("../models/MaterialValues"),
    Employee = require("../models/Employees"),
    ServiceError = require("../error")

const isEmployeeExist = async (id) => {
    return !!(await Employee.findByPk(id))
},
    isMaterialValueExist = async (id, materialValueName) => {
        return !!(await MaterialValue.findOne({
            where: {
                name: materialValueName,
                employeeId: id
            }
        }))
    }

module.exports = {
    createEmployeeMaterialValue: async (id, materialValueName, materialValuePrice) => {
        if (await isEmployeeExist(id)) {
            if (await isMaterialValueExist(id, materialValueName))
                throw new ServiceError(409, "Employee with given id already has this material value");
            await MaterialValue.create({
                name: materialValueName,
                price: materialValuePrice,
                employeeId: id
            })
        } else {
            throw new ServiceError(404, "Employee with given id is not found")
        }
    }
}