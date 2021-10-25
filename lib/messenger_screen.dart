import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
      backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://scontent.fcai20-5.fna.fbcdn.net/v/t1.6435-9/241967706_1656428994548166_2634456468567137584_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=0Z4vTCqbKYEAX_9xbxZ&_nc_ht=scontent.fcai20-5.fna&oh=6efe878db99a87c43a3cb8fccd981478&oe=6196D230'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color : Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
                onPressed: (){},
                icon: CircleAvatar(
                  backgroundColor: Colors.blue[400],
                  radius: 15.0,
                  child:const Icon(
                      Icons.camera_alt,
                    color: Colors.white,
                    size: 16.0,
                  ),
            ),
          ),
          IconButton(
            onPressed: (){},
            icon: CircleAvatar(
              backgroundColor: Colors.blue[400],
              radius: 15.0,
              child:const Icon(
                Icons.edit,
                color: Colors.white,
                size: 16.0,
              ),
            ),
          ),


        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey[300],
                ),
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children:const [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                        'Search',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 100,
                child: ListView.separated(
                  itemBuilder:(context,index){
                    return buildStoryItem();
                  } ,
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                   return const SizedBox(width: 15,);
                  },
                  shrinkWrap: true,

                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ListView.separated(
                  itemBuilder: (context, index){
                    return buildChatItem();
                  },
                  separatorBuilder: (context , index){
                    return const SizedBox(
                      height: 20,
                    );
                  },
                  itemCount: 20,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
              )


            ],
          ),
        ),
      ),
    );
  }

  Widget buildChatItem()=> Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: const [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage('https://scontent.fcai20-5.fna.fbcdn.net/v/t1.6435-9/241967706_1656428994548166_2634456468567137584_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=0Z4vTCqbKYEAX_9xbxZ&_nc_ht=scontent.fcai20-5.fna&oh=6efe878db99a87c43a3cb8fccd981478&oe=6196D230'),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                bottom: 3,
                end: 3,
              ),
              child: CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.green,

              ),
            ),
          ],
        ),
        const SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              const Text(
                'Mohamed yasser abdullah mohamed ',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 5.0,
              ),
              Row(
                children:  [
                  const Expanded(
                    child: Text(
                      'how are you mohamed yasser is my name and your',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 7.0,
                      width: 7.0,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Text('11:48 am'),
                ],

              ),
            ],
          ),
        ),

      ],

    );
  Widget buildStoryItem()=> SizedBox(
    width: 60.0,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: const [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage('https://scontent.fcai20-5.fna.fbcdn.net/v/t1.6435-9/241967706_1656428994548166_2634456468567137584_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=0Z4vTCqbKYEAX_9xbxZ&_nc_ht=scontent.fcai20-5.fna&oh=6efe878db99a87c43a3cb8fccd981478&oe=6196D230'),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                bottom: 3,
                end: 3,
              ),
              child: CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.green,

              ),
            ),
          ],
        ),
        const SizedBox(
          height: 6.0,
        ),
        const Text(
          'Mohamed Yasser abdullah mohamed',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 13.0,
          ),
        ),

      ],
    ),
  );



}
