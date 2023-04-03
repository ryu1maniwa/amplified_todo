# このリポジトリを用いてアプリを実行する
```
git clone git@github.com:ryu1maniwa/amplified_todo.git
cd amplified_todo
amplify pull --appId d2r7edsllyh3vz --envName staging
? Choose your default editor:
    `<your editor of choice>`
? Choose the type of app that you're building
    `flutter`
? Where do you want to store your configuration file?
    `./lib/`
? Do you plan on modifying this backend?
    `Yes`
✅ Successfully pulled backend environment staging from the cloud.
flutter pub get
```
# 環境構築メモ(Windows)
基本的に以下のサイトに従う  
https://docs.flutter.dev/get-started/install/windows

### flutterのインストール
```bash
cd C:\src
git clone https://github.com/flutter/flutter.git -b stable
```
- C:\src\flutterのパスをPCのユーザ環境変数に追加する
```
flutter doctor
```
### android studioのインストール
この部分だけ以下のサイトに従った  
https://tech.nri-net.com/entry/getting_started_with_flutter_on_windows

### android emulatorのセットアップ
以下の手順に従う  
https://docs.flutter.dev/get-started/install/windows#set-up-the-android-emulator

## flutter doctor
```
Doctor summary (to see all details, run flutter doctor -v):  
[√] Flutter (Channel stable, 3.7.8, on Microsoft Windows [Version 10.0.19045.2728], locale ja-JP)  
This is taking an unexpectedly long time...[X] Windows Version (Unable to confirm if installed Windows version is 10 or greater)  
[√] Android toolchain - develop for Android devices (Android SDK version 33.0.2)  
[√] Chrome - develop for the web  
[√] Visual Studio - develop for Windows (Visual Studio Community 2022 17.5.1)  
[√] Android Studio (version 2022.1)  
[√] VS Code (version 1.77.0)  
[√] Connected device (4 available)  
[√] HTTP Host Availability  

! Doctor found issues in 1 category.  
```

## 各SDKのバージョン
Android SDK Build-Tools 33.0.2  
Android SDK Platform 33  
Android SDK Platform-Tools  
Android Emulator Resizable(Experimental)  
## リポジトリのクローン
```
git clone git@github.com:ryu1maniwa/amplified_todo.git
cd amplified_todo
```

# Amplify CLIのインストール
以下に従った  
[Install the Amplify CLI](https://docs.amplify.aws/cli/start/install/#install-the-amplify-cli)

## npmのインストール
https://nodejs.org/en  
https://qiita.com/taiponrock/items/9001ae194571feb63a5e

## amplify configure実行時のエラー
- エラー内容
```
amplify : このシステムではスクリプトの実行が無効になっているため、ファイル C:\Users\ryu1m\AppData\Roaming\npm\amplify.ps1 を読み込むことができま
せん。詳細については、「about_Execution_Policies」(https://go.microsoft.com/fwlink/?LinkID=135170) を参照してください。
発生場所 行:1 文字:1
+ amplify configure
+ ~~~~~~~
    + CategoryInfo          : セキュリティ エラー: (: ) []、PSSecurityException
    + FullyQualifiedErrorId : UnauthorizedAccess
```

- 解決策
PowerShellを管理者権限で開いて以下を実行する
```
Set-ExecutionPolicy Default -Scope CurrentUser
```