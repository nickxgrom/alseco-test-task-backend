const db = require("../db"),
    { DataTypes } = require("sequelize")

module.exports = db.define("material_values", {
    name: DataTypes.STRING,
    price: DataTypes.FLOAT(7, 2)
}, {
    timestamps: false
})