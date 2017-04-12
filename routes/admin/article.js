/**
 * Created by Administrator on 2017/4/12.
 */
var express = require("express");
var router = express.Router();
router.get("/",function(req,res){
    res.render("admin/article/index");
});
module.exports = router;