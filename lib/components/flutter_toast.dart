import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FlutterToast extends StatefulWidget {
  const FlutterToast({Key? key}) : super(key: key);

  @override
  State<FlutterToast> createState() => _FlutterToastState();
}

class _FlutterToastState extends State<FlutterToast> {
  // This widget is the root of your application.
  final toast = FToast();

  @override
  void initState() {
    toast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      toast.init(context);
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: buttonStyle(),
                    onPressed: showToast,
                    child: const Text('Show Toast')),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: buttonStyle(),
                    onPressed: showTopToast,
                    child: const Text('Show Toast Top')),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: buttonStyle(),
                    onPressed: showToastCenter,
                    child: const Text('Show Toast Center')),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: buttonStyle(),
                    onPressed: showToastBottomLeft,
                    child: const Text('Show Toast Bottom')),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: buttonStyle(),
                    onPressed: cancelToast,
                    child: const Text('Cancel Show Toast')),
              ],
            ),
          ),
        ),
      ),
    );
  }

  showTopToast() =>
      toast.showToast(child: buildToast(), gravity: ToastGravity.TOP);

  ButtonStyle buttonStyle() {
    return ButtonStyle(
        fixedSize: MaterialStateProperty.all(const Size(200, 50)));
  }

  void showToast() => Fluttertoast.showToast(
    textColor: Colors.red,
    backgroundColor: Colors.red,
    fontSize: 18,
    msg: 'Сохранено',
  );

  showToastTop() => Fluttertoast.showToast(
    gravity: ToastGravity.TOP,
    backgroundColor: Colors.red,
    fontSize: 18,
    msg: 'Сохранено',
  );

  showToastCenter() => Fluttertoast.showToast(
    gravity: ToastGravity.TOP,
    backgroundColor: Colors.red,
    fontSize: 18,
    msg: 'Сохранено',
  );

  showToastBottomLeft() => Fluttertoast.showToast(
    gravity: ToastGravity.TOP,
    textColor: Colors.red,
    toastLength: Toast.LENGTH_SHORT,
    backgroundColor: Colors.red,
    fontSize: 90,
    msg: 'Uzinroq gap yozishga harakat qilamiz',
  );

  void cancelToast() {
    Fluttertoast.cancel();
  }

  Widget buildToast() {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: const [
          Icon(Icons.check),
          Text('Saqlandi'),
        ],
      ),
    );
  }
}
