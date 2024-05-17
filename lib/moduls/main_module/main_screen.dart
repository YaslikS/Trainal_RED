import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trainal_app/repo/auth_firebase_repo/auth_firebase_bloc/auth_bloc.dart';
import 'package:trainal_app/router/app_auto_router.dart';

import '../../repo/db_hive_repo/user_hive_bloc/user_hive_bloc.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String _email = "";
  String _pass = "";
  bool stateAuth = false;

  @override
  void initState() {
    print("_MainScreenState - initState");
    context.read<AuthBloc>().add(const AuthEvent.check());
    context.read<UserHiveBloc>().add(const UserHiveEvent.getUser());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        ListWorkoutsRoute(),
        ProfileRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return BlocConsumer<UserHiveBloc, UserHiveState>(
          listener: (context, state) {
            state.maybeWhen(
              userGetted: (user) => {
                print("userGetted"),
                _email = user.email,
                _pass = user.pass,
                if (!stateAuth) _reAuth(),
              },
              loadingFailure: (e) => {
                print("loadingFailure $e"),
              },
              orElse: () => {
                print("MainScreen - BDHive - BlocConsumer - orElse"),
              },
            );
          },
          builder: (context, state) {
            return BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                state.maybeWhen(
                  yesAuth: (_) => {
                    print("yesAuth"),
                    stateAuth = true,
                  },
                  noAuth: (desc) => {
                    print("noAuth $desc"),
                    stateAuth = false,
                  },
                  orElse: () => (print("Auth - BlocConsumer - orElse")),
                );
              },
              builder: (context, state) {
                return Scaffold(
                  body: child,
                  bottomNavigationBar: BottomNavigationBar(
                    currentIndex: tabsRouter.activeIndex,
                    onTap: (value) {
                      tabsRouter.setActiveIndex(value);
                    },
                    items: const [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.sports_gymnastics),
                        label: 'Workouts',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.person),
                        label: 'Profile',
                      ),
                    ],
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  _reAuth() {
    print("_reAuth");
    context.read<AuthBloc>().add(
          AuthEvent.reAuth(
            email: _email,
            pass: _pass,
          ),
        );
  }
}
