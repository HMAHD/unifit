import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Privacy extends StatefulWidget {
  const Privacy({Key? key}) : super(key: key);

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    
    return Scaffold(appBar: AppBar(
        centerTitle: true,
        title: const Text("Privacy Policy"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      
      body: SingleChildScrollView( // Wrap the Column with SingleChildScrollView
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "For the purposes of this Privacy Policy",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "* Account means a unique account created for You to access our Service or parts of our Service.",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "* Affiliate means an entity that controls, is controlled by or is under"
    "common control with a party, where ""control"" means ownership of 50% or"
    "more of the shares, equity interest or other securities entitled to vote"
    "for election of directors or other managing authority.",
              style: TextStyle(
                fontSize: 15,
                //fontWeight: FontWeight.bold,
              ),
            ),
             const SizedBox(height: 10),
            const Text(
              "* Application refers to unifit, the software program provided by the"
    "Company.",
              style: TextStyle(
                fontSize: 15,
                //fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "* Country refers to: Sri Lanka",

              style: TextStyle(
                fontSize: 15,
                //fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "* Device means any device that can access the Service such as a"
    "cellphone or a digital tablet.",

              style: TextStyle(
                fontSize: 15,
                //fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "* Personal Data is any information that relates to an identified or"
    "identifiable individual.",

              style: TextStyle(
                fontSize: 15,
                //fontWeight: FontWeight.bold,
              ),
            ),
             const SizedBox(height: 10),
            const Text(
              "* Service refers to the Application.",

              style: TextStyle(
                fontSize: 15,
                //fontWeight: FontWeight.bold,
              ),
            ),
             const SizedBox(height: 10),
            const Text(
              "* Service Provider means any natural or legal person who processes the data"
    "on behalf of the Company. It refers to third-party companies or"
    "individuals employed by the Company to facilitate the Service, to provide"
    "the Service on behalf of the Company, to perform services related to the"
    "Service or to assist the Company in analyzing how the Service is used.",

              style: TextStyle(
                fontSize: 15,
                //fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "* Usage Data refers to data collected automatically, either generated by the"
    "use of the Service or from the Service infrastructure itself (for example,"
    "the duration of a page visit).",

              style: TextStyle(
                fontSize: 15,
                //fontWeight: FontWeight.bold,
              ),
            ),
             const SizedBox(height: 10),
            const Text(
              "* You means the individual accessing or using the Service, or the company,"
    "or other legal entity on behalf of which such individual is accessing or"
    "using the Service, as applicable.",

              style: TextStyle(
                fontSize: 15,
                //fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Collecting and Using Your Personal Data ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Personal Data ",
              style: TextStyle(
                fontSize: 15,            //fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "While using Our Service, We may ask You to provide Us with certain personally"
"identifiable information that can be used to contact or identify You."
"Personally identifiable information may include, but is not limited to: ",
              style: TextStyle(
                fontSize: 15,            //fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "* Email address ",
              style: TextStyle(
                fontSize: 15,            //fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "* First name and last name ",
              style: TextStyle(
                fontSize: 15,            //fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "* Phone number",
              style: TextStyle(
                fontSize: 15,            //fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "* Address, State, Province, ZIP/Postal code, City ",
              style: TextStyle(
                fontSize: 15,            //fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "* Usage Data",
              style: TextStyle(
                fontSize: 15,            //fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Usage Data is collected automatically when using the Service.",
              style: TextStyle(
                fontSize: 15,            
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Usage Data may include information such as Your Device's Internet Protocol"
"address (e.g. IP address), browser type, browser version, the pages of our"
"Service that You visit, the time and date of Your visit, the time spent on"
"those pages, unique device identifiers and other diagnostic data. ",
              style: TextStyle(
                fontSize: 15,            //fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "When You access the Service by or through a mobile device, We may collect"
"certain information automatically, including, but not limited to, the type of"
"mobile device You use, Your mobile device unique ID, the IP address of Your"
"mobile device, Your mobile operating system, the type of mobile Internet"
"browser You use, unique device identifiers and other diagnostic data.",
              style: TextStyle(
                fontSize: 15,            //fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "We may also collect information that Your browser sends whenever You visit our"
"Service or when You access the Service by or through a mobile device.",
              style: TextStyle(
                fontSize: 15,            //fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Business Transactions ",
              style: TextStyle(
                fontSize: 15,            
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "If the Company is involved in a merger, acquisition or asset sale, Your"
"Personal Data may be transferred. We will provide notice before Your Personal"
"Data is transferred and becomes subject to a different Privacy Policy.",
              style: TextStyle(
                fontSize: 15,            //fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Law enforcement  ",
              style: TextStyle(
                fontSize: 15,            
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Under certain circumstances, the Company may be required to disclose Your"
"Personal Data if required to do so by law or in response to valid requests by"
"public authorities (e.g. a court or a government agency).",
              style: TextStyle(
                fontSize: 15,            //fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Other legal requirements ",
              style: TextStyle(
                fontSize: 15,            
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "The Company may disclose Your Personal Data in the good faith belief that such"
"action is necessary to:",
              style: TextStyle(
                fontSize: 15,            
                //fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "* Comply with a legal obligation ",
              style: TextStyle(
                fontSize: 15,            
                //fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "* Protect and defend the rights or property of the Company",
              style: TextStyle(
                fontSize: 15,            
                //fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "* Prevent or investigate possible wrongdoing in connection with the Service",
              style: TextStyle(
                fontSize: 15,            
                //fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "* Protect the personal safety of Users of the Service or the public",
              style: TextStyle(
                fontSize: 15,            
                //fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "* Protect against legal liability",
              style: TextStyle(
                fontSize: 15,            
                //fontWeight: FontWeight.bold,
              ),
            ),
             const SizedBox(height: 10),
            const Text(
              "Contact Us",
              style: TextStyle(
                fontSize: 15,            
                fontWeight: FontWeight.bold,
              ),
            ),
             const SizedBox(height: 10),
            const Text(
              "If you have any questions about this Privacy Policy, You can contact us:",
              style: TextStyle(
                fontSize: 15,            
                //fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "* By email: unifit@gmail.com",
              style: TextStyle(
                fontSize: 15,            
                //fontWeight: FontWeight.bold,
              ),
            ),
      // Add elevator button
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            minimumSize: Size(width, height / 13),
            foregroundColor: Colors.white,
            backgroundColor: HexColor('19a49c'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          child: const Text(
            'Back to Home',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
          ],
        ),
    ),
    );
  }
}

