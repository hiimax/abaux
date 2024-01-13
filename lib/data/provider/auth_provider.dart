import '../../res/import/import.dart';

class AuthenticationProvider extends ChangeNotifier {
  static AuthenticationProvider? _instance;
  static late ApiService apiService;

  AuthenticationProvider() {
    apiService = ApiServiceImpl();
  }

  static AuthenticationProvider get instance {
    _instance ??= AuthenticationProvider();
    return _instance!;
  }

  //register controllers
  final TextEditingController _firstName = TextEditingController();
  TextEditingController get firstName => _firstName;
  final TextEditingController _lastName = TextEditingController();
  TextEditingController get lastName => _lastName;
  final TextEditingController _streetName = TextEditingController();
  TextEditingController get streetName => _streetName;
  final TextEditingController _streetNumber = TextEditingController();
  TextEditingController get streetNumber => _streetNumber;
  final TextEditingController _poBox = TextEditingController();
  TextEditingController get poBox => _poBox;
  final TextEditingController _city = TextEditingController();
  TextEditingController get city => _city;
  final TextEditingController _state = TextEditingController();
  TextEditingController get state => _state;
  final TextEditingController _zipCode = TextEditingController();
  TextEditingController get zipCode => _zipCode;
  final TextEditingController _country = TextEditingController();
  TextEditingController get country => _country;
  final TextEditingController _email = TextEditingController();
  TextEditingController get email => _email;
  final TextEditingController _type = TextEditingController();
  TextEditingController get type => _type;
  final TextEditingController _telephone = TextEditingController();
  TextEditingController get telephone => _telephone;
  final TextEditingController _fax = TextEditingController();
  TextEditingController get fax => _fax;
}
