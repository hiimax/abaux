import '../../../data/provider/auth_provider.dart';
import '../../../res/import/import.dart';

class ViewUserScreen extends StatefulWidget {
  const ViewUserScreen({super.key});

  @override
  State<ViewUserScreen> createState() => _ViewUserScreenState();
}

class _ViewUserScreenState extends State<ViewUserScreen> with Validators {
  bool password = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: abauxWhite,
      appBar: CustomAppBar(
        bgcolor: abauxSecondaryColor,
        automaticallyImplyLeading: true,
        leading: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: abauxBlack,
        ),
        title: Text(
          'Company Profile',
          style: AbauxTextStyle.medium.copyWith(
            fontWeight: FontWeight.w700,
            color: abauxWhite,
          ),
        ),
        actions: const [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.search,
                color: abauxBlack,
              ),
            ],
          )
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Consumer<AuthenticationProvider>(
            builder: (context, auth, child) {
              return Padding(
                padding: REdgeInsets.fromLTRB(18, 18, 18, 18),
                child: Column(
                  children: [
                    Text(
                      'Please, review and confirm',
                      style: AbauxTextStyle.subMedium.copyWith(
                        fontWeight: FontWeight.w700,
                        color: abauxBlack,
                      ),
                    ),
                    const YMargin(10),
                    UserDetails(
                      title: 'Name',
                      value: '${auth.firstName.text} ${auth.lastName.text}',
                    ),
                    UserDetails(
                      title: 'Street Name',
                      value: auth.streetName.text,
                    ),
                    UserDetails(
                      title: 'Street Number',
                      value: auth.streetNumber.text,
                    ),
                    UserDetails(
                      title: 'PoBox',
                      value: auth.poBox.text,
                    ),
                    UserDetails(
                      title: 'City',
                      value: auth.city.text,
                    ),
                    UserDetails(
                      title: 'State',
                      value: auth.state.text,
                    ),
                    UserDetails(
                      title: 'Zip code',
                      value: auth.zipCode.text,
                    ),
                    UserDetails(
                      title: 'Country',
                      value: auth.country.text,
                    ),
                    UserDetails(
                      title: 'Email',
                      value: auth.email.text,
                    ),
                    UserDetails(
                      title: 'Type',
                      value: auth.type.text,
                    ),
                    const UserDetails(
                      title: 'Telephone',
                      value: '-',
                    ),
                    const UserDetails(
                      title: 'Fax',
                      value: '-',
                    ),
                    const YMargin(40),
                    CustomButtonWithIconRight(
                      title: 'Modify',
                      buttonColor: abauxBlack,
                      borderColor: abauxBlack,
                      textColor: abauxWhite,
                      onPressed: () {
                        FocusScopeNode currentFocus = FocusScope.of(context);
                        if (!currentFocus.hasPrimaryFocus) {
                          currentFocus.unfocus();
                        }
                      },
                    ),
                    const YMargin(10),
                    CustomButtonWithIconRight(
                      title: 'Confirm',
                      buttonColor: abauxPrimaryColor,
                      borderColor: abauxPrimaryColor,
                      textColor: abauxWhite,
                      onPressed: () {
                        FocusScopeNode currentFocus = FocusScope.of(context);
                        if (!currentFocus.hasPrimaryFocus) {
                          currentFocus.unfocus();
                        }

                        final FormState? form = _formKey.currentState;
                        if (form!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => const ViewUserScreen()),
                          );
                        }
                      },
                    ),
                    const YMargin(16),
                  ],
                ),
              );
            },
          ),
        ),
      )),
    );
  }
}

class UserDetails extends StatelessWidget {
  const UserDetails({super.key, required this.title, required this.value});
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: AbauxTextStyle.subMedium.copyWith(
                fontWeight: FontWeight.w400,
                color: abauxBlack,
              ),
            ),
            const Spacer(),
            Text(
              value,
              style: AbauxTextStyle.subMedium.copyWith(
                fontWeight: FontWeight.w400,
                color: abauxBlack,
              ),
            ),
          ],
        ),
        const Divider(),
      ],
    );
  }
}
