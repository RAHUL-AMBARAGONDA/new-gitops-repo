const express = require("express");
const path = require("path");

const app = express();
const port = 8080;

app.use(express.static(path.join(__dirname, "public")));

app.listen(port, () => {
  console.log(`Calculator app running at http://localhost:${port}`);
});
