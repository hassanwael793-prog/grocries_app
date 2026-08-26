import 'package:flutter/cupertino.dart';
import 'package:grocries_app/constants/app_colors.dart';

class ProfilInfo extends StatelessWidget {
  const ProfilInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 64,
          width: 64,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(27),
            image: DecorationImage(fit: BoxFit.contain
                ,image: Image.asset("image/shikabala.png").image),
          ),
        ),
        SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Shikabala",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
            Text("Imshuvo97@gmail.com",style: TextStyle(
              color: AppColors.grey,
              fontSize: 16,
            ),)
          ],
        )
      ],
    );
  }
}
