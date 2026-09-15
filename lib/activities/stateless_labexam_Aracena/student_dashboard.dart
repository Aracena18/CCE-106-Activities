import 'package:flutter/material.dart';

class StudentDashboard extends StatelessWidget {
  const StudentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Dashboard'),
        backgroundColor: const Color.fromARGB(255, 253, 254, 255),
        foregroundColor: const Color.fromARGB(255, 5, 5, 5),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          buildProfileSection(),
          const SizedBox(height: 16.0),
          const SizedBox(height: 8.0),
          buildStudentInfoSection(),
          const SizedBox(height: 24.0),
          const Text(
            'Subjects',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          buildSubjectsSection(
            subjectname: 'Mathematics',
            instructor: 'Mr. John Doe',
            schedule: 'Mon, Wed, Fri - 10:00 AM to 11:00 AM',
          ),
          buildSubjectsSection(
            subjectname: 'Science',
            instructor: 'Mr. Robert Jhon',
            schedule: 'Fri, Sat, Sun - 10:00 AM to 11:00 AM',
          ),
          buildSubjectsSection(
            subjectname: 'English',
            instructor: 'Bords Nerosa',
            schedule: 'Tue, Thu - 2:00 PM to 3:30 PM',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        tooltip: 'Add Subject',
      ),
    );
  }

  Widget buildProfileSection() {
    return Row(
      children: [
        const CircleAvatar(
          radius: 40.0,
          backgroundImage: AssetImage(
            'assets/images/profile_pict.jpg',
          ),
        ),
        const SizedBox(width: 16.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Robert Jhon D. Aracena',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4.0),
            Text(
              'Student ID: 123456',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
            Text(
              'BSCS - 4th Year',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildStudentInfoSection() {
    return const Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.email_outlined),
            title: Text("r.aracena.545985@umindanao.edu.ph"),
          ),
          ListTile(
            leading: Icon(Icons.phone_outlined),
            title: Text("+63 912 345 6789"),
          ),
          ListTile(
            leading: Icon(Icons.location_on_outlined),
            title: Text("123 Matina Campus, Davao City, Philippines"),
          ),
        ],
      ),
    );
  }

  Widget buildSubjectsSection(
      {required String subjectname,
      required String instructor,
      required String schedule}) {
    return Card(
      child: ListTile(
          contentPadding: const EdgeInsets.all(16.0),
          title: Text(
            subjectname,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          subtitle: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('Instructor: $instructor\nSchedule: $schedule'))),
    );
  }
}
