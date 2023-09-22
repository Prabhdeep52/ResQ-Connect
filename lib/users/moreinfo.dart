import 'package:flutter/material.dart';
import '../features/home/widgets/customtextfield.dart';

class MoreInfoOrg extends StatefulWidget {
  const MoreInfoOrg({super.key});

  @override
  State<MoreInfoOrg> createState() => _MoreInfoOrgState();
}

class _MoreInfoOrgState extends State<MoreInfoOrg> {
  final TextEditingController detailsController = TextEditingController();
  final TextEditingController contactController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              "Details",
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12, width: 2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: TextFormField(
                    cursorColor: const Color.fromARGB(31, 78, 77, 77),
                    controller: detailsController,
                    decoration: const InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: "Disaster Details"),
                    maxLines: 3,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12, width: 2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: TextFormField(
                    cursorColor: const Color.fromARGB(31, 78, 77, 77),
                    controller: contactController,
                    decoration: const InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: "Contact Details"),
                    maxLines: 1,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Add Photos (optional)",
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 30,
              backgroundColor: const Color.fromARGB(255, 50, 52, 65),
              child: IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 50, 52, 65)),
                    child: const Text("Submit"),
                  )),
            )
          ],
        ),
      )),
    );
  }
}
