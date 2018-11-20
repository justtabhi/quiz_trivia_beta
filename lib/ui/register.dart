import 'package:flutter/material.dart';
import 'package:razorpay_plugin/razorpay_plugin.dart';

class Register extends StatefulWidget{
  @override
    State<StatefulWidget> createState() {
      return new RegisterState();
    }
}

class RegisterState extends State<Register>{

  startPayment() async {
    Map<String, dynamic> options = new Map();
    options.putIfAbsent("name", () => "Register for Quiz");
    options.putIfAbsent("image", () => "https://www.73lines.com/web/image/12427");
    options.putIfAbsent("description", () => "This is a real transaction");
    options.putIfAbsent("amount", () => "200");
    options.putIfAbsent("email", () => "abhi.in12@gmail.com");
    options.putIfAbsent("contact", () => "7834853995");
    //Must be a valid HTML color.
    options.putIfAbsent("theme", () => "#FF0000");
    options.putIfAbsent("api_key", () => "rzp_test_UNDftkoFjL7mEt");
    Map<dynamic,dynamic> paymentResponse = new Map();
    paymentResponse = await Razorpay.showPaymentForm(options);
    debugPrint("response $paymentResponse");
  }
  @override
    Widget build(BuildContext context) {
      
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("Calculazzi",style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: Color(0xFF4B0082),        
        ),
        body: 
          RaisedButton(
          onPressed: ()=>startPayment(),
          child: Text("Pay"),
          color: Theme.of(context).accentColor,
          elevation: 4.0,
          splashColor: Colors.blueGrey,
        ),
      );
    }
}
