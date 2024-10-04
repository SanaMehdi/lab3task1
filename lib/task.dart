import 'package:flutter/material.dart';

class LabDesign extends StatelessWidget {
  const LabDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 20),
          // Lab Title
          const Center(
            child: Text(
              'LAB # 3',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Image with border and background
          Center(
            child: Container(
              width: 250,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  // New working URL
                 // 'https://scontent.fkhi11-2.fna.fbcdn.net/v/t39.30808-6/299437399_456543539818956_1163009948533903210_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=cc71e4&_nc_ohc=41awSCOuEvYQ7kNvgHsA7z_&_nc_ht=scontent.fkhi11-2.fna&_nc_gid=ApdQUp18A3wcb7Pdl9ly_KP&oh=00_AYAFQlHpuNYsqMUGnpm0qvuxgrQlWfOuY1eXA7jkkgjFcQ&oe=6705BFFD',
                  //'https://i.redd.it/279ygw12olu81.jpg',
                  'https://images.pexels.com/photos/757889/pexels-photo-757889.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                  fit: BoxFit.cover,
                  errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                    return Center(child: Text('Image failed to load', style: TextStyle(color: Colors.white)));
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Overlapping Containers and Number Column
          Stack(
            alignment: Alignment.center,
            children: [
              // Blue container
              Container(
                width: 150,
                height: 150,
                color: Colors.blue,
              ),
              // Green container overlapping
              Positioned(
                top: 20,
                left: 60,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
              ),
              // Red container with numbers in column
              Positioned(
                right: 60,
                top: 20,
                child: Container(
                  width: 50,
                  height: 200,
                  color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('1', style: TextStyle(color: Colors.white, fontSize: 18)),
                      Text('2', style: TextStyle(color: Colors.white, fontSize: 18)),
                      Text('3', style: TextStyle(color: Colors.white, fontSize: 18)),
                      Text('4', style: TextStyle(color: Colors.white, fontSize: 18)),
                      Text('5', style: TextStyle(color: Colors.white, fontSize: 18)),
                      Text('6', style: TextStyle(color: Colors.white, fontSize: 18)),
                      Text('7', style: TextStyle(color: Colors.white, fontSize: 18)),
                      Text('8', style: TextStyle(color: Colors.white, fontSize: 18)),
                      Text('9', style: TextStyle(color: Colors.white, fontSize: 18)),
                      Text('10', style: TextStyle(color: Colors.white, fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Instruction text
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'PRACTICE MORE THAN THIS. IT WILL HELP YOU TO DESIGN COMPLEX MOBILE APP DESIGN',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Bottom Section: Leading, Image, Trailing
          Container(
            color: Colors.green,
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'LEADING',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                // Circular image in the center
                ClipOval(
                  child: Image.network(
                    //'https://scontent.fkhi11-2.fna.fbcdn.net/v/t39.30808-6/299437399_456543539818956_1163009948533903210_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=cc71e4&_nc_ohc=41awSCOuEvYQ7kNvgHsA7z_&_nc_ht=scontent.fkhi11-2.fna&_nc_gid=ApdQUp18A3wcb7Pdl9ly_KP&oh=00_AYAFQlHpuNYsqMUGnpm0qvuxgrQlWfOuY1eXA7jkkgjFcQ&oe=6705BFFD',
                    'https://images.pexels.com/photos/757889/pexels-photo-757889.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                    errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                      return Center(child: Text('Failed to load', style: TextStyle(color: Colors.white)));
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Text(
                    'TRAILING',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

