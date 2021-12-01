import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class MainTab extends StatefulWidget {
  const MainTab({Key? key}) : super(key: key);

  @override
  _MainTabState createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(children: [
            Expanded(
              child: ListView(children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    children: [
                      Expanded(child:
                      Row(
                        children: [
                          Container(
                            width: 100,
                            child: Image(
                                image: AssetImage("img/logo.jpg")
                            ),
                          ),
                        ],
                      ),),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 7),
                        child: GestureDetector(
                          child: Icon(
                            Icons.add_box_outlined,
                            size: 32,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 7),
                        child: GestureDetector(
                          child: Icon(
                            Icons.favorite_border,
                            size: 32,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 7),
                        child: GestureDetector(
                          child: Icon(
                            Icons.send_outlined,
                            size: 32,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                StoryListView(),
                PostGroup(),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}

class StoryListView extends StatelessWidget {
  const StoryListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width, // 이 기기의 가로 길이
      child: ListView( // ListView 쓸 때는 parent의 크기를 정해주어야함
        scrollDirection: Axis.horizontal,
        children: [
          StoryItem(),
          StoryItem(),
          StoryItem(),
        ],
      ),
    );
  }
}

class StoryItem extends StatelessWidget {
  const StoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 13.5),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            margin: EdgeInsets.only(bottom: 5),
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.purpleAccent,
                width: 1.5,
              ),
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://cdn.imweb.me/upload/S201907024711f2efb4922/6fac07f21c1c9.jpg"),
            ),
          ),
          Text("instagram")
        ],
      ),
    );
  }
}

class PostGroup extends StatelessWidget {
  const PostGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column( //세로로 구분되어 있음
      children: [
        PostItem(),
        PostItem(),
        PostItem(),
        PostItem(),
        PostItem(),
      ],
    );
  }
}

class PostItem extends StatelessWidget {
  const PostItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: Colors.grey,
          thickness: 0.5,
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage("https://cdn.imweb.me/upload/S201907024711f2efb4922/6fac07f21c1c9.jpg"),
                ),
              ),
              Expanded(child: Text("dogs", style: TextStyle(fontWeight: FontWeight.bold, fontSize:16,))),
              GestureDetector(
                child: Icon(Icons.more_vert),
              )
            ],
          ),
        ),
        Container(
          child: ImageSlideshow(
            children: [
              Image.network("https://dog-zzang.co.kr/dog_sale/photo/202107/1626193434_80277300.jpg"),
              Image.network("https://images.chosun.com/resizer/vnA9AEtXu73sfHiq3UYzCXbkzho=/485x485/smart/cloudfront-ap-northeast-1.images.arcpublishing.com/chosun/6GQGPQBRDLPT2ENCCGBP6MQ734.jpg"),
              Image.network("https://t1.daumcdn.net/cfile/tistory/990F16335CD0597327"),
              Image.network("https://lh3.googleusercontent.com/proxy/OUm1QtM7DGI-I7nOa9X3tYusexxhYKC_5_mZnwB_wMPqhqfTlNBPlaPKUMLEUk72Cy7s_2Ss_ftlolLm49OX8_n_hLofEZFll2pb576y8zvbp3z6LwPgff-8ZlBuEyJEizR9nIlbUXnntRzVmRW7ygU"),
            ],
          ),
          height: 300,
          width: MediaQuery.of(context).size.width,
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                child: GestureDetector(
                  child: Icon(Icons.favorite_border, size: 32),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: GestureDetector(
                  child: Icon(Icons.chat_bubble_outline_outlined, size: 32),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: GestureDetector(
                  child: Icon(Icons.send_outlined, size: 32),
                ),
              ),
              Expanded(
                child: Container(),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: GestureDetector(
                  child: Icon(Icons.bookmark_border, size: 32),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text("좋아요 99,999개", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              ),
              Container(
                width: MediaQuery.of(context).size.width,

                child: Row(
                  children: [
                    Text("dogs  ", style: TextStyle(fontWeight: FontWeight.bold, fontSize:16,)),
                    Expanded(
                      child: Text("it hasn't been our week, our month, or even even though even though ",
                        overflow: TextOverflow.ellipsis,),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

      ],
    );
  }
}