import express from 'express';
import bodyParser from 'body-parser';
import connect from './database/conn.js';

const app = express();
app.use(bodyParser.json());
connect().catch(err => console.log(err));

app.get("/", (req, res) => {
  res.send("ResQ API");
}
);

//import report model
import Report from "./model/report.model.js";

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
      console.log(error);
      res.send(400, "Bad Request")
    })
    .then(() => res.json("Report added successfully."));

});
//Get request to fetch the reports from database
app.get("/reportFetch", (req, res) => {
  Report.find().then((reports) => res.json(reports));
}
);
//import org model
import Org from "./model/org.model.js";

//Post request to store the org details in database
app.post("/orgPost", (req, res) => {
  const org = new Org({
    name: req.body.name,
    description: req.body.description,
    orgtype: req.body.orgtype,
    contact: req.body.contact,
    location: req.body.location,
    logo: req.body.logo,
    image: req.body.image,
  });
  org.save()
  .catch((error) => {
    //When there are errors We handle them here
    console.log(error);
    res.send(400, "Bad Request")
  })
  .then(() => res.json("Organisation added successfully."));

});
//Get request to fetch the reports from database
app.get("/orgFetch", (req, res) => {
  Org.find().then((orgs) => res.json(orgs));
}
);
//Search filters for organisations:
//By organization type:
app.get("/orgFetch/:orgtype", (req, res) => {
  Org.find({ orgtype: req.params.orgtype }).then((orgs) => res.json(orgs));
}
);
//By location:
app.get("/orgFetch/:location", (req, res) => {
  Org.find({ location: req.params.location }).then((orgs) => res.json(orgs));
}
);
//Search filters for reports:
//By disaster type:
app.get("/reportFetch/:dtype", (req, res) => {
  Report.find({ dtype: req.params.dtype }).then((reports) => res.json(reports));
}
);
//By location:
app.get("/reportFetch/:location", (req, res) => {
  Report.find({ location: req.params.location }).then((reports) => res.json(reports));
}
);
//By status:
app.get("/reportFetch/:status", (req, res) => {
  Report.find({ status: req.params.status }).then((reports) => res.json(reports));
}
);
//By date:
app.get("/reportFetch/:date", (req, res) => {
  Report.find({ date: req.params.date }).then((reports) => res.json(reports));
}
);
app.listen(3000 || process.env.PORT, () => {
  console.log("Server running on 3000")
});