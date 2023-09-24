const express = require('express')
const app = express()
const port = 8080
require('dotenv').config();

app.get('/', (req, res) => {
  res.json({
    "instance-name": process.env.INSTANCE_ID,
    "ipv4": process.env.INSTANCE_IP,
  })
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})