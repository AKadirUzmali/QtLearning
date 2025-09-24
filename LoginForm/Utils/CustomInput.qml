// Import
import QtQuick
import QtQuick.Controls.Basic

// Custom Input
TextField {
    id: custominput

    property string imageSource: ""

    implicitHeight: 40

    font {
        pointSize: 11
        family: mainFontRegular.name
    }

    color: mainWindow.modeDark ? mainWindow.darkLightColor : mainWindow.lightDarkColor
    placeholderTextColor: mainWindow.modeDark ? mainWindow.lightDarkColor : mainWindow.darkLightColor

    background: Rectangle {
        anchors.fill: parent

        color: mainWindow.modeDark ? mainWindow.lightLightColor : mainWindow.darkDarkColor
        radius: mainBox.radius/2
    }

    Image {
        anchors {
            right: parent.right
            rightMargin: 12

            verticalCenter: parent.verticalCenter
        }

        width: 20
        height: 20

        source: custominput.imageSource
        fillMode: Image.PreserveAspectFit
    }

    rightPadding: 40
}
