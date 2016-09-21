import QtQuick 2.4
import QtQuick.Controls 2.0
Item {
    width: 400
    height: 400

    Image {
        id: image1
        x: 0
        y: 0
        width: 400
        height: 400
        source: "shutterstock_133871897.jpg"

        ComboBox {
            id: comboBox1
            x: 89
            y: 156
            width: 208
            height: 40
        }

        Image {
            id: image2
            x: 8
            y: 8
            width: 384
            height: 81
            source: "cooltext203949016269855.png"
        }

        Button {
            id: button1
            x: 150
            y: 297
            text: qsTr("Submit")
        }
    }
}
