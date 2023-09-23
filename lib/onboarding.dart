import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HotlinesPage extends StatelessWidget {
  final List<Map<String, dynamic>> hotlines = [
    {
      'name': 'SAHAI Helpline',
      'phone': '09886444075',
      'address': 'Available Nation-wide',
    },
    {
      'name': 'CyberCrime Police Bengaluru',
      'phone': '09886444070',
      'address': 'Bengaluru Division Cyber Crime Police',
    },
    {
      'name': 'WellBeing Foundation',
      'phone': '18602662345',
      'address':
          '2nd Floor, Asha Sadan Building, 15th Road, Rajajinagar, Bengaluru, Karnataka 560021',
    },
    {
      'name': 'iCall - Tata Institute of Social Sciences',
      'phone': '02225521111',
      'address': 'West of Chord Road, Rajajinagar, Bengaluru, Karnataka 560021',
    },
    {
      'name': 'Aasra',
      'phone': '9820466726',
      'address':
          '104, Sunrise Arcade, 16 th cross, Mahalakshmi Layout, Bengaluru, Karnataka 560019',
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Hotlines",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 26.0),
        ),
        backgroundColor: Colors.red,
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: hotlines.length,
        itemBuilder: (BuildContext context, int index) {
          final hotline = hotlines[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text(hotline['name']),
                subtitle: Text(hotline['address']),
                trailing: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(40), // Rounded border radius
                    ),
                    minimumSize: Size(80, 40),
                    primary: Colors.red, // Blue accent color
                  ),
                  onPressed: () {
                    launchUrl(Uri(scheme: 'tel', path: hotline['phone']));
                  },
                  child: Text('Call'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
