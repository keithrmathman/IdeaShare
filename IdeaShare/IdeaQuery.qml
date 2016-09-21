import QtQuick 2.4
import QtQuick.Controls 1.4
import QtQuick 2.4
import QtQuick.Controls 2.0

Item {


 Image {
        id: image1
        width: 400
        height: 400
        source: "shutterstock_133871897.jpg"

        Image {
            id: image2
            x: 8
            y: 0
            width: 384
            height: 100
            source: "cooltext202108532011922.png"
        }

        TextInput {
            id: textInput1
            x: 41
            y: 167
            width: 318
            height: 167
            color: "#27bf08"
            text: ""
        }

        Label {
            id: label1
            x: 123
            y: 127
            width: 156
            height: 22
            color: "#53e840"
            text: qsTr("Enter Idea Here: ")
            font.pointSize: 14
        }

        signal clicked9

        Button {
            id: button1
            x: 164
            y: 359
            text: qsTr("Button")

            onClicked: {
                 console.log(qsTr('Clicked on background. Text: "' + textEdit.text + '"'))
                loader1.active = true
        }
        }
    }

    Loader{
        id: loader1
        sourceComponent: component2
        active: false
        focus: true
        property bool valid: item !== null ; x: 0; y: 0; anchors.fill: parent

    }

    Component{
        id:component2

        HomeScreenForm {
            id: homeScreenForm1
           // anchors.fill: parent
            x:0
            y:0
        }
    }








}

