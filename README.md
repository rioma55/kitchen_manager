# 🍽️ App Cucina - Flutter Multipiattaforma

Un'app per la gestione di ricette, pensata per cuochi, chef e operatori di cucina professionale. Compatibile con **Android** e **Windows Desktop**.

---

## 🚀 Funzionalità attuali

- Visualizzazione ricette da database SQLite
- Aggiunta nuova ricetta
- Dettaglio ricetta con ID
- Navigazione multipiattaforma con GoRouter
- UI responsive e tema coerente

---

## 🧱 Struttura del progetto

lib/
├── core/
│ └── database/ # DatabaseHelper + SQL tables
├── features/
│ └── ricette/
│ ├── models/ # Ricetta
│ ├── repository/ # RicetteRepository
│ └── presentation/ # Schermate UI
├── routes/
│ └── app_router.dart # Routing GoRouter
├── main.dart # Entry point

yaml
Copia
Modifica

---

## 🛠️ Requisiti

- Flutter 3.10+
- Dart 2.18+
- SDK Android o Visual Studio con Desktop (Windows)

---

## 📦 Installazione

```bash
flutter pub get
▶️ Esecuzione
Su Android:
bash
Copia
Modifica
flutter run -d emulator-5554
Su Windows:
bash
Copia
Modifica
flutter run -d windows
📚 Dipendenze principali
go_router: gestione delle rotte

sqflite: database locale

path: gestione dei percorsi file

🔐 Note
Il database app_cucina.db viene creato automaticamente al primo avvio.

Le tabelle vengono definite in tables.dart e gestite da DatabaseHelper.

🧪 Todo futuri
Modifica/eliminazione ricette

Gestione magazzino e food cost

Funzionalità per diete speciali

Sync cloud e notifiche

📄 Licenza
MIT

yaml
Copia
Modifica

---

✅ È pronto per essere salvato nel tuo progetto come `README.md`.  
Vuoi ora passare a test o continuare con altri modul

