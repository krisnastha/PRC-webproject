import 'package:contact_us/contact_us_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'archieve_page.dart';
import 'provincial_assembly_page.dart';
import 'provincial_government_page.dart';
import 'inter_governmental_page.dart';
import 'home_page.dart';
import 'contact_us_page.dart';
class AboutPage extends StatefulWidget {
  const AboutPage({super.key});
  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {

  final List<bool> _selectedLanguage = [true, false];

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
                      color: const Color.fromARGB(
                        255,
                        52,
                        86,
                        180,
                      ),
                      width: 2,
                      
                    ),
                    borderRadius: BorderRadius.circular(
                      8,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () async {
    final Uri facebookUrl = Uri.parse('https://www.facebook.com/pokharacentre'); 
    if (await canLaunchUrl(facebookUrl)) {
      await launchUrl(facebookUrl);
    }
  
  },
                        child:
                      FaIcon(
                        FontAwesomeIcons.facebook,
                        
                        size: 20,
                        color: Color(0xFF1877F2),
                      ),
                      ),
                       InkWell(
                        onTap: () async {
    final Uri facebookUrl = Uri.parse('https://www.facebook.com/pokharacentre'); 
    if (await canLaunchUrl(facebookUrl)) {
      await launchUrl(facebookUrl);
    }
 
  },
                    child:   FaIcon(
                        FontAwesomeIcons.xTwitter,
                        size: 20,
                        color: Color.fromARGB(255, 0, 6, 10),
                      ),
                       ),
                       InkWell(
                        onTap: () async {
    final Uri facebookUrl = Uri.parse('https://www.instagram.com/pokhararesearchcentre/'); 
    if (await canLaunchUrl(facebookUrl)) {
      await launchUrl(facebookUrl);
    }
  
  },
                        child:
                      FaIcon(
                        FontAwesomeIcons.instagram,
                        size: 20,
                        color: Color(0xFFC13584),
                      ),
                       ),
                       InkWell(
                        onTap: () async {
    final Uri facebookUrl = Uri.parse('https://www.instagram.com/pokhararesearchcentre/'); 
    if (await canLaunchUrl(facebookUrl)) {
      await launchUrl(facebookUrl);
    }
 
  },
                        child:
                      FaIcon(
                        FontAwesomeIcons.youtube,
                        size: 20,
                        color: Color(0xFFFF0000),
                      ),
                       ),
                      InkWell(
                        onTap: () async {
    final Uri facebookUrl = Uri.parse('https://www.instagram.com/pokhararesearchcentre/'); 
    if (await canLaunchUrl(facebookUrl)) {
      await launchUrl(facebookUrl);
    }
  
  },
  child:  FaIcon(
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
      MaterialPageRoute(builder: (context) =>HomePage()),
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
                color: _selectedIndex == 0 ? Colors.blue : ContactUsColors.text,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
                         InkWell(
            onTap: () => _onNavItemTap(1, ProvincialAssemblyPage()),
            child: Text(
              _selectedLanguage[0] ? "Provincial Assembly" : "प्रदेश सभा",
              style: TextStyle(
                color: _selectedIndex == 1 ? Colors.blue : ContactUsColors.text,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
                          
                          InkWell(
            onTap: () => _onNavItemTap(2, ProvincialGovernmentPage()),
            child: Text(
              _selectedLanguage[0] ? "Provincial Government" : "प्रदेश सरकार",
              style: TextStyle(
                color: _selectedIndex == 2 ? Colors.blue : ContactUsColors.text,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
                          InkWell(
            onTap: () => _onNavItemTap(3, InterGovernmentalPage()),
            child: Text(
              _selectedLanguage[0]
                  ? "Inter Governmental Relation"
                  : "अन्तर सरकारी सम्बन्ध",
              style: TextStyle(
                color: _selectedIndex == 3 ? Colors.blue : ContactUsColors.text,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
                          InkWell(
            onTap: () => _onNavItemTap(4, ArchivesPage()),
            child: Text(
              _selectedLanguage[0] ? "Archives" : "अभिलेखहरू",
              style: TextStyle(
                color: _selectedIndex == 4 ? Colors.blue : ContactUsColors.text,
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
                color: _selectedIndex == 5 ? Colors.blue : ContactUsColors.text,
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
              height: MediaQuery.of(context).size.height * 0.9,
            width: double.infinity,
            child: Center(child: Text("About Page", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
            ),
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
