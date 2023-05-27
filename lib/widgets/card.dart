import 'package:flutter/material.dart';

class WalletCard extends StatelessWidget {
  final String moneyName, shortMoneyName, charge;
  final IconData icon;
  final bool isInverted;

  const WalletCard({
    super.key,
    required this.moneyName,
    required this.shortMoneyName,
    required this.charge,
    required this.icon,
    required this.isInverted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isInverted ? Colors.grey.shade200 : Colors.grey.shade900,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    moneyName,
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: isInverted ? Colors.black : Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        charge,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: isInverted ? Colors.black : Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        shortMoneyName,
                        style: TextStyle(
                            color: isInverted
                                ? Colors.black.withOpacity(0.6)
                                : Colors.white.withOpacity(0.6),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
              Transform.scale(
                scale: 2,
                child: Transform.translate(
                  offset: const Offset(-4, 10),
                  child: Icon(
                    icon,
                    size: 90,
                    color: isInverted ? Colors.black : Colors.white,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
