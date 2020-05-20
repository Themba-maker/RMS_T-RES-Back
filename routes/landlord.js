const con= require('../conn/conn');
const express = require('express');
router = express.Router(); 



router.post('/landlordreg',(req,res)=>{
 
    if(req.body.password!=req.body.password_confirm){
        res.send("passwords do not match")
    }else{
        var email = req.body.email_address;
        var sql = "SELECT * FROM landlord WHERE email_address = ?";
        con.query(sql,[email],function(err,results){
         if(results.length > 0){
    
                res.send({
                    message : "Sorry this landlord already exist!"
                })
    
            }else{
                let lordData={
                    email_address: req.body.email_address,
                    password : req.body.password
                }

                var sql = "INSERT INTO landlord SET ?";
                con.query(sql,[lordData],function(err,results){

                    if(err)throw err
                    else{
                        res.send({
                                    data:results,
                                    message:"Successfully registered"
                        });
                    }

})
   }
      })
    }
    
});

//update profile

router.put('/updateLandlord', (req,res)=>{
    let lordData ={ 
        company_name:req.body.company_name,
        registration_no:req.body.registration_no,
       house_number:req.body.house_number,
       street_name:req.body.street_name,
       suburb:req.body.suburb,
       city:req.body.city,
       zip_code:req.body.zip_code,
       province:req.body.province,
       country:req.body.country,
       telephone:req.body.telephone 
       } 
  let email = req.body.email_address;
       
    con.query('UPDATE landlord SET ? where email_address = "'+email+'"',[lordData],function (error, results, fields)
    {
        if (error) throw error;
        else
        {
          con.query('select * from landlord where email_address = "'+email+'"',[lordData],function (error, results, fields){
          return res.send({results})
      })
    }       
      })
    })

    
//landlord application route

router.post('/addproperty',(req,res)=>{
    let propData = {
        landlord_email:req.body.landlord_email,
        campus:req.body.campus,
        numFemale_beds:req.body.numFemale_beds,
        numMale_beds:req.body.numMale_beds,
        bedsPerRoom:req.body.bedsPerRoom,
        num_floors:req.body.num_floors,
        num_rooms:req.body.num_rooms
    };   


 var myQuery = "INSERT INTO property SET ?";
con.query(myQuery, [propData], function(err, results){
                if(err)throw err
                else{
                    res.send({
                        data:results,
                        message : "Application sent"
        
                    })
                }
        })
    
});

router.put('/locateStudent',(req,res)=>{

let email_address = req.body.email_address;
let student_no =req.body.student_no;


con.query('UPDATE tenant SET ? where student_no = "'+student_no+'"',(req,res)=>{

})
})

//student apply for room

router.post('/applyRoom',(req,res)=>{
let status="PENDING";
let studData={
     student_no : req.body.student_no,
     landlord_email :req.body.landlord_email,
     status:status
}

sql="INSERT INTO tenant SET ?";
 con.query(sql,[studData],function(err,rows,fields){
     if (err) throw err;
     else{
        res.send("application sent");
     }
 })


})

//
//get applied students

router.get('/getapplicants',(req,res)=>{
let landlord_email=req.body.landlord_email;
var sql = 'SELECT student_no,apply_date from tenant where landlord_email = ?';
con.query(sql,[landlord_email],function(err, rows, fields) {
if (err) throw err;
rows.forEach((row) => {
 ( row.student_no,'-',row.apply_date);
//res.send(row.status) 
});
// console.log(rows.length);
// console.log( rows[0].student_no,'-',rows[0].apply_date);
// res.send(rows[0].status)
})
})

//locate a room to a student  ********************************************
router.get('/locateStudent',(req,res)=>{
landlord_email=req.body.landlord_email;
//student_no=req.body.student_no;
let st;
//let sql = "UPDATE tenant SET room_no= (SELECT occupied_rooms FROM property WHERE landlord_email= dale@icep.co.za) WHERE student_no=216168631"

sql ="SELECT occupied_rooms FROM property WHERE landlord_email=?"
con.query(sql,[landlord_email],function(err,rows,fields){
if (err)throw err;
else{
    res.send(rows[0].occupied_rooms);
    st=rows[0].occupied_rooms;
}
})
console.log(st);

})







module.exports =router;
