/**
 * Created by Administrator on 2017/3/30.
 */
let express = require("express");
let router = express.Router();
router.get("/",function(req,res){
    var pageTitle = "Archives";
    var pageTitle2 = "";
    res.render("archives/index",{pageTitle:pageTitle,pageTitle2:pageTitle2});

})
module.exports = router;