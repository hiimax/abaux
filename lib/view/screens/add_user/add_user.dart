import '../../../data/provider/auth_provider.dart';
import '../../../data/provider/test_provider.dart';
import '../../../res/import/import.dart';
import '../view_user/view_user.dart';

class AddUserScreen extends StatefulWidget {
  const AddUserScreen({super.key});

  @override
  State<AddUserScreen> createState() => _AddUserScreenState();
}

class _AddUserScreenState extends State<AddUserScreen> with Validators {
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
          'User Profile',
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
          child: Container(
            color: abauxWhite,
            child: Consumer2<AuthenticationProvider, TestProvider>(
              builder: (context, auth, test, child) {
                return Center(
                  child: Padding(
                    padding: REdgeInsets.fromLTRB(18, 18, 18, 18),
                    child: Column(
                      children: [
                        const YMargin(15),
                        CustomTextFormField(
                          obscureText: false,
                          readonly: false,
                          hintText: 'First Name',
                          textInputType: TextInputType.name,
                          controller: auth.firstName,
                          validator: (val) => validateName(val),
                        ),
                        const YMargin(5),
                        CustomTextFormField(
                          obscureText: false,
                          readonly: false,
                          hintText: 'Last Name',
                          textInputType: TextInputType.name,
                          controller: auth.lastName,
                          validator: (val) => validateName(val),
                        ),
                        const YMargin(5),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: CustomTextFormField(
                                obscureText: false,
                                readonly: false,
                                hintText: 'Street Name',
                                textInputType: TextInputType.text,
                                controller: auth.streetName,
                                validator: (val) => validateEmptyTextField(val),
                              ),
                            ),
                            const XMargin(4),
                            Expanded(
                              flex: 2,
                              child: CustomTextFormField(
                                obscureText: false,
                                readonly: false,
                                hintText: 'Street Number',
                                textInputType: TextInputType.text,
                                controller: auth.streetNumber,
                                validator: (val) => validateEmptyTextField(val),
                              ),
                            ),
                          ],
                        ),
                        const YMargin(5),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: CustomTextFormField(
                                obscureText: false,
                                readonly: false,
                                hintText: 'PoBox',
                                textInputType: TextInputType.text,
                                controller: auth.poBox,
                                validator: (val) => validateEmptyTextField(val),
                              ),
                            ),
                            const XMargin(4),
                            Expanded(
                              flex: 2,
                              child: CustomTextFormField(
                                obscureText: false,
                                readonly: false,
                                hintText: 'City',
                                textInputType: TextInputType.text,
                                controller: auth.city,
                                validator: (val) => validateEmptyTextField(val),
                              ),
                            ),
                          ],
                        ),
                        const YMargin(5),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: CustomTextFormField(
                                obscureText: false,
                                readonly: false,
                                hintText: 'State',
                                textInputType: TextInputType.text,
                                controller: auth.state,
                                validator: (val) => validateEmptyTextField(val),
                              ),
                            ),
                            const XMargin(4),
                            Expanded(
                              flex: 2,
                              child: CustomTextFormField(
                                obscureText: false,
                                readonly: false,
                                hintText: 'Zip code',
                                textInputType: TextInputType.text,
                                controller: auth.zipCode,
                                validator: (val) => validateEmptyTextField(val),
                              ),
                            ),
                          ],
                        ),
                        const YMargin(5),
                        CustomTextFormField(
                          obscureText: false,
                          readonly: false,
                          hintText: 'Country',
                          textInputType: TextInputType.text,
                          controller: auth.country,
                          suffixIcon: const Icon(
                            Icons.arrow_drop_down,
                            color: abauxBlack,
                          ),
                          validator: (val) => validateEmptyTextField(val),
                        ),
                        const YMargin(5),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: CustomTextFormField(
                                obscureText: false,
                                readonly: false,
                                hintText: 'Email',
                                textInputType: TextInputType.text,
                                controller: auth.email,
                                validator: (val) => validateEmail(val),
                              ),
                            ),
                            const XMargin(4),
                            Expanded(
                              flex: 2,
                              child: CustomTextFormField(
                                obscureText: false,
                                readonly: false,
                                hintText: 'Profile',
                                textInputType: TextInputType.text,
                                controller: auth.type,
                                suffixIcon: const Icon(
                                  Icons.arrow_drop_down,
                                  color: abauxBlack,
                                ),
                                validator: (val) => validateEmptyTextField(val),
                              ),
                            ),
                          ],
                        ),
                        const YMargin(5),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: CustomTextFormField(
                                obscureText: false,
                                readonly: false,
                                hintText: 'password',
                                textInputType: TextInputType.text,
                                validator: (val) => validateEmptyTextField(val),
                              ),
                            ),
                            const XMargin(4),
                            Expanded(
                              flex: 2,
                              child: CustomTextFormField(
                                obscureText: false,
                                readonly: false,
                                hintText: 'Confirm password',
                                textInputType: TextInputType.text,
                                validator: (val) => validateEmptyTextField(val),
                              ),
                            ),
                          ],
                        ),
                        const YMargin(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 70.w,
                              child: CustomButton(
                                title: 'Add',
                                buttonColor: abauxPrimaryColor,
                                textColor: abauxWhite,
                                onPressed: () {
                                  FocusScopeNode currentFocus =
                                      FocusScope.of(context);
                                  if (!currentFocus.hasPrimaryFocus) {
                                    currentFocus.unfocus();
                                  }
                                },
                              ),
                            ),
                            SizedBox(
                              width: 100.w,
                              child: CustomButton(
                                title: 'Modify',
                                buttonColor: abauxPrimaryColor,
                                textColor: abauxWhite,
                                onPressed: () {
                                  FocusScopeNode currentFocus =
                                      FocusScope.of(context);
                                  if (!currentFocus.hasPrimaryFocus) {
                                    currentFocus.unfocus();
                                  }
                                },
                              ),
                            ),
                            SizedBox(
                              width: 100.w,
                              child: CustomButton(
                                title: 'Delete',
                                buttonColor: abauxPrimaryColor,
                                textColor: abauxWhite,
                                onPressed: () {
                                  FocusScopeNode currentFocus =
                                      FocusScope.of(context);
                                  if (!currentFocus.hasPrimaryFocus) {
                                    currentFocus.unfocus();
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                        const YMargin(10),
                        CustomButtonWithIconRight(
                          title: 'Query',
                          buttonColor: abauxBlack,
                          borderColor: abauxBlack,
                          textColor: abauxWhite,
                          onPressed: () {
                            FocusScopeNode currentFocus =
                                FocusScope.of(context);
                            if (!currentFocus.hasPrimaryFocus) {
                              currentFocus.unfocus();
                            }
                          },
                        ),
                        const YMargin(10),
                        CustomButtonWithIconRight(
                          title: 'Next',
                          buttonColor: abauxPrimaryColor,
                          borderColor: abauxPrimaryColor,
                          textColor: abauxWhite,
                          icon: const Icon(
                            Icons.arrow_forward_sharp,
                            color: abauxWhite,
                          ),
                          onPressed: () {
                            FocusScopeNode currentFocus =
                                FocusScope.of(context);
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
                  ),
                );
              },
            ),
          ),
        ),
      )),
    );
  }
}
