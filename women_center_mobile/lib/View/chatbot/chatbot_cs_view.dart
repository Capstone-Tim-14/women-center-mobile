import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ChatBotScreen extends StatefulWidget {
  @override
  _ChatBotScreenState createState() => _ChatBotScreenState();
}

class _ChatBotScreenState extends State<ChatBotScreen> {
  TextEditingController messageController = TextEditingController();
  List<ChatMessage> chatMessages = [];
  bool isHelperGreeting = true;

  Future<String> getOpenAIResponse(String userInput) async {
    // Ganti 'YOUR_OPENAI_API_KEY' dengan API key yang valid dari OpenAI
    String apiKey = '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';
    String endpoint =
        'https://api.openai.com/v1/engines/davinci-codex/completions';
    Map<String, String> headers = {
      'Authorization': 'Bearer $apiKey',
      'Content-Type': 'application/json',
    };

    // Buat payload untuk permintaan kepada OpenAI
    Map<String, dynamic> requestBody = {
      'prompt': userInput,
      'max_tokens': 50, // Jumlah token maksimum untuk respons
    };

    // Kirim permintaan ke OpenAI API
    var response = await http.post(Uri.parse(endpoint),
        headers: headers, body: json.encode(requestBody));

    if (response.statusCode == 200) {
      // Parsing respons dari OpenAI
      Map<String, dynamic> data = json.decode(response.body);
      return data['choices'][0]['text'].toString();
    } else {
      // Jika permintaan gagal, kembalikan pesan kesalahan
      return 'Maaf, ada masalah dalam mengambil respons.';
    }
  }

  void _addChatMessage(String text, {bool isBotResponse = false}) {
    ChatMessage message = ChatMessage(text: text, isBotResponse: isBotResponse);
    setState(() {
      chatMessages.add(message);
    });
  }

  Future<void> _getChatBotResponse(String query) async {
    String response;

    if (query.toLowerCase().contains('cara memperbarui kata sandi')) {
      response = await getOpenAIResponse(query);
    } else if (query.toLowerCase().contains('terimakasih')) {
      response = 'Sama-sama. Apakah ada pertanyaan lain lagi?';
    } else if (query.toLowerCase().contains('cara membeli paket konseling')) {
      response = await getOpenAIResponse(query);
    } else if (query.toLowerCase().contains('tidak ada lagi')) {
      response = 'Baik, jika tidak ada lagi. Senang bisa membantu kamu.';
    } else {
      response = 'Maaf, saya belum paham pertanyaan kamu.';
    }

    _addChatMessage(response, isBotResponse: true);
  }

  void _handleSubmittedMessage(String text) {
    if (text.isNotEmpty) {
      if (isHelperGreeting) {
        _addChatMessage(
            'Hai $text. Kenalin aku Helper yang akan membantu kamu. Apakah ada yang bisa aku bantu?',
            isBotResponse: true);
        isHelperGreeting = false;
      } else {
        _addChatMessage('$text', isBotResponse: false);
        _getChatBotResponse(text);
      }
      messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer Service Chat'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: chatMessages.length,
              itemBuilder: (context, index) {
                final message = chatMessages[index];
                final isBotMessage = message.isBotResponse;

                return ChatBubble(
                  message: message,
                  isBot: isBotMessage,
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
                    controller: messageController,
                    onSubmitted: _handleSubmittedMessage,
                    decoration: InputDecoration(
                      labelText: 'Send a message...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    _handleSubmittedMessage(messageController.text);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatMessage {
  final String text;
  final bool isBotResponse;

  ChatMessage({required this.text, this.isBotResponse = false});
}

class ChatBubble extends StatelessWidget {
  final ChatMessage message;
  final bool isBot;

  ChatBubble({required this.message, required this.isBot});

  @override
  Widget build(BuildContext context) {
    Color botTextColor = Colors.white;

    return Row(
      mainAxisAlignment:
          isBot ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: <Widget>[
        isBot ? _buildProfileAvatar() : SizedBox(),
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Column(
              crossAxisAlignment:
                  isBot ? CrossAxisAlignment.start : CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Text(
                    isBot ? 'Helper' : 'You',
                    style: TextStyle(fontSize: 15, color: Colors.grey[600]),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: isBot ? Color(0xFFF4518D) : Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    message.text,
                    style: TextStyle(
                      fontSize: 18,
                      color: isBot ? botTextColor : Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        !isBot ? _buildProfileAvatar() : SizedBox(),
      ],
    );
  }

  Widget _buildProfileAvatar() {
    return CircleAvatar(
      radius: 16,
      backgroundImage: isBot
          ? AssetImage('assets/bot_profile.jpg')
          : AssetImage('assets/user_profile.jpg'),
    );
  }
}
