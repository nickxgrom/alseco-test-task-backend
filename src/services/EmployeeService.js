const Employee = require("../models/Employees"),
     ServiceError = require("../error")

module.exports = {
    createEmployee: async (firstName, secondName, patronymic) => {
        const hasEmployee = await Employee.findOne({
            where: {
                firstName, secondName, patronymic
            }
        })

        if (hasEmployee) {
            throw new ServiceError(409, "Employee already exist")
        }

        await Employee.create({
            firstName,
            secondName,
            patronymic
        })
    }
}
