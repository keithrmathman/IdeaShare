import QtQuick 2.4

LoginForm {

    Loader{
        id: loader1
        sourceComponent: component1
        active: false
        focus: true
        property bool valid: item !== null ; x: 0; y: 0; anchors.fill: parent

    }

    Component{
        id:component1

        IdeaQuery
        {
            id: ideaQueryForm1
            x: 0
            y: 0

        }
    }

    signal clicked

    submitButton.onClicked:{
        console.log(qsTr('Clicked on background. Text: "' + textEdit.text + '"'))
        loader1.active = true
      //  window.close();
        // update();
        //  close();
    }
}
