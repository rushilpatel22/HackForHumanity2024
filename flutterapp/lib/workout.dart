import 'package:flutter/material.dart';
// the main function of our program runs when the app is started
void main() {
// a function used to start the Flutter App, we pass a... widget!
runApp(const App());
}
// main App widget
class App extends StatelessWidget {
const App({super.key});
@override
Widget build(BuildContext context) {
return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
const HomePage({super.key});
@override
State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
// a list used to store all the quotes
List<String> quotes = [];
// a text controller used to get the output of out TextField
final textController = TextEditingController();

int _counter = 0;

void _incrementCounter() {
  setState(() {
    _counter++;
  });
}

// adds quote to quotes list
void addQuote() {
setState(() {
      quotes.add(textController.text);
    });
  }
// removes quote at index
void removeQuote(int index) {
setState(() {
      quotes.removeAt(index);
    });
  }
@override
Widget build(BuildContext context) {
// a scaffold to base our widgets on--similar to a canvas
return Scaffold(
      appBar: AppBar(
        title: const Text('Workout Application'),
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
TextField(
            controller: textController,
            decoration: InputDecoration(
          labelText: 'Workout',
           hintText: 'Enter workout type',
        )
          ),
TextField(
        decoration: InputDecoration(
          labelText: 'Date',
           hintText: 'Enter the date of your workout!',
        )
      ),
TextButton(onPressed: addQuote, child: const Text('Submit a Workout Action Item!')),
Expanded(
            child: ListView.builder(
// we need item count so builder knows where to stop
              itemCount: quotes.length,
// basically a for loop from int i = 0 up to itemCount
              itemBuilder: (BuildContext context, int index) {
// we can actually run any code inside here!
// returns the next child widget in the ListView

return QuoteCard(
                    quoteText: quotes[index],
                    onIconButtonPressed: () {
removeQuote(index);
                    });
              },
            ),
          )
        ]),
      ),
    );
  }
  Future<void> _selectDate() async {
    DateTime? _picked = await showDatePicker(
      context: context, 
      initialDate: DateTime.now(), 
      firstDate: DateTime(2000), 
      lastDate: DateTime(2100)
    ); 
  }
}
class QuoteCard extends StatelessWidget {
// parameters we need to pass in
final String quoteText;
final Function() onIconButtonPressed;
// you can have optional and required parameters
const QuoteCard(
      {super.key, required this.quoteText, required this.onIconButtonPressed});
@override
Widget build(BuildContext context) {
return Card(
      child: Row(
        children: [
// needed so there is no overflow
Expanded(
            child: Text(
              quoteText,
// added text styling
              style: const TextStyle(fontSize: 20.0),
            ),
          ),
IconButton(
// a function that is called when pressed
            onPressed: onIconButtonPressed,
            icon: const Icon(
Icons.delete,
// added color style
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}

