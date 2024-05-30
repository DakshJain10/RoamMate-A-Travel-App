import 'package:flutter/material.dart';

class ChatbotScreen extends StatefulWidget {
  @override
  _ChatbotScreenState createState() => _ChatbotScreenState();
}

class _ChatbotScreenState extends State<ChatbotScreen> {
  final List<String> messages = []; // List to store chat messages
  final TextEditingController controller =
      TextEditingController(); // Controller for input field

  // Function to handle sending a message
  void sendMessage(String message) {
    setState(() {
      messages.add(message); // Add message to list
      controller.clear(); // Clear input field
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chatbot'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(messages[index]), // Display message
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), // Border radius
                border: Border.all(color: Colors.grey), // Border color
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: controller,
                      decoration: InputDecoration(
                        hintText: 'Type your message...',
                        border: InputBorder
                            .none, // Remove TextField's default border
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 10), // Adjust padding
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {
                      if (controller.text.isNotEmpty) {
                        sendMessage(controller.text);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
