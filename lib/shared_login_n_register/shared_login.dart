import 'package:flutter/material.dart';
import 'package:flutter_assignment/shared_login_n_register/home.dart';
import 'package:flutter_assignment/shared_login_n_register/shared_register.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Shared_login extends StatefulWidget {
  const Shared_login({super.key});

  @override
  State<Shared_login> createState() => _Shared_loginState();
}

class _Shared_loginState extends State<Shared_login> {
  bool _obscurePassword = true;
  var formkey =GlobalKey<FormState>();
  var uname_contrl = TextEditingController();
  var pass_contrl = TextEditingController();
  late SharedPreferences preferences;
  late bool newuser;
  @override
  void initState() {
    check_if_user_is_alreadyLogin();
    super.initState();
  }
   void check_if_user_is_alreadyLogin() async{
  preferences =await SharedPreferences.getInstance();
   newuser = preferences.getBool('newuser')?? true;
  if(newuser== false){
  Navigator.push(context, MaterialPageRoute(builder: (context)=>Shared_home()));
  }
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("LOGIN",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              Icon(Icons.account_circle,size: 50,),
              SizedBox(height: 10,),

              TextFormField(
               controller: uname_contrl,
               validator: (Username){
                if(Username!.isEmpty||!Username.contains('@')){
                  return "Invalid Username";
                }
                else{
                  return null;
                }
               },
               decoration: InputDecoration(hintText: "Username",icon: Icon(Icons.person)),
              ),

              TextFormField(
                obscureText: _obscurePassword,
                controller: pass_contrl,
                validator: (password){
                  if(password!.isEmpty||password.length<6)
                  {
                    return "Password is empty / password length should be less than 6";
                  }
                  else
                  {
                 return null;
                  }
                },
                decoration: InputDecoration(hintText: "Password",icon: Icon(Icons.lock),
                suffixIcon: GestureDetector(
                  onTap: (){
                    setState(() {
                      _obscurePassword=!_obscurePassword;
                    });
                  },child: Icon(_obscurePassword? Icons.visibility:Icons.visibility_off),
                )
                ),
              ),

              SizedBox(height: 20,),

              ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.green),
              onPressed: (){
                var valid = formkey.currentState!.validate();
                if(valid == true){
                  validateinput();
                }
              },
              
               child: Text("Login")),
               
              SizedBox(height: 20,),
              MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Shared_register()));
              },
              
              child: Text('Dont Have An Account?? Please Register!!'),)
            ],
        
          ),
        ),
      ),
    );
  }
  
  void validateinput() async {
    String uname =uname_contrl.text;
    String pwd =pass_contrl.text;
    preferences = await SharedPreferences.getInstance();
    preferences.setBool('newuser', false);
    String? stored_uname = preferences.getString('username');
     String? stored_pwd = preferences.getString('password');
     if(stored_uname== uname&& stored_pwd==pwd){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Shared_home()));
     }


  }
  
  

  }
