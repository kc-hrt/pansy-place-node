const express = require("express");
const bodyParser = require("body-parser");
require("dotenv").config();

const app = express();
const port = process.env.PORT || 42003;

// app.use(function (req, res, next) {
//   res.header("Access-Control-Allow-Origin", "*");
//   res.header(
//     "Access-Control-Allow-Headers",
//     "Origin, X-Requested-With, Content-Type, Accept"
//   );
//   next();
// });

const cors = require("cors");
app.use(cors({ methods: ["GET", "POST", "DELETE", "UPDATE", "PUT"] }));
app.options("*", cors());

app.use(bodyParser.json());
app.use(express.static("public"));

app.use(require("./routers/crops"));
app.use(require("./routers/locations"));
app.use(require("./routers/plants"));
app.use(require("./routers/pots"));
app.use(require("./routers/users"));
app.use(require("./routers/availability"));
//
app.get("/", (req, res) => {
  res.send(
    "Welcome to our server! Visit fotohut.org/pansyplace for front-end app"
  );
});

app.listen(port, () => {
  console.log(`Web server is listening on port ${port}!`);
});
