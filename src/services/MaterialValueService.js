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
    },
    getEmployeeMaterialValueAmount = async (id) => {
        return (await MaterialValue.findAndCountAll({
            where: { employeeId: id }
        })).count
    },
    getEmployeeAllMaterialValuePrice = async (employeeId) => {
        let mv = await MaterialValue.findAll({where:{employeeId: employeeId}})
        let price = 0;
        mv.forEach(item => {
            price += item.price
        })
        return price
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
    },
    getAllEmployeeMaterialValues: async (id) => {
        if (! await isEmployeeExist(id)) {
            throw new ServiceError(404, "Employee with given id is not found")
        }
        return await MaterialValue.findAll({
            where: {
                employeeId: id
            }
        })
    },
    getListOfEmployeesAndMaterialValues: async () => {
        let employees = await Employee.findAll()

        for (const employee of employees) {
            employee.setDataValue("materialValueCount", await getEmployeeMaterialValueAmount(employee.id))
            employee.setDataValue("materialValuesPrice", await getEmployeeAllMaterialValuePrice(employee.id))
        }
        return employees;


    }
}