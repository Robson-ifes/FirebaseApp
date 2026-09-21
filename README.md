# 🔥 FirebaseApp - Semana 6

Atividade desenvolvida para a disciplina **Desenvolvimento de Aplicativos II**.

## 📌 Objetivo da semana

Nesta sexta semana, o objetivo foi implementar notificações no aplicativo Flutter utilizando o pacote **flutter_local_notifications**.

O aplicativo passou a enviar uma notificação local sempre que uma nova anotação é adicionada pelo usuário autenticado.

## ✅ O que foi realizado

- Criação da branch **semana6**
- Inclusão da permissão para enviar notificações no Android
- Configuração do desugaring no projeto Android
- Instalação do pacote **flutter_local_notifications**
- Instalação do pacote **permission_handler**
- Criação do arquivo **lib/notifications.dart**
- Inicialização das notificações no aplicativo
- Criação de um canal de alta importância para as notificações
- Solicitação de permissão para notificações no Android
- Integração das notificações com a criação de novas anotações
- Teste do aplicativo no emulador Pixel 10 Pro
- Publicação da branch **semana6** no GitHub

## 🚀 Tecnologias utilizadas

- 🐦 Flutter
- 🎯 Dart
- 🔥 Firebase
- 🔐 Firebase Authentication
- 🗄️ Cloud Firestore
- 🔔 Flutter Local Notifications
- 🛡️ Permission Handler
- 🧩 FlutterFire CLI
- 💻 Visual Studio Code
- 🟢 Android Studio
- 🌱 Git
- 🐙 GitHub
- 📱 Android Emulator

## 🔔 Configuração das notificações

As notificações foram configuradas no arquivo:

```text
lib/notifications.dart
```

O arquivo cria o canal `high_importance_channel`, inicializa o plugin de notificações e disponibiliza o método utilizado para exibir uma mensagem ao usuário.

Quando uma anotação é adicionada, o aplicativo exibe uma notificação com o título:

```text
Nota criada
```

E com o texto da anotação criada no corpo da notificação.

## 🔐 Permissão no Android

Foi adicionada ao arquivo `AndroidManifest.xml` a permissão necessária para o Android 13 ou superior:

```xml
<uses-permission android:name="android.permission.POST_NOTIFICATIONS" />
```

Também foi utilizado o pacote `permission_handler` para solicitar a autorização do usuário durante a execução do aplicativo.

## ⚙️ Configuração do projeto Android

O suporte ao desugaring foi habilitado no arquivo:

```text
android/app/build.gradle.kts
```

Dependência utilizada:

```kotlin
coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.4")
```

## ▶️ Comandos utilizados

Instalação dos pacotes:

```bash
flutter pub add flutter_local_notifications:19.5.0
flutter pub add permission_handler:12.0.3
```

Execução do aplicativo no emulador Android:

```bash
flutter run -d emulator-5554
```

Publicação da branch no GitHub:

```bash
git add .
git commit -m "Semana 6 - notificacoes push"
git push origin semana6
```

## 📁 Arquivos alterados/criados

Durante a atividade, foram utilizados principalmente os arquivos:

```text
android/app/build.gradle.kts
android/app/src/main/AndroidManifest.xml
lib/main.dart
lib/notes.dart
lib/notifications.dart
pubspec.yaml
pubspec.lock
```

## 🧪 Resultado obtido

O aplicativo foi executado no emulador **Pixel 10 Pro**, utilizando Android 16 e API 36.

Após entrar no aplicativo, acessar **Anotações** e adicionar uma nova nota, a notificação foi exibida corretamente no emulador:

```text
Nota criada - Teste da semana 6!!
```

Também foi exibida a solicitação de permissão:

```text
Allow firebase_app to send you notifications?
```

Ao permitir as notificações, o aplicativo passou a exibir avisos sempre que uma nova anotação era criada.

## 💬 Observações

Nesta etapa foram implementadas notificações locais no Android. O aplicativo solicita a permissão de notificações e utiliza um canal de alta importância para destacar o aviso de criação de uma nova nota.

## 👨‍💻 Autor

Robson Silva Ribeiro

## 🔗 Repositório

https://github.com/Robson-ifes/FirebaseApp

## 🌿 Branch da atividade

```text
semana6
```
