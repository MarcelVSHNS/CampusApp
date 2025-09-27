workspace {

    model {
        user = person "Studierende" {
            description "Ein Studierender, der/ die die Campus-App benutzt oder möchte."
        }

        system = softwareSystem "Campus-App" {
            description "Eine App für Studierende mit Kursplan, Mensa, News & Chatbot."
        }

        user -> system "Benutzt"
    }

    views {
        systemContext system {
            include *
            autolayout lr
        }

        theme default
    }
}
