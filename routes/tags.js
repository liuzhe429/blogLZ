/**
 * Created by Administrator on 2017/3/31.
 */
var express = require("express");
var router = express.Router();
router.get("/",function(req,res){
    var pageTitle = "Tags";
    var pageTitle2 = "";
    res.render("tags/index",{pageTitle:pageTitle,pageTitle2:pageTitle2});
})
module.exports = router;