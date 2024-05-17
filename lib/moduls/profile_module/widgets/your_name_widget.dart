import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trainal_app/repo/firestore_firebase_repo/firestore_firebase_bloc/firestore_bloc.dart';
import 'package:trainal_app/theme/theme.dart';

import '../../../repo/db_hive_repo/user_hive_bloc/user_hive_bloc.dart';
import 'name_textfield_profile_widget.dart';

class YourNameWidget extends StatefulWidget {
  const YourNameWidget({super.key});

  @override
  State<YourNameWidget> createState() => _YourNameWidgetState();
}

class _YourNameWidgetState extends State<YourNameWidget> {
  late String _name;
  bool _nameValid = false;
  bool _clickWas = false;
  String _idUser = "";

  @override
  void initState() {
    super.initState();
    context.read<UserHiveBloc>().add(const UserHiveEvent.getUser());
    _name = "";
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocConsumer<UserHiveBloc, UserHiveState>(
      listener: (context, state) {
        state.maybeWhen(
          userGetted: (user) => {
            print("userGetted"),
            _idUser = user.idUser,
          },
          loadingFailure: (e) => {
            print("loadingFailure $e"),
          },
          orElse: () => (print("BDHive - BlocConsumer - orElse")),
        );
      },
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your name in Trainal',
              style: theme.textTheme.labelMedium,
            ),
            const SizedBox(height: Spaces.space8),
            Row(
              children: [
                NameTextFieldProfileWidget(
                  name: _name,
                  clickWas: _clickWas,
                  nameValid: _nameValid,
                  nameChanged: nameChanged,
                ),
                const Spacer(),
                IgnorePointer(
                  ignoring: !_checkCorrectUserData(),
                  child: SizedBox(
                    width: Sizes.size120,
                    height: Sizes.size50,
                    child: ElevatedButton(
                      onPressed: () {
                        _renameUser();
                      },
                      child: Text(
                        "Rename",
                        style: theme.textTheme.labelMedium?.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _checkCorrectUserData()
                            ? AppColors.white
                            : AppColors.darkGrey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: Spaces.space32),
          ],
        );
      },
    );
  }

  _renameUser() {
    context.read<UserHiveBloc>().add(UserHiveEvent.saveName(name: _name));
    context.read<FirestoreBloc>().add(FirestoreEvent.editName(
          name: _name,
          idUser: _idUser,
        ));
  }

  bool _checkCorrectUserData() {
    return _nameValid;
  }

  nameChanged(bool clickWas, bool nameValid, [String? name]) {
    setState(() {
      _clickWas = clickWas;
      _nameValid = nameValid;
      if (name != null) _name = name;
      print("nameChanged");
    });
  }
}
