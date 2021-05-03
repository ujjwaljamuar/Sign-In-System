import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 960
    height: 640
    title: "Sign In"

    property string username: "Ujjwal"
    property QtObject backend

    StackView {
        id: stack
        anchors.fill: parent
        initialItem: SignInPage {}

    }

    WelcomPage { id: welcPage; }

    Connections {
        target: backend

        function onAuthenticated(user) {
            username = user
            stack.currentItem.connector()
        }

    }

}
