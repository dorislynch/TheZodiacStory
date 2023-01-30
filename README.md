
# react-native-the-zodiac-story

## Getting started

`$ npm install react-native-the-zodiac-story --save`

### Mostly automatic installation

`$ react-native link react-native-the-zodiac-story`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-the-zodiac-story` and add `RNTheZodiacStory.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNTheZodiacStory.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNTheZodiacStoryPackage;` to the imports at the top of the file
  - Add `new RNTheZodiacStoryPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-the-zodiac-story'
  	project(':react-native-the-zodiac-story').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-the-zodiac-story/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-the-zodiac-story')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNTheZodiacStory.sln` in `node_modules/react-native-the-zodiac-story/windows/RNTheZodiacStory.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using The.Zodiac.Story.RNTheZodiacStory;` to the usings at the top of the file
  - Add `new RNTheZodiacStoryPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNTheZodiacStory from 'react-native-the-zodiac-story';

// TODO: What to do with the module?
RNTheZodiacStory;
```
  