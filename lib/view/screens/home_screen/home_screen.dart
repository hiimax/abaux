import 'package:abaux/data/provider/auth_provider.dart';

import '../../../res/import/import.dart';
import '../add_user/add_user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: REdgeInsets.fromLTRB(18, 18, 18, 18),
        child: Consumer<AuthenticationProvider>(
          builder: (context, auth, child) {
            return Column(
              children: [
                const YMargin(40),
                Row(
                  children: [
                    Text('Available Users',
                        textAlign: TextAlign.center,
                        style: AbauxTextStyle.subHeading.copyWith(
                          color: abauxTextColor,
                          fontWeight: FontWeight.w700,
                        )),
                  ],
                ),
                const YMargin(10),
                Flexible(
                  child: Center(
                    child: CustomButton(
                      title: 'Add user',
                      buttonColor: abauxBlack,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => const AddUserScreen()),
                        );
                      },
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
