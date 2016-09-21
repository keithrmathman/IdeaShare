import QtQuick 2.4
import QtQuick.Controls 2.0
import QtQuick.XmlListModel 2.0
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

        ListView {
            id: listView1
            x: 57
            y: 165
            width: 184
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

        Label {
            id: label1
            x: 57
            y: 139
            width: 115
            height: 13
            color: "#00ff00"
            text: qsTr("List of Ideas")
        }

        ListView {
            id: listView2
            x: 263
            y: 165
            width: 110
            height: 160
            delegate: Item {
                x: 5
                width: 80
                height: 40
                Row {
                    id: row2
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

        Label {
            id: label2
            x: 263
            y: 139
            width: 86
            height: 13
            color: "#00ff00"
            text: qsTr("List of Projects")
        }

        Button {
            id: button1
            x: 57
            y: 342
            text: qsTr("Back")
        }

        Button {
            id: button2
            x: 166
            y: 342
            text: qsTr("Add Idea")
        }

        Button {
            id: button3
            x: 277
            y: 342
            text: qsTr("Delete Idea")
        }
    }

    Image {
        id: image2
        x: 55
        y: 24
        width: 295
        height: 100
        source: "cooltext203749175020384.png"
    }
}
