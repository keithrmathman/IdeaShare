import QtQuick 2.4
import QtQuick.Controls 1.4
//import "C:/Users/Keith r/Documents/IdeaShare"

Item {
    property alias image3: image3
    width: 400
    height: 400
    property alias submitButton: submitButton

    Image {
        id: image1
        x: 0
        y: 0
        width: 400
        height: 400
        source: "shutterstock_133871897.jpg"
        anchors.bottom: parent
        anchors.top: parent
        anchors.leftMargin: parent

        Image {
            id: image2
            x: 75
            y: 125
            width: 250
            height: 100
            source: "cooltext201590374811601.png"


        }

        Text {
            id: text1
            x: 40
            y: 259
            width: 80
            height: 40
            color: "#43bf05"
            text: qsTr("Username/Email")
            font.bold: false
            font.pixelSize: 12
        }

        Button {
            id: submitButton
            x: 163
            y: 356
            text: qsTr("Submit ")
        }


    }

    TextField {
        id: textField1
        x: 137
        y: 263
        width: 160
        height: 20
        text: "Username"
        placeholderText: qsTr("Text Field")

        Text {
            id: text2
            x: -97
            y: 56
            width: 80
            height: 20
            color: "#53f006"
            text: qsTr("Password")
            wrapMode: Text.NoWrap
            font.pixelSize: 12
        }
    }

    TextField {
        id: textField2
        x: 137
        y: 316
        width: 160
        text: "Password"
        readOnly: false
        placeholderText: qsTr("Text Field")
    }

    Image {
        id: image3
        x: 150
        y: 8
        width: 100
        height: 40
        source: "cooltext202081275288009.png"
    }


}
