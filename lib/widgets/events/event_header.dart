import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class EventHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset.zero,
                blurRadius: 3,
                spreadRadius: -1,
                color: Color(0xFF999999),
              )
            ],
            color: Color(0xFFFFFFFF),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.fromLTRB(20, 20, 5, 5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFBBBBBB), width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    "15 december 1995",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF999999),
                    ),
                  )),
              Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    "desctiption here we will add this. this is nice to meet you example flow.",
                    textAlign: TextAlign.justify,
                  )),
              Container(
                child: Image.network(
                    "https://i2.wp.com/velivada.com/wp-content/uploads/2020/04/indian-leader-dr-bhimrao-ambedkar-jayanti.jpg?resize=876%2C489&ssl=1"),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Text(
                  "Ambedkar was a prolific student, earning doctorates in economics from both Columbia University and the London School of Economics, gaining reputation as a scholar for his research in law, economics and political science.[13] In his early career, he was an economist, professor, and lawyer. His later life was marked by his political activities; he became involved in campaigning and negotiations for India's independence, publishing journals, advocating political rights and social freedom for Dalits, and contributing significantly to the establishment of the state of India. In 1956, he converted to Buddhism, initiating mass conversions of Dalits.",
                  style: GoogleFonts.sairaCondensed(
                    color: Color(0xFF444444),
                    // letterSpacing: 1.1,
                    // wordSpacing: 1.2,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                child: YoutubePlayer(
                  controller:
                      YoutubePlayerController(initialVideoId: "8Cq7TohY72w"),
                  showVideoProgressIndicator: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
