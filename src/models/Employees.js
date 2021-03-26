const db = require('../db'),
    { DataTypes } = require('sequelize')

module.exports = db.define("employees", {
    first_name: DataTypes.STRING,
    second_name: DataTypes.STRING,
    patronymic: DataTypes.STRING
}, {
    timestamps: false
})