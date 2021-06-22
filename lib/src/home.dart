/*
The Joker by Alexander Abraham.
Licensed under the MIT license.
*/

/// Imports app-wide variables.
import 'vars.dart';
/// Imports the number generation functions.
import 'generator.dart';
/// Imports the widget library.
import 'package:flutter/material.dart';
/// Imports the services needed to copy
/// content into RAM.
import 'package:flutter/services.dart';
/// Imports generated localizations.
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
/// Imports localization services.
import 'package:flutter_localizations/flutter_localizations.dart';

/// This is an implementation of
/// the stateful component of
/// the [Joker] class. This needs
/// to be there to dynamically
/// update content in the widget
/// itself.
class Joker extends StatefulWidget{
  JokerState createState(){
    return JokerState();
  }
}

/// This class implements the actual
/// widget tree.
class JokerState extends State<Joker> {
  /// We need a list of numbers
  /// that can be updated dynamically.
  /// This is initialized here.
  late List<String> numbers;
  /// Initializing the variable [numbers].
  @override
  void initState(){
    super.initState();
    numbers = numberGen(startingCount);
  }
  /// Returns the widget tree.
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: mainColor,
      appBar: new AppBar(
        backgroundColor: mainColor,
        elevation: stdElevation,
        title: new Padding(
          padding: EdgeInsets.all(stdPadding),
          child: new Text(
            appTitle,
            style: new TextStyle(
              color: accentColor,
              fontSize: headingFontSize,
              fontFamily: defaultFont
            )
          )
        )
      ),
      body: new SingleChildScrollView(
        child: new Center(
          child: new Column(
            children: <Widget> [

              /// The dividers are there for aesthetic
              /// reasons only.
              new Divider(
                thickness: defaultThickness,
                height: stdPadding,
                color: accentColor
              ),

              /// This is the button to dynamically
              /// update the list of phone numbers.
              new Padding(
                padding: EdgeInsets.all(stdPadding),
                child: new RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(stdRounding)
                  ),
                  color: accentColor,
                  padding: EdgeInsets.all(stdPadding),
                  child:new Text(
                    AppLocalizations.of(context)!.generateLabel,
                    style: new TextStyle(
                      color: mainColor,
                      fontSize: defaultFontSize,
                      fontFamily: defaultFont
                    )
                  ),
                  onPressed: () {
                    /// Here we trigger an update to be
                    /// made to the [numbers] list.
                    setState((){
                      numbers = numberGen(newCount);
                    });
                  }
                )
              ),

              /// The dividers are there for aesthetic
              /// reasons only.
              new Divider(
                thickness: defaultThickness,
                height: stdPadding,
                color: accentColor
              ),

              /// This is where all the
              /// numbers are displayed.
              new ListView.builder(
                shrinkWrap: isSo,
                itemCount: numbers.length,
                itemBuilder: (context, index){
                  String number = numbers[index];
                  return new Padding(
                    padding: EdgeInsets.all(stdPadding),
                    child: new SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: new Padding(
                        padding: EdgeInsets.all(stdPadding),
                        child:new Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(stdRounding)
                          ),
                          color: accentColor,
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget> [
                              new Padding(
                                padding: EdgeInsets.all(stdPadding),
                                child: new Text(
                                  '$number',
                                  style: new TextStyle(
                                    color: mainColor,
                                    fontSize: defaultFontSize,
                                    fontFamily: defaultFont
                                  )
                                )
                              ),
                              new Padding(
                                padding: EdgeInsets.all(stdPadding),
                                child: new RaisedButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(stdRounding)
                                  ),
                                  color: mainColor,
                                  padding: EdgeInsets.all(stdPadding),
                                  child: new Text(
                                    AppLocalizations.of(context)!.copyLabel,
                                    style: new TextStyle(
                                      color: accentColor,
                                      fontSize: defaultFontSize,
                                      fontFamily: defaultFont
                                    )
                                  ),
                                  onPressed: () {
                                    /// Actually copies the number
                                    /// into RAM.
                                    Clipboard.setData(
                                      ClipboardData(
                                        text: '$number'
                                      )
                                    );
                                    /// This shows a small notification
                                    /// that the number has been copied into
                                    /// RAM.
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(stdRounding)
                                        ),
                                        behavior: SnackBarBehavior.floating,
                                        width: MediaQuery.of(context).size.width-(stdPadding * decrementFactor),
                                        padding: EdgeInsets.all(specialPadding),
                                        backgroundColor: accentColor,
                                        content: new Text(
                                          AppLocalizations.of(context)!.copiedLabel,
                                          style: new TextStyle(
                                            color: mainColor,
                                            fontSize: smallFontSize,
                                            fontFamily: defaultFont
                                          )
                                        ),
                                      )
                                    );
                                  }
                                )
                              )
                            ]
                          )
                        )
                      )
                    )
                  );
                }
              )
            ]
          )
        )
      )
    );
  }
}
