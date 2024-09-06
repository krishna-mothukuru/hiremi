import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final TextEditingController _firstNameController = TextEditingController();
final TextEditingController _lastNameController = TextEditingController();
final TextEditingController _emailController = TextEditingController();
final TextEditingController _phoneController = TextEditingController();
final TextEditingController _messageController = TextEditingController();

class SansBold extends StatelessWidget {
  final String text; // Text to display
  final double size; // Font size

  const SansBold(this.text, this.size, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

class Sans extends StatelessWidget {
  final String text; // Text to display
  final double size; // Font size

  const Sans(this.text, this.size, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size),
    );
  }
}

class AbelCustom extends StatelessWidget {
  final String text; // Text to display
  final double size; // Font size
  final Color? color; // Text color
  final FontWeight? fontWeight; // Font weight

  const AbelCustom({
    Key? key,
    required this.text,
    required this.size,
    this.color,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.abel(
        fontSize: size,
        color: color ?? Colors.black,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
    );
  }
}

class TextForm extends StatelessWidget {
  final String text; // Label text
  final double containerWidth; // Width of the form field container
  final String hintText; // Hint text to display in the form field
  final int? maxLines; // Maximum number of lines for the form field
  final TextEditingController
      controller; // Controller for managing the form field input
  final String? Function(String?)?
      validator; // Validator function for form field validation

  const TextForm({
    Key? key,
    required this.text,
    required this.containerWidth,
    required this.hintText,
    this.maxLines,
    required this.controller,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(text, 16.0),
        const SizedBox(height: 5),
        SizedBox(
          width: containerWidth,
          child: TextFormField(
            validator: validator,
            controller: controller,
            maxLines: maxLines,
            decoration: InputDecoration(
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.tealAccent, width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(fontSize: 14),
            ),
          ),
        ),
      ],
    );
  }
}

Future<void> DialogError(BuildContext context, String title) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      title: SansBold(title, 20.0),
    ),
  );
}

class ProfileEditForm extends StatefulWidget {
  const ProfileEditForm({Key? key}) : super(key: key);

  @override
  _ProfileEditFormState createState() => _ProfileEditFormState();
}

class _ProfileEditFormState extends State<ProfileEditForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Form(
      key: formKey,
      child: Wrap(
        runSpacing: 20.0,
        spacing: 20.0,
        alignment: WrapAlignment.center,
        children: [
          const SansBold("Contact me", 35.0),
          TextForm(
            text: "First name",
            containerWidth: widthDevice / 1.4,
            hintText: "Please type first name",
            controller: _firstNameController,
            validator: (text) {
              if (text!.isEmpty) {
                return "First name is required";
              }
              return null;
            },
          ),
          TextForm(
            text: "Last name",
            containerWidth: widthDevice / 1.4,
            hintText: "Please type last name",
            controller: _lastNameController,
          ),
          TextForm(
            text: "Phone number",
            containerWidth: widthDevice / 1.4,
            hintText: "Please type phone number",
            controller: _phoneController,
          ),
          TextForm(
            text: "Email",
            containerWidth: widthDevice / 1.4,
            hintText: "Please type email address",
            controller: _emailController,
            validator: (text) {
              if (text!.isEmpty) {
                return "Email is required";
              }
              return null;
            },
          ),
          TextForm(
            text: "Message",
            containerWidth: widthDevice / 1.4,
            hintText: "Please type your message",
            maxLines: 10,
            controller: _messageController,
            validator: (text) {
              if (text!.isEmpty) {
                return "Message is required";
              }
              return null;
            },
          ),
          MaterialButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                DialogError(context, "Message sent successfully");
              } else {
                DialogError(context, "Message failed to send");
              }
            },
            elevation: 20.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            height: 60.0,
            minWidth: widthDevice / 2.2,
            color: Colors.tealAccent,
            child: const SansBold("Submit", 20.0),
          ),
        ],
      ),
    );
  }
}

// Function to create a container with teal border and text
Widget tealContainer(String text) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.tealAccent,
        style: BorderStyle.solid,
        width: 2.0,
      ),
      borderRadius: BorderRadius.circular(5.0),
    ),
    padding: const EdgeInsets.all(7.0),
    child: Text(
      text,
      style: GoogleFonts.openSans(fontSize: 15.0),
    ),
  );
}
