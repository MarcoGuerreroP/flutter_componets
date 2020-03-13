import 'package:flutter/material.dart';
class InputPage extends StatefulWidget {
  

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre = '';
  String _email = '';
  String _pass;
  String _date;
  String _opcionSeleccionada = 'Volar';
  TextEditingController _inputFielDateController = new TextEditingController();
  List<String> _poderes = ['Volar', 'Rayos x', 'Super Aliento', 'Super fuerza', 'Mega Velocidad'];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 2.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropdown(),
          Divider(),
          _crearPersona(),
          

        ],
      ),
    );
    }
    Widget _crearInput(){
      return TextField(
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          border:OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0)
          ),
          counter: Text('cantidad de letras: ${_nombre.length}'),
          hintText: 'Nombre de la persona',
          labelText: 'Solo el nombre',
          helperText: 'Nombre',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle)
        ),
        onChanged: (valor){
          setState(() {
          _nombre = valor;
          });
        },

      );
  }

  Widget _crearPersona(){

      return ListTile(
    title: Text('Nombre es: $_nombre'),
    subtitle: Text('Email: $_email'),
    trailing: Text(_opcionSeleccionada),
    );
  }


  Widget _crearEmail(){

    return TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border:OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0)
          ),
          hintText: 'Email',
          labelText: 'Email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email)
        ),
        onChanged: (valor) => setState(() {
          _email = valor;
          })
      );
  }

  Widget _crearPassword(){
    return TextField(
        obscureText: true,
        decoration: InputDecoration(
          border:OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0)
          ),
          hintText: 'Password',
          labelText: 'Password',
          suffixIcon: Icon(Icons.lock_open),
          icon: Icon(Icons.lock)
        ),
        onChanged: (valor) => setState(() {
          _pass = valor;
          })
      );

  }

  Widget _crearFecha(BuildContext context){
    return TextField(
        controller: _inputFielDateController,
        enableInteractiveSelection: false,
        decoration: InputDecoration(
          border:OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0)
          ),
          hintText: 'Fecha de nacimeinto',
          labelText: 'Fecha de nacimeinto',
          suffixIcon: Icon(Icons.calendar_today),
          icon: Icon(Icons.perm_contact_calendar)
        ),
        onTap: (){
          FocusScope.of(context).requestFocus(new FocusNode());
          _selectDate( context );

        },
      );
  }

  _selectDate(BuildContext context) async {



    DateTime picked = await showDatePicker(
      context: context,
      
      initialDate: new DateTime.now(),
      firstDate: new DateTime(1950),
      lastDate: new DateTime(2040),
      locale: Locale('es', 'ES')
    );

    if ( picked != null) {
      setState(() {
        _date = picked.toString();
        _inputFielDateController.text = _date;
      });
      
    }

  }



  List<DropdownMenuItem<String>> getOpcionesDropdown() {

    List<DropdownMenuItem<String>> lista = new List();
      _poderes.forEach((poder) {
       lista.add(DropdownMenuItem(
          child: Text(poder),
          value: poder,

       ));

      });

      return lista;

  }

  Widget _crearDropdown(){

    return Row(
      children: <Widget>[
      Icon(Icons.select_all),
      SizedBox(width: 30.0),
      Expanded(
      child: DropdownButton(
      value: _opcionSeleccionada,
      items: getOpcionesDropdown(),
      onChanged: (opt){
        setState(() {
         _opcionSeleccionada = opt; 
        });

        
      },
  ),
      
  )

  



  ],
  );
    
  }
    
     

}