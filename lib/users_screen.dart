import 'package:flutter/material.dart';

class UserModel{
  final int id;
  final String name;
  final String phone;
  UserModel({
    required this.id,
    required this.name,
    required this.phone
});
}

class UsersScreen extends StatelessWidget {
  UsersScreen({Key? key}) : super(key: key);

  final List<UserModel> users = [
    UserModel(id: 1, name: 'mohamed yasser abdualah mohamed', phone: '+201201188488'),
    UserModel(id: 2, name: 'ali yasser', phone: '+201264488622'),
    UserModel(id: 3, name: 'mohamed khaled', phone: '+201256232643'),
    UserModel(id: 4, name: 'ahmed yasser', phone: '+201256325556'),
    UserModel(id: 5, name: 'mohamed samy', phone: '+201235645846'),
    UserModel(id: 1, name: 'mohamed yasser', phone: '+201201188488'),
    UserModel(id: 2, name: 'ali yasser', phone: '+201264488622'),
    UserModel(id: 3, name: 'mohamed khaled', phone: '+201256232643'),
    UserModel(id: 4, name: 'ahmed yasser', phone: '+201256325556'),
    UserModel(id: 5, name: 'mohamed samy', phone: '+201235645846'),

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Users',
        ),
      ),
      body:ListView.separated(
          itemBuilder: (context , index)=>buildUserItem(users[index]),
          separatorBuilder: (context, index)=>  Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20.0,
            ),
            child: Container(
              height: 1.0,
              width: double.infinity,
              color: Colors.grey[300],
            ),
          ),
          itemCount: users.length,
      ) ,
    );
  }

  Widget buildUserItem(UserModel user)=>Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children:  [
         CircleAvatar(
          radius: 25.0,
          child: Text(
            '${user.id}',
            style: const TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),

        ),
        const SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                user.phone,

                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),

      ],
    ),
  );
}
