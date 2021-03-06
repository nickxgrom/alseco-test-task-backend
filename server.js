const express = require("express"),
    app = express(),
    bodyParser = require("body-parser"),
    router = require("./src/handler.js"),
    PORT = 3000,
    db = require('./src/db'),
    ServiceError = require("./src/error"),
    cors = require('cors');

app.use(cors())
app.use(bodyParser.json())
app.use(router)

app.use( (err, req, res, next) =>  {
    if (err instanceof ServiceError) {
        res.status(err.statusCode).send(err.message)
    } else next(err)
})

app.listen(PORT, async () => {
    await db.sync()
    console.log(`Server listening port ${PORT}`)
})
