import 'package:flutter/material.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({Key? key}) : super(key: key);

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: getAppbar(),
      body: getBody(),

    );
  }

  getAppbar() {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      title: const Text(
        'My Downloads',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.collections_bookmark,
              size: 28,
            )),
        IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/profile.jpeg',
              height: 26,
              width: 26,
              fit: BoxFit.cover,
            ))
      ],
    );
  }

  getBody() {
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2)
          ),
          child: Row(
            children: const [
              Icon(Icons.info_outline, color: Colors.white,),
              SizedBox(width: 8,),
              Text('Smart Downloads', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              SizedBox(width: 4,),
              Text('ON', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),)
            ],
          ),
        ),
        const Spacer(),
        Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 150,
                width: 150,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                shape: BoxShape.circle
              ),
              child: Icon(Icons.download, color: Colors.grey.withOpacity(0.3), size: 80,),
            ),
          ],
        ),
        const SizedBox(height: 30,),
         Text('Nerver be without Netflix', style: Theme.of(context).textTheme.bodyText2?.copyWith(
           fontSize: 16, fontWeight: FontWeight.bold
         ),),
        const SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 55),
          child: Text('Download shows and movie so you\'ll never be witout somthing to watch even when you are offine', style: Theme.of(context).textTheme.bodyText2?.copyWith(
              fontSize: 16, fontWeight: FontWeight.bold,
            height: 1.4
          ), textAlign: TextAlign.center,),
        ),
        const SizedBox(height: 30,),
        Container(
          width: size.width * 0.85,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            color: Colors.white
          ),
          child: Center(child: Text('See What You Can Download', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),
        ),

        const Spacer(flex: 4,),




      ],
    );
  }
}
