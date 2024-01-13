import '../../../../res/import/import.dart';

class MobileBottomNavigation extends StatelessWidget {
  const MobileBottomNavigation({
    super.key,
    required this.onPressed,
    required this.currentIndex,
  });
  final Function(int)? onPressed;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, setState) {
      return SizedBox(
        height: (62.h),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: abauxBlack,
          selectedIconTheme: const IconThemeData(color: abauxPrimaryColor),
          showSelectedLabels: true,
          selectedItemColor: abauxWhite,
          unselectedItemColor: abauxGrey,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          currentIndex: currentIndex,
          onTap: onPressed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.holiday_village_outlined,
                color: abauxGrey,
              ),
              // icon: Image.asset(
              //   'home'.mobilepng,
              //   color:abauxGrey,
              // ),
              label: 'Home',
              activeIcon: Icon(
                Icons.holiday_village,
                color: abauxWhite,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.collections_outlined,
                color: abauxGrey,
              ),
              // icon: Image.asset(
              //   'home'.mobilepng,
              //   color:abauxGrey,
              // ),
              label: 'Lecture',
              activeIcon: Icon(
                Icons.collections_outlined,
                color: abauxWhite,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: abauxGrey,
              ),
              // icon: Image.asset(
              //   'home'.mobilepng,
              //   color:abauxGrey,
              // ),
              label: 'Profile',
              activeIcon: Icon(
                Icons.person,
                color: abauxWhite,
              ),
            ),
          ],
        ),
      );
    });
  }
}
