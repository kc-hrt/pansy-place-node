const express = require("express");
const bodyParser = require("body-parser");
require('dotenv').config()

const app = express();
const port = process.env.PORT || 42003;

app.use(function (req, res, next) {
  res.header("Access-Control-Allow-Origin", "http://*.fotohut.org");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  next();
});

app.use(bodyParser.json());
app.use(express.static('public'));

app.use(require('./routers/crops'));
app.use(require('./routers/locations'));
app.use(require('./routers/plants'));
app.use(require('./routers/pots'));
app.use(require('./routers/users'));
app.use(require('./routers/availability'));
// 
app.get('/', (req, res) => {
  res.send('Welcome to our server!')
})

app.listen(port, () => {
 console.log(`Web server is listening on port ${port}!`);
});
