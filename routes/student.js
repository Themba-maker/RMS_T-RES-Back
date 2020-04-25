const con= require('../conn/conn');
const express = require('express');
router = express.Router();  
var bcrypt = require('bcrypt-nodejs');

// register student account
router.post('/reg', function(req, res){  

    var post = {
        "student_no": req.body.student_no,
        "password": req.body.password,
    };
    var  confirm_password = req.body.confirm_password

    if(password != confirm_password){

        res.send({"message":"confirm password is not matched"})

    }
    var student_no = req.body. student_no;
    var myQuery1 = "SELECT * FROM student WHERE student_no = ?";
    db.query(myQuery1,[student_no],function(err,results){
        
        if(results.length > 0){

            res.send({
                data : results,
                code : 200,
                message : "Sorry, user already exist!"

            })

        }else{
                var myQuery = "INSERT INTO student SET ?";
                db.query(myQuery, [post], function(err, results){
                    if(err)throw err
                        
                        
                            
                    else{
                        
                        console.log("results")
                        res.send({
                            data : results,
                            message : "Registered Successfully..."
            
                        })
                    }
            })
        }
        
    })
});

// update student profile details
router.put('/updateStudent', (req,res)=>{
    let stud ={ 
        Full_names:req.body.Full_names,
        Last_name:req.body.Last_name,
        Id_no:req.body.Id_no,
        gender:req.body.gender,
        disability:req.body.disability,
        contact_student:req.body.contact_student,
        contact_guardian:req.body.contact_guardian,
        campus_study:req.body.campus_study,
        faculty:req.body.faculty,
        course:req.body.course,
        year_of_admission:req.body.year_of_admission,
        sponsor:req.body.sponsor
           
       }
  let student_no = (req.body.student_no)
       
    datb.query('UPDATE student SET ? where student_no = "'+student_no+'"',[stud],function (error, results, fields)
    {
        if (error) throw error;
        else
        {
          datb.query('select * from student where student_no = "'+student_no+'"',[stud],function (error, results, fields){
          return res.send({results})
      })
    }       
      })
    })



    // view all students
    router.get('/viewStudent', (req,res)=>{


        datb.query('SELECT * FROM  student ',function(error,results,fields){
      
            if(error)
            {
                res.send({"failed":"error occurred"})
            }
            else{
                       return res.send({data:results})
                }
      
        });
      });

      //view a specific student
      router.get('/aStudent/:student_no',(req, res) => {

        let student_no ={student_no:req.body.student_no}
     
       datb.query('SELECT * FROM student WHERE  student_no = ?',[student_no], (error, results,fields) => {
           if(error) throw error;
           res.send({results});
       });
    });

module.exports = router;
