import 'package:flutter/material.dart';
import 'package:loyiha_ishi_ob_havo1/model/view.dart';
import 'package:provider/provider.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
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
                return Column(
                  children: [
                    Image.network(
                      'https:${value.data[0].current.condition.icon}',
                      fit: BoxFit.fill,
                      width: 260,
                      height: 260,
                    ),
                    Text(value.data[0].current.tempc.toString()),
                    const Text('Precipitations'),
                    Text(value.data[0].forecst.forecastday[0].max),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
