import QtQuick 2.4
import QtQuick.Controls 2.0
import QtQuick.Controls.Styles 1.4
Item {
    width: 400
    height: 400
    property alias listView1: listView1

    Image {
        id: image1
        x: 0
        y: 0
        width: 400
        height: 400
        source: "shutterstock_133871897.jpg"

        Text {
            id: text1
            x: 32
            y: 150
            width: 78
            height: 14
            wrapMode: Text.WordWrap
            font.pixelSize: 12

            Label {
                id: label1
                x: 0
                y: 0
                width: 78
                height: 14
                color: "#00ff00"
                text: qsTr("Think Buddies: ")
                textFormat: Text.RichText
                font.pointSize: 10
            }
        }

        ListView {
            id: listView1
            x: 32
            y: 194
            width: 110
            height: 160
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
            x: 239
            y: 180
            text: qsTr("Manage  Ideas")
        }

        Button {
            id: button2
            x: 239
            y: 254
            text: qsTr("Search for Idea Buddies")
        }

        Button {
            id: button3
            x: 318
            y: 14
            width: 53
            height: 27
            text: qsTr("LogOut")
        }

        Button {
            id: button4
            x: 239
            y: 322
            text: qsTr("New Project")
        }
    }

    Image {
        id: image2
        x: 101
        y: 10
        width: 200
        height: 100
        source: "cooltext203746054296960.png"
    }
}
