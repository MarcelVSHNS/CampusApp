workspace {

    model {
        user = person "Studierende" {
            description "Ein Studierender, der die Campus-App benutzt oder möchte. Test"
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
