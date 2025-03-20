import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    return const FirebaseOptions(
      apiKey: 'AIzaSyCuDMUr5TbccqzPYFbPE2rpkTLTbVy-O-Q',
      appId: '1:386988313681:android:55d6bbc9298a17d3e87c70',
      messagingSenderId: '386988313681', // project_number
      projectId: 'basicapp-676ed',
      storageBucket: 'basicapp-676ed.firebasestorage.app',
    );
  }
} 