import QtQuick
import QtQuick.Controls.Basic

// Custom Field
Column {
    id: customField

    property string labelName: ""

    spacing: 4

    Label {
        font.pointSize: 12
        font.family: mainFontSemibold.name
        font.bold: false
        font.italic: false

        // text: customField.labelName
        color: mainWindow.darkMode ? mainWindow.lightModeLightColor : mainWindow.darkModeDarkColor
    }

    TextField {
        width: parent.width

        font.pointSize: 10
        font.family: mainFontRegular.name
        font.bold: false
        font.italic: false

        placeholderText: customField.labelName
        color: mainWindow.darkMode ? mainWindow.darkModeDarkColor : mainWindow.lightModeLightColor

        background: Rectangle {
            anchors.fill: parent
            border.color: mainWindow.darkMode ? mainWindow.lightModeDarkColor : mainWindow.darkModeLightColor
            border.width: 2
            color: mainWindow.darkMode ? mainWindow.lightModeLightColor : mainWindow.darkModeLightColor
            radius: 8
        }

        topPadding: 12
        bottomPadding: 12
        leftPadding: 16
        rightPadding: 16
    }
}
