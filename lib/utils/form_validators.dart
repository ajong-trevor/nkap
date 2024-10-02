class FormValidators {
  String? nameValidation(String? value) {
    if (value!.isEmpty) {
      return 'Name is required';
    }
    return null;
  }

  String? emailValidation(String? value) {
    if (value!.isEmpty) {
      return 'Email is required';
    }
    if (!RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  String? phoneValidation(String? value) {
    if (value!.isEmpty) {
      return 'Phone number is required';
    }
    if (value.length != 9) {
      return 'Must be a valide number';
    }
    return null;
  }

  String? passwordValidation(String? value) {
    if (value!.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 6) {
      return 'Password too short';
    }
    return null;
  }

  String? confrimPasswordValidation(String? value) {
    if (value!.isEmpty) {
      return 'Confrim password required';
    }
    // if (value != password) {
    //   return "Password don't match";
    // }
    return null;
  }
}
