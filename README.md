# Campus-App Architektur

Dieses Projekt zeigt den Einsatz des **C4-Modells mit Structurizr DSL**.

## System Context Diagramm

![System Context](docs/architecture/diagrams/campus-app-SystemContext.png)

---

## Anleitungen

### 1. Architektur bearbeiten
- Ändere die Datei: `docs/architecture/campus-app.dsl`
- Beschreibe Personen, Systeme, Container, Komponenten

### 2. Lokal rendern (optional)
```bash
docker run -it --rm -p 8080:8080 -v $(pwd):/usr/local/structurizr structurizr/lite
