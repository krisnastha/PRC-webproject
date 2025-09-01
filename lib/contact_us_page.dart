import 'package:contact_us/contact_us_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'about_page.dart';
import 'archieve_page.dart';
import 'provincial_assembly_page.dart';
import 'provincial_government_page.dart';
import 'inter_governmental_page.dart';
import 'home_page.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});
  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {

  final List<bool> _selectedLanguage = [true, false];

  final CameraPosition _initialPosition = CameraPosition(
    target: LatLng(28.220757857638848, 83.9924595529482),
    zoom: 15,
  );
  int _selectedIndex = -1;

  void _onNavItemTap(int index, Widget destinationPage) {
    setState(() {
      _selectedIndex = index;
    });

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => destinationPage),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ContactUsColors.root,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
         
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _selectedLanguage[0]
                        ? "+977 061 587111 | 9856038143"
                        : "+९७७ ०६१ ५८७१११ | ९८५६०३८१४३",
                    style: const TextStyle(fontSize: 14),
                  ),
                  Text(
                    _selectedLanguage[0]
                        ? "contact@pokharacentre.org"
                        : "सम्पर्क@pokharacentre.org",
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),

           
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.07,
                  decoration: BoxDecoration(
                    color: Colors.white, 
                    border: Border.all(
                      color: const Color.fromARGB(255, 52, 86, 180),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () async {
                          final Uri facebookUrl = Uri.parse(
                            'https://www.facebook.com/pokharacentre',
                          ); 
                          if (await canLaunchUrl(facebookUrl)) {
                            await launchUrl(facebookUrl);
                          }
                        },
                        child: FaIcon(
                          FontAwesomeIcons.facebook,

                          size: 20,
                          color: Color(0xFF1877F2),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          final Uri facebookUrl = Uri.parse(
                            'https://www.facebook.com/pokharacentre',
                          );
                          if (await canLaunchUrl(facebookUrl)) {
                            await launchUrl(facebookUrl);
                          }
                        },
                        child: FaIcon(
                          FontAwesomeIcons.xTwitter,
                          size: 20,
                          color: Color.fromARGB(255, 0, 6, 10),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          final Uri facebookUrl = Uri.parse(
                            'https://www.instagram.com/pokhararesearchcentre/',
                          );
                          if (await canLaunchUrl(facebookUrl)) {
                            await launchUrl(facebookUrl);
                          }
                        },
                        child: FaIcon(
                          FontAwesomeIcons.instagram,
                          size: 20,
                          color: Color(0xFFC13584),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          final Uri facebookUrl = Uri.parse(
                            'https://www.instagram.com/pokhararesearchcentre/',
                          );
                          if (await canLaunchUrl(facebookUrl)) {
                            await launchUrl(facebookUrl);
                          }
                        },
                        child: FaIcon(
                          FontAwesomeIcons.youtube,
                          size: 20,
                          color: Color(0xFFFF0000),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          final Uri facebookUrl = Uri.parse(
                            'https://www.instagram.com/pokhararesearchcentre/',
                          );
                          if (await canLaunchUrl(facebookUrl)) {
                            await launchUrl(facebookUrl);
                          }
                        },
                        child: FaIcon(
                          FontAwesomeIcons.linkedin,
                          size: 20,
                          color: Color(0xFF0A66C2),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),

                ToggleButtons(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  selectedColor: ContactUsColors.root,
                  fillColor: Colors.white,
                  isSelected: _selectedLanguage,
                  onPressed: (int index) {
                    setState(() {
                      for (int i = 0; i < _selectedLanguage.length; i++) {
                        _selectedLanguage[i] = i == index;
                      }
                    });
                  },
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Text("EN"),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Text("NE"),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Material(
              elevation: 5,
              shadowColor: ContactUsColors.secondary,
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 40),
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          "assets/images/mainlogo.png",
                          height: 80,
                          width: 250,
                          fit: BoxFit.contain,
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                    ),

                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () => _onNavItemTap(0, AboutPage()),
                            child: Text(
                              _selectedLanguage[0] ? "About" : "बारेमा",
                              style: TextStyle(
                                color:
                                    _selectedIndex == 0
                                        ? Colors.blue
                                        : ContactUsColors.text,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap:
                                () =>
                                    _onNavItemTap(1, ProvincialAssemblyPage()),
                            child: Text(
                              _selectedLanguage[0]
                                  ? "Provincial Assembly"
                                  : "प्रदेश सभा",
                              style: TextStyle(
                                color:
                                    _selectedIndex == 1
                                        ? Colors.blue
                                        : ContactUsColors.text,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),

                          InkWell(
                            onTap:
                                () => _onNavItemTap(
                                  2,
                                  ProvincialGovernmentPage(),
                                ),
                            child: Text(
                              _selectedLanguage[0]
                                  ? "Provincial Government"
                                  : "प्रदेश सरकार",
                              style: TextStyle(
                                color:
                                    _selectedIndex == 2
                                        ? Colors.blue
                                        : ContactUsColors.text,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap:
                                () => _onNavItemTap(3, InterGovernmentalPage()),
                            child: Text(
                              _selectedLanguage[0]
                                  ? "Inter Governmental Relation"
                                  : "अन्तर सरकारी सम्बन्ध",
                              style: TextStyle(
                                color:
                                    _selectedIndex == 3
                                        ? Colors.blue
                                        : ContactUsColors.text,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => _onNavItemTap(4, ArchivesPage()),
                            child: Text(
                              _selectedLanguage[0] ? "Archives" : "अभिलेखहरू",
                              style: TextStyle(
                                color:
                                    _selectedIndex == 4
                                        ? Colors.blue
                                        : ContactUsColors.text,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => _onNavItemTap(5, ContactUsPage()),
                            child: Text(
                              _selectedLanguage[0]
                                  ? "Contact Us"
                                  : "हामीलाई सम्पर्क गर्नुहोस्",
                              style: TextStyle(
                                color:
                                    _selectedIndex == 5
                                        ? Colors.blue
                                        : ContactUsColors.text,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 90,

              child: Center(
                child: Text(
                  _selectedLanguage[0]
                      ? "Contact Us"
                      : "हामीलाई सम्पर्क गर्नुहोस्",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w600,
                    fontSize: 40,
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Card(
                    elevation: 10,
                    color: Colors.white,
                    shadowColor: ContactUsColors.secondary,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.14,
                            padding: EdgeInsets.all(8),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            child: Text(
                              _selectedLanguage[0]
                                  ? "Which division would you like to have an appointment with?"
                                  : "तपाईँ कुन विभागमा अपोइन्टमेन्ट लिन चाहनुहुन्छ?",
                              style: TextStyle(
                                color: ContactUsColors.text,
                                fontWeight: FontWeight.w600,
                                fontSize: 19,
                              ),
                            ),
                          ),
                          Divider(
                            color: ContactUsColors.secondary,
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.28,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width *
                                        0.13,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => HomePage(),
                                          ),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            ContactUsColors.primary,
                                      ),
                                      child: Text(
                                        _selectedLanguage[0]
                                            ? "Programs"
                                            : "कार्यक्रमहरू",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width *
                                        0.13,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => HomePage(),
                                          ),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            ContactUsColors.primary,
                                      ),
                                      child: Text(
                                        _selectedLanguage[0]
                                            ? "Research"
                                            : "अनुसन्धान",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width *
                                        0.13,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => HomePage(),
                                          ),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            ContactUsColors.primary,
                                      ),
                                      child: Text(
                                        _selectedLanguage[0]
                                            ? "Communication"
                                            : "सञ्चार",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Center(
                    child: GoogleMap(
                      initialCameraPosition: _initialPosition,
                      mapType: MapType.normal,
                      myLocationEnabled: true,
                      zoomControlsEnabled: true,
                      markers: {
                        Marker(
                          markerId: MarkerId("Pokhara Research Centre"),
                          position: LatLng(
                            28.220757857638848,
                            83.9924595529482,
                          ),
                          infoWindow: InfoWindow(
                            title: "Pokhara Research Centre",
                          ),
                        ),
                      },
                    ),
                  ),
                ),
              ],
            ),

            Material(
              elevation: 10,
              shadowColor: const Color.fromARGB(255, 2, 27, 250),
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Text(
                  _selectedLanguage[0]
                      ? "One Step Closer To Your Career"
                      : "तपाईंको करियरतर्फ एक कदम नजिक",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Card(
                    color: ContactUsColors.primary,
                    shadowColor: ContactUsColors.secondary,
                    elevation: 10,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.4,
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            _selectedLanguage[0] ? "Internship" : "इन्टर्नशिप",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            _selectedLanguage[0]
                                ? "Our programs engage in inclusive participation of several Stakeholders, building public-private partnership cooperation."
                                : "हाम्रा कार्यक्रमहरूले विभिन्न सरोकारवालाहरूको समावेशी सहभागितामा संलग्न भएर सार्वजनिक-निजी साझेदारी सहकार्य निर्माण गर्छन्।",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Card(
                    color: ContactUsColors.primary,
                    shadowColor: ContactUsColors.secondary,
                    elevation: 10,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.4,
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            _selectedLanguage[0] ? "Volunteer" : "स्वयंसेवक",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            _selectedLanguage[0]
                                ? "The Volunteer division concentrates on legislative studies and parliamentary affairs."
                                : "स्वयंसेवक विभाग विधायी अध्ययन र संसदीय मामिलाहरूमा केन्द्रित छ।",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Card(
                    color: ContactUsColors.primary,
                    elevation: 10,
                    shadowColor: ContactUsColors.secondary,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.4,
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            _selectedLanguage[0]
                                ? "Liason Consultant"
                                : "सम्पर्क सल्लाहकार",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            _selectedLanguage[0]
                                ? "The Liason Consultant division focuses on research and policy analysis."
                                : "सम्पर्क सल्लाहकार विभाग अनुसन्धान र नीतिगत विश्लेषणमा केन्द्रित छ",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: Image.asset("assets/images/transparentlogo.png"),
                    ),
                    Text(
                      _selectedLanguage[0]
                          ? "Connect With PRC"
                          : "PRC सँग सम्पर्क गर्नुहोस्",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.house,
                            size: 30,
                            color: Color(0xFF1877F2),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  _selectedLanguage[0] ? "Address" : "ठेगाना",
                                  style: TextStyle(
                                    color: ContactUsColors.text,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  _selectedLanguage[0] ? "Pokhara" : "पोखरा",
                                  style: TextStyle(color: ContactUsColors.text),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.phone,
                            size: 30,
                            color: Color(0xFF1877F2),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  _selectedLanguage[0]
                                      ? "Telephone"
                                      : "टेलिफोन",
                                  style: TextStyle(
                                    color: ContactUsColors.text,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  _selectedLanguage[0]
                                      ? "+977 061587111"
                                      : "+९७७ ०६१५८७१११",
                                  style: TextStyle(color: ContactUsColors.text),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.envelope,
                            size: 40,
                            color: Color(0xFF1877F2),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  _selectedLanguage[0] ? "Email" : "इमेल",
                                  style: TextStyle(
                                    color: ContactUsColors.text,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "contact@pokharacentre.org",
                                  style: TextStyle(color: ContactUsColors.text),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: double.infinity,
              decoration: BoxDecoration(color: ContactUsColors.root),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: Image.asset(
                        "assets/images/footerlogo.png",
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 0.3,
                      ),
                    ),
                    Text(
                      _selectedLanguage[0]
                          ? "© 2025 Pokhara Research Centre. All rights reserved."
                          : "© २०२५ पोखरा रिसर्च सेन्टर। सर्वाधिकार सुरक्षित।",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
