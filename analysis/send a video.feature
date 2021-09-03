Feature: Send a video file attached

    Background: Necessary conditions
        Given The app mobile running
        And Connection with server is working properly
        
    Scenario: Send a video attached successfully
        Given Video extension is MP4
        And Size is minor or equals 40MB

        When User sends the message

        Then Message is sent successfully
        And The receiver can see the video's icon type on its chat

    Scenario: Send a video attached using a not allowed extension
        Given Video extension is MOV
        And Size is minor or equals 40MB

        When User sends the message

        Then Sending has been blocked
        And The receiver don't see nothing on its chat

    Scenario: Send a video attached with a too much high size
        Given Video extension is MP4
        And Size is major than 40MB

        When User sends the message

        Then Sending has been blocked
        And The receiver don't see nothing on its chat

    Scenario: Send a video attached with a not allowed extension and too much high size
        Given Video extension is MOV
        And Size is major than 40MB

        When User sends the message

        Then Sending has been blocked
        And The receiver don't see nothing on its chat
