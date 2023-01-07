import 'package:contacts/constants/color.dart';
import 'package:contacts/constants/text.dart';
import 'package:contacts/constants/text_style.dart';
import 'package:contacts/models/list.dart';
import 'package:contacts/widgets/textfield.dart';
import 'package:flutter/material.dart';

class Listcont extends StatefulWidget {
  const Listcont({super.key});

  @override
  State<Listcont> createState() => _ListcontState();
}

class _ListcontState extends State<Listcont> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();

  editContact(context, index) {
    setState(() {
      Contacts[index] = {
        "name": Contacts[index]['Name'] == controller1.text,
        "userName": Contacts[index]['Surname'] == controller2.text,
        "number": Contacts[index]['Phonenumber'] == controller3.text,
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstant.white,
       appBar: AppBar(
        
        elevation: 1,
        backgroundColor: Colorconstant.white,
        shadowColor: Colorconstant.black,
        title: Text(
          TextConstants.contacts,
          style: Roboto500.copyWith(color: Colorconstant.black),
        ),
        actions: [
          IconButton(
            onPressed: () {
            
            },
            icon: Icon(
              Icons.search,
              color: Colorconstant.black,
            ),
          ),
           IconButton(
            onPressed: () {
            
            },
            icon: Icon(
              Icons.more_vert,
              color: Colorconstant.black,
            ),
          ),
        
        ],
      ),
     
    body: Column (
      children:[ ListView.builder(
          itemCount: Contacts.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 100,
              width: double.infinity,
              color: Colorconstant.numbercolor,
              child: ListTile(
                
                leading: CircleAvatar(
                  backgroundColor: Colorconstant.numbercolor,
                  radius: 30,
                  child: Text("${Contacts[index]['Name'][0]}"),
                ),
                title: Text(
                  '${Contacts[index]['Name']} ${Contacts[index]['Surname']}',
                  style: Roboto516.copyWith(color: Colorconstant.black),
                ),
                subtitle: Text(
                  '${Contacts[index]['Phonenumber']}',
                  style: Roboto514.copyWith(color: Colorconstant.numbercolor),
                ),
                trailing: Row(
                  children: [
                    IconButton(
                        onPressed: () async {
                          await showModalBottomSheet(
                              isScrollControlled: true,
                              elevation: 1,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return Container(
                                  height: 300,
                                  width: double.infinity,
                                  color: Colorconstant.white,
                                  child: SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        TextConstants.name,
                                        style: Roboto414.copyWith(
                                          color: Colorconstant.black,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Customfield(
                                        text: TextConstants.helper1,
                                        controler: controller1,
                                        type: TextInputType.name,
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        TextConstants.surname,
                                        style: Roboto414.copyWith(
                                          color: Colorconstant.black,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Customfield(
                                        text: TextConstants.helper2,
                                        controler: controller2,
                                        type: TextInputType.name,
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        TextConstants.phonenumber,
                                        style: Roboto414.copyWith(
                                          color: Colorconstant.black,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Customfield(
                                        text: TextConstants.helper3,
                                        controler: controller3,
                                        type: TextInputType.phone,
                                      ),
                                    ],
                                  )),
                                );
                              });
                        },
                        icon: Icon(
                          Icons.edit,
                          color: Colorconstant.black,
                        ),),
                        IconButton(onPressed: (){
                          Contacts.removeAt(index);
                        }, icon: Icon(Icons.delete,color: Colorconstant.black,))
                  ],
                ),
              ),
            );
          },
        ),],
    ),
    );
  }
}
