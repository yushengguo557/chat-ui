import 'package:flutter/material.dart';
import 'package:talk/colors.dart';
import 'package:talk/ui/widgets/onboarding/logo.dart';
import 'package:talk/ui/widgets/onboarding/profile_upload.dart';
import 'package:talk/ui/widgets/shared/custom_text_field.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _logo(context),
              const Spacer(),
              const ProfileUpload(),
              const Spacer(flex: 2),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: CustomTextField(
                  hint: 'Wah yuh name?',
                  height: 45.0,
                  inputAction: TextInputAction.done,
                  onchanged: (String val) {},
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: kPrimary,
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(45.0),
                      )),
                  child: Container(
                    height: 45.0,
                    alignment: Alignment.center,
                    child: Text(
                      'Mek wi chat!',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            fontSize: 18.0,
                            color: const Color(0xFF3E2723),
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
              ),
              const Spacer(flex: 2)
            ],
          ),
        ),
      ),
    );
  }

  _logo(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        // Text(
        //   'Talk!',
        //   style: Theme.of(context)
        //       .textTheme
        //       .headlineSmall
        //       ?.copyWith(fontWeight: FontWeight.bold),
        // ),
        SizedBox(width: 8.0),
        Logo(),
        SizedBox(width: 8.0),
        // Text(
        //   'Talk!',
        //   style: Theme.of(context)
        //       .textTheme
        //       .headlineSmall
        //       ?.copyWith(fontWeight: FontWeight.bold),
        // ),
      ],
    );
  }
}
