import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myfirstflutterapp/taluk/taluk_cubit.dart';
import 'package:myfirstflutterapp/village/village_cubit.dart';
import 'districtcubit/district_cubit.dart';

class firstpage extends StatefulWidget {
   firstpage({super.key,});



  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  List<String>list=[];
  @override
  void iniState(){
   for(var i=0;i<10;i++){
     list.add(i.toString());
   }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      appBar: AppBar(

        brightness: Brightness.dark,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 70,
        title: Text("List"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
              gradient: LinearGradient(
                  colors: [Colors.purple,Colors.pink],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              )
          ),
        ),
      ),
      body: MultiBlocProvider(
  providers: [
    BlocProvider(
  create: (context) => DistrictCubit()..getdistrict(),
),
    BlocProvider(
      create: (context) => TalukCubit()..getTaluk(),
    ),
    BlocProvider(
      create: (context) => VillageCubit()..getvillages(),
    ),

  ],
  child: Padding(

        padding: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
          //  crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocBuilder<DistrictCubit,DistrictState>(
  builder: (context, disstate) {
    if(disstate is DistrictLoaded){
      return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('District :',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            Container(
              height: 30,
              width: 200,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black)
              ),
              child: Center(child: Text('${disstate.district[0].districtNameEnglish}')),
            )
          ],
      );
    }
    return Container();
  },
),
               SizedBox(height: 30,),
              BlocBuilder<TalukCubit,TalukState>(
  builder: (context, state) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Text('Taluk:',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  Container(
                    height: 30,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black)
                    ),
                  )
                ],
              );
  },
),
              SizedBox(height: 30,),
               Padding(
                 padding: const EdgeInsets.only(left: 20,right: 20),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text('Village',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                     SizedBox(height: 30,),
                     BlocBuilder<VillageCubit, VillageState>(
  builder: (context, state) {
    if(state is VillageLoaded){
      return Column(
        children: [
         Table(
            defaultColumnWidth: FixedColumnWidth(120),
            border: TableBorder.all(
                color: Colors.black,
                style: BorderStyle.solid,
                width: 2
            ),
            children: [

              TableRow(
                  children: [
                    Column(
                      children: [
                        Text('s.no',style: TextStyle(fontSize: 20),),
                      ],
                    ),
                    Column(
                      children: [
                        Text('Village Name',style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ]
              ),



            ],
          ),
          ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount:15,
                itemBuilder: (BuildContext context, int index){

                  return Table(
                    defaultColumnWidth: FixedColumnWidth(120),
                    border: TableBorder.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 2
                    ),
                    children: [
                      TableRow(
                          children: [
                            Column(
                              children: [
                               // Text('$list',style: TextStyle(fontSize: 20),),
                              ],
                            ),
                            Column(
                              children: [
                                Text('${state.villages[index].villageNameEnglish}',style: TextStyle(fontSize: 20),),
                              ],
                            ),
                          ]
                      ),

                    ],
                  );

                }),
        ],
      );
    }
    return Container();

  },
)
                   ],
                 ),
               ),


            ],
          ),
        ),
      ),
),
    );
  }
}


