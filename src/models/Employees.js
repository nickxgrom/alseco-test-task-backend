const db = require('../db'),
    { DataTypes } = require('sequelize'),
    MaterialValues = require('./MaterialValues')

const Employees = db.define("employees", {
    first_name: DataTypes.STRING,
    second_name: DataTypes.STRING,
    patronymic: DataTypes.STRING
}, {
    timestamps: false
})

Employees.hasMany(MaterialValues, { onDelete: "cascade" })

module.exports = Employees