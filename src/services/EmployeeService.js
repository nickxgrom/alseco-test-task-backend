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
    },
    updateEmployee: async (employeeId, newFirstName, newSecondName, newPatronymic) => {
        try {
            let employee = await Employee.findByPk(employeeId)
            employee.firstName = newFirstName
            employee.secondName = newSecondName
            employee.patronymic = newPatronymic
            await employee.save()
        } catch {
            throw new ServiceError(404, "Employee doesn't exist")
        }
    },
}
