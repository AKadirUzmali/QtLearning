// Import
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import "Utils"

// Main Window
Window {
    id: mainWindow

    width: 360
    height: 640
    visible: true
    title: qsTr("Login Form")

    flags: Qt.Window | Qt.FramelessWindowHint
    color: "transparent"

    // Dark/Light Flag
    property bool modeDark: true

    // Dark/Light Color
    readonly property color darkLightColor: "#141414"
    readonly property color darkDarkColor: "#000000"

    readonly property color lightLightColor: "#FFFFFF"
    readonly property color lightDarkColor: "#D1D1D1"

    readonly property color forgotPasswordColor: "#F55B47"

    // Radius
    readonly property int radSmall: 4
    readonly property int radMedium: 8
    readonly property int radHigh: 16

    // Fonts
    FontLoader {
        id: mainFontLight
        source: "qrc:/assets/fonts/alansans/AlanSans-Light.ttf"
    }

    FontLoader {
        id: mainFontRegular
        source: "qrc:/assets/fonts/alansans/AlanSans-Regular.ttf"
    }

    FontLoader {
        id: mainFontMedium
        source: "qrc:/assets/fonts/alansans/AlanSans-Medium.ttf"
    }

    FontLoader {
        id: mainFontSemibold
        source: "qrc:/assets/fonts/alansans/AlanSans-SemiBold.ttf"
    }

    FontLoader {
        id: mainFontBold
        source: "qrc:/assets/fonts/alansans/AlanSans-Bold.ttf"
    }

    // Box | Main
    Rectangle {
        id: mainBox

        anchors.fill: parent
        color: mainWindow.modeDark ? darkLightColor : lightLightColor
        radius: mainWindow.radHigh

        ColumnLayout {
            id: formLayout

            anchors {
                fill: parent

                margins: 16
                bottomMargin: 48
            }

            spacing: 1

            Image {
                id: formLayoutBackgroundIcon3D

                Layout.fillWidth: true
                Layout.preferredHeight: mainWindow.height/3
                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop

                source: "qrc:/assets/icons3d/3d-lock-crown.svg"
                fillMode: Image.PreserveAspectFit

                z: -1
            }

            Item { Layout.preferredHeight: 20 }

            Label {
                id: formLayoutTitle

                text: qsTr("Tekrardan Hoşgelidiniz")
                color: mainWindow.modeDark ? mainWindow.lightLightColor : mainWindow.darkDarkColor

                font {
                    pointSize: 18
                    family: mainFontSemibold.name
                    weight: Font.DemiBold
                }

                Layout.alignment: Qt.AlignHCenter
            }

            Text {
                id: formLayoutDescription

                text: qsTr("hesabınıza erişmek için giriş yapınız")
                color: mainWindow.modeDark ? mainWindow.lightDarkColor : mainWindow.darkLightColor

                font {
                    pointSize: 10
                    family: mainFontRegular.name
                    weight: Font.Normal
                }

                Layout.alignment: Qt.AlignHCenter
            }

            Item { Layout.preferredHeight: 30 }

            // Input | Username
            CustomInput {
                Layout.fillWidth: true

                placeholderText: qsTr("Kullanıcı Adı")
                imageSource: "qrc:/assets/icons/user.svg"
            }

            Item { Layout.preferredHeight: 10 }

            // Input | Password
            CustomInput {
                Layout.fillWidth: true

                echoMode: TextField.Password

                placeholderText: qsTr("Şifre")
                imageSource: "qrc:/assets/icons/lock.svg"
            }

            Item { Layout.preferredHeight: 10 }

            // Row | Remember Me & Forgot Password
            RowLayout {
                id: formLayoutRememberForgot

                Layout.fillWidth: true

                // Checkbox | Remember Me
                CustomCheckbox {
                    font {
                        pointSize: 10
                        family: mainFontRegular.name
                    }

                    text: qsTr("Beni hatırla")
                }

                Item { Layout.fillWidth: true }

                // Label | Forgot Password
                Label {
                    id: formLayoutForgotPassword

                    font {
                        pointSize: 9
                        family: mainFontLight.name
                    }

                    text: qsTr("Şifremi unuttum?")
                    color: mainWindow.forgotPasswordColor
                }
            }

            Item { Layout.fillHeight: true }

            // Button | Login Area
            CustomButton {
                Layout.fillWidth: true

                font {
                    pointSize: 10
                    family: mainFontRegular.name
                }

                text: qsTr("Giriş Yap")
            }

            Item { Layout.preferredHeight: 10 }

            // Label | New Member
            Label {
                Layout.alignment: Qt.AlignHCenter

                font {
                    pointSize: 8
                    family: mainFontLight.name
                }

                text: qsTr("Üye değil misiniz? Hemen şimdi üye olun")
                textFormat: Text.RichText

                color: mainWindow.modeDark ? mainWindow.lightDarkColor : mainWindow.darkLightColor
            }
        }
    }

    // Shortcut | Quit
    Action {
        shortcut: "Ctrl+q"
        onTriggered: Qt.quit()
    }
}
