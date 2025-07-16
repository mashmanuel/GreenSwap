# 🌿 GreenSwap

**GreenSwap** is a Flutter-based mobile application that empowers users to donate or exchange used items instead of throwing them away. It promotes sustainable living, decluttering, and circular economy practices by connecting people who want to give or receive reusable goods.

---

## ✨ Features

- 🔐 Firebase Authentication (Email & Password)
- 📦 List and browse items for donation or exchange
- 🌍 Multi-language support (English & Swahili)
- 📷 Upload item photos with description & category
- 🧭 Location-aware browsing (upcoming)
- 💬 Planned: in-app messaging & notifications

---

## 📸 Screenshots
> _Screenshots coming soon. Add mockups here when ready._

---

## 🧑‍💻 Tech Stack

- **Flutter** (Dart)
- **Firebase** (Auth, Firestore)
- **Provider** for state management
- **Intl** for internationalization
- **Google Fonts** and modern UI styling

---

## 🛠️ Getting Started

### 🔧 Prerequisites

- Flutter SDK installed  
- Firebase account  
- Android Studio / VS Code

### 🔥 Firebase Setup

1. Go to [Firebase Console](https://console.firebase.google.com)
2. Create a project (`GreenSwap`)
3. Add Android and/or iOS app
4. Download and place:
   - `google-services.json` in `android/app/`
   - `GoogleService-Info.plist` in `ios/Runner/`
5. Enable **Email/Password** auth in Firebase Console
6. Create Firestore DB (test mode for development)

### ▶️ Run the App

```bash
📂 Folder Structure
flutter pub get
flutter run
lib/
│
├── screens/         # UI screens (login, home, item details, etc.)
├── services/        # Auth and Firestore handlers
├── widgets/         # Reusable widgets
├── models/          # Item data models
├── l10n/            # Internationalization files
└── main.dart        # App entry point
🌍 Internationalization

    English (intl_en.arb)

    Swahili (intl_sw.arb)
🚀 Roadmap

    ✅ MVP: Auth, list & browse items

    🔜 In-app chat and notifications

    🔜 Verified user badges

    🔜 NGO and donation pickup integration
🤝 Contributing

Pull requests are welcome!
Open an issue first to discuss changes or features.

🌱 Join the Movement

Let’s reduce waste and give a second life to things.
Swap instead of scrap — with GreenSwap.
