import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class AiChatScreen extends StatefulWidget {
  const AiChatScreen({super.key});

  @override
  State<AiChatScreen> createState() => _AiChatScreenState();
}

class _AiChatScreenState extends State<AiChatScreen> {
  String? outputData;
  String? questionText;
  FocusNode focusNode = FocusNode();
  bool isLoading = false;
  final TextEditingController _controller = TextEditingController();

  Future<void> generateOpenAIAnswer(String prompt) async {
    var headers = {
      'Content-Type': 'application/json',
      'model': 'gpt-4-0314',
      'Authorization':
          'Bearer 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'
    };
    var request = http.Request(
        'POST', Uri.parse('https://api.openai.com/v1/chat/completions'));
    request.body = json.encode({
      "model": "gpt-4-0314",
      "messages": [
        {"role": "user", "content": prompt}
      ],
      "max_tokens": 50
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    String message;

    if (response.statusCode == 200) {
      message = jsonDecode(await response.stream.bytesToString())['choices'][0]
          ['message']['content'];
      if (kDebugMode) {
        print(message);
      }
    } else {
      message = response.reasonPhrase!;
      if (kDebugMode) {
        print(response.reasonPhrase);
      }
    }

    setState(() {
      isLoading = false;
      outputData = message;
    });
  }

  Widget resultOutput(
    String question,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        children: [
          Text(
            question,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          Text(
            outputData ?? '',
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.w400, height: 1.4),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AI Chat Screen')),
      body: Column(
        children: [
          Expanded(
              child: isLoading
                  ? Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Column(
                        children: [
                          Text(
                            questionText ?? '',
                            style: const TextStyle(fontSize: 16),
                          ),
                          const SizedBox(height: 20),
                          const Expanded(
                              child:
                                  Center(child: CircularProgressIndicator())),
                        ],
                      ),
                    )
                  : outputData == null
                      ? const Center(
                          child: Text('your response will appear here'))
                      : resultOutput(questionText ?? '')),
          Container(
            height: 60,
            decoration: const BoxDecoration(color: Colors.white),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green.shade400,
                  child: const Icon(
                    Icons.person_outline,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: 45,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade500),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      controller: _controller,
                      onChanged: (value) {
                        _controller.value = _controller.value.copyWith(
                          text: value,
                          selection: TextSelection(
                              baseOffset: value.length,
                              extentOffset: value.length),
                          composing: TextRange.empty,
                        );
                        // print(_controller.text);
                      },
                      focusNode: focusNode,
                      cursorColor: const Color(0XFF0A3E45),
                      cursorWidth: 1.5,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10, right: 10),
                          border: InputBorder.none,
                          hintText: 'Write your query'),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Material(
                  child: IconButton(
                    visualDensity:
                        const VisualDensity(horizontal: -4.0, vertical: -4.0),
                    splashRadius: 20,
                    onPressed: () {
                      setState(() {
                        isLoading = true;
                        questionText = _controller.text;
                      });
                      _controller.clear();
                      generateOpenAIAnswer(_controller.text);
                    },
                    icon: Icon(Icons.send, color: Colors.grey.shade500),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
