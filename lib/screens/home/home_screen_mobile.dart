import 'package:flutter/material.dart';
import 'package:portfolio/constant/url.dart';
import 'package:portfolio/screens/header/header.dart';
import 'package:portfolio/screens/home/data.dart';
import 'package:portfolio/screens/home/functions.dart';
import 'package:portfolio/utils/functions.dart';
import 'package:portfolio/widgets/nav_button.dart';
import 'package:portfolio/widgets/social_button.dart';
import 'package:responsive_builder/responsive_builder.dart';


class HomeScreenMobile extends StatefulWidget {
  @override
  _HomeScreenMobileState createState() => _HomeScreenMobileState();
}

class _HomeScreenMobileState extends State<HomeScreenMobile> {
  ScrollController scrollController = new ScrollController();

    @override
    void initState() {
      super.initState();
      scrollController.addListener(() => setState(() { _scrollListener();}));
    }
    var values = 0.0;
    _scrollListener() {
      if(scrollController.position.pixels <= scrollController.position.maxScrollExtent){
        setState(() {
          values = scrollController.position.pixels; 
        });
      }
    }
    double get top {
      res = expandedHight;
      if (scrollController.hasClients) {
        double offset = scrollController.offset;
        if (offset < (res - kToolbarHeight)) {
          setState(() {
            res -= offset;
          });
        } else {
          setState(() {
            res = kToolbarHeight;
          });
        }
      }
      return res;
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
          endDrawer: ScreenTypeLayout.builder(
              mobile: (BuildContext context) => Drawer(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Material(
                    child: DrawerHeader(
                      margin: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.teal, Colors.green],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp
                        ),
                      ),
                      child: Column(
                        children: [
                          for(int i = 0; i < navBarButtonText.length; i++)
                          TextButton(
                            onPressed: null,
                            child: NavButton(
                              onTap: (){
                                scrollControl(globalKeys[i]);
                              },
                              buttonText: navBarButtonText[i],
                            ),
                          ),
                          TextButton(
                            onPressed: null,
                            child: NavButton(
                              onTap: ()async {
                                await launchURL(URL.blogURL);
                              },
                              buttonText: "Blog",
                            ),
                          ), 
                          TextButton(
                            onPressed: null,
                            child: NavButton(
                              onTap: ()async {
                                await launchURL(URL.youtubeURL);
                              },
                              buttonText: "Youtube",
                            ),
                          ),
                         ],
                        ),
                      curve: SawTooth(12),
                    ),
                  ),
                ),
              ),
              tablet: (BuildContext context) =>Drawer(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: DrawerHeader(
                    margin: EdgeInsets.all(0.0),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.teal, Colors.green],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(0.5, 0.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp
                      ),
                    ),
                    child: Column(
                      children: [
                        for(int i = 0; i < navBarButtonText.length; i++)
                        TextButton(
                          onPressed: null,
                          child: NavButton(
                            onTap: (){
                              scrollControl(globalKeys[i]);
                            },
                            buttonText: navBarButtonText[i],
                          ),
                        ),
                        TextButton(
                          onPressed: null,
                          child: NavButton(
                            onTap: ()async {
                              await launchURL(URL.blogURL);
                            },
                            buttonText: "Blog",
                          ),
                        ), 
                         TextButton(
                           onPressed: null,
                           child: NavButton(
                            onTap: ()async {
                              await launchURL(URL.youtubeURL);
                            },
                            buttonText: "Youtube",
                           ),
                         ),
                       ],
                      ),
                    curve: SawTooth(12),
                  ),
                ),
              ),
          ), 

          body: Stack(
            children: [
              CustomScrollView(
                controller: scrollController,            
                slivers: <Widget>[                 
                  SliverAppBar(  
                    backwardsCompatibility: true,   
                    leading: Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      margin: EdgeInsets.only(left: 20),
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: (){
                            scrollControl(homeKeys);
                          },
                          child: Text("Resume of".toUpperCase()),
                        ),
                      ),        
                    ), 
                    leadingWidth: 200,
                    expandedHeight: 600.0,
                    floating: true,
                    pinned: true,
                    snap: true,
                    elevation: 50,
                    backgroundColor: Colors.teal,
                      
                    //StickyHeader Section
                    flexibleSpace: FlexibleSpaceBar(
                      background: Container(key: homeKeys,child: StickyHeader()),       
                    ),
                  ),

                  //Body and Footer Section
                  Container(
                    child: SliverList(
                      delegate: new SliverChildListDelegate([pages()]),
                    ),
                  ),

                ],
              ),

             //Social button section
             values <= 500 || values == null? Positioned(
                top: top,
                width: MediaQuery.of(context).size.width,
                child: Align(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for(int i = 0; i < socialURL.length; i++)
                      SocialButton(
                        onPressed: ()async {
                          await launchURL(socialURL[i]);
                        },
                        icon: socialIcon[i],
                      ),
                    ],
                  ),
                )
              ) : Container(height: 0),
            ],
          ),
      );
    }
    
    
  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
