const con= require('../conn/conn');
const express = require('express');
router = express.Router(); 





       //Accept or decline the Applications                             

       router.put('/Decline',(req ,res)=>{

        let registration_no = req.body.registration_no
        datb.query('UPDATE landlord  SET status = 0 where restuarant_id =  "'+registration_no+'"',(err,results,fields)=>
       {
         if(err) throw err
    else 
        {
         datb.query('select * from landlord where status = 0',function (error, results, fields){
               return res.send({results})

      })
    }
  }  
       )});
   
       // Accept the application
       router.put('/Accept',(req ,res)=>{

            let registration_no = req.body.registration_no
            datb.query('UPDATE landlord  SET status = 1 where registration_no =  "'+registration_no+'"',(err,results,fields)=>
             {
               
           if(err) throw err
         
       else 
       {
          datb.query('select * from landlord where status = 1 ',function (error, results, fields){
              return res.send({results})

       })
   }
  }  
   
       )});

module.exports = router;