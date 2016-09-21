import QtQuick 2.4
import QtQuick.Controls 2.0
Item {
    width: 400
    height: 400

    Image {
        id: image1
        x: 0
        y: 0
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent
        source: "shutterstock_133871897.jpg"

        Label {
            id: label1
            x: 50
            y: 68
            width: 71
            height: 13
            color: "#00ff00"
            text: qsTr("Project Name:")
            font.pointSize: 8
        }

        Label {
            id: label2
            x: 50
            y: 103
            color: "#00ff00"
            text: qsTr("Project Date: ")
        }

        Label {
            id: label3
            x: 50
            y: 139
            color: "#00ff00"
            text: qsTr("Location: ")
        }

        Label {
            id: label4
            x: 50
            y: 178
            width: 80
            height: 13
            color: "#00ff00"
            text: qsTr("Project Creator:")
        }

        TextField {
            id: textField1
            x: 151
            y: 68
            width: 200
            height: 21
            color: "#00ff00"
            text: qsTr("Text Field")
        }

        TextField {
            id: textField2
            x: 151
            y: 103
            width: 200
            height: 21
            color: "#00ff00"
            text: qsTr("Text Field")
        }

        TextField {
            id: textField3
            x: 151
            y: 139
            width: 200
            height: 21
            color: "#00ff00"
            text: qsTr("Text Field")
        }

        TextField {
            id: textField4
            x: 151
            y: 178
            width: 200
            height: 21
            color: "#00ff00"
            text: qsTr("Text Field")
        }

        Button {
            id: button1
            x: 151
            y: 298
            text: qsTr("Next")
        }
    }
}
