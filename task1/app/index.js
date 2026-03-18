const express = require('express'); //importes express library
const app = express();
const port = 8080;//as told in rask
app.get("/health", (req, res) => {
    res.json({status: "healthy",
        pod: process.env.HOSTNAME //kubernertes wills set the hostname unique for every replica to verify load balaning across replica
    });
 });
//return greeting messagae it is root endpoint
 app.get("/", (req, res) => {
    res.send(process.env.GREETING || "Hello World!");
    });
//at pport 8080 listen app here app start
    app.listen(port, () => {
        console.log('App runing on port8080');
});
