Feature: Send a doc file attached

    Background: Necessary conditions
        Given The app mobile running
        And Connection with server is working properly

    Scenario: Send a doc attached successfully
        Given Doc extension is PDF
        And Size is minor or equals 40MB

        When User sends the message

        Then Message is sent successfully
        And The receiver can see the doc's icon type on its chat

    Scenario: Send a doc attached using a not allowed extension
        Given Doc extension is TXT
        And Size is minor or equals 40MB

        When User sends the message

        Then Sending has been blocked
        And The receiver don't see nothing on its chat

    Scenario: Send a doc attached with a too much high size
        Given Doc extension is PDF
        And Size is major than 40MB

        When User sends the message

        Then Sending has been blocked
        And The receiver don't see nothing on its chat

    Scenario: Send a doc attached with a not allowed extension and too much high size
        Given Doc extension is TXT
        And Size is major than 40MB

        When User sends the message

        Then Sending has been blocked
        And The receiver don't see nothing on its chat
