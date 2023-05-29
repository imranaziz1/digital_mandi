class SignupWIthEmailAndPasswordFailure{
  final String message;

  const SignupWIthEmailAndPasswordFailure([this.message = "An unknown error occured"]);
  factory SignupWIthEmailAndPasswordFailure.code(String code){
    switch(code){
      case 'weak-password': return const SignupWIthEmailAndPasswordFailure('Please enter a stronger password.');
      case 'invalid-email': return const SignupWIthEmailAndPasswordFailure('Email is invalid or badly formatted..');
      case 'email-already-in-use': return const SignupWIthEmailAndPasswordFailure('an account is already exist with this email.');
      case 'operation-not-allowed': return const SignupWIthEmailAndPasswordFailure('Operation is not allowed, Please contact support.');
      case 'user-disabled': return const SignupWIthEmailAndPasswordFailure('this user is disabled, please contact support for help.');

      default: return const SignupWIthEmailAndPasswordFailure();
    }
  }
}