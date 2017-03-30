/**
 * Created by Administrator on 2017/3/30.
 */
let express = require("express");
let app = express();
let router = express.Router();
router.get("/",function(req,res){
    res.render("index");
});

module.exports = router;