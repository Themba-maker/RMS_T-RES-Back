const con= require('../conn/conn');
const express = require('express');
router = express.Router();  
var bcrypt = require('bcrypt-nodejs');

// register student account
router.post('/reg', function(req, res){  

    let post = {
        "student_no": req.body.student_no,
        "password": bcrypt.hashSync(password, null, null)
    };
    var  password = req.body.password
    var  confirm_password = req.body.confirm_password

    if(password != confirm_password){

        res.send({"message":"confirm password is not matched"})

    }

    var student_no = req.body. student_no;
    var myQuery1 = "SELECT * FROM student WHERE student_no = ?";
    con.query(myQuery1,[student_no],function(err,results){
        
        if(results.length > 0){

            res.send({
                data : results,
                code : 200,
                message : "Sorry, user already exist!"

            })

        }else{
                var myQuery = "INSERT INTO student SET ?";
                con.query(myQuery, [post,confirm_password], function(err, results){
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

// update student Contacts
router.put('/updateContact', (req,res)=>{
    let stud ={ 
        contact_student:req.body.contact_student,
        student_email:req.body.student_email,
        guardian_FullName:req.body.guardian_FullName,
        guardian_lastName:req.body.guardian_lastName,
        contact_guardian:req.body.contact_guardian,      
       }
  let student_no = (req.body.student_no)
       
    con.query('UPDATE student SET ? where student_no = "'+student_no+'"',[stud],function (error, results, fields)
    {
        if (error) throw error;
        else
        {
          con.query('select * from student where student_no = "'+student_no+'"',[stud],function (error, results, fields){
          return res.send({results})
      })
    }       
      })
    });

    // update Medical Details
    router.put('/updateMedicalAid', (req,res)=>{
        let stud ={ 
            medicalAid_no:req.body.medicalAid_no,
            medicalAid_plan:req.body.medicalAid_plan,
            mainMember_title:req.body.title,
            mainMember_FullNames:req.body.mainMember_FullNames,
            mainMember_lastName:req.body.mainMember_lastName,
            mainID_no:req.body.mainID_no,
            relationship:req.body.relationship
               
           }
      let student_no = (req.body.student_no)
           
        con.query('UPDATE student SET ? where student_no = "'+student_no+'"',[stud],function (error, results, fields)
        {
            if (error) throw error;
            else
            {
              con.query('select * from student where student_no = "'+student_no+'"',[stud],function (error, results, fields){
              return res.send({results})
          })
        }       
          })
        })
    

// update course
    router.put('/updateCourse', (req,res)=>{
        let stud ={ 
            campus_study:req.body.campus_study,
            faculty:req.body.faculty,
            course:req.body.course,
            year_of_admission:req.body.year_of_admission,
            sponsor:req.body.sponsor
               
           }
      let student_no = (req.body.student_no)
           
        con.query('UPDATE student SET ? where student_no = "'+student_no+'"',[stud],function (error, results, fields)
        {
            if (error) throw error;
            else
            {
              con.query('select * from student where student_no = "'+student_no+'"',[stud],function (error, results, fields){
              return res.send({results})
          })
        }       
          })
        })
    



    // view all students
    router.get('/viewStudent', (req,res)=>{


        con.query('SELECT * FROM  student ',function(error,results,fields){
      
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
      router.get('/aStudent',(req, res) => {

        let student_no ={student_no:req.body.student_no}
     
       con.query('SELECT * FROM student WHERE  student_no = ?',[student_no], (error, results,fields) => {
           if(error) throw error;
           res.send({data:results});
       });
    });

module.exports = router;
// medical aid name, medical aid number, medical aid plan, main title, full,names,lastname,idno
//contact number, relationship to student 

