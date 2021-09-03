Feature: Send an image file attached

    Background: Necessary conditions
        Given The app mobile running
        And Connection with server is working properly
        
    Scenario: Send an image file attached successfully
        Given An image extension is JPG
        And Size is minor or equals 40MB

        When User sends the message

        Then Message is sent successfully
        And The receiver can see the image's icon type on its chat

    Scenario: Send an image file attached using a not allowed extension
        Given An image extension is PNG
        And Size is minor or equals 40MB

        When User sends the message

        Then Sending has been blocked
        And The receiver don't see nothing on its chat

    Scenario: Send an image file attached with a too much high size
        Given An image extension is JPG
        And Size is major than 40MB

        When User sends the message

        Then Sending has been blocked
        And The receiver don't see nothing on its chat

    Scenario: Send an image file attached with a not allowed extension and too much high size
        Given An image extension is PNG
        And Size is major than 40MB

        When User sends the message

        Then Sending has been blocked
        And The receiver don't see nothing on its chat
