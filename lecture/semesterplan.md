# 🎓 Semesterplan: Software Engineering – Campus App Projekt

> Ziel: Studierende durchlaufen den gesamten Softwareentwicklungsprozess anhand eines realistischen Projekts (Campus App), wenden Vorgehensmodelle praktisch an, dokumentieren alles in GitHub und erstellen ein MVP mit AI-Unterstützung (LLM).

---

## 🧭 Übersicht

| Phase | Theorie | Praxis | Projektziel | Deliverables |
|--------|----------|----------|---------------|----------------|
| **1. Projektdefinition** | Softwareprojekt-Definition, Anforderungen, Stakeholder, Personas, User Stories | Projektidee entwickeln, Stakeholder definieren, MVP festlegen, User Stories schreiben | SW-Projektdefinition & Requirements, Feature-Verteilung | `README.md`, `docs/01_requirements.md`, GitHub Issues |
| **2. Vorgehensmodelle & Organisation** | Klassische Modelle (Wasserfall, V-Modell), Agile Modelle (Scrum, Kanban), Rollen | Teamfindung, Rollenverteilung, Sprintplanung, GitHub Projects | Teamorganisation & Rollen, Backlogaufbau | Team & Rollen im `README`, GitHub Project Board |
| **3. Analyse** | UML (Use Case, Aktivität, Domainmodell), Zusammenhang zu User Stories | UML-Diagramme erstellen, Abläufe und Struktur modellieren | UML-Diagramme fürs Projekt | `docs/02_analysis/`, `.puml`-Dateien |
| **4. Architektur & Entwurf** | Monolith vs. Microservices, OnPremise vs. Cloud, Entwurfsmuster, Event Storming, C4-Modell | Technologie-Stack festlegen, C4-Diagramme erstellen, Architekturentscheidungen dokumentieren | Sprint 1: Architektur & Tech Stack festlegen | `docs/03_architecture/`, ADRs, `c4_context.puml`, `c4_container.puml` |
| **5. Implementierung & Clean Code** | Coding Guidelines, Clean Code Prinzipien, Docstrings (Google Style), Code Reviews | Projektstruktur aufbauen, Docstrings ergänzen, Linter & PR-Template einrichten | Clean Code & Styleguide umsetzen | `CONTRIBUTING.md`, `.flake8`, PR Template |
| **6. Testplanung & Coverage** | Testpyramide, Testarten, Testplanung, Code Coverage | Unit Tests mit `pytest`, Coverage messen, Tests in CI integrieren | Sprint 2: Tests erstellen & CI einrichten | `tests/`, `docs/05_testing.md`, `.github/workflows/test.yml` |
| **7. DevOps & CI/CD** | CI/CD Grundlagen, Containerisierung (Docker), GitHub Actions | Dockerfile erstellen, Build- & Test-Pipeline in CI | CI/CD-Pipeline aufbauen | `Dockerfile`, `.github/workflows/build.yml` |
| **8. Betrieb & Wartung** | Deploymentstrategien, Kubernetes Basics, Monitoring, Wartung | Lokales Deployment, Monitoring-Konzept, Betriebsdokumentation | Sprint 3: Betrieb & Erweiterung | `docker-compose.yml`, `docs/07_operations.md` |
| **9. Abschluss & Reflexion** | Retrospektive, Lessons Learned, LLM-Integration | AI-Modul implementieren, MVP-Demo, Lessons Learned schreiben | Retrospektive & Abschlusspräsentation | `docs/08_lessons_learned.md`, Präsentation |

---

## 📘 Detailplan

### **1. Projektdefinition**

#### Theorie
- Was ist ein Softwareprojekt?  
- Anforderungen: funktional & nicht-funktional
  - Funktionale Anforderungen: Beschreiben **was** das System tun soll (z. B. Funktionen, Aktionen, Prozesse).  
  - Nicht-funktionale Anforderungen: Beschreiben **wie gut** das System arbeitet (z. B. Qualität, Sicherheit, Performance, Usability).  
- Stakeholderanalyse & Personas
- User Stories & Akzeptanzkriterien (INVEST-Regel)
  - **Form**: Als [Rolle] möchte ich [Ziel/Funktion], um [Nutzen] zu erreichen.
  - **MoSCoW-Priorisierung**: `Must`, `Should`, `Could`, `Won’t`  
  - **INVEST-Kriterien**: `Independent`, `Negotiable`, `Valuable`, `Estimable`, `Small`, `Testable`  
  - **Akzeptanzkriterien**: `Given` – `When` – `Then`
- MVP (Minimum Viable Product) auf Basis der `Must` und `Won’t`

#### Praxis
- Projektidee & Funktionsumfang definieren  
- Stakeholder & Personas erstellen  
- MVP festlegen  
- User Stories formulieren  
- GitHub Issues aus User Stories anlegen  

#### Projektziel
> SW-Projektdefinition & Requirements, Feature-Verteilung

#### Deliverables
- `README.md` mit Projektbeschreibung  
- `docs/01_requirements.md`  
- GitHub Issues für User Stories

---

### **2. Vorgehensmodelle & Organisation**

#### Theorie
- Klassische Vorgehensmodelle: Wasserfall, V-Modell  
- Agile Vorgehensmodelle: Scrum, Kanban  
- Vergleich: Plan-Driven vs. Agile  
- Scrum-Rollen (PO, SM, Dev-Team)

#### Praxis
- Teamfindung (max. 4 Personen)  
- Rollenverteilung im Team  
- Sprintplanung mit GitHub Projects  
- Backlog-Erstellung & Priorisierung (MoSCoW oder Story Points)

#### Projektziel
> Teamorganisation & Rollen, Backlogaufbau

