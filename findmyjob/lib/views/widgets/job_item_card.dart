import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:findmyjob/constants.dart';
import 'package:findmyjob/views/screens/job_details_screen.dart';

import 'findmyjob_button.dart';

class JobItemCard extends StatelessWidget {
  final String jobs;
  final String jobTitle;
  final String jobsLogoUrl;
  const JobItemCard({
    Key? key,
    required this.jobs,
    required this.jobTitle,
    required this.jobsLogoUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      color: Colors.white.withOpacity(0.15),
      child: Container(
        padding: EdgeInsets.all(8),
        width: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 8,
            ),
            Image.network(
              jobsLogoUrl,
              width: 64,
              height: 64,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              jobs,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            Text(
              jobTitle,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            Spacer(),
            findmyjobButton(
              title: 'Apply',
              onPressed: () => Get.toNamed(JobDetailsScreen.route),
            ),
          ],
        ),
      ),
    );
  }
}
