import 'package:flutter/material.dart';

class LoadingDialog extends StatefulWidget {
  final Function onTimeout;

  const LoadingDialog({Key? key, required this.onTimeout}) : super(key: key);

  @override
  _LoadingDialogState createState() => _LoadingDialogState();
}

class _LoadingDialogState extends State<LoadingDialog> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      if (mounted) {
        Navigator.of(context).pop();
        widget.onTimeout();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
        widget.onTimeout();
      },
      child: Container(
        width: double.infinity,
        height: 200, // Adjusted height to prevent overflow
        padding: const EdgeInsets.all(16.0), // Adjusted padding to prevent overflow
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Color(0xFF1F222A),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center, // Centered content vertically
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF7E49FF)),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 295,
              child: Text(
                'Carregando...',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF7E49FF),
                  fontSize: 25,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w800,
                  height: 1.40,
                  letterSpacing: 0.50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void showLoadingDialog(BuildContext context, Function onTimeout) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    isDismissible: false,
    builder: (BuildContext context) {
      return LoadingDialog(onTimeout: onTimeout);
    },
  );
}