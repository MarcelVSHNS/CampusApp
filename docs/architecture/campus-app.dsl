workspace {

    model {
        user = person "Student" {
            description "Ein Student, der die Campus-App nutzt."
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
