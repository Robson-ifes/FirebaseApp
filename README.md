# 🔥 FirebaseApp - Semana 2

Atividade desenvolvida para a disciplina **Desenvolvimento de Aplicativos II**.

## 📌 Objetivo da semana

Nesta segunda semana, o objetivo foi configurar o projeto Flutter para utilizar o Firebase, realizando a autenticação no Firebase CLI, a instalação do FlutterFire CLI e a geração dos arquivos de configuração do Firebase.

## ✅ O que foi realizado

- Criação da branch **semana2**
- Instalação do Firebase CLI
- Login na conta Google pelo Firebase CLI
- Instalação do FlutterFire CLI
- Configuração do projeto Flutter com o Firebase
- Geração do arquivo **lib/firebase_options.dart**
- Registro das plataformas **android**, **web** e **windows** no Firebase
- Instalação do pacote **firebase_core**
- Alteração do arquivo **.gitignore** para ignorar arquivos gerados pelo Firebase
- Publicação da branch **semana2** no GitHub

## 🚀 Tecnologias utilizadas

- 🐦 Flutter
- 🎯 Dart
- 🔥 Firebase
- 🧩 FlutterFire CLI
- 💻 Visual Studio Code
- 🌱 Git
- 🐙 GitHub
- 🌐 Google Chrome

## ▶️ Comandos utilizados

Criação e troca para a branch da Semana 2:

```bash
git branch semana2
git checkout semana2
```

Verificação do Node.js e npm:

```bash
node --version
npm --version
```

Instalação do Firebase CLI:

```bash
npm install -g firebase-tools
```

Login no Firebase:

```bash
firebase login
```

Instalação do FlutterFire CLI:

```bash
dart pub global activate flutterfire_cli
```

Adição temporária do FlutterFire ao PATH no terminal:

```bash
$env:Path += ";C:\Users\robin\AppData\Local\Pub\Cache\bin"
```

Configuração do Firebase no projeto Flutter:

```bash
flutterfire configure
```

Instalação do Firebase Core:

```bash
flutter pub add firebase_core
```

Publicação da branch no GitHub:

```bash
git add .
git commit -m "Atualiza gitignore para arquivos do Firebase"
git push --set-upstream origin semana2
```

## 📁 Arquivos gerados/configurados

Durante a configuração do Firebase, foi gerado o arquivo:

```text
lib/firebase_options.dart
```

Também foram registrados apps Firebase para as plataformas:

```text
android
web
windows
```

## 🛡️ Alteração no .gitignore

O arquivo **.gitignore** foi atualizado para evitar o envio de arquivos de configuração gerados pelo Firebase:

```gitignore
# Firebase
firebase.json
.firebase
lib/firebase_options.dart
android/app/google-services.json
```

## 📝 Observações

O Firebase Studio foi descontinuado como ambiente de desenvolvimento, mas os serviços do Firebase continuam disponíveis. Por isso, a configuração foi realizada localmente no VS Code utilizando o Firebase CLI e o FlutterFire CLI.

O projeto foi conectado ao Firebase e preparado para continuar o desenvolvimento usando Flutter.

## 👨‍💻 Autor

Robson

## 🔗 Repositório

https://github.com/Robson-ifes/FirebaseApp

## 🌿 Branch da atividade

```text
semana2
```
