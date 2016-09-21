import QtQuick 2.4
import QtQuick.Controls 1.4

Item {
    width: 400
    height: 400

    Rectangle {
        id: rectangle1
        x: 8
        y: 0
        width: 384
        height: 400
        color: "#ffffff"

        Text {
            id: text1
            x: 72
            y: 152
            width: 241
            height: 82
            text: qsTr("Submit Idea?")
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 16
        }

        Button {
            id: button1
            x: 72
            y: 278
            text: qsTr("Yes")
        }

        Button {
            id: button2
            x: 238
            y: 278
            text: qsTr("No")
        }
    }
}
