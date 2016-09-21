import QtQuick 2.4

SignUpForm

{

    Loader{
        id: loader1
        sourceComponent: component3
        active: false
        focus: true
        property bool valid: item !== null ; x: 0; y: 0; anchors.fill: parent

    }
   signal clicked


    Component{
        id:component3


        IdeaQuery {
            id: ideaQueryForm2
            x: 0
            y: 0
}



        }

    button1.onClicked: {
        console.log(qsTr('Clicked on background. Text: "' + textEdit.text + '"'))
        loader1.active = true
       // window.close();

        // update();
        //  close();
    }




}

