import QtQuick 2.0
import QtQuick.Controls 1.4
Item {
    x: 2
    width: 200
    height: 100

    Image {
        id: image1
        x: 0
        y: 0
        width: 200
        height: 100
        source: "white backgrnd.jpg"

        Text {
            id: text1
            x: 62
            y: 29
            width: 99
            height: 14
            color: "#030000"
            text: qsTr("Are you Sure? ")
            font.pixelSize: 12
        }

        Button {
            id: button1
            x: 8
            y: 61
            text: qsTr("Yes")
        }

        Button {
            id: button2
            x: 117
            y: 61
            text: qsTr("No")
        }
    }

}
