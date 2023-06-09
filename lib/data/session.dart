import 'dart:convert';

import 'package:talk/models/session.dart';

List<Session> dialogs = [
  Session(
    id: "e80c0552-3027-414c-b208-4031fe730f3d",
    name: "孙悟空",
    text: "Awesome Setup",
    image: "assets/avatar1.png",
    unReadMessageCount: 3,
    timestrap: DateTime.now(),
  ),
  Session(
    id: "5547abe4-386e-45c0-af0a-ad9cc9b82e59",
    name: "Glady's Murphy",
    text: "That's Great",
    image: "assets/avatar2.png",
    timestrap: DateTime.now(),
  ),
  Session(
    id: "6ce0d362-61be-484b-b4bd-bdcaa1fa17a5",
    name: "Jorge Henry",
    text: "Hey where are you?",
    image: "assets/avatar3.png",
    timestrap: DateTime.now(),
    unReadMessageCount: 5,
  ),
  Session(
    id: "7debabfc-ec2e-4221-8ca7-936b912df197",
    name: "唐三藏",
    text: "Busy! Call me in 20 mins",
    image: "assets/avatar4.png",
    timestrap: DateTime.now(),
  ),
  Session(
    id: "d07ae434-6fc8-458e-9752-cac24e49dbd8",
    name: "Debra Hawkins",
    text: "Thankyou, It's awesome",
    image: "assets/avatar5.png",
    timestrap: DateTime.now(),
  ),
  Session(
    id: "d5b06c5e-039a-46a3-866a-fc05f5d49d3f",
    name: "Jacob Pena",
    text: "will update you in evening",
    image: "assets/avatar6.png",
    timestrap: DateTime.now(),
    unReadMessageCount: 4,
  ),
  Session(
      id: "d5b06c5e-039a-46a3-866a-fc05f5d49d3f",
      name: "猪八戒",
      text: "Can you please share the file?",
      image: "assets/avatar7.png",
      timestrap: DateTime.now()),
  Session(
    id: "e80c0552-3027-414c-b208-4031fe730f3d",
    name: "John Wick",
    text: "How are you?",
    image: "assets/avatar8.png",
    timestrap: DateTime.now(),
    unReadMessageCount: 100,
  ),
  // Session(
  //   name: "Jane Russel",
  //   text: "Awesome Setup",
  //   image: "assets/avatar9.png",
  //   timestrap: DateTime.now(),
  //   unReadMessageCount: 6,
  // ),
  // Session(
  //   name: "白龙马",
  //   text: "That's Great",
  //   image: "assets/avatar10.png",
  //   timestrap: DateTime.now(),
  //   unReadMessageCount: 10,
  // ),
];
