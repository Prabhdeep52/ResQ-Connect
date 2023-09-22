import 'package:flutter/material.dart';

class DisasterInfo extends StatefulWidget {
  const DisasterInfo({super.key});

  @override
  State<DisasterInfo> createState() => _DisasterInfoState();
}

class _DisasterInfoState extends State<DisasterInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  "Report Your Disaster",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                cursorColor: const Color.fromARGB(31, 78, 77, 77),
                decoration: InputDecoration(
                  hintText: "Search Location",
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xFFF4727A), width: 2.0),
                      borderRadius: BorderRadius.circular(10)),
                ),
                maxLines: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Type",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                  ),
                  physics: const AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1),
                        ),
                        child: const Icon(Icons.water_drop_outlined),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Upload Photos")))
            ],
          ),
        ),
      ),
    );
    ;
  }
}
