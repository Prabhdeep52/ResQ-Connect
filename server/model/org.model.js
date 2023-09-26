import mongoose from "mongoose";

//Organization Schema
const orgSchema = new mongoose.Schema({
    name: String,
    description: String,
    orgtype: String,
    contact: Number,
    image: String,
    location: String,
    logo: String,
  });
    //Organization Model
    export default mongoose.model.orgs || mongoose.model("Org", orgSchema);