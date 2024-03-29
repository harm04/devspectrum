import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String email;
  final String username;
  final String password;
  final String photoUrl;
  final String uid;
  final String bio;
  final List followers;
  final List following;

  const User(
      {required this.email,
      required this.password,
      required this.photoUrl,
      required this.username,
      required this.uid,
      required this.bio,
      required this.followers,
      required this.following
      });

  Map<String, dynamic> toJson() => {
        'username': username,
        'email': email,
        'password': password,
        'photoUrl': photoUrl,
        'uid': uid,
        'bio': bio,
        'followers':followers,
        'following':following,
      };

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return User(
      username: snapshot['username'],
      email: snapshot['email'],
      password: snapshot['password'],
      uid: snapshot['uid'],
      bio: snapshot['bio'],
      photoUrl: snapshot['photoUrl'],
      followers: snapshot['followers'],
      following: snapshot['following'],
      
    );
  }

  
}
