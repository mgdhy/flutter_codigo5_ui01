import 'package:flutter/material.dart';
import 'package:flutter_codigo5_ui/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class SportPage extends StatelessWidget {
  const SportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.menu),
                    Icon(Icons.notifications_none),
                  ],
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Text(
                  "Hello Manuel",
                  style: GoogleFonts.poppins(),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Welcome back!",
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 22.0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    width: double.infinity,
                    height: 230.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "https://images.pexels.com/photos/949126/pexels-photo-949126.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        ),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.8),
                                Colors.transparent,
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xffFE006F),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                child: Text(
                                  "Regístrate Ahora",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categorías",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 17.0,
                      ),
                    ),
                    Text(
                      "Ver más",
                      style: GoogleFonts.poppins(
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16.0,
                ),
                GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  childAspectRatio: 2.5,
                  children: [
                    ItemGridWidget(
                      text: "Swimming",
                      image: "swimming",
                    ),
                    ItemGridWidget(
                      text: "Basketball",
                      image: "basketball",
                    ),
                    ItemGridWidget(
                      text: "Football",
                      image: "football",
                    ),
                    ItemGridWidget(
                      text: "Boxing",
                      image: "boxing",
                    ),
                    ItemGridWidget(
                      text: "Swimming",
                      image: "swimming",
                    ),
                    ItemGridWidget(
                      text: "Basketball",
                      image: "basketball",
                    ),
                    ItemGridWidget(
                      text: "Football",
                      image: "football",
                    ),
                    ItemGridWidget(
                      text: "Boxing",
                      image: "boxing",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Booking terfavorit",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 17.0,
                      ),
                    ),
                    Text(
                      "Ver más",
                      style: GoogleFonts.poppins(
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: const [
                      CardWidget(),
                      CardWidget(),
                      CardWidget(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.only(right: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.camera,
                    size: 16,
                  ),
                  const SizedBox(
                    width: 7.0,
                  ),
                  Text(
                    "hola mundo",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.montserrat(
                      color: kColorPrimaryParking,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    size: 16,
                  ),
                  const SizedBox(
                    width: 7.0,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.montserrat(
                      color: kColorPrimaryParking.withOpacity(0.3),
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class ItemGridWidget extends StatelessWidget {
  String text;
  String image;

  ItemGridWidget({
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 12.0,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 6.0,
        vertical: 6,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              blurRadius: 10,
              offset: const Offset(4, 4),
            ),
          ]),
      child: Row(
        children: [
          Image.asset(
            'assets/images/$image.png',
          ),
          const SizedBox(
            width: 10.0,
          ),
          Text(
            text,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 13.0),
          ),
        ],
      ),
    );
  }
}
