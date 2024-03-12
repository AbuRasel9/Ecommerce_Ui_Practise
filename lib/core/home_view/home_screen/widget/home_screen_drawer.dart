import 'package:flutter/material.dart';

class HomeScreenDrawer extends StatelessWidget {
  const HomeScreenDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
      DrawerHeader(
        child: Column(
          children: [
            ClipOval(
              child: CircleAvatar(
                radius: 40,
                child: Image.network(
                    "https://avatars.githubusercontent.com/u/136594114?v=4"),
              ),
            ),
            Text(
              "Abu Rasel",
              style: theme.titleMedium,
            ),
            Text(
              "aburasel@gmail.com",
              style: theme.bodyMedium?.copyWith(color: Colors.black54),
            ),
          ],
        ),
      ),
      ListTile(
        leading:   const Icon(
          Icons.home_outlined,
          size: 30,
        ),
        title:  Text('Home',style: theme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(
          Icons.person_outlined,
          size: 30,
        ),
        title:  Text('Account',style: theme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),),
        onTap: () {},
      ),
      ListTile(
        leading: Image.asset(
          "assets/images/profile/order_image.png",
          height: 30,
          width: 30,
          color: Colors.black,
        ),
        title:  Text('Order',style: theme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(
          Icons.shopping_cart_outlined,
          size: 30,
        ),
        title:  Text('Cart',style: theme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(
          Icons.favorite_border,
          size: 30,
        ),
        title:  Text('WishList',style: theme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(
          Icons.home_outlined,
          size: 30,
        ),
        title:  Text('Terms and Condition',style: theme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),),
        onTap: () {},
      ),
    ]));
  }
}
