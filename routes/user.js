/**
 * Created by Administrator on 2017/3/30.
 */
var express = require("express");
var router = express.Router();
router.get("/",function(req,res){
    res.render("index");
})
module.exports = router;