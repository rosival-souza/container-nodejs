const express = require('express')
const app = express()
const PORT = 4000

app.use(express.json())

app.get('/', (req, res) =>{

    res.send({
        success: true,
        message: `Server is running at https://localhost:${PORT}`,
        dateTime: new Date()
      })

})
app.listen(PORT, () => {

    console.log(`️Server is running at https://localhost:${PORT}`)

})