const con= require('../conn/conn');
const express = require('express');
router = express.Router(); 



router.put('/issue',(res,req)=>{
 
  
    //     var  student_no=req.body.student_no;
    //     var issue_type=req.body.issue_type;
    //    var issue_description = req.body.issue_description;
    // //    var landlord_email;
    


//let sql = 'UPDATE room SET room_no= (SELECT occupied_rooms FROM property WHERE landlord_email= "'+landlord_email+'")+1,floor=1  WHERE student_no="'+student_no+'"';

   //let sql ='INSERT INTO student_issue(student_no,issue_type,issue_description,landlord_email) VALUES("'+req.body.student_no+'","'+req.body.issue_type+'","'+req.body.issue_description+'","'+landlord_email+'=SELECT landlord_email from room where student_no="'+req.body.student_no+'"")';  
let sql = 'UPDATE room SET issue_type="'+req.body.issue_type+'",issue_description="'+req.body.issue_description+'" WHERE student_no="'+req.body.student_no+'"';
   con.query(sql,function(err,results){
       
    if (err) throw error;
    else
    {
      res.send('Your report of concerns has been successfully sent');
    }

   })
})

module.exports =router ;

