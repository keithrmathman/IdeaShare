import QtQuick 2.4
import QtQuick.Controls 1.4
Item {
    id: loginItem
    width: 400
    height: 400
    property alias textField6: textField6
    property alias textField5: textField5
    property alias textField4: textField4
    property alias textField3: textField3
    property alias button1: button1
    property alias textField2: textField2
    property alias textField1: textField1

    BorderImage {
        id: backgroundImage1
        x: 0
        y: 0
        width: 400
        height: 400
        source: "shutterstock_133871897.jpg"




        Image {
            id: image1
            x: 70
            y: 10
            width: 250
            height: 30
            source: "cooltext202008280295993.png"
        }

        Label {
            id: label2
            x: 38
            y: 51
            width: 60
            color: "#25eb0b"
            text: qsTr("First name:")
        }

        Label {
            id: label3
            x: 38
            y: 106
            width: 60
            color: "#20e706"
            text: qsTr("Last name:")
        }

        Label {
            id: label4
            x: 13
            y: 154
            width: 60
            color: "#20e706"
            text: qsTr("College/Workplace:")
        }

        Label {
            id: label5
            x: 38
            y: 203
            width: 60
            color: "#20e706"
            text: qsTr("Expertise:")
        }

        Label {
            id: label6
            x: 38
            y: 250
            width: 60
            color: "#20e706"
            text: qsTr("Username:")
        }

        Label {
            id: label7
            x: 38
            y: 304
            width: 60
            color: "#20e706"
            text: qsTr("Password:")
        }
    }

    BorderImage {
        id: borderImage2
        x: 75
        y: 150
        width: 250
        height: 76
        source: "cooltext201590374811601.png"


    }


    TextField {
        id: textField6
        x: 125
        y: 49
        width: 150
        height: 21
        placeholderText: qsTr("Enter first name")
    }
    TextField {
        id: textField2
        x: 125
        y: 100
        width: 150
        placeholderText: qsTr("Enter last name")
    }
    TextField {
        id: textField1
        x: 125
        y: 150
        width: 150
        placeholderText: qsTr("Enter college or workplace (optional)")
    }
    TextField {
        id: textField3
        x: 125
        y: 200
        width: 150
        placeholderText: qsTr("Enter your area of expertise")
    }
    TextField {
        id: textField4
        x: 125
        y: 250
        width: 150
        placeholderText: qsTr("Enter your username")
    }
    TextField {
        id: textField5
        x: 125
        y: 300
        width: 150
        placeholderText: qsTr("Enter your password")
    }


    Button {
        id: button1
        x: 163
        y: 352
        text: qsTr("Submit")
        checkable: false
    }



}
