import 'package:atata/widgets/Button.dart';
import 'package:atata/widgets/card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp() or CupertinoApp()
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(height: 50),
                      const Text(
                        "반갑다!",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 48),
                      ),
                      Text(
                        "다시보니 좋군아",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 28,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 120,
              ),
              Text(
                "Total Balance",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 28,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "\$DATA",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 42,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MainButton(
                    buttonText: "Transfer",
                    bgColor: Colors.amber,
                    fontColor: Colors.black,
                  ),
                  MainButton(
                    buttonText: "Request",
                    bgColor: Colors.grey,
                    fontColor: Colors.white,
                  )
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Wallets",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 40,
                        color: Colors.white),
                  ),
                  Text(
                    "view all",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8), fontSize: 30),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const WalletCard(
                moneyName: "Dollar",
                shortMoneyName: "USD",
                charge: "66 300",
                icon: Icons.attach_money_rounded,
                isInverted: true,
              ),
              const WalletCard(
                moneyName: "Euro",
                shortMoneyName: "EUR",
                charge: "1 300",
                icon: Icons.euro_rounded,
                isInverted: false,
              ),
              const SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
