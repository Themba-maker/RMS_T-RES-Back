// const con= require('../conn/conn');
// const express = require('express');
// router = express.Router();  


// router.post('/aRooms', function(req, res){  

//     let post = {
//         "room": req.body.student_no,
//         "bed":req.body.bed,
//         "floor":req.body.floor,
//         "block":req.body.block
        
//     };

//     var student_no = req.body. student_no;
//     var myQuery1 = "SELECT * FROM properties";
//     con.query(myQuery1,[student_no],function(err,results){
        
//         if(results.length > 0){

//             res.send({
//                 data : results,
//                 message : "Sorry, user already exist!"

//             })

//         }else{
//                 var myQuery = "INSERT INTO properties SET ?";
//                 con.query(myQuery, [post], function(err, results){
//                     if(err)throw err
                        
                        
                            
//                     else{
//                         res.send({
//                             data : results,
//                             message : "Registered Successfully..."
            
//                         })
//                     }
//             })
//         }
        
//     })
// });


// module.exports = router;
