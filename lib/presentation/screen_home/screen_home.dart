import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive/hive.dart';
import 'package:thoughtbox/application/user_bloc/userdata_bloc_bloc.dart';
import 'package:thoughtbox/domain/model_user/model_user.dart';
import 'package:thoughtbox/presentation/core/colors.dart';
import 'package:thoughtbox/presentation/core/fonts.dart';
import 'package:thoughtbox/presentation/screen_add_user/screen_adduser.dart';
import 'package:thoughtbox/presentation/screen_add_user/widgets/custom_drower.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:thoughtbox/presentation/screen_weather/screen_weather.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final storage = GetStorage();
  final box = Hive.box<UserModel>("boxName");

  @override
  Widget build(BuildContext context) {
    //   UserDataController controller = Get.put(UserDataController());

    final size = MediaQuery.of(context).size;
    final width = size.width;
    return Scaffold(
        backgroundColor: backgroundColor,
        drawer: CustomDrower(storage: storage),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: backgroundColor,
          elevation: 0,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                onPressed: () {
                  ('fdjskjf');
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                icon: const Icon(
                  Icons.menu,
                  color: black,
                ),
              );
            },
          ),
          title: Text("User List", style: buttonTextBlack),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddMembers(),
                    ));
              },
              icon: const Icon(
                Icons.add,
                color: black,
              ),
            ),
          ],
        ),
        body: BlocBuilder<UserdataBlocBloc, UserdataBlocState>(
          builder: (context, state) {
            if (state is UserdataBlocInitial) {
              context.read<UserdataBlocBloc>().add(const UserAllDataEvent());
            }
            if (state is UserdataDisplayState) {
              if (state.user.isNotEmpty) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .02),
                  child: GestureDetector(
                    onTap: () {},
                    child: ListView.builder(
                      itemCount: state.user.length,
                      itemBuilder: (context, index) {
                        final data = state.user[index];

                        return Slidable(
                          endActionPane: ActionPane(
                              motion: const ScrollMotion(),
                              children: [
                                SlidableAction(
                                  flex: 2,
                                  onPressed: (ctx) {
                                    context.read<UserdataBlocBloc>().add(
                                        UserDeleteEvent(
                                            user: state.user[index]));
                                  },
                                  backgroundColor: red,
                                  foregroundColor: backgroundColor,
                                  icon: Icons.archive,
                                  label: 'Delete',
                                ),
                              ]),
                          child: Card(
                            color: wamwhite,
                            child: ListTile(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const WeatherScreen(),
                                    ));
                              },
                              title: Row(
                                children: [
                                  Text(
                                    data.firstName,
                                    style: drawerText,
                                  ),
                                  SizedBox(width: width * .02),
                                  Text(
                                    data.lastName,
                                    style: drawerText,
                                  ),
                                ],
                              ),
                              subtitle: Text(
                                data.email,
                                style: drawerText,
                              ),
                              trailing: Switch(
                                value: true,
                                onChanged: (val) {},
                                activeColor: blue,
                                inactiveThumbColor: grey,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              }
            }
            return Center(
              child: Text(
                'empty'.toUpperCase(),
                style: const TextStyle(fontSize: 21),
              ),
            );
          },
        ));
  }
}
