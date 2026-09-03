# 🔥 FirebaseApp - Semana 4

Atividade desenvolvida para a disciplina **Desenvolvimento de Aplicativos II**.

## 📌 Objetivo da semana

Nesta quarta semana, o objetivo foi implementar a autenticação de usuários no aplicativo Flutter utilizando o **Firebase Authentication**.

O app passou a permitir criação de conta, login, recuperação de senha e logout, liberando a tela principal somente para usuários autenticados.

## ✅ O que foi realizado

- Criação da branch **semana4**
- Ativação da autenticação por **e-mail e senha** no Firebase
- Instalação do pacote **firebase_auth**
- Criação do arquivo **lib/sign.dart**
- Criação do arquivo **lib/forgot.dart**
- Criação do arquivo **lib/login.dart**
- Alteração do arquivo **lib/main.dart**
- Criação de uma tela de login
- Criação de uma tela de cadastro
- Criação de uma tela de recuperação de senha
- Implementação do controle de usuário autenticado
- Implementação da opção **Sair**
- Teste do aplicativo no navegador Google Chrome
- Publicação da branch **semana4** no GitHub

## 🚀 Tecnologias utilizadas

- 🐦 Flutter
- 🎯 Dart
- 🔥 Firebase
- 🔐 Firebase Authentication
- 🗄️ Cloud Firestore
- 🧩 FlutterFire CLI
- 💻 Visual Studio Code
- 🌱 Git
- 🐙 GitHub
- 🌐 Google Chrome

## 🔐 Funcionalidades de autenticação

Foram implementadas as seguintes funcionalidades:

```text
Criar conta com e-mail e senha
Entrar com usuário cadastrado
Enviar link de recuperação de senha
Manter o usuário autenticado
Sair da conta
```

## ▶️ Comandos utilizados

Criação e troca para a branch da Semana 4:

```bash
git branch semana4
git checkout semana4
```

Instalação do pacote Firebase Authentication:

```bash
flutter pub add firebase_auth
```

Execução do projeto no navegador Chrome:

```bash
flutter run -d chrome
```

Publicação da branch no GitHub:

```bash
git add .
git commit -m "Semana 4"
git push -u origin semana4
```

## 📁 Arquivos alterados/criados

Durante a atividade, foram utilizados principalmente os arquivos:

```text
lib/main.dart
lib/login.dart
lib/sign.dart
lib/forgot.dart
lib/welcome.dart
pubspec.yaml
pubspec.lock
```

## 🧭 Fluxo do aplicativo

O aplicativo utiliza um controle de autenticação para decidir qual tela será exibida:

```text
Usuário não autenticado -> Tela de login
Usuário autenticado -> Tela Home
```

Na tela **Home**, o aplicativo continua exibindo a mensagem carregada do Cloud Firestore:

```text
Bem-vindo ao nosso aplicativo!
```

## 📝 Observações

Nesta etapa, o aplicativo passou a utilizar autenticação com tokens por meio do Firebase Authentication.

Após o login, o Firebase mantém o estado do usuário autenticado e o aplicativo libera o acesso à tela principal automaticamente.

## 👨‍💻 Autor

Robson Silva Ribeiro

## 🔗 Repositório

https://github.com/Robson-ifes/FirebaseApp

## 🌿 Branch da atividade

```text
semana4
```
