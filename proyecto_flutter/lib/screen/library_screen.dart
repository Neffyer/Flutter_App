import 'package:flutter/material.dart';
import 'package:proyecto_flutter/widgets/library_screen_widgets/downloads_section.dart';
import 'package:proyecto_flutter/widgets/library_screen_widgets/favorite_section.dart';
import 'package:proyecto_flutter/widgets/library_screen_widgets/library_images.dart';
import 'package:proyecto_flutter/widgets/library_screen_widgets/logout.dart';
import 'package:proyecto_flutter/widgets/library_screen_widgets/notification_section.dart';
import 'package:proyecto_flutter/widgets/library_screen_widgets/profile_widget.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 23, 23, 23),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.0, left: 20),
              child: Logout(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: ProfileWidget(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                "USER",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: NotificationSection(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: DownloadIcon(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: LibraryImages(
                          link:
                              "https://criticforhire.files.wordpress.com/2022/10/poster-4.jpg"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: LibraryImages(
                          link:
                              "https://legendary-digital-network-assets.s3.amazonaws.com/wp-content/uploads/2022/03/12181901/JJK_Movie_16x9_Twitter-Post-V2.jpg"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: LibraryImages(
                          link:
                              "https://akibamarket.com/wp-content/uploads/2020/06/poster-kimi-no-na-wa-horizontal-copia.jpg"),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: FavoriteSection(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: LibraryImages(
                          link:
                              "https://m.media-amazon.com/images/I/81eng4YeGdL.jpg"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: LibraryImages(
                          link:
                              "https://i.ebayimg.com/images/g/qnsAAOSwuO1hFjQS/s-l1200.webp"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: LibraryImages(
                          link:
                              "https://criticforhire.files.wordpress.com/2022/10/poster-4.jpg"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
