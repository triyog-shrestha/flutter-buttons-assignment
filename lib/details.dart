import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    String img1 =
        "https://imgs.search.brave.com/bXPv3JExR9GrzxsPyxRwv_zrXDKz-5_JaSBs2hCxXfU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9ydXN0/YW5kd2F4LmNvbS9j/ZG4vc2hvcC9wcm9k/dWN0cy9NYWNNaWxs/ZXItRGl2aW5lRmVt/aW5pbmUuanBnP3Y9/MTYxMjk4NTI3MyZ3/aWR0aD0xMjE0";
    String img2 = "https://imgs.search.brave.com/s2GmfXubFC_YuhB_VfYQqdE-j_DSXVxyxJXGe6NZqeI/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9wcmV2/aWV3LnJlZGQuaXQv/d2hhdHMteW91ci1m/YXZvcml0ZS1tYWMt/bWlsbGVyLXBob3Rv/LXYwLXJpdDZ5dHYx/YmpmYjEuanBlZz93/aWR0aD0xNTAwJmZv/cm1hdD1wanBnJmF1/dG89d2VicCZzPTgz/NDBhYmFlMjE4YWY4/MDk5N2JkNGYzM2I4/MWM0ZjMxYTkzMjQx/NDE";
    String img3 = "https://imgs.search.brave.com/v3qOtcxj7Nq50J1vjHUrGdNsPZljquHR7Xw_p9B0MOE/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pYW1z/YWhhcmFyb3NlLmNv/bS93cC1jb250ZW50/L3VwbG9hZHMvMjAy/Mi8wNC9UaGUtZmVt/aW5pbmUtaXMtYWJv/dXQtY2FyaW5nLWZv/ci1odW1hbml0eS0x/LnBuZw";
    String img4="https://imgs.search.brave.com/DnhJGrdXhtWdrswqy2Dw7eI2fpZ62doTADEzVcxcLX8/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzEwLzBm/Lzk2LzEwMGY5NjA4/NWZmYzQ4ZTcwNjE3/YTAyYzgxN2FiMjJm/LmpwZw";
    String h1 =
        "The Divine Feminine is Mac Miller's fourth studio album, released in September 2016 on REMSOUND and Warner Bros. Records. It's a warm, jazz-influenced record about love, intimacy, and the women in his life, and it marks a clear shift from the darker, more introspective tone of his earlier work.";
    String h2 =
        "The album leans into live instrumentation: soulful keys, funk and R&B grooves, and lush, layered production. Mac handled much of the production himself under his alias Larry Fisherman, alongside collaborators including Dsplit Persona, Nosaj Thing, and others. His vocals are more melodic here, and he sings as much as he raps.";
    String h3 =
        "The title refers to the idea of honoring feminine energy: love, respect, and gratitude toward partners, mothers, and women in general. Songs cover new romance, desire, vulnerability, and commitment, and the album closes on a more reflective note about relationships and personal growth.";
    const Color green = Color(0xFF1B6B1B);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
        toolbarHeight: 75,
        centerTitle: true,
        backgroundColor: green,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "The Divine Feminine",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "- Mac Miller, 2016",
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 20),
                const Divider(),
                const SizedBox(height: 20),
                const Text(
                  "Intro",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  h1,
                  style: const TextStyle(fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 16),
                Center(
                  child: Image.network(
                    img1,
                    height: 350,
                    width: 350,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                const Divider(),
                const SizedBox(height: 20),
                const Text(
                  "Sound",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Center(
                  child: Image.network(
                    img2,
                    height: 350,
                    width: 350,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  h2,
                  style: const TextStyle(fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 20),
                const Divider(),
                const SizedBox(height: 20),
                const Text(
                  "Themes",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Center(
                  child: Image.network(
                    img3,
                    height: 350,
                    width: 350,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  h3,
                  style: const TextStyle(fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 20),
                const Divider(),
                const SizedBox(height: 20),
                const Text(
                  "Notable tracks and features",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Center(
                  child: Image.network(
                    img4,
                    height: 350,
                    width: 350,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 8),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      const TextSpan(
                        style: TextStyle(fontSize: 15),
                        children: [
                          TextSpan(text: "1. "),
                          TextSpan(
                            text: "'Dang!'",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: " "),
                          TextSpan(
                            text: "(feat. Anderson .Paak)",
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          TextSpan(text: ": an upbeat, groove-driven single"),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 6),
                    Text.rich(
                      const TextSpan(
                        style: TextStyle(fontSize: 15),
                        children: [
                          TextSpan(text: "2. "),
                          TextSpan(
                            text: "'We'",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: " "),
                          TextSpan(
                            text: "(feat. CeeLo Green)",
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          TextSpan(
                              text:
                                  ": a soulful, bright track about connection"),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 6),
                    Text.rich(
                      const TextSpan(
                        style: TextStyle(fontSize: 15),
                        children: [
                          TextSpan(text: "3. "),
                          TextSpan(
                            text: "'My Favorite Part'",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: " "),
                          TextSpan(
                            text: "(with Ariana Grande)",
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          TextSpan(text: ": a playful duet"),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 6),
                    Text.rich(
                      const TextSpan(
                        style: TextStyle(fontSize: 15),
                        children: [
                          TextSpan(text: "4. "),
                          TextSpan(
                            text: "'Skin'",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: ": a smooth, intimate standout"),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 6),
                    Text.rich(
                      const TextSpan(
                        style: TextStyle(fontSize: 15),
                        children: [
                          TextSpan(text: "5. "),
                          TextSpan(
                            text: "'Soulmate'",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                              text:
                                  ": a spoken-word piece that closes the album"),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Divider(),
                const SizedBox(height: 20),
                FilledButton.icon(onPressed: (){},
                        label: Text("Logout"),
                        style: FilledButton.styleFrom(
                          fixedSize: Size(350, 50),
                          backgroundColor: green
                        ),
                        icon: Icon(Icons.logout),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
