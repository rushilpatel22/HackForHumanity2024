class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
  }


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.blueGrey,
          buttonBackgroundColor: Colors.white,
          color: const Color.fromARGB(255, 255, 240, 219),
          height: 65,
          items: const <Widget>[
            Icon(
              Icons.home,
              size: 35,
              color: Colors.red,
            ),
            Icon(
              Icons.camera,
              size: 35,
              color: Colors.deepPurpleAccent,
            ),
            Icon(
              Icons.person,
              size: 35,
              color: Colors.green,
            ),
            Icon(
              Icons.phone,
              size: 35,
              color: Colors.blue,
            )
          ],
          onTap: (index) {
            _pageController.animateToPage(index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOut);
          },
        ),
    );
  }
}