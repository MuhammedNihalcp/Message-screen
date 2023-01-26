class ChatMessage {
  String messageContent;
  String messageType;
  bool isRead;
  DateTime? time;
  ChatMessage({
    required this.messageContent,
    required this.messageType,
    required this.isRead,
  });
}
