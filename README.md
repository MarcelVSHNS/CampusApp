# 🎓 CampusEvents – Deine smarte App für den Campus

> **Hinweis:** Dieses Projekt ist Teil der Lehrveranstaltung *Software Engineering*  

---

## 🧭 1. Kontext

### a. Beschreibung

**CampusEvents** ist eine Webanwendung, die Studierenden hilft, Veranstaltungen auf dem Campus zu entdecken, zu organisieren und zu planen.  
Ob Vorträge, Workshops, Hochschulgruppen oder Partys – die App bündelt alle Events an einem Ort, zeigt sie im Kalender an und bietet eine intelligente Suchfunktion.  

Ein integrierter **AI-Assistant (Llama)** beantwortet Fragen wie  
> „Was findet heute Abend statt?“  
> „Gibt es nächste Woche ein IT-Meetup?“  
> „Welche Events passen zu meinem Studiengang?“  

So unterstützt die App Studierende bei der Planung ihres Studien- und Freizeitalltags.

### b. Stakeholder

| Stakeholder | Beschreibung | Ziel / Interesse |
|--------------|--------------|------------------|
| 🧑‍🎓 **Studierende** | Hauptnutzende der App | Veranstaltungen finden, merken, planen |
| 🧑‍🏫 **Dozierende / Organisationen** | Erstellen von Events, Bewerben von Angeboten | Sichtbarkeit ihrer Veranstaltungen |
| 🧑‍💻 **Entwicklungsteam** | Studentisches Projektteam | Umsetzung eines durchgängigen Softwareprojekts |

### c. Personas

#### 👩 **Lisa (21, Informatikstudentin, 3. Semester)**
- Möchte Events nach Interessen (z. B. Tech, Karriere) filtern  
- Will relevante Veranstaltungen im Kalender sehen  
- Nutzt AI-Chatbot, um schnell passende Angebote zu finden  

#### 🧑 **Jonas (24, Maschinenbau, 5. Semester)**
- Will Termine in den Stundenplan integrieren  
- Sucht gezielt nach Pflichtveranstaltungen  
- Möchte Push-Infos bei neuen Angeboten  

#### 👩‍🏫 **Frau Dr. Schmidt (Dozentin, Fakultät Technik)**
- Will Fachvorträge für Studierende ankündigen  
- Benötigt einfache Event-Erstellung über Webformular  

---

## ⚙️ 2. Funktionale Anforderungen

| ID | Anforderung | Beschreibung | Priorität |
|----|--------------|---------------|-----------|
| F01 | **Eventübersicht** | Nutzer:innen sehen alle kommenden Campus-Events in einer Liste oder Kalenderansicht | 🟢 Hoch |
| F02 | **Filter & Suche** | Events können nach Datum, Kategorie oder Fakultät gefiltert werden | 🟢 Hoch |
| F03 | **Merkliste / Favoriten** | Nutzer:innen können Events speichern oder abonnieren | 🟠 Mittel |
| F04 | **AI-Chatbot (Llama)** | LLM beantwortet Fragen zu Events in natürlicher Sprache | 🟢 Hoch |
| F05 | **Event-Erstellung (Admin/Dozent)** | Dozierende oder Organisationen können neue Events hinzufügen | 🟠 Mittel |
| F06 | **Kalenderintegration** | Export/Integration in eigenen Kalender (z. B. ICS-Link) | 🟡 Niedrig |
| F07 | **Login / Nutzerprofil** | Registrierung und Login für personalisierte Funktionen | 🟡 Niedrig |

---

## 🧱 3. Nicht-funktionale Anforderungen

| Kategorie | Beschreibung | Ziel |
|------------|--------------|------|
| 🧠 **Usability** | Intuitive, klare Benutzeroberfläche | Geringe Einarbeitungszeit |
| ⚡ **Performance** | Ladezeiten < 2 Sekunden für Eventlisten | Hohe Reaktionsgeschwindigkeit |
| 🔐 **Sicherheit** | Sichere Authentifizierung, DSGVO-konform | Datenschutz gewährleisten |
| ☁️ **Verfügbarkeit** | Deployment auf Cloud oder lokalem Server | 24/7 im Demo-Betrieb verfügbar |
| 🧩 **Modularität** | Erweiterbare Architektur (z. B. AI-Modul, Kalender-Modul) | Skalierbarkeit sicherstellen |
| 🧪 **Testbarkeit** | Unit- und Integrationstests vorhanden | Codequalität sicherstellen |
| 🔄 **Wartbarkeit** | Saubere Code-Struktur, Dokumentation | Einfache Weiterentwicklung |

---

## 🧭 4. Abgrenzung & MVP

Das Projekt wird **inkrementell** entwickelt. Ziel ist zunächst ein **Minimal Viable Product (MVP)**, das den Kernnutzen demonstriert.  
Funktionen außerhalb des MVP werden als **Future Work** dokumentiert.

### 🎯 MVP (Umfang des Projekts)
- Anzeige aller Veranstaltungen (Eventübersicht)  
- Filter & Suchfunktion  
- Llama-Chatbot zur Eventsuche  
- Basis-Frontend (Weboberfläche mit Navigation)  
- Simulierter Datenspeicher (JSON / SQLite)

### 🚫 Nicht Teil des MVP
- Benutzerverwaltung mit Login  
- Push-Benachrichtigungen  
- Erweiterte Kalenderintegration  
- Bewertungen & Kommentare  

Diese Funktionen können in einem späteren Release oder als Erweiterung umgesetzt werden.

---

## 🧩 Architektur (Vorschau)
> Detaillierte C4-Diagramme folgen in `docs/02_architecture.md`

- **Context:** CampusEvents als Teil der Campus App Suite  
- **Container:** Frontend (React), Backend (FastAPI), Datenbank (SQLite), AI-Modul (Llama via API)  
- **Component:** EventService, ChatbotService, FilterService  
- **Code:** Python / React-Komponenten  

---

## 👥 Team & Organisation
| Rolle | Name | Aufgaben |
|-------|------|----------|
| Product Owner | <PRIVATE_PERSON> | Anforderungen, Backlog |
| Scrum Master | <PRIVATE_PERSON> | Organisation, Sprints |
| Developer | <PRIVATE_PERSON> | Backend & Tests |
| Developer | <PRIVATE_PERSON> | Frontend & CI/CD |

---

## 🧰 Tools & Technologien
- **Backend:** Python (FastAPI)  
- **Frontend:** React  
- **Database:** SQLite  
- **AI:** Llama (OpenRouter API)  
- **CI/CD:** GitHub Actions  
- **Projektmanagement:** GitHub Projects (Kanban Board)  

---

> 📘 Weitere Dokumente:  
> - [`docs/01_requirements.md`](docs/01_requirements.md) – Detaillierte Anforderungen  
> - [`docs/02_architecture.md`](docs/02_architecture.md) – C4-Modell  
> - [`docs/05_testing.md`](docs/05_testing.md) – Testplan  
> - [`docs/08_lessons_learned.md`](docs/08_lessons_learned.md) – Reflexion

---
