import QtQuick 2.4
import QtQuick.Controls 1.4
import QtQuick.Window 2.0


MainMenuForm{

    Loader{
        id:loader1
        sourceComponent: loginComponent
        active: false
        focus: true
        property bool valid: item !== null ; x: 0; y: 0;width: 400 ;height: 400
    }

    Component{
        id: loginComponent

        Login {
            id: login1
        }

        }
    Loader{
        id:loader2
        sourceComponent: signupComponent
        active:false
        focus: true
        property bool valid: item !== null ; x: 0; y: 0;width: 400 ;height: 400
    }
    Component{
        id:signupComponent

        SignUp {
            id: signUp1
        }
    }



        signal clicked3

       loginButton.onClicked: {
            loader1.active = true;
            delete loginButton;
            delete signupButton;



        }





        signupButton.onClicked: {
            loader2.active = true;

        }
    }




