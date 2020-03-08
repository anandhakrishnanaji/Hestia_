import 'package:flutter/material.dart';

class Login2 extends StatelessWidget {
  static final routeName = '/about';
  Widget quote(
    String text,
  ) {
    return Container(
        padding: EdgeInsets.only(top: 55),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ));
  }

  Widget photo(
    String link,
  ) {
    return Container(
      padding: EdgeInsets.only(top: 40),
      child: Image.network(link),
    );
  }

  Widget about() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 30,
        ),
        photo('https://i.dlpng.com/static/png/6859105_preview.png'),
        quote('Money making now made easier.Easily monitize your products'),
        photo(
            'https://www.kindpng.com/picc/m/476-4763522_24-7-vector-png-transparent-png.png'),
        quote('24 x 7 Service available'),
        photo(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ4Q2aFrOADTEhE9Y3LdbfhgcOyMyFqqTKhVy0jBVn4d4a63zyv'),
        quote('100% percent security to your valuable data'),
        photo('https://img.icons8.com/ios/500/easy.png'),
        quote('Easier than easy to use'),
        photo(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRmRkkfpgVKgt27rxioCDGJVpIxF_r8sRPRmHFalCecbncD9tia'),
        quote('Rush free ordering facility to your Customers'),
        SizedBox(
          height: 50,
        ),
        photo(
            'https://www.netclipart.com/pp/m/160-1604461_eps-vector-art-work-png.png'),
        quote('HOW IT WORKS!!'),
        SizedBox(
          height: 20,
        ),
        Text(
          '1.Register yourself in the ShopEazy App representing your shop/store\n\n2.Simply add various Categories and different products under them in 2 simple steps\n\n3.Submit and publish the generated link or QR code in your shop \n\n4.The customers van buy your products through the link published and you will be notified.\n\nThen what to wait ?\n\nPack them!! ',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          color: Colors.grey.withOpacity(0.4),
          child: Column(
            children: <Widget>[
              Text(
                'Contact us on:',
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.copyright),
                  Text(
                    'ShopEazy 2020',
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: about()),
    );
  }
}
