class ProjectUtils {
  final String thumbnailPath; 
  final String videoPath; 
  final String title;
  final String subtitle;

  ProjectUtils({
    required this.thumbnailPath,
    required this.videoPath,
    required this.title,
    required this.subtitle,
  });
}

List<ProjectUtils> flutterProjects = [
  ProjectUtils(
    thumbnailPath: 'assets/thumbnail/Calculator app.png',
    videoPath: 'assets/Videos/Calculator app.mp4',
    title: 'Calculator App',
    subtitle: 'Simplify your daily calculations with ease.',
  ),
  ProjectUtils(
    thumbnailPath: 'assets/thumbnail/ecommerce thumbnail.PNG',
    videoPath: 'assets/Videos/ecommerce.mp4',
    title: 'Ecommerce App',
    subtitle: 'Shop the latest trends with just a few taps',
  ),
  ProjectUtils(
   thumbnailPath: 'assets/thumbnail/expensetracker thumbnail.PNG',
    videoPath: 'assets/Videos/expense tracker.mp4',
    title: 'ExpenseTracker App',
    subtitle: 'Keep track of your spending effortlessly.',
  ),
  ProjectUtils(
    thumbnailPath: 'assets/thumbnail/fingerprint thumbnail.png',
    videoPath: 'assets/Videos/Fingerprint app.mp4',
    title: 'FingerPrint App',
    subtitle: 'Secure your apps with a touch.',
  ),
  ProjectUtils(
   thumbnailPath: 'assets/thumbnail/Flashlight thumbnail.png',
    videoPath: 'assets/Videos/Flashlight app.mp4',
    title: 'FlashLight App',
    subtitle: 'Brighten your way in the dark.',
  ),
  ProjectUtils(
   thumbnailPath: 'assets/thumbnail/fooddelivery thumbnail.PNG',
    videoPath: 'assets/Videos/food delivery.mp4',
    title: 'Food Delivery App',
    subtitle: 'Delicious meals delivered to your door.',
  ),
  ProjectUtils(
  thumbnailPath: 'assets/thumbnail/Notes thumbnail.PNG',
    videoPath: 'assets/Videos/food.mp4',
    title: 'Notes App',
    subtitle: 'Capture your thoughts instantly.',
  ),
  ProjectUtils(
    thumbnailPath: 'assets/thumbnail/googlemaps thumnail.png',
    videoPath: 'assets/Videos/GoogleMaps.mp4',
    title: 'GoogleMaps App',
    subtitle: 'Navigate your world with precision.',
  ),
  ProjectUtils(
  thumbnailPath: 'assets/thumbnail/qrcode thumbnail.png',
    videoPath: 'assets/Videos/QRcode app.mp4',
    title: 'QRcode Scanner App',
    subtitle: 'Scan and decode with a simple click.',
  ),
  ProjectUtils(
    thumbnailPath: 'assets/thumbnail/quotes thumbnail.PNG',
    videoPath: 'assets/Videos/quotes.mp4',
    title: 'Quotes App',
    subtitle: 'Inspire your day with meaningful quotes.',
  ),
];
