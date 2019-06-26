import 'package:flutter/material.dart';
import 'package:flutter_layouts/list_layout/contact.dart';

class ListWidget extends StatelessWidget {
  ListWidget({Key key});

  List<Contact> allContacts = [
    Contact(name: "Shohieb Ahmad N", email: "shohiebsense@gmail.com"),
    Contact(name: "Sopian Farhan", email: "farhans@yahoo.com"),
    Contact(name: "Kezia Intan", email: "intantluchu@yahoa.com"),

  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: _buildItemList(),
      ),
    );
  }


  Widget _buildItemList(){
    return ListView.builder(
        itemBuilder: (BuildContext content, int index){
          Contact contact = allContacts[index];
          return ContactListTile(contact);
        },
      itemCount: allContacts.length,
    );
  }


}

class ContactListTile extends ListTile {
  ContactListTile(Contact contact) : super(
    title: Text(contact.name),
    subtitle: Text(contact.email),
    leading: CircleAvatar(child: Text(contact.name[0]),)
  );
}


























