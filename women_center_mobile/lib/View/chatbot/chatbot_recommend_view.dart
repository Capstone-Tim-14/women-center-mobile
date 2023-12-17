import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class UserProfile {
  final String username;
  final String profilePictureUrl;

  UserProfile({required this.username, required this.profilePictureUrl});


class ChatScreenAI extends StatefulWidget {
  @override
  _ChatScreenAIState createState() => _ChatScreenAIState();
}

class _ChatScreenAIState extends State<ChatScreenAI> {
  final TextEditingController _questionController = TextEditingController();
  List<Map<String, String>> chatHistory = [];
  UserProfile userProfile =
      UserProfile(username: 'Pengguna', profilePictureUrl: '');

  @override
  void initState() {
    super.initState();
    fetchUserProfile().then((userProfileData) async {
      setState(() {
        userProfile = userProfileData;
        _addToChatHistory(
          'Bot',
          'Halo, ${userProfile.username}. Saya AIS',
        );
        _addToChatHistory(
          'Bot',
          'Adakah yang bisa saya bantu?',
        );
      });

      await fetchDataAllHistory(); // Tunggu hingga fetchDataAllHistory selesai
    });
  }

  Future<void> fetchDataAllHistory() async {
    try {
      // Buat objek Dio
      Dio dio = Dio();
      // Pasang header Authorization pada request
      dio.options.headers['Authorization'] =
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMsImZ1bGxfbmFtZSI6ImFndW5nYmhhc2thcmEiLCJlbWFpbCI6ImFndW5nMTIzQGdtYWlsLmNvbSIsInJvbGUiOiJ1c2VyIiwiZXhwIjoxNzAyODUyMDk2fQ.t8lLoQzvI8EwxIZqOtMTDd0vWLed1NZ9WCT7tEeKpBk';
      // Panggil API dengan method GET
      Response response = await dio.get(
          'https://api-ferminacare.tech/api/v1/career/get-all-history-chat');

      // Lakukan sesuatu dengan data yang didapat
      if (response.statusCode == 200) {
        // Data berhasil didapat
        var data = response.data;
        // Lakukan sesuatu dengan data, contohnya tampilkan di console
        print("data dari all history : $data");

        // Extract chat history from the response and add it to the chatHistory list
        List historyData = data['data']['history_chat'];
        for (var chat in historyData) {
          _addToChatHistory('User', chat['question']);
          _addToChatHistory('Bot', chat['answer']);
        }
      } else {
        // Gagal mendapatkan data, tampilkan pesan error
        print('Gagal mendapatkan data: ${response.statusCode}');
      }
    } catch (e) {
      // Tangani error jika terjadi kesalahan dalam pemanggilan
      print('Error: $e');
    }
  }

  Future<void> generateRecommendationCareer() async {
    try {
      Dio dio = Dio();

      // Set the request headers
      dio.options.headers['Authorization'] =
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMsImZ1bGxfbmFtZSI6ImFndW5nYmhhc2thcmEiLCJlbWFpbCI6ImFndW5nMTIzQGdtYWlsLmNvbSIsInJvbGUiOiJ1c2VyIiwiZXhwIjoxNzAyODUyMDk2fQ.t8lLoQzvI8EwxIZqOtMTDd0vWLed1NZ9WCT7tEeKpBk';

      // Define the request body
      var data = {
        "message": _questionController.text,
      };

      // Make the POST request
      Response response = await dio.post(
        'https://api-ferminacare.tech/api/v1/career/generate-recommendation-career',
        data: data,
      );

      // Handle the response
      if (response.statusCode == 201) {
        print('Success: ${response.data}');
        String answer = response.data['data']['chat']['answer'];
        setState(() {
          _addToChatHistory('Bot', answer);
        });
        // Print the answer
        print('Answer: $answer');
      } else {
        print('Error: ${response.statusCode}');
      }
    } catch (e) {
      print('Exception: $e');
    }
  }

  Future<UserProfile> fetchUserProfile() async {
    String apiUrl = 'https://api-ferminacare.tech/api/v1/users/profile';
    String token =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMsImZ1bGxfbmFtZSI6ImFndW5nYmhhc2thcmEiLCJlbWFpbCI6ImFndW5nMTIzQGdtYWlsLmNvbSIsInJvbGUiOiJ1c2VyIiwiZXhwIjoxNzAyODUyMDk2fQ.t8lLoQzvI8EwxIZqOtMTDd0vWLed1NZ9WCT7tEeKpBk'; // Ganti dengan token bearer Anda

    try {
      Response response = await Dio().get(
        apiUrl,
        options: Options(headers: {
          'Authorization': 'Bearer $token',
        }),
      );

      Map<String, dynamic> userData = response.data['data'];

      return UserProfile(
        username: userData['username'],
        profilePictureUrl: userData['profile_picture'],
      );
    } catch (e) {
      print('Error fetching user profile: $e');
      return UserProfile(username: 'Pengguna', profilePictureUrl: '');
    }
  }

  void _addToChatHistory(String sender, String message) {
    setState(() {
      chatHistory.add({
        'sender': sender,
        'message': message,
      });
    });
  }

  Widget _buildChatBubble(String sender, String message) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment:
            sender == "Bot" ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: <Widget>[
          sender == "Bot"
              ? Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('Assets/images/bot.png'),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          constraints: const BoxConstraints(
                            maxWidth: 200.0,
                          ),
                          padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF4518D),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Text(
                            message,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              : Row(
                  children: [
                    Container(
                      constraints: const BoxConstraints(
                        maxWidth: 200.0,
                      ),
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(179, 195, 195, 195),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Text(
                        message,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(width: 8),
                    CircleAvatar(
                      backgroundImage:
                          NetworkImage(userProfile.profilePictureUrl),
                    ),
                  ],
                ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Color(0xFFFDCEDF), // Gunakan warna latar belakang yang diinginkan
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black, // Ubah warna tombol kembali menjadi hitam
          ),
          onPressed: () {
            // Tambahkan fungsi untuk kembali ke layar sebelumnya
          },
        ),
        title: Center(
          child: Text(
            'Karir',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: chatHistory.length,
              itemBuilder: (BuildContext context, int index) {
                return _buildChatBubble(
                  chatHistory[index]['sender']!,
                  chatHistory[index]['message']!,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: _questionController,
                    decoration: InputDecoration(
                      hintText: 'Enter your question...',
                      hintStyle: TextStyle(color: Colors.grey),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.mic),
                        onPressed: () {
                          // Tambahkan logika untuk speech-to-text di sini
                        },
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFF4518D),
                      ),
                    ),
                    IconButton(
                      icon: Transform.rotate(
                        angle: 315 * 3.14159265359 / 180,
                        child: Icon(Icons.send),
                      ),
                      onPressed: () {
                        if (_questionController.text.isNotEmpty) {
                          _addToChatHistory('User', _questionController.text);
                          generateRecommendationCareer();
                          _questionController.clear();

                          // Menampilkan indikator "sedang mengetik" sebelum bot memberikan jawaban
                          _addToChatHistory('Bot', 'AIS sedang mengetik...');

                          // Delay sebelum bot memberikan jawaban (ini contoh saja, Anda bisa menyesuaikan durasi)
                          Future.delayed(Duration(seconds: 15), () {
                            setState(() {
                              // Hapus indikator "sedang mengetik" dan tambahkan jawaban bot ke chat history
                              chatHistory.removeWhere((message) =>
                                  message['message'] ==
                                  'Bot sedang mengetik...');
                              generateRecommendationCareer(); // Panggil fungsi untuk menghasilkan rekomendasi karir
                            });
                          });
                        }
                      },
                      color: Colors.white,
                      iconSize: 30,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

mixin answer {}
