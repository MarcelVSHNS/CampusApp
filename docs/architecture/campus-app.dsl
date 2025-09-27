workspace {

    model {
        user = person "Studierendeinnen" {
            description "Ein Studierender, der die Campus-App benutzt oder moechte."
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
