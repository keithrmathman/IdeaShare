import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Private 1.0
//import "C:/Users/Keith r/Documents/IdeaShare/MainMenu.qml"
ApplicationWindow{
    id:mainwindow
    width: 400  // This is available in all editors.
    height: 400


    Window {


        id:window
        visible: true
        width: 400
        height: 400
        property alias textEdit: textEdit
        title: qsTr("Share Ideas and head to greatness!")


    }

    Text {
        id: homeScreenText
        text: qsTr("HEY")
    }
    Image{
        id:backgroundImage
        x: 0
        y: 0
        width:parent.width
        height:parent.height
        clip: false
        source: "shutterstock_133871897.jpg"


    }
    Text {
        id: buttonText
        y: 10
        text: "press to begin"
        anchors.verticalCenterOffset: 125
        anchors.horizontalCenterOffset: -4
        font.pixelSize: 24
        anchors.centerIn: parent
        style: Text.Sunken
        color: "white"
        styleColor: "black"
    }



    Keys.onSpacePressed: clicked()




    TextEdit {
        id: textEdit
        text: qsTr("")
        activeFocusOnPress: true
        font.pixelSize: 8
        textFormat: Text.AutoText
        anchors.horizontalCenterOffset: 0
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 192


        Image {
            id: image1
            x: -131
            y: -10
            width: 262
            height: 100
            source: "cooltext201590374811601.png"
        }
    }

    Button {
        id: button1
        x: 120
        y: 354
        width: 158
        height: 31
        text: qsTr("Button")



        signal clicked2

        onClicked:{
            console.log(qsTr('Clicked on background. Text: "' + textEdit.text + '"'))
            pageLoader.active = true
            window.close();
            // update();
            //  close();
        }
    }




    Loader {
        id: pageLoader
        sourceComponent: component1
        active: false
        focus: true
        property bool valid: item !== null ; x: 0; y: 0;width: 400 ;height: 400



    }




    Component{

        id: component1

        MainMenu {
            id: mainMenu1
            x:0
            y:0
        }

    }

}
