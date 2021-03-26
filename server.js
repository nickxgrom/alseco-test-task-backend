const express = require("express"),
    app = express(),
    bodyParser = require("body-parser"),
    router = require("./src/handler.js"),
    PORT = 3000,
    db = require('./src/db')

app.use(bodyParser.json())
app.use(router)

app.use( (err, req, res, next) =>  {
    console.error(err.message)
    res.status(500).send("Server error")
    next()
})

app.listen(PORT, async () => {
    await db.sync()
    console.log(`Server listening port ${PORT}`)
})
