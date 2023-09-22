const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const mongoose = require('mongoose');
const mongoURL = "mongodb+srv://ayushawasthi468:SixtyNine420!@cluster0.cr220yd.mongodb.net/userDB";
app.use(bodyParser.json());
async function main() {
  await mongoose.connect(mongoURL);
  console.log(mongoose.connection.readyState)
}
main().catch(err => console.log(err));
const reportSchema = new mongoose.Schema({
  name: String,
  dtype: String,
  description: String,
  contact: Number,
  location: String,
  image: [String],
  date: String,
  time: String,
  status: String,
});
const Report = mongoose.model("Report", reportSchema);
app.post("/reportPost", (req, res) => {
  const report = new Report({
    name: req.body.name,
    dtype: req.body.dtype,
    description: req.body.description,
    contact: req.body.contact,
    location: req.body.location,
    image: req.body.image,
    date: req.body.date,
    time: req.body.time,
    status: req.body.status,
  });
  report.save();
});
app.get("/", (req, res) => {
  res.send("ResQ API");
}
);
app.get("/reportFetch", (req, res) => {
  Report.find().then((reports) => res.json(reports));
}
);

app.listen(3000 || process.env.PORT, () => {
  console.log("Server running on 3000")
});