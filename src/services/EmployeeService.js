const Employee = require("../models/Employees"),
     ServiceError = require("../error")

const getEmployeeOrThrowError = async (employeeId) => {
        const employee = await Employee.findByPk(employeeId)

        if (!employee) {
            throw new ServiceError(404, "Employee doesn't exist")
        }
        return employee
    },
    throwErrorIfExist = async (firstName, secondName, patronymic) => {
        const isEmployeeExist = await Employee.findOne({
            where: {
                firstName, secondName, patronymic
            }
        })
        if (isEmployeeExist) {
            throw new ServiceError(409, "Employee already exist")
        }
    }

module.exports = {
    createEmployee: async (firstName, secondName, patronymic) => {
        await throwErrorIfExist(firstName, secondName, patronymic)
        await Employee.create({
            firstName,
            secondName,
            patronymic
        })
    },
    updateEmployee: async (employeeId, newFirstName, newSecondName, newPatronymic) => {
        let employee = await getEmployeeOrThrowError(employeeId)
        employee.firstName = newFirstName
        employee.secondName = newSecondName
        employee.patronymic = newPatronymic
        await employee.save()
    },
    deleteEmployee: async (employeeId) => {
        await (await getEmployeeOrThrowError(employeeId)).destroy()
    },
}
