import 'package:clean_community/models/user.dart';

class Post {
  String date;
  Location location;
  String description;
  List<String> imageUrls;
  User user;
  Post(
      {required this.user,
      required this.date,
      required this.description,
      required this.imageUrls,
      required this.location});
}

class Location {
  String address;
  double lat;
  double long;

  Location({required this.address, required this.lat, required this.long});
}

class TestData {
  static List<Post> getTestPosts() {
    return posts;
  }
}

List<Post> posts = [
  Post(
      user: User(
          profileUrl:
              "https://images.unsplash.com/photo-1584692098188-e1185870b0f8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2370&q=80",
          userName: "Kanan Balakrishnan"),
      date: "17 Dec",
      description:
          "Our road has been dirty for a long time. Please help us to clean this road. We live on this road, and want it to be cleaner and more sanitary. Thank you.",
      location: Location(
          address: "24th Main Road, JP Nagar", lat: 12.2232, long: 23.2323),
      imageUrls: [
        "https://images.unsplash.com/photo-1570168305673-42708ac64073?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1834&q=80",
        "https://images.unsplash.com/photo-1653716191173-6d5644550f89?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1481&q=80",
      ]),
  Post(
      user: User(
          profileUrl:
              "https://images.unsplash.com/photo-1629264903803-adb51d99a206?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1441&q=80",
          userName: "Naya Anthony"),
      date: "23 Dec",
      description:
          "We want to clean our road, please help us to do so. Snacks will be provided.",
      location: Location(
          address: "4th Main Road, JP Nagar", lat: 12.2232, long: 23.2323),
      imageUrls: [
        "https://jacksonfreepress.media.clients.ellingtoncms.com/img/photos/2021/12/06/trash-jon-tyson-unsplash-web_t670.jpg?b3f6a5d7692ccc373d56e40cf708e3fa67d9af9d=",
        "https://images.unsplash.com/photo-1598105397032-3d0e18709c05?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1335&q=80",
      ]),
  Post(
      user: User(
          profileUrl:
              "https://images.unsplash.com/photo-1587023534868-c86d3b570855?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80",
          userName: "Amar Babu"),
      date: "18 Dec",
      description:
          "Please help us clean this area. We would greatly appreciate it.",
      location: Location(address: "Cubban Park", lat: 12.9779, long: 77.5952),
      imageUrls: [
        "https://media.gettyimages.com/id/471715792/photo/afternoon-in-jodhpur.jpg?s=612x612&w=gi&k=20&c=KlN9eX-5Lbg_s9KhURLLSe6palA5VHrc50qrqWSLp3U=",
      ])
];
