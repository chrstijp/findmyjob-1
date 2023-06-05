import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:findmyjob/views/screens/my_profile_screen.dart';
import 'package:findmyjob/views/widgets/job_item_card.dart';

class HomeScreen extends StatelessWidget {
  static const route = '/';
  static final jobs = [
    {
      'jobs': 'Cleaning',
      'title': 'Room Cleaning',
      'logoUrl':
          'https://png.pngtree.com/png-vector/20190125/ourmid/pngtree-character-design-of-home-cleaning-service-png-image_531253.jpg',
    },
    // {
    //   'jobs': 'Google',
    //   'title': ' ',
    //   'logoUrl':
    //       'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-icon-png-transparent-background-osteopathy-16.png',
    // },
    // {
    //   'jobs': 'Apple',
    //   'title': 'Backend Developer',
    //   'logoUrl':
    //       'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Apple_logo_grey.svg/1724px-Apple_logo_grey.svg.png',
    // },
    // {
    //   'jobs': 'Microsoft',
    //   'title': 'Product Manager',
    //   'logoUrl':
    //       'https://png.pngtree.com/element_our/20200610/ourmid/pngtree-professional-cleaners-image_2245036.jpg',
    // },
    // {
    //   'jobs': 'Microsoft',
    //   'title': 'Product Manager',
    //   'logoUrl':
    //       'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Microsoft_logo.svg/480px-Microsoft_logo.svg.png',
    // }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(189, 1, 55, 99),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Find My Job'),
        actions: [
          TextButton(
            onPressed: () {
              Get.toNamed(MyProfileScreen.route);
            },
            child: CircleAvatar(
              radius: 20,
              backgroundImage:
                  NetworkImage('https://www.pngegg.com/en/png-zhjvg'),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white.withOpacity(0.2),
                    ),
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        hintText: 'Find your dream job',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white.withOpacity(0.2),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.filter_list,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Jobs for you',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('See all'),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 220,
              child: ListView.builder(
                itemCount: jobs.length,
                itemBuilder: (context, index) => JobItemCard(
                  jobs: jobs[index]['jobs'] ?? '',
                  jobTitle: jobs[index]['title'] ?? '',
                  jobsLogoUrl: jobs[index]['logoUrl'] ?? '',
                ),
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
