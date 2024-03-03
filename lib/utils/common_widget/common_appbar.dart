import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget {
  const CommonAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // SizedBox(width: .5,),
          Image.asset("assets/images/home/logo_name.png"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                width: 15,
              ),
              CircleAvatar(
                  backgroundColor: const Color.fromRGBO(243, 243, 243, 1),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person_outlined,
                      color: Colors.black45,
                    ),
                  )),
              const SizedBox(
                width: 15,
              ),
              CircleAvatar(
                  backgroundColor: const Color.fromRGBO(243, 243, 243, 1),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.call_outlined,
                      color: Colors.black45,
                    ),
                  )),
              const SizedBox(
                width: 15,
              ),
              CircleAvatar(
                  backgroundColor: const Color.fromRGBO(243, 243, 243, 1),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_active_outlined,
                        color: Colors.black45),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
