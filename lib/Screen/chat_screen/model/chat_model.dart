class ChatMessage {
  String messageContent;
  String messageType;
  bool isRead;
  final DateTime? time;
  ChatMessage({
    required this.messageContent,
    required this.messageType,
    required this.isRead,
    this.time ,
  });
}
