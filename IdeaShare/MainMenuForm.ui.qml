import QtQuick 2.4
import QtQuick.Controls 1.4


Item {
    id:root
    x: 0
    width: 399
    height: 400
    property alias signupButton: signupButton
    property alias loginButton: loginButton
    property alias buttonTextlogin: buttonTextlogin

    Image {
        id: image1
        width: 400
        height: 400
        source: "shutterstock_133871897.jpg"

        Image {
            id: image2
            x: 75
            y: 120
            width: 250
            height: 105
            source: "cooltext201590374811601.png"
        }

        Rectangle {
            id: login

            property bool checked: false

            Accessible.name: text
            Accessible.description: "This button does " + text
            Accessible.role: Accessible.Button


            signal clicked

            height: 50
            x: 75
            y: 300
            width: 100
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#ffffff" }
                GradientStop { position: 1.0;
                    color: button.focus ? "red" : "blue" }
            }

            radius: 1
            antialiasing: true

            Text {
                id: buttonTextlogin
                text: "login "
                anchors.centerIn: parent
                font.pixelSize: parent.height * .5
                style: Text.Sunken
                color: "white"
                styleColor: "black"
            }


            /*  MouseArea {
                id: loginButton
                x: 75
                y: 300
                width: 101
                height: 50
                anchors.left: parent.left
                anchors.leftMargin: 50
            }*/

            Rectangle {
                id: signup

                property bool checked: false

                Accessible.name: text
                Accessible.description: "This button does " + text
                Accessible.role: Accessible.Button



                x: 225
                y: 300
                width: 100
                height: 50

                gradient: Gradient {
                    GradientStop { position: 0.0; color: "#ffffff" }
                    GradientStop { position: 1.0;
                        color: button.focus ? "red" : "blue" }
                }

                radius: 1
                visible: true
                antialiasing: true

                Text {
                    id: buttonTextsignup
                    text: "sign up "
                    anchors.centerIn: parent
                    font.pixelSize: parent.height * .5
                    style: Text.Sunken
                    color: "white"
                    styleColor: "black"
                }


                /* MouseArea {
                id: signupButton
                x: 225
                y: 300
                width: 100
                height: 50

                signal clicked

            }*/
            }





        }


    }
   // property alias button: loginButton

    Button {


        id: loginButton
        x:76
        y:299
        width: 100
        height: 50
        text: qsTr("Login")


    }
    // property alias button: signupButton

    Button {



        id: signupButton
        x: 225
        y: 300
        width: 100
        height: 50
        text: qsTr("SignUp")


}
}
