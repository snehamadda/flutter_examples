class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({this.name, this.message, this.time, this.avatarUrl});
}

  List<ChatModel> data = [
    ChatModel(
      name: "Sneha",
      message: "Hey Sneha, how are you today",
      time: "3:30PM",
      avatarUrl: 'https://picsum.photos/250?image=9',
    ),
    ChatModel(
      name: "Shylu",
      message: "Hey Shylu, how are you today",
      time: "3:30PM",
      avatarUrl: 'https://picsum.photos/250?image=9',
    ),
    ChatModel(
      name: "Dhuhi",
      message: "Hey Dhuu, how are you today",
      time: "3:30PM",
      avatarUrl: 'https://picsum.photos/250?image=9',
    ),
    ChatModel(
      name: "Guddu",
      message: "Hey Guddu, how are you today",
      time: "3:30PM",
      avatarUrl: 'https://picsum.photos/250?image=9',
    ),
    ChatModel(
      name: "SnehaShylu",
      message: "Hey ShyluSneha, how are you today",
      time: "3:30PM",
      avatarUrl: 'https://picsum.photos/250?image=9',
    ),
  ];

