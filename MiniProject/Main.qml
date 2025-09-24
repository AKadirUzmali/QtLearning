import QtQuick
import QtQuick.Controls.Imagine

// Main Window
Window {
    id: baseWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Mini Project")

    // Background
    Image {
        id: baseBackground
        anchors.fill: parent

        source: "qrc:/assets/images/abstract-blackline-wallpaper-1920x1080.jpg"
    }

    // Font
    FontLoader {
        id: baseFont
        source: "qrc:/assets/fonts/alansans/AlanSans-Regular.ttf"
    }

    FontLoader {
        id: boldFont
        source: "qrc:/assets/fonts/alansans/AlanSans-Bold.ttf"
    }

    // Title
    Label {
        id: baseTitle

        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter

        anchors.topMargin: 20

        font.pointSize: 24
        font.family: boldFont.name
        font.bold: true

        color: "#efefef"
        text: "Mini Projeye Hoş Geldiniz!"
    }

    // Column
    Column {
        id: baseColumn

        anchors.centerIn: parent

        spacing: 16

        // Counter Label
        Label {
            id: counterLabel
            anchors.horizontalCenter: parent.horizontalCenter

            font.pointSize: 16
            font.family: baseFont.name
            font.bold: false

            color: baseTitle.color
            text: "0"
        }

        // Button Row
        Row {
            spacing: 20

            // Sub
            Button {
                id: counterSubBtn

                font.pointSize: 16
                font.family: baseFont.name
                font.bold: false

                text: "-"

                onClicked: {
                    counterLabel.text = Number(counterLabel.text) - 1
                }
            }

            // Add
            Button {
                id: counterAddBtn

                font.pointSize: 16
                font.family: baseFont.name
                font.bold: false

                text: "+"

                onClicked: {
                    counterLabel.text = Number(counterLabel.text) + 1
                }
            }
        }
    }
}
