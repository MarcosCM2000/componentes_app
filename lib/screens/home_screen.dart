import 'package:flutter/material.dart';

import 'package:componentes_app/router/app_routes.dart';
import 'package:componentes_app/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Componentes en flutter'),
          ),
        ),
        body: ListView.separated(
            itemBuilder: ((context, index) => ListTile(
                  leading: Icon(
                    AppRoutes.menuOptions[index].icon,
                    color: AppTheme.primary,
                  ),
                  title: Text(AppRoutes.menuOptions[index].name),
                  onTap: () {
                    Navigator.pushNamed(
                        context, AppRoutes.menuOptions[index].route);
                  },
                )),
            separatorBuilder: ((context, index) => const Divider()),
            itemCount: AppRoutes.menuOptions.length));
  }
}
