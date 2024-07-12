# <b> Flutter MVC+S Template </b>

### <b> Main Packages : </b>

1. Riverpod, Hooks <i> (State management) </i>
2. Go Router <i> (Navigation & Routing) </i>
3. Responsive Framework <i> (Responsive & Auto adapt) </i>
4. Freezed, Freezed Annotation <i> (Immutable class generator) </i>
5. Json Serializable, Json Annotation <i> (to & from generator) </i>
6. Riverpod Lint, Custome Lint <i> (Linter for riverpod) </i>
7. Build Runner <i> (Dart code generator) </i>

### <b> Additional Packages : </b>

1. Vector Graphics, Vector Graphics Compiler <i> (SVG renderer & optimize) </i>
2. Shared Preferences <i> (Simple key-value pairs storage) </i>
3. Intl <i> (Internationalized, date & number format & parse, etc) </i>
4. Http <i> (Http request) </i>
5. Animations <i> (Fancy pre-built animations) </i>
6. Dartx <i> (Collection of useful static extension methods) </i>

### <b> Additional Config </b>

#### Enable Impeller on android (default on next release)

1. Add this code on AndroidManifest.xml (android/app/src/main/AndroidManifest.xml) below application tag

```xml
<meta-data
        android:name="io.flutter.embedding.android.EnableImpeller"
        android:value="true" />
```

#### Consume .env on android folder (dart-define method)

1. Add this code on build.gradle (android/app/build.gradle) above android block

```gradle
def dartEnvironmentVariables = []
if (project.hasProperty('dart-defines')) {
    dartEnvironmentVariables = project.property('dart-defines')
        .split(',')
        .collectEntries { entry ->
            def pair = new String(entry.decodeBase64(), 'UTF-8').split('=')
            [(pair.first()): pair.last()]
        }
}
```

2. Add this code on build.gradle (android/app/build.gradle) inside defaultConfig on android block

```gradle
android {
    ... Other Code here ...

    defaultConfig {
        ... Other Code here ...

        manifestPlaceholders += [
            GMAP_KEY: dartEnvironmentVariables.GMAP_KEY
        ]
    }

    ... Other Code here ...
}
```

3. Usage on AndroidManifest.xml (android/app/src/main/AndroidManifest.xml) above activity tag on application tag

```xml
<meta-data android:name="com.google.android.geo.API_KEY"
            android:value="${GMAP_KEY}" />
```
