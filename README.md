# routing_navigation

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

We are going to learn the routing and navigation in this project.
in the first step we have learnt the conventional method of the routing and navigating between the screens and it was the method of pushing and poping the screens in the stack.

//----------------------------Method 1-------------------------//

Navigator.push(context,MaterialPageRoute(builder: (context) => const ScreenThree()));
Navigator.pop(context);

Is method me jb hm pehli screen sy dosri screen me push krty hn tu ik stack bn jata hy or us k bad jb ik or screen push krty hn tu wo stack me chli jati hy os esi trha new screen jo b ati hy wo stack me jati hy.
Or jb hm screen ko back krty hn tu wo screen stack sy pop ho jati hy or us sy pehly wali screen top pr a jati hy.
Stack me First in Last out concept use hota. jo pehli screen stack me ay gi wo sb sy bad me bahir jy gi stack sy.

//----------------------------Method 2-------------------------//
Is method me hm check krty hn k data ko ik screen sy dosri screen me kesy transfer krna hy. 
Is me jis screen me hn ny data transfer krna hota hy us me hm data ko initialize krwaty hn and jis screen me hm ny screen ko call krwana hota hy us me jo data add krwana hota hy wo hm add kr dety hn.
Example: Screen two me hn ny add krna hy name ko tu hm wahan pr initialize krwa den gy name ko. or phir hm ny us screen two ko call krwaya ho ga screen one me tu wahan pr hi hm us me data add kr den gy and jb hm ik screen sy dosri screen me navigate kren gy tu data transfer ho jy ga.

//----------------------------Method 3-------------------------//
Is method me hm routing krty hn ik unique id k zriy. Is me hm ik static constant id create krty hn har screen ki jo k String hoti hy. Is me hm main screen me home use ni kren gy or agr home use krty hn tu us me hm conventional method use kren gy. Is me hash map k zriy hm data ko ik screen sy dosri screen me transfer kr skty hn.

//----------------------------Method 4-------------------------//
The most suitable and recomended method for routing in flutter by the developers and most the developers uses this method of routing in their applications.This is the fully structured method and the things will be in better order.
In this we have to make the utils folder and in that folder we have to create two new dart files and have to create classes in that names as Routes and RouteName.
In RouteName we only have to create the names of the routes and in the routes we will actualy do routing and have to use the switch case statement to create routes for the different screens.
And then on the main screen we have to initalize the route and then we can use the routes accordingly with their names where we want to use them.
And when we have to transfer the data between the screens we have to follow the following steps.
1:If we want to transfer the data from home screen to screen two then we have to initialize the dynamic data on screen two and make that data required and then we have to call it where we have created the route of that in the routes file. At that place we have to use that in Hash Map. And we will provide the data as the arguments in the home screen where we have used the route.


 



A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
