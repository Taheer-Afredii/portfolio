import 'package:tahir_portfolio/res/constants.dart';

class Project {
  final String? name;
  final String? description;
  final String? image;
  final String? link;
  final List? imageList;
  final bool? isList;
  Project(
      {this.name,
      this.description,
      this.image,
      this.link,
      this.isList,
      this.imageList});
}

List<Project> projectList = [
  Project(
    name: 'Kitchen Book',
    description:
        'dynamic and user-friendly online food application built with Flutter, a versatile and efficient cross-platform framework. This app seamlessly connects kitchen owners, users, and riders in a streamlined food delivery ecosystem.',
    image: 'assets/images/coffee.png',
    link: 'https://github.com/Hamad-Anwar/Coffe-Shop-Beautifull-UI',
    isList: true,
    imageList: kitchenBookList,
  ),
  Project(
      name: 'EYOBOY - Flutter E-commerce App',
      description:
          'EYOBOY is a feature-rich e-commerce application built with Flutter, a versatile and efficient cross-platform framework. This app offers a seamless shopping experience, allowing users to browse and purchase products from a wide range of categories.',
      image: 'assets/images/car.png',
      link: 'https://github.com/Hamad-Anwar/Car-Controller-Getx-Flutter',
      isList: true,
      imageList: psgList),
  Project(
      name: 'ONLINE SERVICE APP',
      description:
          'ONLINE SERVICE APP is a comprehensive Flutter-based application that offers a wide range of services, including plumbing, electrical, and carpentry. This app provides a seamless user experience, allowing users to book services, track orders, and manage payments.',
      image: 'assets/images/alarm.jpg',
      link: 'https://github.com/Hamad-Anwar/Neumorphic-Analog-Clockify',
      isList: true,
      imageList: app78List),
  Project(
    name: 'GSSA',
    description:
        'GSSA app is the student access point for the Global Skill Seekers Award. Children are tasked with multiple challenges pertaining to daily life. The app provides students access to their assigned tasks and challenges and requires them to upload theoretical evidence and evaluations for each task.',
    image: 'assets/images/cui.png',
    link: 'https://github.com/Hamad-Anwar/',
    isList: true,
    imageList: schoolList,
  ),
  Project(
      name: 'Doctor Appointment Application',
      description:
          'Introducing the extraordinary "Doctor Appointment System" - a state-of-the-art Flutter UI application that redefines healthcare accessibility and efficiency. Seamlessly crafted, this app empowers users to effortlessly select doctors based on categories, engage in smooth messaging, and access detailed profiles.',
      image: 'assets/images/doctor.png',
      link: 'https://github.com/Hamad-Anwar/Doctor-Appointment-Application-UI',
      isList: true,
      imageList: holhealthList),
  // Project(
  //   name: 'Flutter Music Streaming Application',
  //   description:
  //       'A Flutter music streaming application that allows users to play audio files from local storage. The app features a beautiful neumorphic UI design and provides a smooth user experience for browsing and playing music.',
  //   image: 'assets/images/player.png',
  //   link: 'https://github.com/Hamad-Anwar/Neumorphic-Music_Player-Flutter',
  //   isList: false,
  //   imageList: [],
  // ),

  Project(
    name: 'ADDI BUDDY',
    description:
        'ADDI BUDDY is a comprehensive Flutter-based application that offers a wide range of services, including fakeCall, Location sharing, and SOS.',
    image: 'assets/images/recipe.png',
    link: 'https://github.com/Hamad-Anwar/Food-Recipe-App-Flutter',
    isList: true,
    imageList: addibuddyList,
  ),
  // Project(
  //     name: 'Task Sync Pro',
  //     description:
  //         'Welcome to the Beautiful Task Scheduler App repository! This Flutter-based task management application combines elegant design with a robust backend, ensuring a seamless and organized task management experience. From stunning UI to real-time synchronization, this app has you covered.',
  //     image: 'assets/images/task.png',
  //     link: 'https://github.com/Hamad-Anwar/Task-Sync-Pro-Flutter',
  //     isList: false,
  //     imageList: []),
  // Project(
  //     name: 'Flutter Chat Application with Firebase',
  //     description:
  //         'Welcome to our innovative Flutter chat application! This feature-rich messaging platform allows users to connect and communicate seamlessly through text and images. The app is built using Flutter for the frontend and integrates with Firebase for backend services, including authentication, real-time database, and storage.',
  //     image: 'assets/images/chat.png',
  //     link: 'https://github.com/Hamad-Anwar/Messenger-App-Backend-Firebase',
  //     isList: false,
  //     imageList: []),
];
