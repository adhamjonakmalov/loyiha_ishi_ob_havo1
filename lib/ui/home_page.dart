import 'package:flutter/material.dart';
import 'package:loyiha_ishi_ob_havo1/model/view.dart';
import 'package:loyiha_ishi_ob_havo1/ui/iphone_13_pro_max_2.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void main() {
    context.read<ModelProvider>().getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color.fromARGB(255, 10, 1, 28), Color.fromARGB(255, 144, 94, 224)],
          ),
        ),
        child: Column(
          children: [
            Consumer<ModelProvider>(
              builder: (context, value, child) {
                if (value.data.isNotEmpty) {
                  return Column(
                    children: [
                      Image.network(
                        'https:${value.data[0].current.condition.icon}',
                        fit: BoxFit.fill,
                        width: 290,
                        height: 290,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 80),
                        child: Text('Weather', style: TextStyle(fontSize: 35, color: Colors.white)),
                      ),
                      const Text('ForeCasts', style: TextStyle(fontSize: 35, color: Color(0xFFDDB130))),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => const Screen()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Container(
                            alignment: Alignment.center,
                            width: 220,
                            height: 60,
                            decoration: BoxDecoration(color: const Color(0xFFDDB130), borderRadius: BorderRadius.circular(35)),
                            child: const Text(
                              'Get Start',
                              style: TextStyle(fontSize: 22, color: Color.fromARGB(255, 128, 0, 255)),
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                } else {
                  return const Text('Errar');
                }
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        context.read<ModelProvider>().getData();
      }),
    );
  }
}
