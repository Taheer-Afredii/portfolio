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
      name: 'Lum-mah',
      description:
          'The innovative rental platform is designed to offer a dynamic blend of accommodation and experience-sharing. With the app, you can explore an array of daily rental options that go beyond traditional lodging. From gathering spaces to swimming pool oases and BBQ areas, we\'ve curated a diverse selection of places to suit every occasion.Through the app, you can also list your own properties to travelers seeking residence. Offer your place, whether it\'s a home, a garden, or an activity hub. The user-friendly platform makes it easy to browse, book, and connect with hosts and guests worldwide.',
      image: 'assets/images/car.png',
      link: 'https://github.com/Hamad-Anwar/Car-Controller-Getx-Flutter',
      isList: true,
      imageList: lumMahList),
  Project(
    name: 'Enlist',
    description:
        "Enlist, the ultimate app for sports enthusiasts looking to connect, compete, and collaborate like never before. Whether you're a seasoned athlete or a casual sports fan, Enlist brings together individuals from all walks of life to share their passion for sports and form lasting connections.From pickup games to organized tournaments, users can create events and invite others to join in the fun. As an event host, showcase your skills and leadership while receiving valuable feedback from participants through reviews, helping to build your reputation within the community.Connect with fellow athletes, coaches, and fans by adding them as friends and engaging in text messaging right within the app.Looking for a community of like-minded individuals? Enlist allows users to create and join groups based on shared interests, sports preferences, or geographical location. Whether you're seeking training partners, discussing game strategies, or organizing group outings, Enlist provides a platform for meaningful connections and collaboration.",
    image: 'assets/images/coffee.png',
    link: 'https://github.com/Hamad-Anwar/Coffe-Shop-Beautifull-UI',
    isList: true,
    imageList: enlistList,
  ),
  // Project(
  //   name: 'Conscious Media',
  //   description:
  //       "Conscious Media, the revolutionary app designed to harness the collective power of social media for meaningful change. With a unique blend of entertainment, education, and action, CM is more than just a social platform—it's a global movement towards a better world.Whether you're an individual, a business, or an organization, CM provides a space for everyone to come together, inspire one another, and collaborate on initiatives that drive positive impact. From sharing inspiring stories and innovative ideas to organizing events and advocating for causes, CM empowers users to make a difference in their communities and beyond.Share anything and everything that aligns with our mission: photos, videos, links, ideas, tips, news, events, recommendations, and more. Engage with like-minded individuals, discover new perspectives, and join forces to tackle pressing issues facing our world today.",
  //   image: 'assets/images/coffee.png',
  //   link: 'https://github.com/Hamad-Anwar/Coffe-Shop-Beautifull-UI',
  //   isList: true,
  //   imageList: kitchenBookList,
  // ),
  Project(
    name: 'Kitchen Book',
    description:
        'With Kitchen Book, users can effortlessly explore nearby restaurants based on their current location, browse through enticing menus, and easily place orders, all through a seamless and intuitive interface. Users can keep track of their favorite spots by adding them to their personalized Favorites list. Stay updated with the latest offerings and promotions from local restaurants, and engage directly with owners through their posts, and stories. For restaurant owners, Kitchen Book provides comprehensive tools for managing orders, coordinating deliveries, and connecting with customers',
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
  // Project(
  //     name: 'ONLINE SERVICE APP',
  //     description:
  //         'ONLINE SERVICE APP is a comprehensive Flutter-based application that offers a wide range of services, including plumbing, electrical, and carpentry. This app provides a seamless user experience, allowing users to book services, track orders, and manage payments.',
  //     image: 'assets/images/alarm.jpg',
  //     link: 'https://github.com/Hamad-Anwar/Neumorphic-Analog-Clockify',
  //     isList: true,
  //     imageList: app78List),
  Project(
    name: 'GSSA',
    description:
        'With GSSA, students can effortlessly access assigned tasks and challenges, tailored to their age and skill level. The app allows children to upload proof of their accomplishments after completing various age-appropriate activities. Students receive personalized evaluations and feedback on their submissions, enhancing their learning journey. Easy to navigate interface making it easily accessible by students of young ages. The app has security measures to keep student data confidential at all times. ',
    image: 'assets/images/cui.png',
    link: 'https://github.com/Hamad-Anwar/',
    isList: true,
    imageList: schoolList,
  ),
  // Project(
  //     name: 'Doctor Appointment Application',
  //     description:
  //         'Introducing the extraordinary "Doctor Appointment System" - a state-of-the-art Flutter UI application that redefines healthcare accessibility and efficiency. Seamlessly crafted, this app empowers users to effortlessly select doctors based on categories, engage in smooth messaging, and access detailed profiles.',
  //     image: 'assets/images/doctor.png',
  //     link: 'https://github.com/Hamad-Anwar/Doctor-Appointment-Application-UI',
  //     isList: true,
  //     imageList: holhealthList),
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
