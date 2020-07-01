# Design Challenge (App Documentation)

## Description
#### This App is a demonstration of the ease with which UIs can be recreated using Flutter from a given design template.

## Project Setup
#### Steps carried out before writing the application code:

1. Update the "pubspec.yaml" file to include the following packages
 ```
  font_awesome_flutter: ^8.8.1
  dotted_border: ^1.0.5
  clip_shadow: ^0.2.1
 ```
under the following section of the "pubspec.yaml" file
 ```
 dependencies:
  flutter:
    sdk: flutter
 ```
 and run pub get.

 Note: The "font_awesome_flutter" package is used for custom icons, where applicable. The "dotted_border" package is used to provide a dotted border to the Container Widget, where applicable. The "clip_shadow" package is used to provide a shadow to the clip paths, where applicable. All these packages can be found on the [**Pub**](https://pub.dev/) website. The package versions will need to be updated in the "pubspec.yaml" file from time to time.

2. Add the following folder to the Assets section in the "pubspec.yaml" file:
 ```
  assets:
    - images/
    - fonts/
 ```

```
  fonts:
    - family: BrandonGrotesque-Black
      fonts:
        - asset: assets/fonts/BrandonGrotesque-Black.ttf
    - family: ProximaNova-Regular
      fonts:
        - asset: assets/fonts/ProximaNova-Regular.ttf
    - family: ProximaNova-Light
      fonts:
        - asset: assets/fonts/ProximaNova-Light.ttf
    - family: ProximaNova-Semibold
      fonts:
        - asset: assets/fonts/ProximaNova-Semibold.ttf
    - family: MyriadPro-Bold
      fonts:
        - asset: assets/fonts/MyriadPro-Bold.ttf
    - family: MyriadPro-Regular
      fonts:
        - asset: assets/fonts/MyriadPro-Regular.ttf
    - family: HelveticaNeue-Medium
      fonts:
        - asset: assets/fonts/HelveticaNeue-Medium.ttf
    - family: MuseoSans-100
      fonts:
        - asset: assets/fonts/MuseoSans-100.ttf
    - family: MuseoSans-300
      fonts:
        - asset: assets/fonts/MuseoSans-300.ttf
    - family: Futura-Heavy
      fonts:
        - asset: assets/fonts/Futura-Heavy.ttf
    - family: Futura-Light
      fonts:
        - asset: assets/fonts/Futura-Light.ttf
    - family: LatoRegular
      fonts:
        - asset: assets/fonts/LatoRegular.ttf
    - family: LatoBlack
      fonts:
        - asset: assets/fonts/LatoBlack.ttf
    - family: LatoBold
      fonts:
        - asset: assets/fonts/LatoBold.ttf
    - family: LatoLightItalic
      fonts:
        - asset: assets/fonts/LatoLightItalic.ttf
    - family: DINPro-Bold
      fonts:
        - asset: assets/fonts/DINPro-Bold.ttf
    - family: DINPro-BoldItalic
      fonts:
         - asset: assets/fonts/DINPro-BoldItalic.ttf
    - family: DINPro-Italic
      fonts:
         - asset: assets/fonts/DINPro-Italic.ttf
    - family: DINPro-Light
      fonts:
         - asset: assets/fonts/DINPro-Light.ttf
```

3. In the "AndroidManifest.xml" file, update the name of the app under the following section
 ```
 <application
	android:label="Design Challenge">
 </application>
 ```

4. Update the SDK constraints under the Project Structure settings for the App

## Code
#### Since the purpose of this project was only to demonstrate UI implementation in Flutter using Dart code, the code has not been optimized in any way. The code is also negligible as far as implementing functionality is concerned. The Layout widgets prevalent throughout the app are the Row, Column and Stack widgets. Where applicable, the ClipPath widget has been used. To make the paths as per the design templates, the code was first written in SVG using the editor found [here](https://www.w3schools.com/graphics/svg_path.asp). The co-ordinates were then ported to Dart code. The SVG code has been provided as comments where applicable. In general, separate widgets have been used for the Header, Content and Footer. In cases where the background has a gradient, a Container Widget has been used. Most of the code, i hope, is self-explanatory.

## Assets
#### This folder contains images and fonts used for the root widget and the main menu of the app. The images were extracted from the design templates. The fonts were determined from the design templates and sourced from a search engine. I am not sure how to provide attribution for the fonts, designs and the images. I have provided the images so that the app can be run. I have not provided the fonts. Please use a search engine to find the fonts. All the designs were sourced from [Dribbble](https://dribbble.com/). Please "like" or "thums up" or "favourite" the designers by following the links in the "References" section of this Readme. The images can be found  [here](Documentation/Assets/images.zip). Once the fonts have been downloaded, they will have to be renamed as shown in the list of fonts. The list of Fonts are as follows:

##### BrandonGrotesque-Black.ttf  
##### DINPro-Bold.ttf  
##### DINPro-BoldItalic.ttf  
##### DINPro-Italic.ttf  
##### DINPro-Light.ttf  
##### Futura-Heavy.ttf  
##### Futura-Light.ttf  
##### HelveticaNeue-Medium.ttf  
##### LatoBlack.ttf  
##### LatoBold.ttf  
##### LatoLightItalic.ttf  
##### LatoRegular.ttf  
##### MuseoSans-100.ttf  
##### MuseoSans-300.ttf  
##### MyriadPro-Bold.ttf  
##### MyriadPro-Regular.ttf  
##### ProximaNova-Light.ttf  
##### ProximaNova-Regular.ttf  
##### ProximaNova-Semibold.ttf  

## Screenshots
#### [Home](Documentation/Screenshots/Home.png)
#### [DesignChallenge01](Documentation/Screenshots/DesignChallenge01.png)
#### [DesignChallenge02](Documentation/Screenshots/DesignChallenge02.png)
#### [DesignChallenge03](Documentation/Screenshots/DesignChallenge03.png)
#### [DesignChallenge04](Documentation/Screenshots/DesignChallenge04.png)
#### [DesignChallenge05](Documentation/Screenshots/DesignChallenge05.png)
#### [DesignChallenge06](Documentation/Screenshots/DesignChallenge06.png)
#### [DesignChallenge07](Documentation/Screenshots/DesignChallenge07.png)
#### [DesignChallenge08](Documentation/Screenshots/DesignChallenge08.png)
#### [DesignChallenge09](Documentation/Screenshots/DesignChallenge09.png)
#### [DesignChallenge10](Documentation/Screenshots/DesignChallenge10.png)

## Future Work
#### 1) A lot of scope of improvement in the way the widgets are laid out. LayoutBuilder and RichText Widgets can be used where needed.
#### 2) Code for the Home Screen can be modularized
#### 3) The UIs are not responsive and can be made responsive

## Design References
1) [Weather App Experiment by Shawn Golden](https://dribbble.com/shots/2407191-Weather-App-Experiment?utm_source=Clipboard_Shot&utm_campaign=shawngolden&utm_content=Weather%20App%20Experiment&utm_medium=Social_Share)  
2) [Apperto by by Dino Voloder for Lembro](https://dribbble.com/shots/2689108-Apperto?utm_source=Clipboard_Shot&utm_campaign=dinolembro&utm_content=Apperto&utm_medium=Social_Share)  
3) [Coffee Shop App by by Khalid Almallahi](https://dribbble.com/shots/10883195-Coffee-Shop-App?utm_source=Clipboard_Shot&utm_campaign=AbuKotsh&utm_content=Coffee%20Shop%20App&utm_medium=Social_Share)  
4) [App Login Screen by Mohan L](https://dribbble.com/shots/2759278-App-Login-Screen?utm_source=Clipboard_Shot&utm_campaign=mohanraj0411&utm_content=App%20Login%20Screen&utm_medium=Social_Share)  
5) [Free PSD - Traveling Mobile App by Raj Dhruv](https://dribbble.com/shots/3744819-Free-PSD-Traveling-Mobile-App?utm_source=Clipboard_Shot&utm_campaign=rd59&utm_content=Free%20PSD%20-%20Traveling%20Mobile%20App&utm_medium=Social_Share)  
6) [Payments & Wallet. IOS App by Brice Séraphin](https://dribbble.com/shots/5886826-Payments-Wallet-IOS-App-Freebies?utm_source=Clipboard_Shot&utm_campaign=briceseraphin&utm_content=Payments%20%26%20Wallet.%20IOS%20App%20%23Freebies&utm_medium=Social_Share)  
7) [Wallet & User Profile Add. App by Brice Séraphin](https://dribbble.com/shots/4871876-Wallet-User-Profile-Add-App-Freebies%20-%202-user-profile-add.psd)  
8) [Checkout, Finger Scan & Payment Verified. IOS APP by Brice Séraphin](https://dribbble.com/shots/4913343-Checkout-Finger-Scan-Payment-Verified-IOS-APP-Freebies%20-%203-payment-verified.psd)  
9) [Music Player. App by Brice Séraphin](https://dribbble.com/shots/4819236-Music-Player-App-Freebies%20-%20my-playlist.psd)  
10) [Trix UI Kit by Tribhuvan Suthar](https://dribbble.com/shots/3759693-Trix-UI-Kit-freebie)

## Code references
#### [Clipping widgets with bezier curves in Flutter](https://iiro.dev/2017/09/04/clipping-widgets-with-bezier-curves-in-flutter/)
#### [SVG Tutorial by Roberto Matthews (YouTube channel playlist)](https://www.youtube.com/playlist?list=PLyrSJ7QS28q7gAnK1hacnoDkRzE9SQeHJ)
