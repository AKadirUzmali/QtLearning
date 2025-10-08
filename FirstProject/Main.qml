import QtQuick

// import QtQuick.Controls
import QtQuick.Controls.Material
// import QtQuick.Controls.Basic
// import QtQuick.Controls.Universal

// import QtQuick.Layouts

import QtQuick.Shapes

// import com.reddit
// import FirstProject

Window {
    id: rootWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("İlk Deneme")
    // visibility: Window.Maximized

    // flags: Qt.Window | Qt.WindowStaysOnTopHint | Qt.WindowTitleHint | Qt.WindowSystemMenuHint
    //     | Qt.WindowMinMaxButtonsHint | Qt.WindowCloseButtonHint

    /*
    Rectangle {
        anchors.fill: parent
        color: Qt.rgba(250, 250, 250, 1)
    }
    */

    /*
    Rectangle {
        anchors.fill: parent
        // width: parent.width
        // height: parent.height
        gradient: Gradient {
            orientation: Qt.Horizontal
            GradientStop { position: 0.0; color: "red" }
            GradientStop { position: 0.5; color: "yellow" }
            GradientStop { position: 1.0; color: "green" }
        }
    }
    */

    /*
    Image {
        width: 32
        height: 32

        source: "qrc:/assets/icons/png/slavnem-logo.png"
    }
    */

    /*
    Text {
        text: "<b>İlk Deneme Proje</b> Yazısı <i>Denemesi</i> Ve Dahası..."
        color: "#222222"

        width: parent.width
        wrapMode: Text.WrapAnywhere
        // textFormat: Text.PlainText

        font.family: "Arial"
        font.pointSize: 24
        // font.bold: true
        // font.italic: true
        // font.underline: true
    }
    */

    /*
    FontLoader {
        id: myFont
        source: "qrc:/assets/fonts/alansans/AlanSans-Medium.ttf"
    }

    Label {
        text: "İlk Deneme Label"

        font.pointSize: 20
        font.bold: true
        font.family: myFont.name

        x: 16
        y: 16

        // padding: 24
        leftPadding: 24
        rightPadding: 24
        topPadding: 12
        bottomPadding: 12

        background: Rectangle {
            color: "#ef3f5f"
            radius: 12
        }
    }
    */

    /*
    Image {
        // anchors.fill: parent:
        fillMode: Image.Stretch

        source: "qrc:/assets/images/png/transformers-one-megatron.png"

        onStatusChanged: {
            switch(status) {
                case Image.Loading:
                    console.log("Image is Loading...")
                    break
                case Image.Ready:
                    console.log("Image is Loaded")
                    break
                case Image.Error:
                    console.log("Image Error Occured!")
                    break
                default:
                    console.log("Image Status Unknown")
            }
        }
    }
    */

    /*
    FontLoader {
        id: buttonFont
        source: "qrc:/assets/fonts/alansans/AlanSans-Regular.ttf"
    }

    Button {
        x: 64
        y: 64

        leftPadding: 32
        rightPadding: 32
        topPadding: 20
        bottomPadding: 20

        background: Rectangle {
            id: backgroundRect
            radius: 8
            color: "#FF3053"
        }

        contentItem: Label {
            id: buttonLabel
            font.pointSize: 16
            font.family: buttonFont.name

            color: "#efefef"
            text: "Butona Tıkla!"
        }

        onClicked: {
            backgroundRect.color = "#3FBF75"
            buttonLabel.text = "Butona Tıklandı!"
        }

        hoverEnabled: true
        onHoveredChanged: {
            backgroundRect.color = "#3FBF75"
        }
    }
    */

    /*
    Rectangle {
        id: rect
        anchors.centerIn: parent
        width: 100
        height: 100

        color: mouseArea.containsMouse ? "#A0A0A0" : "#808080"

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor

            onClicked: {
                console.log("Şekile Tıklandı!")
            }

            onDoubleClicked: {
                console.log("Şekile Çift Tıklandı!")
            }

            hoverEnabled: true
            // onHoveredChanged: {
            //     rect.color = "#A0A0A0"
            // }

            // onEntered: {
            //     rect.color = "#A0A0A0"
            // }

            // onExited: {
            //     rect.color = "#808080"
            // }
        }
    }
    */

    /*
    Rectangle {
        id: rectangle
        color: "blue"
        width: 100
        height: 100

        x: (rootWindow.width/2) - (rectangle.width/2)
        y: (rootWindow.height/2) - (rectangle.height/2)
        z: 1
    }
    */

    /*
    Rectangle {
        id: centerRect
        width: 100
        height: 100

        // anchors.top: parent.top
        // anchors.left: parent.left
        // anchors.horizontalCenter: parent.horizontalCenter
        // anchors.verticalCenter: parent.verticalCenter
        // anchors.centerIn: parent

        // anchors.topMargin: 50
        // anchors.leftMargin: 50

        anchors.fill: parent
        anchors.margins: 20

        color: "red"
    }

    // Rectangle {
    //     id: secondRect
    //     width: centerRect.width
    //     height: centerRect.height
    //
    //     anchors.top: centerRect.bottom
    //     anchors.left: centerRect.left
    //
    //     anchors.topMargin: 20
    //
    //     color: "blue"
    // }
    */

    /*
    Row {
    // Column {
        anchors.centerIn: parent
        spacing: 20
        layoutDirection: Qt.RightToLeft

        Rectangle {
            width: 100
            height: 100

            color: "tomato"
        }

        Rectangle {
            width: 100
            height: 100

            color: "skyblue"
        }

        Item {
            width: 100
            height: 50
            visible: false
        }

        Rectangle {
            width: 100
            height: 100

            color: "lightgreen"
        }
    }
    */

    /*
    Rectangle {
        anchors.fill: parent
        color: "#222"
    }

    BusyIndicator {
        anchors.centerIn: parent

        width: 48
        height: 48

        // Universal.accent: "#fff"
        // Material.accent: "#fff"
        // palette.text: "#fff"
    }
    */

    /*
    AnimatedImage {
        anchors.centerIn: parent

        source: "qrc:/assets/loaders/duck-walking.gif"
    }
    */

    /*
    Rectangle {
        anchors.fill: parent
        color: "#eee"
    }

    CheckBox {
        id: checkbox
        anchors.centerIn: parent
        checkState: Qt.Unchecked
        // tristate: true

        text: "Onaylıyor musunuz?"
        Material.accent: "#1696F2"
    }

    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 24

        font.pointSize: 24

        text: checkbox.checked ? "Onaylandı" : "Onaylanmadı"
    }
    */

    /*
    Rectangle {
        anchors.fill: parent
        color: "#222"

        ListModel {
            id: myModel

            ListElement {
                name: "Abc"
                age: 15
            }

            ListElement {
                name: "Def"
                age: 25
            }

            ListElement {
                name: "Ghi"
                age: 20
            }

            ListElement {
                name: "JKl"
                age: 18
            }

            ListElement {
                name: "MnO"
                age: 29
            }
        }

        ListView {
            anchors.centerIn: parent

            width: 100
            height: 100

            spacing: 10

            // model: [1,2,39,4,5,6]
            model: myModel
            delegate: myDelegate
        }

        Component {
            id: myDelegate

            Label {
                // required property int modelData
                required property string name
                required property int age
                font.pointSize: 16

                text: "İsim: " + name + " ve Yaş: " + age
                color: "#fff"
            }
        }
    }
    */

    /*
    Rectangle {
        anchors.fill: parent
        color: "#222"

        TextField {
            anchors.centerIn: parent

            width: 200

            font.pointSize: 12

            topPadding: 8
            bottomPadding: 8
            leftPadding: 32
            rightPadding: 12

            color: "#111"
            background: Rectangle {
                anchors.fill: parent
                color: "#EDE211"
                radius: 8
            }

            Image {
                source: "qrc:/assets/icons/svg/users.svg"

                width: 16
                height: 16

                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter

                anchors.leftMargin: 8
                anchors.rightMargin: 4
            }

            onTextChanged: {
                console.log("Metin: ", text)
            }
        }
    }
    */

    /*
    Button {
        anchors.centerIn: parent
        text: "Butona Tıkla"
        onClicked: cBackendHelper.printText()
    }
    */

    /*
    Text {
        font.pointSize: 16
        anchors.centerIn: parent
        text: cBackendHelper.getDate()
    }
    */

    /*
    BackendRegister {
        id: backRegister
    }

    Text {
        id: backText
        anchors.centerIn: parent
        font.pointSize: 16
        text: backRegister.getNum()
    }

    Button {
        anchors.top: backText.bottom
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Butona Tıkla"
        onClicked: backRegister.printSomething()
    }
    */

    /*
    Text {
        id: backText
        anchors.centerIn: parent
        font.pointSize: 16
        text: BackendRegister.getNum()
    }

    Button {
        anchors.top: backText.bottom
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Butona Tıkla"
        onClicked: BackendRegister.printSomething()
    }
    */

    /*
    Column {
        anchors.centerIn: parent
        spacing: 20

        Text {
            id: textNumber
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 16

            text: BackendProperty.myNumber
        }

        Row {
            anchors.horizontalCenter: parent.horizontalCenter
            layoutDirection: Qt.LeftToRight

            Button {
                text: "Azalt"

                onClicked: BackendProperty.myNumber -= 1
            }

            Button {
                text: "Arttır"

                onClicked: BackendProperty.myNumber += 1
            }
        }
    }
    */

    /*
    ColumnLayout {
        // anchors {
        //     top: parent.top
        //     left: parent.left
        //     right: parent.right

        //     margins: 24
        // }

        anchors.fill: parent
        spacing: 24

        Rectangle {
            Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
            Layout.fillWidth: true
            Layout.fillHeight: true
            // Layout.preferredWidth: 360
            // Layout.preferredHeight: 180

            color: "#434523"

            Text {
                anchors.centerIn: parent

                font.pointSize: 16

                color: "white"
                text: parent.width
            }
        }

        Button {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            text: "Tıkla!"
        }

        Item {
            Layout.fillHeight: true
        }
    }
    */

    /*
    RowLayout {
        width: parent.width

        spacing: 24

        Button {
            text: "Tıkla!"
        }

        Button {
            Layout.fillWidth: true
            text: "Tıkla 2!"
        }
    }
    */

    /*
    Rectangle {
        anchors {
            fill: parent
            margins: 24
        }

        color: "#363636"

        GridLayout {
            id: myGrid
            anchors.fill: parent
            columns: 3
            columnSpacing: 8
            rowSpacing: 8
            uniformCellHeights: true
            uniformCellWidths: true

            Repeater {
                model: 9

                Rectangle {
                    color: Qt.rgba(Math.random(), Math.random(), Math.random())
                    Layout.preferredWidth: (parent.width - (2 * myGrid.columnSpacing)) / 3
                    Layout.preferredHeight: (parent.height - (2 * myGrid.rowSpacing)) / 3
                }
            }
        }
    }
    */

    Shape {
        id: myShape

        anchors {
            fill: parent
            margins: 24
        }

        antialiasing: true

        ShapePath {
            id: myShapePath
            strokeWidth: 2
            strokeColor: "#111"

            fillGradient: LinearGradient {
                x1: 0
                y1: height

                x2: width
                y2: 0

                GradientStop {
                    position: 0.0
                    color: "#4158D0"
                }

                GradientStop {
                    position: 1.0
                    color: "#C850C0"
                }
            }

            PathRectangle {
                width: myShape.width
                height: myShape.height
                radius: 8
                strokeAdjustment: myShapePath.strokeWidth
            }
        }
    }
}
