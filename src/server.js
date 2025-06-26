const express = require('express');
const app = express();
const port = 8080;

// Serve static files like index.html
app.use(express.static(__dirname));

// Health check endpoint for Kubernetes probes
app.get('/health', (req, res) => {
  res.status(200).send('OK');
});

app.listen(port, () => {
  console.log(`App running on port ${port}`);
});
