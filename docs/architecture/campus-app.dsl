workspace {

    model {
        user = person "Studierende" {
            description "Ein Studierender, der die Campus-App benutzt."
        }

        system = softwareSystem "Campus-App" {
            description "Eine App für Studierende mit Kursplan, Mensa & News."
        }

        user -> system "Nutzt"
    }

    views {
        systemContext system {
            include *
            autolayout lr
        }

        theme default
    }
}