#### Deliverables
- Team & Rollen im `README.md`  
- GitHub Project Board mit Sprints  
- Sprint 1 Backlog erstellt

---

### **3. Analyse**

#### Theorie
- UML-Grundlagen & Notation (UML 2.5 - Das umfassende Handbuch, von Christoph Kecher; Ralf Hoffmann-Elbern; Torsten T. Will)  
- **Verhaltenssicht:** Use Case Diagramm, Aktivitätsdiagramm
  - Zeigt, **wer** (Akteure) **was** (Use Cases) mit dem System tut; verdeutlicht den funktionalen Umfang.
  - Beschreibt **Abläufe und Entscheidungen** innerhalb eines Use Case; visualisiert Workflows und Kontrollflüsse.
- **Struktursicht:** Domainmodell (Klassendiagramm)
  - Zeigt **zentrale Konzepte, Objekte und Beziehungen** der Fachdomäne; bildet die Grundlage für Daten- und Klassenstrukturen.
- Zusammenhang zwischen User Stories & UML
  - User Stories liefern den **Inhalt** der Modelle:  
    → Use Cases aus User Story-Zielen  
    → Aktivitätsdiagramme aus Abläufen  
    → Domainmodell aus Substantiven und Beziehungen.

#### Praxis
- Aus User Stories Use Cases ableiten  
- Aktivitätsdiagramm für einen Use Case erstellen  
- Domainmodell entwerfen  
- Diagramme als `.puml` in `docs/02_analysis` ablegen

#### Projektziel
> UML-Diagramme fürs Projekt mit PlantUML oder https://app.diagrams.net/ (draw.io) erzeugen
> Jira/ Confluence oder Github only einrichten

#### Deliverables
- `use_case.puml`, `activity_xxx.puml`, `domain_model.puml`  
- Automatische Pipeline optional (`.puml` → `.png`)

---

### **4. Architektur & Entwurf**

#### Theorie
- Monolith vs. Microservices  
- OnPremise vs. Cloud  
- Schichtenarchitektur (MVC, Layered Architecture)  
- Entwurfsmuster (Singleton, Observer, Factory, Strategy)  
- SOLID-Prinzipien  
- Event Storming (Domänenlogik erfassen)  
- C4-Modell: Context, Container, Component, Code

#### Praxis
- Technologie-Stack festlegen  
- C4 Context & Container Diagramme erstellen  
- Architekturentscheidungen dokumentieren (ADRs)  
- Event Storming (z. B. mit Miro)

#### Projektziel
> Sprint 1: Architektur & Tech-Stack festlegen

#### Deliverables
- `docs/03_architecture/`  
- `c4_context.puml`, `c4_container.puml`  
- ADRs (Architecture Decision Records)

---

### **5. Implementierung & Clean Code**

#### Theorie
- Coding Guidelines (PEP8 / Google Style)  
- Clean Code Prinzipien (Naming, DRY, KISS, SRP)  
- Docstrings (Google-Style, Sphinx-kompatibel)  
- Code Reviews & Pull Requests  

#### Praxis
- Projektstruktur anlegen (`src/`)  
- Docstrings & Typannotationen ergänzen  
- Peer Review-Prozess einführen (PR-Template)  
- Linter & Formatter einrichten (`flake8`, `black`)

#### Projektziel
> Clean Code & Styleguide umsetzen

#### Deliverables
- `.flake8` oder `.pylintrc`  
- `CONTRIBUTING.md`  
- PR Template

---

### **6. Testplanung & Coverage**

#### Theorie
- Testpyramide (Unit, Integration, E2E)  
- Testplanung & Testfälle  
- Code Coverage & Qualitätssicherung  

#### Praxis
- Unit Tests mit `pytest`  
- Coverage-Messung (`pytest-cov`)  
- Tests in CI-Pipeline integrieren  

#### Projektziel
> Sprint 2: Tests erstellen & CI einrichten

#### Deliverables
- `tests/`  
- `docs/05_testing.md`  
- `.github/workflows/test.yml`

---

### **7. DevOps & CI/CD**

#### Theorie
- CI/CD Grundlagen  
- Containerisierung mit Docker  
- Build- & Deploy-Pipelines  
- GitHub Actions (Workflow YAML)

#### Praxis
- `Dockerfile` erstellen  
- CI-Workflow für Build, Test, Lint  
- CD-Workflow optional (Render, Railway, GitHub Pages)

#### Projektziel
> CI/CD-Pipeline aufbauen

#### Deliverables
- `Dockerfile`  
- `.github/workflows/build.yml`

---

### **8. Betrieb & Wartung**

#### Theorie
- Deployment-Strategien  
- Kubernetes Basics (Pods, Services, Deployments)  
- Monitoring & Logging (Prometheus, Grafana, ELK)  
- Wartung, Refactoring, Erweiterbarkeit  

#### Praxis
- Lokales Deployment (Docker Compose)  
- Monitoring-Konzept (Health Endpoint)  
- Betriebs- & Wartungsdokumentation  

#### Projektziel
> Sprint 3: Betrieb & Erweiterung

#### Deliverables
- `docker-compose.yml`  
- `docs/07_operations.md`

---

### **9. Abschluss & Reflexion**

#### Theorie
- Retrospektive (Scrum)  
- Lessons Learned (Prozess, Technik, Team)  
- LLM-Integration als Ausblick (Agentic AI)  

#### Praxis
- LLM-Modul integrieren (Chatbot mit Llama)  
- MVP-Demo & Präsentation  
- Lessons Learned schreiben  

#### Projektziel
> Retrospektive & Abschlusspräsentation

#### Deliverables
- `docs/08_lessons_learned.md`  
- Abschlusspräsentation / Pitch Deck
