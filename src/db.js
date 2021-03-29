const { Sequelize } = require("sequelize")

module.exports = new Sequelize('alseco', 'root', 'root', {
    host: 'localhost',
    dialect: "mysql",
    logging: false
})