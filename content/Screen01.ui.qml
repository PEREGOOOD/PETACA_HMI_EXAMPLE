/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.5
import QtQuick.Controls 6.5
import HMI_FINAL


Item{

    id: inicio
    width: Constants.width
    height: Constants.height

    Rectangle {
        width: Constants.width
        height: Constants.height
        color: Constants.backgroundColor


        Rectangle {
            width: Constants.width
            height: Constants.height
            color: Constants.backgroundColor
        }

        Rectangle {
            width: Constants.width
            height: Constants.height
            color: Constants.backgroundColor
            Text {
                id: text3
                x: 532
                y: 342
                text: qsTr("Scan ID")
                font.pixelSize: 250
                verticalAlignment: Text.AlignVCenter
                font.family: "Tahoma"
            }

            Button {
                id: button
                x: 38
                y: 886
                text: qsTr("Button")
                flat: true
                icon.height: 150
                icon.width: 150
                icon.source: "fonts/tierra.png"
                display: AbstractButton.IconOnly
            }

            Button {
                id: button1
                x: 801
                y: 708
                text: qsTr("Log In")
                font.pointSize: 70
                font.family: "Tahoma"
            }
        }

        Button {
            id: button5
            x: 1763
            y: 39
            text: qsTr("Button")
            flat: true
            icon.width: 100
            icon.source: "fonts/informacion.png"
            icon.height: 100
            display: AbstractButton.IconOnly
        }
    }
}
