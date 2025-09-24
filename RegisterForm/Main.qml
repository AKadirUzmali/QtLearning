import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Controls.Material
import QtQuick.Layouts

// Main Window
Window {
    id: mainWindow

    flags: Qt.Window | Qt.WindowStaysOnTopHint | Qt.MSWindowsFixedSizeDialogHint

    width: 800
    height: 600
    visible: true
    title: qsTr("Kullanıcı Girişi")

    // Dark/Light Mode Flag
    property bool darkMode: true

    property color darkModeLightColor: "#141414"
    property color darkModeDarkColor:  "#000000"

    property color lightModeLightColor: "#FFFFFF"
    property color lightModeDarkColor:  "#D1D1D1"

    property var backgroundGradient: Gradient {
        orientation: Gradient.Horizontal

        GradientStop {
            position: 0
            color: mainWindow.darkMode ? mainWindow.darkModeLightColor : mainWindow.lightModeLightColor
        }

        GradientStop {
            position: 1
            color: mainWindow.darkMode ? mainWindow.darkModeDarkColor : mainWindow.lightModeDarkColor
        }
    }

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

    // Inside Main Window
    Rectangle {
        id: mainInside
        anchors.fill: parent

        // Gradient Background
        // gradient: mainWindow.backgroundGradient

        Rectangle {
            id: formArea

            anchors.fill: parent
            anchors.centerIn: parent

            color: mainWindow.darkMode ? mainWindow.darkModeLightColor : mainWindow.lightModeLightColor
            radius: 12
            clip: true

            // Row
            Row {
                id: formAreaImageInput
                layoutDirection: Qt.LeftToRight
                anchors.fill: parent

                // Vertical Backgrounds
                property var vertical_backgrounds : [
                    "qrc:/assets/backgrounds/vertical/vertical-background-1.jpg",
                    "qrc:/assets/backgrounds/vertical/vertical-background-2.jpg",
                    "qrc:/assets/backgrounds/vertical/vertical-background-3.jpg",
                    "qrc:/assets/backgrounds/vertical/vertical-background-4.jpg",
                    "qrc:/assets/backgrounds/vertical/vertical-background-5.jpg",
                    "qrc:/assets/backgrounds/vertical/vertical-background-6.jpg",
                    "qrc:/assets/backgrounds/vertical/vertical-background-7.jpg"
                ]

                // Temp Vertical Background Url
                property string current_vertical_background: ""

                // Random Vertical Background Selector
                function randomVerticalBackground() {
                    var index = Math.floor(Math.random() * vertical_backgrounds.length)
                    current_vertical_background = vertical_backgrounds[index]
                }

                Component.onCompleted: randomVerticalBackground()

                // Vertical Background
                Image {
                    id: formAreaImage

                    width: (formAreaImageInput.width/2.25)
                    height: (formAreaImageInput.height)

                    source: formAreaImageInput.current_vertical_background
                    fillMode: Image.Stretch
                }

                // Input Area
                Column {
                    id: formAreaInputColumn

                    width: (formAreaImageInput.width - formAreaImage.width)
                    anchors.verticalCenter: parent.verticalCenter

                    spacing: 20
                    leftPadding: 32
                    rightPadding: 32

                    // Title
                    Label {
                        id: formAreaInputColumnTitle
                        anchors.horizontalCenter: parent.horizontalCenter

                        font.pointSize: 32
                        font.family: mainFontSemibold.name
                        font.bold: true
                        font.italic: false

                        text: "Hoşgeldiniz!"
                        color: mainWindow.darkMode ? mainWindow.lightModeLightColor : mainWindow.darkModeDarkColor
                    }

                    // Input Area Column
                    Column {
                        id: formAreaInputArea
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: formAreaInputColumn.width - (formAreaInputColumn.leftPadding + formAreaInputColumn.rightPadding)

                        spacing: 8

                        topPadding: 16
                        bottomPadding: 16

                        // Custom Fields
                        // Name
                        CustomField {
                            width: parent.width
                            labelName: "Ad"
                        }

                        // Email
                        CustomField {
                            width: parent.width
                            labelName: "E-posta"
                        }

                        // Password
                        CustomField {
                            width: parent.width
                            labelName: "Şifre"
                        }
                    }

                    // Button Area Row
                    Row {
                        id: formAreaButtonArea
                        width: formAreaInputArea.width

                        spacing: 12

                        // Button Background & Text Color
                        property color btnSignupBgColor:  "#007CE8"
                        property color btnSignupTxtColor: "#F7F7F7"

                        property color btnSigninBgColor:  "#EDDD53"
                        property color btnSigninTxtColor: "#2E2E2E"

                        // Sign Up
                        Button {
                            id: formAreaButtonSignUp
                            width: (parent.width/2) - 6
                            hoverEnabled: true
                            contentItem: Label {
                                anchors.centerIn: parent

                                font.family: mainFontSemibold.name
                                font.bold: true
                                font.italic: false

                                verticalAlignment: Text.AlignVCenter
                                horizontalAlignment: Text.AlignHCenter

                                text: "Kayıt Ol"
                                color: formAreaButtonArea.btnSignupTxtColor
                            }
                            background: Rectangle {
                                anchors.fill: parent
                                color: formAreaButtonSignUp.hovered ? Qt.lighter(formAreaButtonArea.btnSignupBgColor, 1.25) : formAreaButtonArea.btnSignupBgColor
                                radius: 8
                            }

                            topPadding: 12
                            bottomPadding: 12
                            leftPadding: 16
                            rightPadding: 16
                        }

                        // Sign In
                        Button {
                            id: formAreaButtonSignIn
                            width: (parent.width/2) - 6
                            hoverEnabled: true
                            contentItem: Label {
                                anchors.centerIn: parent

                                font.family: mainFontSemibold.name
                                font.bold: true
                                font.italic: false

                                verticalAlignment: Text.AlignVCenter
                                horizontalAlignment: Text.AlignHCenter

                                text: "Giriş Yap"
                                color: formAreaButtonArea.btnSigninTxtColor
                            }
                            background: Rectangle {
                                anchors.fill: parent
                                color: formAreaButtonSignIn.hovered ? Qt.lighter(formAreaButtonArea.btnSigninBgColor, 1.25) : formAreaButtonArea.btnSigninBgColor
                                radius: 8
                            }

                            topPadding: 12
                            bottomPadding: 12
                            leftPadding: 16
                            rightPadding: 16
                        }
                    }

                    // Privacy Policy
                    Row {
                        id: formAreaPrivacyPolicy
                        width: formAreaInputArea.width
                        spacing: 12

                        // CheckBox Color
                        property color checkboxColor: "#1BD161"

                        CheckBox {
                            id: formAreaPrivacyPolicyCheckbox
                            anchors.verticalCenter: parent.verticalCenter
                            checkState: Qt.Unchecked
                            Material.accent: formAreaPrivacyPolicy.checkboxColor
                        }

                        Label {
                            id: formAreaPrivacyPolicyLabel
                            anchors.verticalCenter: parent.verticalCenter

                            text: "<b>Hizmet Şartları</b> ve <b>Gizlilik Politikası</b>'nı kabul ediyorum"
                            textFormat: Text.StyledText
                            color: mainWindow.darkMode ? mainWindow.lightModeLightColor : mainWindow.darkModeDarkColor
                        }
                    }
                }
            }
        }
    }
}
