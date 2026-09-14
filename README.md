# 🔥 FirebaseApp - Semana 5

Atividade desenvolvida para a disciplina **Desenvolvimento de Aplicativos II**.

## 📌 Objetivo da semana

Nesta quinta semana, o objetivo foi implementar uma funcionalidade em tempo real utilizando o **Cloud Firestore**.

O aplicativo passou a permitir que o usuário autenticado cadastre, visualize, edite e remova anotações. As alterações são sincronizadas em tempo real com o Firebase.

## ✅ O que foi realizado

- Criação da branch **semana5**
- Alteração das regras do Cloud Firestore
- Criação do arquivo **lib/notes.dart**
- Alteração do arquivo **lib/main.dart**
- Inclusão da opção **Anotações** no menu lateral
- Criação de notas vinculadas ao usuário autenticado
- Listagem de notas em tempo real
- Edição de notas diretamente na lista
- Remoção de notas com confirmação
- Teste do aplicativo no navegador Google Chrome
- Publicação da branch **semana5** no GitHub

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

## 📝 Funcionalidade de anotações

As anotações são salvas dentro do usuário autenticado no Cloud Firestore.

Estrutura utilizada no banco:

```text
users/{uid_do_usuario}/notes/{id_da_nota}
```

Cada nota possui os campos:

```text
description
createdAt
updatedAt
```

## 🔄 Funcionamento em tempo real

A tela de anotações utiliza um fluxo em tempo real do Firestore.

Sempre que uma nota é criada, editada ou removida, a lista é atualizada automaticamente no aplicativo.

## ▶️ Comandos utilizados

Criação e troca para a branch da Semana 5:

```bash
git checkout semana4
git checkout -b semana5
```

Execução do projeto no navegador Chrome:

```bash
flutter run -d chrome
```

Publicação da branch no GitHub:

```bash
git add .
git commit -m "Semana 5"
git push -u origin semana5
```

## 📁 Arquivos alterados/criados

Durante a atividade, foram utilizados principalmente os arquivos:

```text
lib/main.dart
lib/notes.dart
lib/login.dart
lib/sign.dart
lib/forgot.dart
lib/welcome.dart
pubspec.yaml
pubspec.lock
```

## 🔥 Regras do Firestore

As regras do Firestore foram atualizadas para permitir que cada usuário autenticado acesse apenas os próprios dados:

```js
rules_version = '2';

service cloud.firestore {
  match /databases/{database}/documents {
    match /config/{doc} {
      allow read: if true;
      allow write: if false;
    }

    match /users/{userId}/{document=**} {
      allow read, write: if request.auth != null && request.auth.uid == userId;
    }
  }
}
```

## 💬 Resultado obtido

Ao executar o aplicativo, o usuário autenticado consegue acessar a tela **Anotações** pelo menu lateral.

Na tela, é possível:

```text
Adicionar uma nota
Visualizar as notas cadastradas
Editar uma nota tocando nela
Remover uma nota pelo ícone de lixeira
Ver as alterações refletidas em tempo real
```

## 📝 Observações

Nesta etapa, o aplicativo passou a utilizar recursos em tempo real do Cloud Firestore.

As notas ficam associadas ao usuário autenticado, garantindo que cada usuário visualize e altere apenas seus próprios dados.

## 👨‍💻 Autor

Robson Silva Ribeiro

## 🔗 Repositório

https://github.com/Robson-ifes/FirebaseApp

## 🌿 Branch da atividade

```text
semana5
```
