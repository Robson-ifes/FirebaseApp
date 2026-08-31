# 🔥 FirebaseApp - Semana 3

Atividade desenvolvida para a disciplina **Desenvolvimento de Aplicativos II**.

## 📌 Objetivo da semana

Nesta terceira semana, o objetivo foi criar um banco de dados no **Cloud Firestore** e fazer o aplicativo Flutter consumir uma informação salva no Firebase.

O app passou a buscar uma mensagem diretamente do Firestore e exibi-la na tela inicial.

## ✅ O que foi realizado

- Criação da branch **semana3**
- Criação do banco de dados no **Cloud Firestore**
- Seleção da região **southamerica-east1 (São Paulo)**
- Criação da coleção **config**
- Criação do documento **welcome**
- Criação do campo **text**
- Instalação do pacote **cloud_firestore**
- Criação do arquivo **lib/welcome.dart**
- Alteração do arquivo **lib/main.dart**
- Configuração das regras de leitura do Firestore
- Teste do aplicativo no navegador Google Chrome
- Publicação da branch **semana3** no GitHub

## 🚀 Tecnologias utilizadas

- 🐦 Flutter
- 🎯 Dart
- 🔥 Firebase
- 🗄️ Cloud Firestore
- 🧩 FlutterFire CLI
- 💻 Visual Studio Code
- 🌱 Git
- 🐙 GitHub
- 🌐 Google Chrome

## 🗄️ Dados criados no Firestore

Foi criada a seguinte estrutura no Cloud Firestore:

```text
Coleção: config
Documento: welcome
Campo: text
Tipo: string
Valor: Bem-vindo ao nosso aplicativo!
```

## ▶️ Comandos utilizados

Criação e troca para a branch da Semana 3:

```bash
git checkout semana2
git checkout -b semana3
```

Instalação do pacote Cloud Firestore:

```bash
flutter pub add cloud_firestore
```

Execução do projeto no navegador Chrome:

```bash
flutter run -d chrome
```

Publicação da branch no GitHub:

```bash
git add .
git commit -m "Semana 3"
git push -u origin semana3
```

## 📁 Arquivos alterados/criados

Durante a atividade, foram utilizados principalmente os arquivos:

```text
lib/main.dart
lib/welcome.dart
pubspec.yaml
pubspec.lock
```

## 🔥 Regras do Firestore

As regras do Firestore foram configuradas para permitir leitura da coleção **config** e impedir escrita pelo aplicativo:

```js
rules_version = '2';

service cloud.firestore {
  match /databases/{database}/documents {
    match /config/{doc} {
      allow read: if true;
      allow write: if false;
    }
  }
}
```

## 💬 Resultado obtido

Ao executar o aplicativo, a mensagem cadastrada no Firestore foi exibida na tela:

```text
Bem-vindo ao nosso aplicativo!
```

## 📝 Observações

Nesta etapa, o aplicativo deixou de exibir apenas informações fixas no código e passou a consumir dados externos usando o Cloud Firestore.

Essa configuração permite que a mensagem exibida no app seja alterada diretamente pelo Firebase, sem necessidade de modificar o código Flutter.

## 👨‍💻 Autor

Robson Ribeiro

## 🔗 Repositório

https://github.com/Robson-ifes/FirebaseApp

## 🌿 Branch da atividade

```text
semana3
```
