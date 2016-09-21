import QtQuick 2.4
import QtQuick.Controls 2.0
Item {
    width: 400
    height: 400

    Image {
        id: image1
        width: 100
        height: 100
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent
        source: "shutterstock_133871897.jpg"

        Image {
            id: image2
            x: 52
            y: 28
            width: 304
            height: 100
            source: "cooltext203947716986787.png"
        }

        ListView {
            id: listView1
            x: 52
            y: 157
            width: 210
            height: 173
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

        Button {
            id: button1
            x: 52
            y: 352
            text: qsTr("Add Project")
            highlighted: false
        }

        Button {
            id: button2
            x: 256
            y: 352
            text: qsTr("Delete Project")
        }

        Button {
            id: button3
            x: 284
            y: 209
            text: qsTr("Back ")
        }
    }
}
