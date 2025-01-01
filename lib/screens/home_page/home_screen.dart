import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:linkedin/data/data.dart';
import 'package:linkedin/widgets/custom_appbar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

final _post = Data.postList; 
bool _showAppNavBar = true;
late ScrollController  _scrollController;
bool _isScrollDown = false;


@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    _initialScroll();


  }


  void _initialScroll ()async{
    _scrollController.addListener((){
      if(_scrollController.position.userScrollDirection == ScrollDirection.reverse){
        if(!_isScrollDown){
          _isScrollDown = true;
          _hideAppNavBar();
        }}

if(_scrollController.position.userScrollDirection == ScrollDirection.forward){
  if(!_isScrollDown){
    _isScrollDown =false;
    _showAppNavvBar();
    setState(() {
      
    });
  }
}


    });
  }
  void _hideAppNavBar (){
    setState(() {
      _showAppNavBar =false;
    });
  }


void _showAppNavvBar(){
  setState(() {
    _showAppNavBar= true;
  });
}


@override
  void dispose() {
    // TODO: implement dispose
_scrollController.dispose();
    super.dispose();

  }



  @override
  Widget build(BuildContext context) {
    return  ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Container(

            color: Colors.black12,
            child: Column(

              children: [
                _showAppNavBar
                ? CustomAppbar(sizingInformation: sizingInformation)
                : Container(
                  height: 0,
                  width: 0,
                ),

                _listPostWidget(sizingInformation),

              ],
            ),



        );
      } );
    
  }
  Widget _listPostWidget (SizingInformation sizingInformation){
    return Expanded(child: MediaQuery.removePadding(context: context,
    removeTop: true,
    
    
     child: ListView.builder(
      controller: _scrollController,
      itemCount: _post.length,

      itemBuilder: (context, index) {

          return Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            margin: EdgeInsets.only(bottom: 0, top: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(color: Colors.black54, width: .50),
                bottom: BorderSide(
                  color: Colors.black54,
                  width: .50
                )
              )
            ),
            child: Column(
              children: [
                    Row(children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              _post[index].profileUrl!,
                            ))
                        ),
                      ),
                      SizedBox(width: 8,)
                      ,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(_post[index].name!,
                          style: TextStyle(

                            fontSize: 18,
                            fontWeight: FontWeight.bold,

                          ),
                          ),
                          Container(
                            width: sizingInformation.screenSize.width/1.34,
                            child: Text(
                              _post[index].headline!,
                              style: TextStyle(

                                overflow: TextOverflow.ellipsis,
                                fontSize: 12, 
                                color: Colors.black54
                              ),
                            ),
                          )
                        ],
                      )
                    ],),
                    SizedBox(height: 10,),
                    Text(_post[index].description!,
                    style: TextStyle(
                      fontSize: 14,

                    ),),
                    
                    
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(_post[index].description!,
                      style: TextStyle(
                        fontSize: 14,
                      
                      ),),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: sizingInformation.screenSize.width,
                      child: Image.asset(_post[index].image!,
                        fit: BoxFit.contain,

                      ),
                    ),

                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 25,
                          height: 25,
                          child: Image.asset("assets/icons/like_icon.png"),
                        ),
                         Container(
                          width: 25,
                          height: 25,
                          child: Image.asset("assets/icons/celebrate_icon.png"),
                        ),
                        if(index == 0 || index == 4)
                         Container(
                          width: 25,
                          height: 25,
                          child: Image.asset("assets/icons/celebrate_icon.png"),
                        ),
                      ],
                    )

                    

              ],
            ),
          );

      }),
     ));
  }
}



// 1/1/30