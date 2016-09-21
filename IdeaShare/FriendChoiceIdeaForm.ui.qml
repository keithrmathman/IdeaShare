import QtQuick 2.4
import QtQuick.Controls 1.4
Item {
    width: 400
    height: 400

    Image {
        id: image1
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent

        source: "shutterstock_133871897.jpg"

        Label {
            id: label1
            x: 23
            y: 39
            width: 334
            height: 33
            color: "#09ad12"
            text: "Choose Who Gets to see your ideas"
            font.pointSize: 16
        }

        GridView {
            id: gridView1
            x: 23
            y: 96
            width: 334
            height: 226
            delegate: Item {
                x: 5
                height: 50
                Column {
                    Rectangle {
                        width: 40
                        height: 40
                        color: colorCode
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Text {
                        x: 5
                        text: name
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.bold: true
                    }
                    spacing: 5
                }
            }
            cellHeight: 70
            cellWidth: 70
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
            x: 163
            y: 356
            text: qsTr("Next")
        }
    }
}
