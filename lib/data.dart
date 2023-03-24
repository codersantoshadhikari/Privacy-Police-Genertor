class Policy {
  String appname;
  String isPersonal;
  String contactNo;
  String location;
  String email;
  Policy(
      this.appname, this.isPersonal, this.contactNo, this.location, this.email);
  String generatePolicy() {
    String policy = """"
<h1>
 privacy Policy for $appname 
 </h1>
 <p>
$appname  ("us", "we", or "our") operates the $appname mobile application (the "Service").
This page informs you of our policies regarding the collection, use, and disclosure of personal data when you use our Service and the choices you have associated with that data.
 </p>
 <h2>Information Collecttion And Use </h2>
 <p>
 We use your data to provide and improve the Service. By using the Service, you agree to the collection and use of information in accordance with this policy.
 </p>

 <h2> Contace Us</h2>
 <p>
 if you have any question about this privacy policy,please contace us:
 Email : $email
 Phone : $contactNo
 Address : $location
 </p>
 """;
    return policy;
  }
}
