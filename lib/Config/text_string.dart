// ABOUT SECTION
import 'package:portfolio_app/Config/image_link.dart';

const String descriptionText =
    "As an enthusiastic developer, I am always eager to learn new technologies. I thrive in collaborative environments and enjoy contributing fresh ideas to team projects. Therefore, an opportunity for an internship would be a valuable and competitive achievement for me, helping bridge my skills with real-world experience.";
const String resumeTitle = "Frontend Developer | Backend Fundamentals";
const String aboutDescriptionText =
    "I began learning Flutter in 2022 and have since completed several courses, both online and offline. As a self-taught learner, I am committed to continuous improvement and consistently seek out new resources to deepen my understanding and sharpen my skills.";

const List<Map<String, String>> personalDetailsOne = [
  {"Birthday:": "01 Dec 1998"},
  {"Website:": "https://github.com/riadulIslam008/riadulIslam008.git"},
  {"Phone:": "+8801770139498"},
  {"City:": "Noakhali, Bangladesh"},
];

const List<Map<String, String>> personalDetailsTwo = [
  {"Age:": "27"},
  {"Degree:": "Masters"},
  {"Email:": "riadulislam088@gmail.com"},
  {"Freelance:": "Avaiable"},
];

// SKILL SCETION
const String skillDescription =
    "I am currently exploring Python and Bloc, building on my advanced proficiency with GetX, as I aim to expand my expertise in backend development.";

const List<Map<String, double>> skillProgressSectionName = [
  {"HTML": 1},
  {"CSS": 1},
  {"JAVASCRIPT": 1},
  {"GitHub Version Control": 1},
  {"FIREBASE": .8},
  {"FLUTTER": 1},
  {"Data Structures and Alogrithums": .9},
  {"PYTHON": .5},
];

// RESUME SECTION
const String resumeDescriptionText =
    "I am currently pursuing a Master’s in Pharmaceutical Chemistry and have completed various courses on advanced Flutter topics like animations, real-time messaging, video calling with Agora, and augmented reality.";

const List universityEduction = [
  "Master Degree",
  "Vilnius University",
  "Faculty of Chemistry and GeoScience",
  "Pharmaceutical University",
  "08-2025 to Present",
];

const String resume = "Resume";
const String education = "Education";

///// FULTTER ADVANCE COURSE DETAILS///////
const Map<String, dynamic> flutterAdvanceTopics = {
  "Heading": "Flutter Advance",

  "Organization": " ICT Division of Bangladesh",

  "State Management": ["GetX", "BloC"],

  "Asynchronous Programming": [
    "Stream and Stream Builders",
    "Futures and async/await",
  ],

  "Architecture Patterns": ["Clean Architecture", "MVVM(Model-View-ViewModel)"],

  "API Integration": [" Http", "Dio"],

  "Firebase": ["Firebase Cloud", "Firebase Authentication", "Firebase Storage"],

  "Local Storage": ["SQLite", "get storage", "Hive"],
};

const String flutterAdvanceLearningPeriod = "02-2022 to 08-2022";

///// FULTTER BIGNNER COURSE DETAILS///////
const String flutterBingnnerLearningPeriod = "08-2021 to 11-2021";
const Map<String, dynamic> flutterBignnerCousre = {
  "Heading": "Flutter Bignner",
  "Organization": "Tech Solution BD",
  "Dart Introduction": [
    "Variables",
    "Data Types",
    "Control Flow",
    "Basic Object-oriented Programming",
  ],
  "Flutter Widgets": [
    "Scaffold",
    "Text",
    "Image",
    "ListView",
    "Column",
    "Row",
    "Stack and More",
  ],
  "Layouts and UI": [
    "Container",
    "TextField and TextFormField",
    "Navigation",
    "Set State and More",
  ],
};

//PROJECT SECTION
const String project = "Projects";
const String projectDescription =
    "Worked on diverse projects including a video calling app, media streaming app with API integration, animated UI with ClipPath, SQLite-based note app, and interactive games like Tic-Tac-Toe and Flutter Puzzle.";

// AUTO GENERATE LIST FOR AMER SCHOOL APP
List<String> amerSchoolImages = List.generate(
  10,
  (index) => "$amerSchoolImagesUrl${index + 1}.webp",
);

// AUTO GENERATE LIST FOR MOVIE APP
List<String> movieAppImages = List.generate(
  8,
  (index) => "$movieAppImagesUrl${index + 1}.webp",
);

// AUTO GENERATE LIST FOR Animated UI APP
List<String> animatedUIImages = List.generate(
  8,
  (index) => "$animatedUIImagesUrl${index + 1}.webp",
);

// AUTO GENERATE LIST FOR Note Book APP
List<String> noteBookImages = List.generate(
  5,
  (index) => "$noteBookImagesUrl${index + 1}.webp",
);

// AUTO GENERATE LIST FOR AI Radio APP
List<String> radioAppImages = List.generate(
  3,
  (index) => "$aiRadioAppImagesUrl${index + 1}.webp",
);

// AUTO GENERATE LIST FOR Tic Tac Toe APP
List<String> ticTacToeImages = List.generate(
  3,
  (index) => "$ticTacToeImagesUrl${index + 1}.webp",
);

// AUTO GENERATE LIST FOR Flutter Puzzle APP
List<String> flutterPuzzleImages = List.generate(
  6,
  (index) => "$flutterPuzzleImagesUrl${index + 1}.webp",
);

// FEEDBACK SECTION
const String feedback = "Feedback";
const String feedbackDescription =
    "You're welcome to share your feedback or get in touch with me.";
const String hintTextForName = "Your Name";
const String hintTextForEmail = "Your Email";
const String hintTextForSubject = "Email Subject";
const String hintTextForMessage = "Write Your Meassge";
const String sendFeedback = "Send Feedback";

/// ERROR MESSAGE FOR FEEDBACK SECTION
const String nameErrorMessage = "Use your correct name";
const String emailErrorMessage = "Use your correct Email";
const String subjectErrorMessage = "Subject can't be empty";
const String messageBoxErrorMessage = "Write something";
