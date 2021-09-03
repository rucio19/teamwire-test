Feature: Send a file attached

    Background: Necessary conditions
        Given The app mobile running
        And Connection with server is working properly

    Scenario: Send a file attached successfully
        Given File extension is RAR
        And Size is minor or equals 40MB

        When User sends the message

        Then Message is sent successfully
        And The receiver can see the file's icon type on its chat

    Scenario: Send a file attached using a not allowed extension
        Given File extension is EXE
        And Size is minor or equals 40MB

        When User sends the message

        Then Sending has been blocked
        And The receiver don't see nothing on its chat

    Scenario: Send a file attached with a too much high size
        Given File extension is RAR
        And Size is major than 40MB

        When User sends the message

        Then Sending has been blocked
        And The receiver don't see nothing on its chat

    Scenario: Send a file attached with a not allowed extension and too much high size
        Given File extension is EXE
        And Size is major than 40MB

        When User sends the message

        Then Sending has been blocked
        And The receiver don't see nothing on its chat
