import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SuccessDialog extends StatefulWidget {
  final Function onSendMessage;
  final Function onTrackService;

  const SuccessDialog({Key? key, required this.onSendMessage, required this.onTrackService}) : super(key: key);

  @override
  _SuccessDialogState createState() => _SuccessDialogState();
}

class _SuccessDialogState extends State<SuccessDialog> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 414,
        height: 420,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Color(0xFF1F222A),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 295,
              child: Text(
                'Pagamento efetuado',
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
            SizedBox(height: 20), // Added space between title and image
            Container(
              width: 205.96,
              height: 188.14,
              child: SvgPicture.asset('assets/images/ok.svg'),
            ),
            SizedBox(height: 20), // Added space between image and buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    widget.onSendMessage();
                  },
                  child: Container(
                    width: 150,
                    height: 55,
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10), // Adjusted padding
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Color(0xFF5A5B5F),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                    ),
                    child: Center(
                      child: Text(
                        'Enviar mensagem',
                        style: TextStyle(
                          color: Color(0xFFFBFBFB),
                          fontSize: 12, // Decreased font size
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.28,
                        ),
                        maxLines: 1, // Ensure text is in one line
                        overflow: TextOverflow.ellipsis, // Handle overflow
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    widget.onTrackService();
                  },
                  child: Container(
                    width: 150,
                    height: 55,
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10), // Adjusted padding
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Color(0xFF7E49FF),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                    ),
                    child: Center(
                      child: Text(
                        'Acompanhar serviço',
                        style: TextStyle(
                          color: Color(0xFFFBFBFB),
                          fontSize: 12, // Decreased font size
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.28,
                        ),
                        maxLines: 1, // Ensure text is in one line
                        overflow: TextOverflow.ellipsis, // Handle overflow
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void showSuccessDialog(BuildContext context, Function onSendMessage, Function onTrackService) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    isDismissible: false,
    builder: (BuildContext context) {
      return SuccessDialog(onSendMessage: onSendMessage, onTrackService: onTrackService);
    },
  );
}