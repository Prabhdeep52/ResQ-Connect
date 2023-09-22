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
app.get("/", (req, res) => {
  res.send("ResQ API");
}
);
//User Report Schema
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
//User Model
const Report = mongoose.model("Report", reportSchema);
//Post request to store the report in database
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
  report.save()
  .catch((error) => {
    //When there are errors We handle them here
    console.log(err);
    res.send(400, "Bad Request");

});
});
//Get request to fetch the reports from database
app.get("/reportFetch", (req, res) => {
  Report.find().then((reports) => res.json(reports));
}
);
//Organization Schema
const orgSchema = new mongoose.Schema({
  name: String,
  description: String,
  orgtype: String,
  contact: Number,
  location: String,
  logo: String,
});
//Organization Model
const Org = mongoose.model("Org", orgSchema);
//Post request to store the report in database
app.post("/orgPost", (req, res) => {
  const org = new Org({
    name: req.body.name,
    description: req.body.description,
    orgtype: req.body.orgtype,
    contact: req.body.contact,
    location: req.body.location,
    logo: req.body.logo,
  });
  org.save()
  .catch((error) => {
    //When there are errors We handle them here
    console.log(err);
    res.send(400, "Bad Request");

});
});
//Get request to fetch the reports from database
app.get("/orgFetch", (req, res) => {
  Org.find().then((orgs) => res.json(orgs));
}
);
//Search filter by organization type
app.get("/orgFetch/:orgtype", (req, res) => {
  Org.find({ orgtype: req.params.orgtype }).then((orgs) => res.json(orgs));
}
);

app.listen(3000 || process.env.PORT, () => {
  console.log("Server running on 3000")
});