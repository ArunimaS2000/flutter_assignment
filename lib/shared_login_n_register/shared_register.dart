import 'package:flutter/material.dart';
import 'package:flutter_assignment/shared_login_n_register/shared_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Shared_register extends StatefulWidget {
  const Shared_register({super.key});

  @override
  State<Shared_register> createState() => _Shared_registerState();
}

class _Shared_registerState extends State<Shared_register> {
  var formkey= GlobalKey<FormState>();
  var Usname_contrl = TextEditingController();
  var uph_contrl = TextEditingController();
  var passw_contrl = TextEditingController();
  late SharedPreferences preferences;
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
              Text("Create An Account",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              SizedBox(height: 50,),
              TextFormField(
              controller: Usname_contrl,
              validator: (Username){
                if(Username!.isEmpty||!Username.contains("@")){
                  return "Invalid User";
                }
                else{
                  return null;
                }
              },
              decoration: InputDecoration(hintText: "Username",icon: Icon(Icons.person)),
              ),
              TextFormField(
                controller: uph_contrl,
                validator: (phonenumber){
                  if(phonenumber!.isEmpty|| phonenumber.length<10){
                    return "Phone number is empty / phonenumber must have 10 digits";
                  }else{
                    return null;
                  }
                },
                decoration: InputDecoration(hintText: "Phone",icon: Icon(Icons.phone_android)),
              ),
              TextFormField(
                controller: passw_contrl,
                validator: (password){
                  if(password!.isEmpty||password.length <6){
                    return "invalid password";
                  }
                  else{
                    return null;
                  }
                },
                decoration: InputDecoration(hintText: "Password",icon: Icon(Icons.lock)),
              ),
              SizedBox(height: 30,),
              
              ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.green),
              onPressed: (){
                var valid =formkey.currentState!.validate();
                if(valid){
                  storedata();
                }else
                {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Invalid Inputs!!')));
                }
              }, child: Text('Create',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))
            ],
          ),
        ),
      ),
    );
  }
  
  void storedata() async {
     String email = Usname_contrl.text;
    String password = passw_contrl.text;

    //int phone_num = phone_controller.text as int;

    int phone_num = int.parse( uph_contrl.text); // convert string to integer
    preferences = await SharedPreferences.getInstance();

    preferences.setString('username', email);
    preferences.setString('pass', password);
    preferences.setInt('phone', phone_num);

    Navigator.push(context,MaterialPageRoute(builder: (context) => Shared_login()));
  }
  }
