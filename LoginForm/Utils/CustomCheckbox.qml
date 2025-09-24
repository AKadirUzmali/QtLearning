// Import
import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Templates as T
import QtQuick.Controls.impl

// Custom Checkbox
CheckBox {
    id: customcheckbox

    // Color
    readonly property color checkedColor: "#30DB83"
    readonly property color uncheckedColor: "transparent"

    readonly property color borderColor: "#F7F7F7"

    // Custom
    property color textColor: mainWindow.modeDark ? mainWindow.lightDarkColor : mainWindow.darkLightColor

    implicitWidth: Math.max(implicitBackgroundWidth + leftInset + rightInset,
                            implicitContentWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(implicitBackgroundHeight + topInset + bottomInset,
                             implicitContentHeight + topPadding + bottomPadding,
                             implicitIndicatorHeight + topPadding + bottomPadding)

    padding: 6
    spacing: 6

    // keep in sync with CheckDelegate.qml (shared CheckIndicator.qml was removed for performance reasons)
    indicator: Rectangle {
        implicitWidth: 20
        implicitHeight: 20

        radius: mainWindow.radMedium

        x: customcheckbox.text ? (customcheckbox.mirrored ? customcheckbox.width - width - customcheckbox.rightPadding : customcheckbox.leftPadding) : customcheckbox.leftPadding + (customcheckbox.availableWidth - width) / 2
        y: customcheckbox.topPadding + (customcheckbox.availableHeight - height) / 2

        // color: customcheckbox.down ? customcheckbox.palette.light : customcheckbox.palette.base
        color: customcheckbox.checked ? customcheckbox.checkedColor : customcheckbox.uncheckedColor
        border.width: 1
        border.color: customcheckbox.checked ? customcheckbox.checkedColor : customcheckbox.borderColor

        ColorImage {
            width: 16
            height: 16
            x: (parent.width - width) / 2
            y: (parent.height - height) / 2
            defaultColor: "#353637"
            color: customcheckbox.palette.text
            source: "qrc:/qt-project.org/imports/QtQuick/Controls/Basic/images/check.png"
            visible: customcheckbox.checkState === Qt.Checked
        }

        Rectangle {
            x: (parent.width - width) / 2
            y: (parent.height - height) / 2
            width: 16
            height: 3
            color: customcheckbox.palette.text
            visible: customcheckbox.checkState === Qt.PartiallyChecked
        }
    }

    contentItem: CheckLabel {
        leftPadding: customcheckbox.indicator && !customcheckbox.mirrored ? customcheckbox.indicator.width + customcheckbox.spacing : 0
        rightPadding: customcheckbox.indicator && customcheckbox.mirrored ? customcheckbox.indicator.width + customcheckbox.spacing : 0

        text: customcheckbox.text
        font: customcheckbox.font
        color: customcheckbox.textColor
    }
}
