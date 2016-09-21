import QtQuick 2.4
import QtQuick.Controls 1.4
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

        Image {
            id: image2
            x: 62
            y: 15
            width: 273
            height: 100
            source: "cooltext203929368703379.png"
        }

        Button {
            id: button1
            x: 62
            y: 363
            text: qsTr("Add Idea")
        }

        Button {
            id: button2
            x: 260
            y: 363
            text: qsTr("Delete Idea")
        }

        Button {
            id: button3
            x: 317
            y: 189
            text: qsTr("Back")
        }


    }

    ListView {
        id: listView1
        x: 63
        y: 120
        width: 230
        height: 226
        delegate: Item {
            x: 5
            width: 80
            height: 40
            Row {
                id: row1
                Rectangle {
                    width: 40
                    height: 40
                    color: colorCode
                }

                Text {
                    text: name
                    font.bold: true
                    anchors.verticalCenter: parent.verticalCenter
                }
                spacing: 10
            }
        }
        model: ListModel {
            ListElement {
                name: "Grey"
                colorCode: "grey"
            }

            ListElement {
                name: "Red"
                colorCode: "red"
            }

            ListElement {
                name: "Blue"
                colorCode: "blue"
            }

            ListElement {
                name: "Green"
                colorCode: "green"
            }
        }
    }
}
