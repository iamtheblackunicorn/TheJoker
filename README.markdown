<p align="center">
 <img src="assets/images/banner.png"/>
</p>

# JOKER :clown_face: :smiling_imp:

***Be naughty with Austrian phone numbers! :clown_face: :smiling_imp:***

## About :books:

Since I am somewhat mischievous unicorn sometimes, I wanted to see if I could make an app
that would let me text random people random stuff to mess with them and maybe have a little laugh.
The app generates random phone numbers for Austria and then lets you copy those numbers into your
clipboard.
Use this however you wish, I'm not responsible for any mischief made.

## Download :inbox_tray:

- ***Gotham City (Version 1.0.0):***
  - ***[Download for Android](https://github.com/iamtheblackunicorn/TheJoker/releases/download/v.1.0.0/TheJoker-v1.0.0-GothamCity-Release.apk) (16.9 MB)***
  - ***[Download for Mac OSX](https://github.com/iamtheblackunicorn/TheJoker/releases/download/v.1.0.0/TheJoker-v1.0.0-GothamCity-Release.apk) (13.5 MB)***

## Building & Compilation :hammer:

### Generate a build for Android

If you want to make a build for Android, make sure you have the following tools installed:

- Flutter
- Android SDK
- Git
- Java JDK 8+
- Android SDK Platform tools (optional)

Once you have those tools on your system, follow these steps:

- 1.) Fetch the source code:

```bash
$ git clone https://github.com/iamtheblackunicorn/TheJoker.git
```

- 2.) Change directory:

```bash
$ cd TheJoker
```

- 3.) Fill in the Java Keystore passwords in the file `android/app/key.properties`. I am assuming you already have a Java Keystore in the form of a file called `key.jks` with the alias of `key`. If you don't, find out how to generate one by clicking [here](https://developer.android.com/studio/publish/app-signing#generate-key).

- 4.) Move the Java Keystore to `android/app`.

- 5.) Compile a binary distribution to install on your device(s):

```bash
$ flutter build apk
```

- 6.) Transfer the generated `APK` to your Android device and install it.

- 7.) Make some mischief!

### Generate a build for Mac OSX

If you want to make a build for Mac OSX, make sure you have the following tools installed:

- Flutter
- Xcode
- Git

Once you have those tools on your system, follow these steps:

- 1.) Fetch the source code:

```bash
$ git clone https://github.com/iamtheblackunicorn/TheJoker.git
```

- 2.) Change directory:

```bash
$ cd TheJoker
```

- 3.) Build it:

```bash
$ flutter build macos
```

- 4.) Find the generated `*.app` file and open it!

- 5.) Enjoy! :)

## Extending the supported languages :book:

*Joker* is localized for German and English. To add a language, simply create a filed called `app_languagecode.arb` in `l10n` where `languagecode` represents the language code for the language you want to add. If it were Spanish for example, you would create a file called `app_es.arb`.
Copy and paste the contents from one of the other `*.arb` files and edit the strings accordingly.
Finally, add this line in the list `supportedLocales` in the file `lib/main.dart`.

```dart
Locale('languagecode', ''),
```

## Changelog :black_nib:

### Version 1.0.0: ***Gotham City***

- optimised speed
- null safety
- optimised number generation

## Note :scroll:

- *Joker :clown_face: :smiling_imp:* by Alexander Abraham :black_heart: a.k.a. *"The Black Unicorn" :unicorn:*
- Licensed under the MIT license.
