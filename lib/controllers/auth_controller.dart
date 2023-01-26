import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:test1/view/pages/landing_page.dart';
import 'package:test1/view/pages/newlogin.dart';

class AuthController extends GetxController {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance; // connecting to firebase
  late Rx<User?> currentUser; //can be null

  @override
  void onReady() {
    currentUser = Rx<User?>(firebaseAuth.currentUser);
    currentUser.bindStream(firebaseAuth
        .userChanges()); //syncing firebase info into flutter currentuser
    ever(currentUser,
        setInitialScreen); //if current user EVER changes call setinitialscreen
    super.onReady();
  }

  void setInitialScreen(User? user) {
    if (user == null) {
      Get.offAll(() => loginTwo());
    } //they still need to login
    if (user != null) {
      Get.offAll(LandingPage());
    }

    //: Get.offAll(() => LandingPage()); //they are already logged in
  }

//create a new user-register user
//using future, async, and await because we have to wait for firebase
// catch any error regarding sending info to firebase - don't crash app if this happens
//because of bindstream we know when firebase does this
  Future<String?> emailAndPasswordSignUp(String email, String password) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);

      setInitialScreen(currentUser.value);
      //set initial screen if successful we go to the landing page
      //if not successful go back to the login page
    } on FirebaseAuthException catch (e) {
      // final ex = SignUpWithEmailAndPasswordFailure
      //you suck for breaking my code

    }
  }

  Future<String?> emailAndPasswordLogin(String email, String password) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      //setInitialScreen(currentUser.value);
    } on FirebaseAuthException catch (e) {
      print('firebase error');

      //final ex = loginwithemailandpasswordfailure
    } catch (e) {
      print('not firebase error');
    }
  }

  Future<void> logOut() async {
    await firebaseAuth.signOut();
    //Get.offAll(loginTwo());
  }
}
