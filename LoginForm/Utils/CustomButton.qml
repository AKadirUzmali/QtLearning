// Import
import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Controls.impl
import QtQuick.Templates as T

// Custom Button
Button {
    id: custombutton

    // Color
    readonly property color normalColor: "#F55B47"
    readonly property color textColor: "#F7F7F7"

    contentItem: IconLabel {
        spacing: custombutton.spacing
        mirrored: custombutton.mirrored
        display: custombutton.display

        icon: custombutton.icon
        text: custombutton.text
        font: custombutton.font
        color: custombutton.textColor
    }

    background: Rectangle {
        implicitWidth: 100
        implicitHeight: 40
        visible: !custombutton.flat || custombutton.down || custombutton.checked || custombutton.highlighted
        color: custombutton.pressed ? Qt.darker(custombutton.normalColor, 1.4) : custombutton.normalColor

        radius: mainWindow.radMedium
    }
}
