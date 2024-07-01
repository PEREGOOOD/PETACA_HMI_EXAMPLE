// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only
// Animated Icons by ambar FLATICON
// Icons by Lordicon

import QtQuick 6.2
import HMI_FINAL
import QtQuick.Controls

Window {
    width: Constants.width
    height: Constants.height

    function getRandomArbitrary(min, max) {
        return Math.random() * (max - min) + min;
    }

    visible: true
    title: "HMI_FINAL"

    StackView{
        id: stackView
        anchors.fill: parent
    }

    property bool retmess: false

    Component{
        id: inicioeng
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
                    x: 520
                    y: 315
                    text: qsTr("Scan ID")
                    font.pixelSize: 250
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Tahoma"
                }

                Button {
                    id: button
                    x: 38
                    y: 856
                    text: qsTr("Button")
                    flat: true
                    icon.height: 150
                    icon.width: 150
                    icon.source: "fonts/tierra.png"
                    display: AbstractButton.IconOnly
                    onClicked:{
                        if(rectangle234.visible){
                        rectangle234.visible=false
                    }
                        else if(rectangle234.visible===false){
                            rectangle234.visible=true
                        }


                    }

                    Rectangle {
                        id: rectangle234
                        x: 150
                        y: -220
                        visible: false
                        width: 500
                        height: 270
                        color: Constants.backgroundColor
                        border.width: 10

                        Button {
                            id: button3456
                            x: 53
                            y: 69
                            width: 175
                            height: 111
                            flat: true
                            icon.source: "fonts/english.png"
                            icon.height: 300
                            icon.width: 300
                            icon.color: "#0026282a"
                            display: AbstractButton.IconOnly
                            onClicked: {
                                stackView.push(inicioeng)
                            }
                        }

                        Button {
                            id: button348
                            x: 287
                            y: 69
                            width: 175
                            height: 111
                            flat: true
                            icon.source: "fonts/spain.png"
                            icon.height: 300
                            icon.width: 300
                            icon.color: "#0026282a"
                            display: AbstractButton.IconOnly
                            onClicked:{
                                stackView.push(inicioesp)
                            }
                        }

                    }
                }

                Button {
                    id: button1
                    x: 760
                    y: 640
                    text: qsTr("Log In")
                    font.pointSize: 70
                    font.family: "Tahoma"
                    onClicked: stackView.push(logineng)
                }
            }

            Button {
                id: button5
                x: 1763
                y: 29
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/informacion.png"
                icon.height: 100
                display: AbstractButton.IconOnly
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }

            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "This app is created by PETACA industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "For more information, sugestions or questions"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Please, head to our page:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }
}

    Component{
        id:logineng
        Rectangle {
            width: Constants.width
            height: Constants.height
            color: Constants.backgroundColor


            Rectangle {
                color: Constants.backgroundColor
                transformOrigin: Item.Center
            }

            Rectangle {
                color: Constants.backgroundColor
                transformOrigin: Item.Center

                Text {
                    id: text1
                    x: 505
                    y: 368
                    text: qsTr("ID:")
                    font.pixelSize: 50
                    transformOrigin: Item.Center
                    font.family: "Tahoma"
                }

                Text {
                    id: text2
                    x: 350
                    y: 475
                    text: qsTr("Password:")
                    font.pixelSize: 50
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }



            Rectangle {
                id: rectangle
                x: 612
                y: 368
                width: 443
                height: 59
                color: "#ababab"

                TextInput {
                    id: textInput
                    x: -1
                    y: 2
                    width: 428
                    height: 57
                    text: qsTr("")
                    font.pixelSize: 50
                    font.family: "Tahoma"
                }
            }

            Rectangle {
                id: rectangle1
                x: 611
                y: 475
                width: 443
                height: 59
                color: "#ababab"

                TextInput {
                    id: textInput1
                    x: 1
                    y: 5
                    width: 428
                    height: 54
                    text: qsTr("")
                    font.pixelSize: 50
                    echoMode: TextInput.Password
                    font.family: "Tahoma"
                }
            }

            Button {
                id: button
                x: 930
                y: 648
                text: qsTr("Log in")
                font.family: "Tahoma"
                font.pointSize: 30
                display: AbstractButton.TextOnly
                onClicked: stackView.push(homeUIeng)
            }
            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "This app is created by PETACA industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "For more information, sugestions or questions"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Please, head to our page:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }

        }


    }

    Component{
        id: homeUIeng


        Rectangle {
            width: Constants.width
            height: Constants.height

            color: Constants.backgroundColor
            layer.enabled: false

            property int temprand: 0

            Button {
                id: button1
                x: 421
                y: 280
                width: 450
                height: 450
                text: qsTr("Request")
                icon.height: 200
                icon.width: 200
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 50
                font.family: "Tahoma"
                bottomPadding: 0
                onClicked: stackView.push(typetooleng)
            }

            Button {
                id: button2
                x: 1035
                y: 280
                width: 450
                height: 450
                text: qsTr("Return")
                icon.height: 250
                icon.width: 250
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 50
                font.family: "Tahoma"
                bottomPadding: 0
                onClicked: stackView.push(typetoolreturneng)
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }

            Button {
                id: button20
                x: 180
                y: 855
                width: 300
                height: 130
                text: qsTr("End session")
                font.family: "Tahoma"
                font.pointSize: 25
                display: AbstractButton.TextOnly
                onClicked: {
                    stackView.pop()
                    stackView.pop()
                }
            }

            Button {
                id: button
                x: 1625
                y: 868
                width: 193
                height: 79
                text: qsTr("order")
                font.family: "Tahoma"
                font.pointSize: 30
                display: AbstractButton.TextOnly
                onClicked:{
                    stackView.push(order)
                }
            }


            Rectangle {
                id: rectangle1234
                x: 40
                y: 10
                width: 450
                height: 280
                opacity: 0.959
                color: Constants.backgroundColor
                visible: retmess
                border.width: 5
                onVisibleChanged: {
                    if(rectangle1234.visible){
                        delayTimer.start()
                        temprand = getRandomArbitrary(0,60);
                    }
                }

                Text {
                    id: text11235
                    x: 37
                    y: 22
                    width: 749
                    height: 481
                    text: "You have returned"
                    font.pixelSize: 45
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }

                Text {
                    id: text112
                    x: 200
                    y: 110
                    width: 749
                    height: 481
                    text: qsTr("%1").arg(temprand)
                    font.pixelSize: 45
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }

                Text {
                    id: text1123
                    x: 125
                    y: 185
                    width: 749
                    height: 481
                    text: "elements"
                    font.pixelSize: 45
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }

                Timer {
                            id: delayTimer
                            interval: 9000
                            repeat: false
                            onTriggered: {
                                retmess = false

                            }
                        }
            }



            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "This app is created by PETACA industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "For more information, sugestions or questions"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Please, head to our page:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }
    }

    Component{
        id: typetooleng
        Rectangle {
            width: Constants.width
            height: Constants.height

            color: Constants.backgroundColor
            layer.enabled: false

            Button {
                id: button
                x: 192
                y: 265
                width: 435
                height: 551
                text: "manual and measurement"
                icon.height: 200
                icon.width: 200
                icon.source: "fonts/herramientas-manuales.png"
                display: AbstractButton.TextUnderIcon
                bottomPadding: 0
                topPadding: 0
                font.family: "Tahoma"
                font.pointSize: 20
                onClicked: stackView.push(taketoolsseng)
            }

            Button {
                id: button1
                x: 743
                y: 265
                width: 435
                height: 551
                text: qsTr("chip removal and clamping")
                font.hintingPreference: Font.PreferDefaultHinting
                icon.height: 200
                icon.width: 200
                icon.source: "fonts/tornillodos.png"
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 18
                font.family: "Tahoma"
                bottomPadding: 0
                onClicked: stackView.push(typechipeng)
            }

            Button {
                id: button2
                x: 1302
                y: 265
                width: 435
                height: 551
                text: qsTr("safety equipment")
                icon.height: 250
                icon.width: 250
                icon.source: "fonts/casco.png"
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 20
                font.family: "Tahoma"
                bottomPadding: 0
                onClicked: stackView.push(takeequipmenteng)
            }

            Button {
                id: button4
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/casa.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }
            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "This app is created by PETACA industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "For more information, sugestions or questions"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Please, head to our page:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }
    }

    Component{
        id: takeequipmenteng
        Rectangle {
            width: Constants.width
            height: Constants.height

            color: Constants.backgroundColor
            layer.enabled: false

            Button {
                id: button1
                x: 695
                y: 716
                width: 435
                height: 100
                text: qsTr("Done")
                icon.height: 200
                icon.width: 200
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 50
                font.family: "Tahoma"
                bottomPadding: 0
                onClicked: {stackView.pop()
                stackView.pop()}
            }

            Button {
                id: button4
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/izquierda.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }

            Text {
                id: text1
                x: 37
                y: 170
                width: 1836
                height: 204
                text: qsTr("You can take your safety equipment")
                font.pixelSize: 100
                horizontalAlignment: Text.AlignHCenter
                font.family: "Tahoma"
            }

            AnimatedImage {
                id: animatedImage
                x: 800
                y: 380
                width: 230
                height: 230
                source: "fonts/safety.gif"

            }

            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "This app is created by PETACA industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "For more information, sugestions or questions"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Please, head to our page:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }
    }

    Component{
        id: taketoolsseng
        Rectangle {
            width: Constants.width
            height: Constants.height

            color: Constants.backgroundColor
            layer.enabled: false

            Button {
                id: button1
                x: 705
                y: 800
                width: 435
                height: 100
                text: qsTr("Done")
                icon.height: 200
                icon.width: 200
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 50
                font.family: "Tahoma"
                bottomPadding: 0
                onClicked:{
                    stackView.pop()
                    stackView.pop()
                }
            }

            AnimatedImage {
                id: animatedImage
                x: 820
                y: 395
                width: 220
                height: 220
                source: "fonts/taketools.gif"

            }

            Button {
                id: button4
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/izquierda.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }

            Text {
                id: text1
                x: 225
                y: 200
                width: 1405
                height: 673
                text: qsTr("You can take the tools")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 100
                font.family: "Tahoma"
            }
            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "This app is created by PETACA industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "For more information, sugestions or questions"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Please, head to our page:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }
    }

    Component{
        id: typechipeng
        Rectangle {
            width: Constants.width
            height: Constants.height

            color: Constants.backgroundColor
            layer.enabled: false

            Button {
                id: button
                x: 192
                y: 265
                width: 435
                height: 551
                text: qsTr("drill")
                icon.height: 200
                icon.width: 200
                icon.source: "fonts/taladro.png"
                display: AbstractButton.TextUnderIcon
                bottomPadding: 0
                topPadding: 0
                font.family: "Tahoma"
                font.pointSize: 50
                onClicked: stackView.push(drilleng)
            }

            Button {
                id: button1
                x: 743
                y: 265
                width: 435
                height: 551
                text: qsTr("screw")
                icon.height: 200
                icon.width: 200
                icon.source: "fonts/tornillo.png"
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 50
                font.family: "Tahoma"
                bottomPadding: 0
                onClicked: stackView.push(screwseng)
            }

            Button {
                id: button2
                x: 1302
                y: 265
                width: 435
                height: 551
                text: qsTr("nut")
                icon.height: 250
                icon.width: 250
                icon.source: "fonts/tuerca.png"
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 50
                font.family: "Tahoma"
                bottomPadding: 0
                onClicked: stackView.push(nuteng)
            }

            Button {
                id: button4
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/izquierda.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }

            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "This app is created by PETACA industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "For more information, sugestions or questions"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Please, head to our page:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }
    }

    Component{
        id: drilleng
        Rectangle {
            id: rectangle
            width: Constants.width
            height: Constants.height

            color: Constants.backgroundColor

            Text {
                text: qsTr("What are you going to drill?")
                anchors.verticalCenterOffset: -288
                anchors.horizontalCenterOffset: 0
                font.family: "Tahoma"
                font.pointSize: 50
                anchors.centerIn: parent
            }

            Button {
                id: button
                x: 104
                y: 365
                width: 350
                height: 350
                text: qsTr("wood")
                icon.height: 200
                icon.width: 170
                icon.source: "fonts/madera.png"
                display: AbstractButton.TextUnderIcon
                font.bold: false
                topPadding: 0
                bottomPadding: 0
                font.pointSize: 25
                onClicked: stackView.push(wooddrilleng)
            }

            Button {
                id: button1
                x: 558
                y: 365
                width: 350
                height: 350
                text: "steel"
                icon.height: 170
                icon.width: 170
                icon.source: "fonts/steel.png"
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 25
                font.bold: false
                bottomPadding: 0
                onClicked: stackView.push(steeldrilleng)
            }

            Button {
                id: button2
                x: 1012
                y: 365
                width: 350
                height: 350
                text: qsTr("concrete")
                property int newName: 0
                icon.height: 200
                icon.width: 200
                icon.source: "fonts/concreto.png"
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 25
                font.bold: false
                bottomPadding: 0
                onClicked: stackView.push(concretedrilleng)

            }

            Button {
                id: button3
                x: 1466
                y: 365
                width: 350
                height: 350
                text: qsTr("aluminium")
                icon.height: 200
                icon.width: 200
                icon.source: "fonts/acero.png"
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 25
                font.bold: false
                bottomPadding: 0
                onClicked: stackView.push(aluminiumdrilleng)
            }

            Button {
                id: button4
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.color: "#26282a"
                icon.height: 100
                icon.width: 100
                icon.source: "fonts/izquierda.png"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }
            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "This app is created by PETACA industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "For more information, sugestions or questions"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Please, head to our page:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }

    }

    Component{
        id: wooddrilleng

        Rectangle {
            id: rectangle
            width: Constants.width
            height: Constants.height
            color: Constants.backgroundColor
            property int mmopul: 0
            property int quantity: 0

            Rectangle {
                id: toolBar
                x: 98
                y: 112
                width: 1470
                height: 102
                color: "lightgray"

                Button{
                    id: morequan
                    x: 1250
                    y: 29
                    text: "+"
                    font.pointSize: 15
                    onClicked: {
                        quantity += 1
                    }
                }

                TextEdit {
                                id: textquantity
                                x: 1325
                                y: 29
                                text: quantity.toString()
                                readOnly: false
                                font.pointSize: 25
                                onTextChanged: {
                                    // Update the quantity based on the user's input
                                    quantity = parseInt(textquantity.text);
                                }
                            }

                Button{
                    id: lessquan
                    x: 1400
                    y: 29
                    text: "-"
                    font.pointSize: 15
                    onClicked: {
                        if(quantity>0)
                        quantity -= 1
                    }
                }


                Switch {
                    id: switch1
                    x: 33
                    y: 29
                    text: qsTr("Filter")
                    checkable: true
                    font.pointSize: 20
                    font.family: "Tahoma"
                    onCheckedChanged: {
                        if(rangeSlider.value<8){
                                        button3.visible = !switch1.checked
                                        button4.visible = !switch1.checked
                        }
                        else if(rangeSlider.value>=8){
                            button.visible = !switch1.checked
                            button2.visible =! switch1.checked
                            button1.visible = !switch1.checked
                        }
                                    }


                }

                Slider {
                    id: rangeSlider
                    x: 232
                    y: 31
                    width: 717
                    height: 40
                    visible: true
                    stepSize: 0.5
                    clip: false
                    to: 25

                }



                ToolSeparator {
                    id: toolSeparator
                    x: 189
                    y: 34
                }
                Text {
                    id: text1
                    x: 983
                    y: 17
                    width: 105
                    height: 69
                    text: {
                        if(mmopul==0){
                            rangeSlider.value + "mm"
                        }
                        else if(mmopul==1){
                            rangeSlider.value + "\"\""
                        }
                    }
                    font.pixelSize: 45
                }

                Button {
                    id: button7
                    x: 1172
                    y: 5
                    width: 70
                    height: 50
                    text: qsTr("MM")
                    font.pointSize: 7
                    onClicked: mmopul=0
                }
                Button {
                    id: button70
                    x: 1172
                    y: 51
                    width: 70
                    height: 50
                    text: "\"\""
                    font.pointSize: 15
                    onClicked: mmopul=1
                }
            }

            Button{
                id: buttonget
                x: 1500
                y:770
                height: 200
                width: 250
                text: "Get material"
                font.pointSize: 20
                onClicked:{
                    if(rectangulovis1.visible||rectangulovis2.visible||rectangulovis3.visible||rectangulovis4.visible||rectangulovis5.visible){
                        stackView.push(givingmaterial)
                    }

                }
            }

            Button {
                id: button50
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/izquierda.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }
            Grid {
                id: grid
                x: 244
                y: 284
                width: 1635
                height: 350
                rows: 4
                columns: 4
                spacing: 90

                Button {
                    id: button
                    x: 71
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("deep hole 1")
                    leftPadding: 16
                    icon.height: 150
                    icon.width: 150
                    icon.source: "fonts/broca.png"
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis1.visible=true
                        textocantidad1.visible=true
                        textocantidad1.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis1.visible=false
                            textocantidad1.visible=false
                            textocantidad1.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis1
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible:false
                        Text{
                            id:textocantidad1
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button1
                    x: 474
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("deep hole 2")
                    icon.width: 150
                    icon.source: "fonts/broca.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis2.visible=true
                        textocantidad2.visible=true
                        textocantidad2.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis2.visible=false
                            textocantidad2.visible=false
                            textocantidad2.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis2
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad2
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button2
                    x: 875
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("deep hole 3")
                    icon.width: 150
                    icon.source: "fonts/broca.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis3.visible=true
                        textocantidad3.visible=true
                        textocantidad3.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis3.visible=false
                            textocantidad3.visible=false
                            textocantidad3.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis3
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad3
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button3
                    x: 71
                    y: 418
                    width: 300
                    height: 300
                    text: qsTr("deep hole 5")
                    icon.width: 150
                    icon.source: "fonts/broca.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis4.visible=true
                        textocantidad4.visible=true
                        textocantidad4.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis4.visible=false
                            textocantidad4.visible=false
                            textocantidad4.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis4
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad4
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button4
                    x: 1275
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("deep hole 4")
                    icon.width: 150
                    icon.source: "fonts/broca.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis5.visible=true
                        textocantidad5.visible=true
                        textocantidad5.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis5.visible=false
                            textocantidad5.visible=false
                            textocantidad5.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis5
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad5
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }
            }
            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "This app is created by PETACA industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "For more information, sugestions or questions"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Please, head to our page:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }
    }

    Component{
        id: steeldrilleng

        Rectangle {
            id: rectangle
            width: Constants.width
            height: Constants.height
            color: Constants.backgroundColor
            property int mmopul: 0
            property int quantity: 0

            Rectangle {
                id: toolBar
                x: 98
                y: 112
                width: 1470
                height: 102
                color: "lightgray"

                Button{
                    id: morequan
                    x: 1250
                    y: 29
                    text: "+"
                    font.pointSize: 15
                    onClicked: {
                        quantity += 1
                    }
                }

                TextEdit {
                                id: textquantity
                                x: 1325
                                y: 29
                                text: quantity.toString()
                                readOnly: false
                                font.pointSize: 25
                                onTextChanged: {
                                    // Update the quantity based on the user's input
                                    quantity = parseInt(textquantity.text);
                                }
                            }

                Button{
                    id: lessquan
                    x: 1400
                    y: 29
                    text: "-"
                    font.pointSize: 15
                    onClicked: {
                        if(quantity>0)
                        quantity -= 1
                    }
                }

                Switch {
                    id: switch1
                    x: 33
                    y: 29
                    text: qsTr("Filter")
                    checkable: true
                    font.pointSize: 20
                    font.family: "Tahoma"
                    onCheckedChanged: {
                        if(rangeSlider.value<8){
                                        button3.visible = !switch1.checked
                                        button4.visible = !switch1.checked
                        }
                        else if(rangeSlider.value>=8){
                            button.visible = !switch1.checked
                            button2.visible =! switch1.checked
                            button1.visible = !switch1.checked
                        }
                                    }


                }

                Slider {
                    id: rangeSlider
                    x: 232
                    y: 31
                    width: 717
                    height: 40
                    visible: true
                    stepSize: 0.5
                    clip: false
                    to: 25

                }



                ToolSeparator {
                    id: toolSeparator
                    x: 189
                    y: 34
                }
                Text {
                    id: text1
                    x: 983
                    y: 17
                    width: 105
                    height: 69
                    text: {
                        if(mmopul==0){
                            rangeSlider.value + "mm"
                        }
                        else if(mmopul==1){
                            rangeSlider.value + "\"\""
                        }
                    }
                    font.pixelSize: 45
                }

                Button {
                    id: button7
                    x: 1172
                    y: 5
                    width: 70
                    height: 50
                    text: qsTr("MM")
                    font.pointSize: 7
                    onClicked: mmopul=0
                }
                Button {
                    id: button70
                    x: 1172
                    y: 51
                    width: 70
                    height: 50
                    text: "\"\""
                    font.pointSize: 15
                    onClicked: mmopul=1
                }
            }

            Button{
                id: buttonget
                x: 1500
                y:770
                height: 200
                width: 250
                text: "Get material"
                font.pointSize: 20
                onClicked:{
                    if(rectangulovis1.visible||rectangulovis2.visible||rectangulovis3.visible||rectangulovis4.visible||rectangulovis5.visible){
                        stackView.push(givingmaterial)
                    }

                }
            }


            Button {
                id: button50
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/izquierda.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }
            Grid {
                id: grid
                x: 244
                y: 284
                width: 1635
                height: 350
                rows: 4
                columns: 4
                spacing: 90

                Button {
                    id: button
                    x: 71
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("deep hole 1")
                    leftPadding: 16
                    icon.height: 150
                    icon.width: 150
                    icon.source: "fonts/brocasteel.png"
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis1.visible=true
                        textocantidad1.visible=true
                        textocantidad1.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis1.visible=false
                            textocantidad1.visible=false
                            textocantidad1.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis1
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad1
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }


                Button {
                    id: button1
                    x: 474
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("deep hole 2")
                    icon.width: 150
                    icon.source: "fonts/brocasteel.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis2.visible=true
                        textocantidad2.visible=true
                        textocantidad2.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis2.visible=false
                            textocantidad2.visible=false
                            textocantidad2.text=quantity
                        }
                    }
                    Rectangle{
                        id:rectangulovis2
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible:false
                        Text{
                            id:textocantidad2
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button2
                    x: 875
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("deep hole 3")
                    icon.width: 150
                    icon.source: "fonts/brocasteel.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis3.visible=true
                        textocantidad3.visible=true
                        textocantidad3.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis3.visible=false
                            textocantidad3.visible=false
                            textocantidad3.text=quantity
                        }
                    }
                    Rectangle{
                        id:rectangulovis3
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible:false
                        Text{
                            id:textocantidad3
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button3
                    x: 71
                    y: 418
                    width: 300
                    height: 300
                    text: qsTr("deep hole 5")
                    icon.width: 150
                    icon.source: "fonts/brocasteel.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis4.visible=true
                        textocantidad4.visible=true
                        textocantidad4.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis4.visible=false
                            textocantidad4.visible=false
                            textocantidad4.text=quantity
                        }
                    }
                    Rectangle{
                        id:rectangulovis4
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible:false
                        Text{
                            id:textocantidad4
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button4
                    x: 1275
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("deep hole 4")
                    icon.width: 150
                    icon.source: "fonts/brocasteel.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis5.visible=true
                        textocantidad5.visible=true
                        textocantidad5.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis5.visible=false
                            textocantidad5.visible=false
                            textocantidad5.text=quantity
                        }
                    }
                    Rectangle{
                        id:rectangulovis5
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible:false
                        Text{
                            id:textocantidad5
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }
            }
            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "This app is created by PETACA industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "For more information, sugestions or questions"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Please, head to our page:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }
    }

    Component{
        id: concretedrilleng

        Rectangle {
            id: rectangle
            width: Constants.width
            height: Constants.height
            color: Constants.backgroundColor
            property int mmopul: 0
            property int quantity: 0
            Rectangle {
                id: toolBar
                x: 98
                y: 112
                width: 1470
                height: 102
                color: "lightgray"

                Button{
                    id: morequan
                    x: 1250
                    y: 29
                    text: "+"
                    font.pointSize: 15
                    onClicked: {
                        quantity += 1
                    }
                }

                TextEdit {
                                id: textquantity
                                x: 1325
                                y: 29
                                text: quantity.toString()
                                readOnly: false
                                font.pointSize: 25
                                onTextChanged: {
                                    // Update the quantity based on the user's input
                                    quantity = parseInt(textquantity.text);
                                }
                            }

                Button{
                    id: lessquan
                    x: 1400
                    y: 29
                    text: "-"
                    font.pointSize: 15
                    onClicked: {
                        if(quantity>0)
                        quantity -= 1
                    }
                }

                Switch {
                    id: switch1
                    x: 33
                    y: 29
                    text: qsTr("Filter")
                    checkable: true
                    font.pointSize: 20
                    font.family: "Tahoma"
                    onCheckedChanged: {
                        if(rangeSlider.value<8){
                                        button3.visible = !switch1.checked
                                        button4.visible = !switch1.checked
                        }
                        else if(rangeSlider.value>=8){
                            button.visible = !switch1.checked
                            button2.visible =! switch1.checked
                            button1.visible = !switch1.checked
                        }
                                    }


                }

                Slider {
                    id: rangeSlider
                    x: 232
                    y: 31
                    width: 717
                    height: 40
                    visible: true
                    stepSize: 0.5
                    clip: false
                    to: 25

                }



                ToolSeparator {
                    id: toolSeparator
                    x: 189
                    y: 34
                }
                Text {
                    id: text1
                    x: 983
                    y: 17
                    width: 105
                    height: 69
                    text: {
                        if(mmopul==0){
                            rangeSlider.value + "mm"
                        }
                        else if(mmopul==1){
                            rangeSlider.value + "\"\""
                        }
                    }
                    font.pixelSize: 45
                }

                Button {
                    id: button7
                    x: 1172
                    y: 5
                    width: 70
                    height: 50
                    text: qsTr("MM")
                    font.pointSize: 7
                    onClicked: mmopul=0
                }
                Button {
                    id: button70
                    x: 1172
                    y: 51
                    width: 70
                    height: 50
                    text: "\"\""
                    font.pointSize: 15
                    onClicked: mmopul=1
                }
            }

            Button{
                id: buttonget
                x: 1500
                y:770
                height: 200
                width: 250
                text: "Get material"
                font.pointSize: 20
                onClicked:{
                    if(rectangulovis1.visible||rectangulovis2.visible||rectangulovis3.visible||rectangulovis4.visible||rectangulovis5.visible){
                        stackView.push(givingmaterial)
                    }

                }
            }

            Button {
                id: button50
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/izquierda.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }
            Grid {
                id: grid
                x: 244
                y: 284
                width: 1635
                height: 350
                rows: 4
                columns: 4
                spacing: 90

                Button {
                    id: button
                    x: 71
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("deep hole 1")
                    leftPadding: 16
                    icon.height: 150
                    icon.width: 150
                    icon.source: "fonts/brocaconcrete.png"
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis1.visible=true
                        textocantidad1.visible=true
                        textocantidad1.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis1.visible=false
                            textocantidad1.visible=false
                            textocantidad1.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis1
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad1
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button1
                    x: 474
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("deep hole 2")
                    icon.width: 150
                    icon.source: "fonts/brocaconcrete.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis2.visible=true
                        textocantidad2.visible=true
                        textocantidad2.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis2.visible=false
                            textocantidad2.visible=false
                            textocantidad2.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis2
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad2
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button2
                    x: 875
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("deep hole 3")
                    icon.width: 150
                    icon.source: "fonts/brocaconcrete.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis3.visible=true
                        textocantidad3.visible=true
                        textocantidad3.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis3.visible=false
                            textocantidad3.visible=false
                            textocantidad3.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis3
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad3
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button3
                    x: 71
                    y: 418
                    width: 300
                    height: 300
                    text: qsTr("deep hole 5")
                    icon.width: 150
                    icon.source: "fonts/brocaconcrete.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis4.visible=true
                        textocantidad4.visible=true
                        textocantidad4.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis4.visible=false
                            textocantidad4.visible=false
                            textocantidad4.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis4
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad4
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button4
                    x: 1275
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("deep hole 4")
                    icon.width: 150
                    icon.source: "fonts/brocaconcrete.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis5.visible=true
                        textocantidad5.visible=true
                        textocantidad5.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis5.visible=false
                            textocantidad5.visible=false
                            textocantidad5.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis5
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad5
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }
            }
            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "This app is created by PETACA industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "For more information, sugestions or questions"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Please, head to our page:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }
    }

    Component{
        id: aluminiumdrilleng

        Rectangle {
            id: rectangle
            width: Constants.width
            height: Constants.height
            color: Constants.backgroundColor
            property int mmopul: 0
            property int quantity: 0

            Rectangle {
                id: toolBar
                x: 98
                y: 112
                width: 1470
                height: 102
                color: "lightgray"

                Button{
                    id: morequan
                    x: 1250
                    y: 29
                    text: "+"
                    font.pointSize: 15
                    onClicked: {
                        quantity += 1
                    }
                }

                TextEdit {
                                id: textquantity
                                x: 1325
                                y: 29
                                text: quantity.toString()
                                readOnly: false
                                font.pointSize: 25
                                onTextChanged: {
                                    // Update the quantity based on the user's input
                                    quantity = parseInt(textquantity.text);
                                }
                            }

                Button{
                    id: lessquan
                    x: 1400
                    y: 29
                    text: "-"
                    font.pointSize: 15
                    onClicked: {
                        if(quantity>0)
                        quantity -= 1
                    }
                }

                Switch {
                    id: switch1
                    x: 33
                    y: 29
                    text: qsTr("Filter")
                    checkable: true
                    font.pointSize: 20
                    font.family: "Tahoma"
                    onCheckedChanged: {
                        if(rangeSlider.value<8){
                                        button3.visible = !switch1.checked
                                        button4.visible = !switch1.checked
                        }
                        else if(rangeSlider.value>=8){
                            button.visible = !switch1.checked
                            button2.visible =! switch1.checked
                            button1.visible = !switch1.checked
                        }
                                    }


                }

                Slider {
                    id: rangeSlider
                    x: 232
                    y: 31
                    width: 717
                    height: 40
                    visible: true
                    stepSize: 0.5
                    clip: false
                    to: 25

                }



                ToolSeparator {
                    id: toolSeparator
                    x: 189
                    y: 34
                }
                Text {
                    id: text1
                    x: 983
                    y: 17
                    width: 105
                    height: 69
                    text: {
                        if(mmopul==0){
                            rangeSlider.value + "mm"
                        }
                        else if(mmopul==1){
                            rangeSlider.value + "\"\""
                        }
                    }
                    font.pixelSize: 45
                }

                Button {
                    id: button7
                    x: 1172
                    y: 5
                    width: 70
                    height: 50
                    text: qsTr("MM")
                    font.pointSize: 7
                    onClicked: mmopul=0
                }
                Button {
                    id: button70
                    x: 1172
                    y: 51
                    width: 70
                    height: 50
                    text: "\"\""
                    font.pointSize: 15
                    onClicked: mmopul=1
                }
            }

            Button{
                id: buttonget
                x: 1500
                y:770
                height: 200
                width: 250
                text: "Get material"
                font.pointSize: 20
                onClicked:{
                    if(rectangulovis1.visible||rectangulovis2.visible||rectangulovis3.visible||rectangulovis4.visible||rectangulovis5.visible){
                        stackView.push(givingmaterial)
                    }

                }
            }


            Button {
                id: button50
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/izquierda.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }
            Grid {
                id: grid
                x: 244
                y: 284
                width: 1635
                height: 350
                rows: 4
                columns: 4
                spacing: 90

                Button {
                    id: button
                    x: 71
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("deep hole 1")
                    leftPadding: 16
                    icon.height: 150
                    icon.width: 150
                    icon.source: "fonts/brocaaluminium.png"
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis1.visible=true
                        textocantidad1.visible=true
                        textocantidad1.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis1.visible=false
                            textocantidad1.visible=false
                            textocantidad1.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis1
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad1
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button1
                    x: 474
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("deep hole 2")
                    icon.width: 150
                    icon.source: "fonts/brocaaluminium.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis2.visible=true
                        textocantidad2.visible=true
                        textocantidad2.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis2.visible=false
                            textocantidad2.visible=false
                            textocantidad2.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis2
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad2
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button2
                    x: 875
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("deep hole 3")
                    icon.width: 150
                    icon.source: "fonts/brocaaluminium.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis3.visible=true
                        textocantidad3.visible=true
                        textocantidad3.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis3.visible=false
                            textocantidad3.visible=false
                            textocantidad3.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis3
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad3
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button3
                    x: 71
                    y: 418
                    width: 300
                    height: 300
                    text: qsTr("deep hole 5")
                    icon.width: 150
                    icon.source: "fonts/brocaaluminium.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis4.visible=true
                        textocantidad4.visible=true
                        textocantidad4.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis4.visible=false
                            textocantidad4.visible=false
                            textocantidad4.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis4
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad4
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button4
                    x: 1275
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("deep hole 4")
                    icon.width: 150
                    icon.source: "fonts/brocaaluminium.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis5.visible=true
                        textocantidad5.visible=true
                        textocantidad5.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis5.visible=false
                            textocantidad5.visible=false
                            textocantidad5.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis5
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad5
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }
            }
            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "This app is created by PETACA industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "For more information, sugestions or questions"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Please, head to our page:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }
    }

    Component{
        id: screwseng
        Rectangle {
            id: rectangle
            width: Constants.width
            height: Constants.height
            color: Constants.backgroundColor
            property int mmopul: 0
            property int quantity: 0

            Rectangle {
                id: toolBar
                x: 98
                y: 40
                width: 1470
                height: 185
                color: "lightgray"

                Button{
                    id: morequan
                    x: 1250
                    y: 29
                    text: "+"
                    font.pointSize: 15
                    onClicked: {
                        quantity += 1
                    }
                }

                TextEdit {
                                id: textquantity
                                x: 1325
                                y: 29
                                text: quantity.toString()
                                readOnly: false
                                font.pointSize: 25
                                onTextChanged: {
                                    // Update the quantity based on the user's input
                                    quantity = parseInt(textquantity.text);
                                }
                            }

                Button{
                    id: lessquan
                    x: 1400
                    y: 29
                    text: "-"
                    font.pointSize: 15
                    onClicked: {
                        if(quantity>0)
                        quantity -= 1
                    }
                }

                Switch {
                    id: switch1
                    x: 33
                    y: 29
                    text: qsTr("Filter")
                    checkable: true
                    font.pointSize: 20
                    font.family: "Tahoma"
                    onCheckedChanged: {
                        if(rangeSlider.value<8){
                                        button3.visible = !switch1.checked
                        }
                        else if(rangeSlider.value>=8){
                            button2.visible = !switch1.checked
                            button4.visible = !switch1.checked
                            button6.visible = !switch1.checked
                        }
                                    }


                }

                Slider {
                    id: rangeSlider
                    x: 232
                    y: 31
                    width: 717
                    height: 40
                    visible: true
                    stepSize: 0.5
                    clip: false
                    to: 25

                }

                Text{
                    id: textrangesliderone
                    x: 232
                    y: 70
                    visible: true
                    text: "DIAMETER"
                    font.pointSize: 13
                }

                Slider {
                    id: rangeSlider2
                    x: 232
                    y: 100
                    width: 717
                    height: 40
                    visible: true
                    stepSize: 0.5
                    clip: false
                    to: 25

                }



                Text{
                    id: textrangeslidertwo
                    x: 232
                    y: 130
                    visible: true
                    text: "SIZE"
                    font.pointSize: 13
                }



                ToolSeparator {
                    id: toolSeparator
                    x: 189
                    y: 34
                }
                Text {
                    id: text1
                    x: 983
                    y: 17
                    width: 105
                    height: 69
                    text: {
                        if(mmopul==0){
                            rangeSlider.value + "mm"
                        }
                        else if(mmopul==1){
                            rangeSlider.value + "\"\""
                        }
                    }
                    font.pixelSize: 45
                }

                Button {
                    id: button7
                    x: 1172
                    y: 5
                    width: 70
                    height: 50
                    text: qsTr("MM")
                    font.pointSize: 7
                    onClicked: mmopul=0
                }
                Button {
                    id: button70
                    x: 1172
                    y: 51
                    width: 70
                    height: 50
                    text: "\"\""
                    font.pointSize: 15
                    onClicked: mmopul=1
                }
                Text {
                    id: text10
                    x: 983
                    y: 86
                    width: 105
                    height: 69
                    text: {
                        if(mmopul==0){
                            rangeSlider2.value + "mm"
                        }
                        else if(mmopul==1){
                            rangeSlider2.value + "\"\""
                        }
                    }
                    font.pixelSize: 45
                }


            }

            Button{
                id: buttonget
                x: 1500
                y:770
                height: 200
                width: 250
                text: "Get material"
                font.pointSize: 20
                onClicked:{
                    if(rectangulovis1.visible||rectangulovis2.visible||rectangulovis3.visible||rectangulovis4.visible||rectangulovis5.visible||rectangulovis6.visible){
                        stackView.push(givingmaterial)
                    }

                }
            }

            Button {
                id: button50
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/izquierda.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }
            Grid {
                id: grid
                x: 244
                y: 284
                width: 1635
                height: 350
                rows: 4
                columns: 4
                spacing: 90

                Button {
                    id: button
                    x: 71
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Screw 1")
                    leftPadding: 16
                    icon.height: 150
                    icon.width: 150
                    icon.source: "fonts/tornilloselec.png"
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis1.visible=true
                        textocantidad1.visible=true
                        textocantidad1.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis1.visible=false
                            textocantidad1.visible=false
                            textocantidad1.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis1
                        x: 225
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad1
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button1
                    x: 474
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Screw 2")
                    icon.width: 150
                    icon.source: "fonts/tornilloselec.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis2.visible=true
                        textocantidad2.visible=true
                        textocantidad2.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis2.visible=false
                            textocantidad2.visible=false
                            textocantidad2.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis2
                        x: 225
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad2
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button2
                    x: 875
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Screw 3")
                    icon.width: 150
                    icon.source: "fonts/tornilloselec.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis3.visible=true
                        textocantidad3.visible=true
                        textocantidad3.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis3.visible=false
                            textocantidad3.visible=false
                            textocantidad3.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis3
                        x: 225
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad3
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button3
                    x: 71
                    y: 418
                    width: 300
                    height: 300
                    text: qsTr("Screw 4")
                    icon.width: 150
                    icon.source: "fonts/tornilloselec.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis4.visible=true
                        textocantidad4.visible=true
                        textocantidad4.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis4.visible=false
                            textocantidad4.visible=false
                            textocantidad4.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis4
                        x: 225
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad4
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button4
                    x: 1275
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Screw 5")
                    icon.width: 150
                    icon.source: "fonts/tornilloselec.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis5.visible=true
                        textocantidad5.visible=true
                        textocantidad5.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis5.visible=false
                            textocantidad5.visible=false
                            textocantidad5.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis5
                        x: 225
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad5
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button6
                    x: 1275
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Screw 6")
                    icon.width: 150
                    icon.source: "fonts/tornilloselec.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis6.visible=true
                        textocantidad6.visible=true
                        textocantidad6.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis6.visible=false
                            textocantidad6.visible=false
                            textocantidad6.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis6
                        x: 225
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad6
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }
            }
            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "This app is created by PETACA industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "For more information, sugestions or questions"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Please, head to our page:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }
    }

    Component{
        id: nuteng
        Rectangle {
            id: rectangle
            width: Constants.width
            height: Constants.height
            color: Constants.backgroundColor
            property int mmopul: 0
            property int quantity: 0

            Rectangle {
                id: toolBar
                x: 98
                y: 40
                width: 1470
                height: 185
                color: "lightgray"

                Button{
                    id: morequan
                    x: 1250
                    y: 29
                    text: "+"
                    font.pointSize: 15
                    onClicked: {
                        quantity += 1
                    }
                }

                TextEdit {
                                id: textquantity
                                x: 1325
                                y: 29
                                text: quantity.toString()
                                readOnly: false
                                font.pointSize: 25
                                onTextChanged: {
                                    // Update the quantity based on the user's input
                                    quantity = parseInt(textquantity.text);
                                }
                            }

                Button{
                    id: lessquan
                    x: 1400
                    y: 29
                    text: "-"
                    font.pointSize: 15
                    onClicked: {
                        if(quantity>0)
                        quantity -= 1
                    }
                }

                Switch {
                    id: switch1
                    x: 33
                    y: 29
                    text: qsTr("Filter")
                    checkable: true
                    font.pointSize: 20
                    font.family: "Tahoma"
                    onCheckedChanged: {
                        if(rangeSlider.value<8){
                                        button3.visible = !switch1.checked
                        }
                        else if(rangeSlider.value>=8){
                            button2.visible = !switch1.checked
                            button4.visible = !switch1.checked
                            button6.visible = !switch1.checked
                        }
                                    }


                }

                Slider {
                    id: rangeSlider
                    x: 232
                    y: 31
                    width: 717
                    height: 40
                    visible: true
                    stepSize: 0.5
                    clip: false
                    to: 25

                }

                Text{
                    id: textrangesliderone
                    x: 232
                    y: 70
                    visible: true
                    text: "INTERNAL DIAMETER"
                    font.pointSize: 13
                }

                Slider {
                    id: rangeSlider2
                    x: 232
                    y: 100
                    width: 717
                    height: 40
                    visible: true
                    stepSize: 0.5
                    clip: false
                    to: 25

                }

                Text{
                    id: textrangeslidertwo
                    x: 232
                    y: 130
                    visible: true
                    text: "EXTERNAL DIAMETER"
                    font.pointSize: 13
                }



                ToolSeparator {
                    id: toolSeparator
                    x: 189
                    y: 34
                }
                Text {
                    id: text1
                    x: 983
                    y: 17
                    width: 105
                    height: 69
                    text: {
                        if(mmopul==0){
                            rangeSlider.value + "mm"
                        }
                        else if(mmopul==1){
                            rangeSlider.value + "\"\""
                        }
                    }
                    font.pixelSize: 45
                }

                Button {
                    id: button7
                    x: 1172
                    y: 5
                    width: 70
                    height: 50
                    text: qsTr("MM")
                    font.pointSize: 7
                    onClicked: mmopul=0
                }
                Button {
                    id: button70
                    x: 1172
                    y: 51
                    width: 70
                    height: 50
                    text: "\"\""
                    font.pointSize: 15
                    onClicked: mmopul=1
                }
                Text {
                    id: text10
                    x: 983
                    y: 86
                    width: 105
                    height: 69
                    text: {
                        if(mmopul==0){
                            rangeSlider2.value + "mm"
                        }
                        else if(mmopul==1){
                            rangeSlider2.value + "\"\""
                        }
                    }
                    font.pixelSize: 45
                }


            }

            Button{
                id: buttonget
                x: 1500
                y:770
                height: 200
                width: 250
                text: "Get material"
                font.pointSize: 20
                onClicked:{
                    if(rectangulovis1.visible||rectangulovis2.visible||rectangulovis3.visible||rectangulovis4.visible||rectangulovis5.visible||rectangulovis6.visible){
                        stackView.push(givingmaterial)
                    }

                }
            }

            Button {
                id: button50
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/izquierda.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }
            Grid {
                id: grid
                x: 244
                y: 284
                width: 1635
                height: 350
                rows: 4
                columns: 4
                spacing: 90

                Button {
                    id: button
                    x: 71
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Nut 1")
                    leftPadding: 16
                    icon.height: 150
                    icon.width: 150
                    icon.source: "fonts/perno-de-tuerca.png"
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis1.visible=true
                        textocantidad1.visible=true
                        textocantidad1.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis1.visible=false
                            textocantidad1.visible=false
                            textocantidad1.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis1
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad1
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button1
                    x: 474
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Nut 2")
                    icon.width: 150
                    icon.source: "fonts/perno-de-tuerca.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis2.visible=true
                        textocantidad2.visible=true
                        textocantidad2.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis2.visible=false
                            textocantidad2.visible=false
                            textocantidad2.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis2
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad2
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button2
                    x: 875
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Nut 3")
                    icon.width: 150
                    icon.source: "fonts/perno-de-tuerca.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis3.visible=true
                        textocantidad3.visible=true
                        textocantidad3.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis3.visible=false
                            textocantidad3.visible=false
                            textocantidad3.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis3
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad3
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button3
                    x: 71
                    y: 418
                    width: 300
                    height: 300
                    text: qsTr("Nut 4")
                    icon.width: 150
                    icon.source: "fonts/perno-de-tuerca.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis4.visible=true
                        textocantidad4.visible=true
                        textocantidad4.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis4.visible=false
                            textocantidad4.visible=false
                            textocantidad4.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis4
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad4
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button4
                    x: 1275
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Nut 5")
                    icon.width: 150
                    icon.source: "fonts/perno-de-tuerca.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis5.visible=true
                        textocantidad5.visible=true
                        textocantidad5.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis5.visible=false
                            textocantidad5.visible=false
                            textocantidad5.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis5
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad5
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button6
                    x: 1275
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Nut 6")
                    icon.width: 150
                    icon.source: "fonts/perno-de-tuerca.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis6.visible=true
                        textocantidad6.visible=true
                        textocantidad6.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis6.visible=false
                            textocantidad6.visible=false
                            textocantidad6.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis6
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad6
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }
            }
            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "This app is created by PETACA industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "For more information, sugestions or questions"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Please, head to our page:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }
    }

    Component{
        id: typetoolreturneng
        Rectangle {
            width: Constants.width
            height: Constants.height

            color: Constants.backgroundColor
            layer.enabled: false

            Text {
                id: text1
                x: 512
                y: 111
                width: 897
                height: 132
                text: qsTr("What do you want to return?")
                font.pixelSize: 70

            }

            Button {
                id: button
                x: 192
                y: 265
                width: 435
                height: 551
                text: "manual and measurement"
                icon.height: 200
                icon.width: 200
                icon.source: "fonts/herramientas-manuales.png"
                display: AbstractButton.TextUnderIcon
                bottomPadding: 0
                topPadding: 0
                font.family: "Tahoma"
                font.pointSize: 20
                onClicked: stackView.push(returntoolseng)
            }

            Button {
                id: button1
                x: 743
                y: 265
                width: 435
                height: 551
                text: qsTr("chip removal and clamping")
                font.hintingPreference: Font.PreferDefaultHinting
                icon.height: 200
                icon.width: 200
                icon.source: "fonts/tornillodos.png"
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 18
                font.family: "Tahoma"
                bottomPadding: 0
                onClicked: stackView.push(returnchipeng)
            }

            Button {
                id: button2
                x: 1302
                y: 265
                width: 435
                height: 551
                text: qsTr("safety equipment")
                icon.height: 250
                icon.width: 250
                icon.source: "fonts/casco.png"
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 20
                font.family: "Tahoma"
                bottomPadding: 0
                onClicked: stackView.push(returnequipmenteng)
            }

            Button {
                id: button4
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/casa.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }
            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "This app is created by PETACA industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "For more information, sugestions or questions"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Please, head to our page:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }


        }
    }

    Component{
        id: returntoolseng
        Rectangle {
            width: Constants.width
            height: Constants.height

            color: Constants.backgroundColor
            layer.enabled: false

            Button {
                id: button1
                x: 720
                y: 850
                width: 435
                height: 100
                text: qsTr("Done")
                icon.height: 200
                icon.width: 200
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 50
                font.family: "Tahoma"
                bottomPadding: 0
                onClicked: {stackView.pop()
                stackView.pop()}
            }

            Button {
                id: button4
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/izquierda.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }

            Text {
                id: text1
                x: 37
                y: 150
                width: 1836
                height: 204
                text: qsTr("Place the tools")
                font.pixelSize: 100
                horizontalAlignment: Text.AlignHCenter
                font.family: "Tahoma"
            }

            AnimatedImage {
                id: animatedImage
                x: 871
                y: 340
                width: 140
                height: 140
                source: "fonts/animatedarrow.gif"
                rotation: 90
            }
            AnimatedImage {
                id: animatedImage2
                x: 840
                y: 530
                width: 200
                height: 200
                source: "fonts/caja.gif"


            }

            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "This app is created by PETACA industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "For more information, sugestions or questions"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Please, head to our page:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }
    }

    Component{
        id: returnequipmenteng
        Rectangle {
            width: Constants.width
            height: Constants.height

            color: Constants.backgroundColor
            layer.enabled: false

            Button {
                id: button1
                x: 720
                y: 850
                width: 435
                height: 100
                text: qsTr("Done")
                icon.height: 200
                icon.width: 200
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 50
                font.family: "Tahoma"
                bottomPadding: 0
                onClicked: {stackView.pop()
                stackView.pop()}
            }

            Button {
                id: button4
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/izquierda.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }

            Text {
                id: text1
                x: 37
                y: 150
                width: 1836
                height: 204
                text: qsTr("Place the equipment")
                font.pixelSize: 100
                horizontalAlignment: Text.AlignHCenter
                font.family: "Tahoma"
            }

            AnimatedImage {
                id: animatedImage
                x: 871
                y: 340
                width: 140
                height: 140
                source: "fonts/animatedarrow.gif"
                rotation: 90
            }
            AnimatedImage {
                id: animatedImage2
                x: 840
                y: 530
                width: 200
                height: 200
                source: "fonts/caja.gif"


            }

            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "This app is created by PETACA industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "For more information, sugestions or questions"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Please, head to our page:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }
    }

    Component{
        id: returnchipeng
        Rectangle {
            property string estadowait: "fonts/animatedarrow"
            property string estadocount: "fonts/loader.gif"
            width: Constants.width
            height: Constants.height

            color: Constants.backgroundColor
            layer.enabled: false

            Button {
                id: button1
                x: 720
                y: 850
                width: 435
                height: 100
                text: qsTr("Count")
                icon.height: 200
                icon.width: 200
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 50
                font.family: "Tahoma"
                bottomPadding: 0
                onClicked: {
                text1.text="Counting..."
                    animatedImage.source=estadocount
                    delayTimer.start()

                }
            }

            Timer {
                        id: delayTimer
                        interval: 9000
                        repeat: false
                        onTriggered: {
                            text1.text="Done"
                             delayPopTimer.start()
                        }
                    }

            Timer {
                        id: delayPopTimer
                        interval: 1000 // 1 segundo
                        repeat: false
                        onTriggered: {
                            retmess = true
                            stackView.pop()
                            stackView.pop()
                        }
                    }

            Button {
                id: button4
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/izquierda.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }

            Text {
                id: text1
                x: 37
                y: 150
                width: 1836
                height: 204
                text: qsTr("Drop your items into the counter")
                font.pixelSize: 100
                horizontalAlignment: Text.AlignHCenter
                font.family: "Tahoma"
            }

            AnimatedImage {
                id: animatedImage
                x: 871
                y: 340
                width: 140
                height: 140
                source: estadowait
                rotation: 90
            }

            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "This app is created by PETACA industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "For more information, sugestions or questions"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Please, head to our page:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }
    }

    Component{
        id: givingmaterial
        Rectangle {
            property string estadowait: "fonts/animatedarrow"
            property string estadocount: "fonts/loader.gif"
            width: Constants.width
            height: Constants.height


            color: Constants.backgroundColor
            layer.enabled: false


            Button {
                id: button1
                x: 720
                y: 600
                width: 435
                height: 100
                text: qsTr("Get Material")
                icon.height: 200
                icon.width: 200
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 40
                font.family: "Tahoma"
                bottomPadding: 0
                onClicked: {
                    text1.text="Counting your material..."
                    animatedImage.source=estadocount
                    button1.visible=false
                    delayTimer.start()

                }
            }

            Button {
                id: button19
                x: 720
                y: 850
                width: 435
                height: 100
                text: qsTr("Finish")
                icon.height: 200
                icon.width: 200
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 50
                font.family: "Tahoma"
                visible: false
                bottomPadding: 0
                onClicked: {
                    stackView.pop()
                    stackView.pop()
                    stackView.pop()
                    stackView.pop()

                }
            }


            Timer {
                        id: delayTimer
                        interval: 9000
                        repeat: false
                        onTriggered: {
                            text1.text="You can now pick your material"
                            animatedImage.source=estadowait
                            button1.visible=false
                            button19.visible=true


                        }
                    }


            Button {
                id: button4
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/izquierda.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }

            Text {
                id: text1
                x: 37
                y: 150
                width: 1836
                height: 204
                font.pixelSize: 100
                horizontalAlignment: Text.AlignHCenter
                font.family: "Tahoma"
            }

            AnimatedImage {
                id: animatedImage
                x: 871
                y: 340
                width: 140
                height: 140
                rotation: 90
            }

            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "This app is created by PETACA industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "For more information, sugestions or questions"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Please, head to our page:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }
    }

    Component{
        id: order

        Rectangle {
            id: rectangle
            width: Constants.width
            height: Constants.height
            color: Constants.backgroundColor
            property int mmopul: 0
            property int quantity: 0

            Button{
                id: buttonget
                x: 1500
                y:770
                height: 200
                width: 250
                text: "Get material"
                font.pointSize: 20
                onClicked:{
                    rectangleuno.visible=true
                    delayTimer.start()
                }


            }

            Timer {
                        id: delayTimer
                        interval: 1000
                        repeat: false
                        onTriggered: {
                            textcuatro.text="2"
                             delayPopTimer.start()
                        }
                    }

            Timer {
                        id: delayPopTimer
                        interval: 1000
                        repeat: false
                        onTriggered: {
                            textcuatro.text="1"
                            delayPopTimer2.start()
                        }
                    }

            Timer {
                        id: delayPopTimer2
                        interval: 1000 // 1 segundo
                        repeat: false
                        onTriggered: {
                            stackView.pop()

                        }
                    }


            Button {
                id: button50
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/izquierda.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }
            Grid {
                id: grid
                x: 200
                y: 150
                width: 1635
                height: 350
                rows: 4
                columns: 4
                spacing: 90

                Button {
                    id: button
                    x: 71
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("deep hole 1")
                    leftPadding: 16
                    icon.height: 150
                    icon.width: 150
                    icon.source: "fonts/broca.png"
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon

                    Text{
                        id: numero1
                        x:55
                        y:50
                        text:"6"
                        font.pointSize: 20
                        color: "red"
                    }

                }

                Button {
                    id: button1
                    x: 474
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("screw 1")
                    icon.width: 150
                    icon.source: "fonts/tornilloselec.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    Text{
                        id: numero2
                        x:55
                        y:50
                        text:"25"
                        font.pointSize: 20
                        color: "red"
                    }

                }

                Button {
                    id: button2
                    x: 875
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("deep hole 3")
                    icon.width: 150
                    icon.source: "fonts/brocasteel.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    Text{
                        id: numero3
                        x:55
                        y:50
                        text:"3"
                        font.pointSize: 20
                        color: "red"
                    }
                }

                Button {
                    id: button3
                    x: 71
                    y: 418
                    width: 300
                    height: 300
                    text: qsTr("deep hole 5")
                    icon.width: 150
                    icon.source: "fonts/broca.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    Text{
                        id: numero4
                        x:55
                        y:50
                        text:"2"
                        font.pointSize: 20
                        color: "red"
                    }

                }

            }
            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10
                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "This app is created by PETACA industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "For more information, sugestions or questions"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Please, head to our page:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
            Rectangle {
                id: rectangleuno
                x: 550
                y: 250
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: textuno
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "An e-mail has been sent to your supplier"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: textdos
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "Redirecting to the home page..."
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }

                Text {
                    id: textcuatro
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "3"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }
    }


    //SPANISH VESION

    Component{
        id: inicioesp
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
                    x: 370
                    y: 315
                    text: qsTr("Escanear ID")
                    font.pixelSize: 250
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Tahoma"
                }

                Button {
                    id: button
                    x: 38
                    y: 856
                    text: qsTr("Button")
                    flat: true
                    icon.height: 150
                    icon.width: 150
                    icon.source: "fonts/tierra.png"
                    display: AbstractButton.IconOnly
                    onClicked:{
                        if(rectangle234.visible){
                        rectangle234.visible=false
                    }
                        else if(rectangle234.visible===false){
                            rectangle234.visible=true
                        }


                    }

                    Rectangle {
                        id: rectangle234
                        x: 150
                        y: -220
                        visible: false
                        width: 500
                        height: 270
                        color: Constants.backgroundColor
                        border.width: 10

                        Button {
                            id: button3456
                            x: 53
                            y: 69
                            width: 175
                            height: 111
                            flat: true
                            icon.source: "fonts/english.png"
                            icon.height: 300
                            icon.width: 300
                            icon.color: "#0026282a"
                            display: AbstractButton.IconOnly
                            onClicked: {
                                stackView.push(inicioeng)
                            }
                        }

                        Button {
                            id: button348
                            x: 287
                            y: 69
                            width: 175
                            height: 111
                            flat: true
                            icon.source: "fonts/spain.png"
                            icon.height: 300
                            icon.width: 300
                            icon.color: "#0026282a"
                            display: AbstractButton.IconOnly
                            onClicked: {
                                stackView.push(inicioesp)
                            }
                        }

                    }
                }

                Button {
                    id: button1
                    x: 760
                    y: 640
                    text: qsTr("Iniciar")
                    font.pointSize: 70
                    font.family: "Tahoma"
                    onClicked: stackView.push(loginesp)
                }
            }

            Button {
                id: button5
                x: 1763
                y: 29
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/informacion.png"
                icon.height: 100
                display: AbstractButton.IconOnly
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }

            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "Esta app fué creada por PETACA Industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "Para más información, preguntas o sugerencias"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Porfavor, dirigase a nuestra página:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }
}

    Component{
        id:loginesp
        Rectangle {
            width: Constants.width
            height: Constants.height
            color: Constants.backgroundColor


            Rectangle {
                color: Constants.backgroundColor
                transformOrigin: Item.Center
            }

            Rectangle {
                color: Constants.backgroundColor
                transformOrigin: Item.Center

                Text {
                    id: text1
                    x: 505
                    y: 368
                    text: qsTr("ID:")
                    font.pixelSize: 50
                    transformOrigin: Item.Center
                    font.family: "Tahoma"
                }

                Text {
                    id: text2
                    x: 340
                    y: 475
                    text: qsTr("Contraseña:")
                    font.pixelSize: 50
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }



            Rectangle {
                id: rectangle
                x: 612
                y: 368
                width: 443
                height: 59
                color: "#ababab"

                TextInput {
                    id: textInput
                    x: -1
                    y: 2
                    width: 428
                    height: 57
                    text: qsTr("")
                    font.pixelSize: 50
                    font.family: "Tahoma"
                }
            }

            Rectangle {
                id: rectangle1
                x: 611
                y: 475
                width: 443
                height: 59
                color: "#ababab"

                TextInput {
                    id: textInput1
                    x: 1
                    y: 5
                    width: 428
                    height: 54
                    text: qsTr("")
                    font.pixelSize: 50
                    echoMode: TextInput.Password
                    font.family: "Tahoma"
                }
            }

            Button {
                id: button
                x: 930
                y: 648
                text: qsTr("Iniciar Sesión")
                font.family: "Tahoma"
                font.pointSize: 30
                display: AbstractButton.TextOnly
                onClicked: stackView.push(homeUIesp)
            }
            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "Esta app fué creada por PETACA Industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "Para más información, preguntas o sugerencias"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Porfavor, dirigase a nuestra página:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }

        }


    }

    Component{
        id: homeUIesp
        Rectangle {
            width: Constants.width
            height: Constants.height

            color: Constants.backgroundColor
            layer.enabled: false

            Button {
                id: button1
                x: 421
                y: 280
                width: 450
                height: 450
                text: qsTr("Solicitar")
                icon.height: 200
                icon.width: 200
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 50
                font.family: "Tahoma"
                bottomPadding: 0
                onClicked: stackView.push(typetoolesp)
            }

            Button {
                id: button2
                x: 1035
                y: 280
                width: 450
                height: 450
                text: qsTr("Devolver")
                icon.height: 250
                icon.width: 250
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 50
                font.family: "Tahoma"
                bottomPadding: 0
                onClicked: stackView.push(typetoolreturnesp)
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }

            Button {
                id: button20
                x: 180
                y: 855
                width: 350
                height: 130
                text: qsTr("Terminar sesión")
                font.family: "Tahoma"
                font.pointSize: 25
                display: AbstractButton.TextOnly
                onClicked: {
                    stackView.pop()
                    stackView.pop()
                }
            }

            Button {
                id: button
                x: 1625
                y: 868
                width: 240
                height: 79
                text: qsTr("ordenar")
                font.family: "Tahoma"
                font.pointSize: 30
                display: AbstractButton.TextOnly
                onClicked:{
                    stackView.push(orderesp)
                }
            }
            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "Esta app fué creada por PETACA Industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "Para más información, preguntas o sugerencias"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Porfavor, dirigase a nuestra página:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }
    }

    Component{
        id: typetoolesp
        Rectangle {
            width: Constants.width
            height: Constants.height

            color: Constants.backgroundColor
            layer.enabled: false

            Button {
                id: button
                x: 192
                y: 265
                width: 435
                height: 551
                text: "Manual y herramientas"
                icon.height: 200
                icon.width: 200
                icon.source: "fonts/herramientas-manuales.png"
                display: AbstractButton.TextUnderIcon
                bottomPadding: 0
                topPadding: 0
                font.family: "Tahoma"
                font.pointSize: 20
                onClicked: stackView.push(taketoolsesp)
            }

            Button {
                id: button1
                x: 743
                y: 265
                width: 435
                height: 551
                text: qsTr("Brocas, Tornillos y Tuercas")
                font.hintingPreference: Font.PreferDefaultHinting
                icon.height: 200
                icon.width: 200
                icon.source: "fonts/tornillodos.png"
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 18
                font.family: "Tahoma"
                bottomPadding: 0
                onClicked: stackView.push(typechipesp)
            }

            Button {
                id: button2
                x: 1302
                y: 265
                width: 435
                height: 551
                text: qsTr("Equipo de seguridad")
                icon.height: 250
                icon.width: 250
                icon.source: "fonts/casco.png"
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 20
                font.family: "Tahoma"
                bottomPadding: 0
                onClicked: stackView.push(takeequipmentesp)
            }

            Button {
                id: button4
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/casa.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }
            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "Esta app fué creada por PETACA Industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "Para más información, preguntas o sugerencias"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Porfavor, dirigase a nuestra página:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }
    }

    Component{
        id: takeequipmentesp
        Rectangle {
            width: Constants.width
            height: Constants.height

            color: Constants.backgroundColor
            layer.enabled: false

            Button {
                id: button1
                x: 695
                y: 716
                width: 435
                height: 100
                text: qsTr("Listo")
                icon.height: 200
                icon.width: 200
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 50
                font.family: "Tahoma"
                bottomPadding: 0
                onClicked: {stackView.pop()
                stackView.pop()}
            }

            Button {
                id: button4
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/izquierda.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }

            Text {
                id: text1
                x: 37
                y: 170
                width: 1836
                height: 204
                text: qsTr("Ahora puedes tomar tu equipo")
                font.pixelSize: 100
                horizontalAlignment: Text.AlignHCenter
                font.family: "Tahoma"
            }

            AnimatedImage {
                id: animatedImage
                x: 800
                y: 380
                width: 230
                height: 230
                source: "fonts/safety.gif"

            }

            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "Esta app fué creada por PETACA Industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "Para más información, preguntas o sugerencias"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Porfavor, dirigase a nuestra página:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }
    }

    Component{
        id: taketoolsesp
        Rectangle {
            width: Constants.width
            height: Constants.height

            color: Constants.backgroundColor
            layer.enabled: false

            Button {
                id: button1
                x: 705
                y: 800
                width: 435
                height: 100
                text: qsTr("Listo")
                icon.height: 200
                icon.width: 200
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 50
                font.family: "Tahoma"
                bottomPadding: 0
                onClicked:{
                    stackView.pop()
                    stackView.pop()
                }
            }

            AnimatedImage {
                id: animatedImage
                x: 820
                y: 395
                width: 220
                height: 220
                source: "fonts/taketools.gif"

            }

            Button {
                id: button4
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/izquierda.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }

            Text {
                id: text1
                x: 225
                y: 200
                width: 1405
                height: 673
                text: qsTr("Puedes tomar las herramientas")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 100
                font.family: "Tahoma"
            }
            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "Esta app fué creada por PETACA Industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "Para más información, preguntas o sugerencias"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Porfavor, dirigase a nuestra página:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }

            }
        }
    }

    Component{
        id: typechipesp
        Rectangle {
            width: Constants.width
            height: Constants.height

            color: Constants.backgroundColor
            layer.enabled: false

            Button {
                id: button
                x: 192
                y: 265
                width: 435
                height: 551
                text: qsTr("Brocas")
                icon.height: 200
                icon.width: 200
                icon.source: "fonts/taladro.png"
                display: AbstractButton.TextUnderIcon
                bottomPadding: 0
                topPadding: 0
                font.family: "Tahoma"
                font.pointSize: 50
                onClicked: stackView.push(drillesp)
            }

            Button {
                id: button1
                x: 743
                y: 265
                width: 435
                height: 551
                text: qsTr("Tornillo")
                icon.height: 200
                icon.width: 200
                icon.source: "fonts/tornillo.png"
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 50
                font.family: "Tahoma"
                bottomPadding: 0
                onClicked: stackView.push(screwsesp)
            }

            Button {
                id: button2
                x: 1302
                y: 265
                width: 435
                height: 551
                text: qsTr("Tuerca")
                icon.height: 250
                icon.width: 250
                icon.source: "fonts/tuerca.png"
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 50
                font.family: "Tahoma"
                bottomPadding: 0
                onClicked: stackView.push(nutesp)
            }

            Button {
                id: button4
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/izquierda.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }

            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "Esta app fué creada por PETACA Industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "Para más información, preguntas o sugerencias"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Porfavor, dirigase a nuestra página:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }
    }

    Component{
        id: drillesp
        Rectangle {
            id: rectangle
            width: Constants.width
            height: Constants.height

            color: Constants.backgroundColor

            Text {
                text: qsTr("Que material utilizarás?")
                anchors.verticalCenterOffset: -288
                anchors.horizontalCenterOffset: 0
                font.family: "Tahoma"
                font.pointSize: 50
                anchors.centerIn: parent
            }

            Button {
                id: button
                x: 104
                y: 365
                width: 350
                height: 350
                text: qsTr("Madera")
                icon.height: 200
                icon.width: 170
                icon.source: "fonts/madera.png"
                display: AbstractButton.TextUnderIcon
                font.bold: false
                topPadding: 0
                bottomPadding: 0
                font.pointSize: 25
                onClicked: stackView.push(wooddrillesp)
            }

            Button {
                id: button1
                x: 558
                y: 365
                width: 350
                height: 350
                text: "Metal"
                icon.height: 170
                icon.width: 170
                icon.source: "fonts/steel.png"
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 25
                font.bold: false
                bottomPadding: 0
                onClicked: stackView.push(steeldrillesp)
            }

            Button {
                id: button2
                x: 1012
                y: 365
                width: 350
                height: 350
                text: qsTr("Concreto")
                property int newName: 0
                icon.height: 200
                icon.width: 200
                icon.source: "fonts/concreto.png"
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 25
                font.bold: false
                bottomPadding: 0
                onClicked: stackView.push(concretedrillesp)

            }

            Button {
                id: button3
                x: 1466
                y: 365
                width: 350
                height: 350
                text: qsTr("Aluminio")
                icon.height: 200
                icon.width: 200
                icon.source: "fonts/acero.png"
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 25
                font.bold: false
                bottomPadding: 0
                onClicked: stackView.push(aluminiumdrillesp)
            }

            Button {
                id: button4
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.color: "#26282a"
                icon.height: 100
                icon.width: 100
                icon.source: "fonts/izquierda.png"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }
            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "Esta app fué creada por PETACA Industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "Para más información, preguntas o sugerencias"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Porfavor, dirigase a nuestra página:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
            }
        }

    }

    Component{
        id: wooddrillesp

        Rectangle {
            id: rectangle
            width: Constants.width
            height: Constants.height
            color: Constants.backgroundColor
            property int mmopul: 0
            property int quantity: 0

            Rectangle {
                id: toolBar
                x: 98
                y: 112
                width: 1470
                height: 102
                color: "lightgray"

                Button{
                    id: morequan
                    x: 1250
                    y: 29
                    text: "+"
                    font.pointSize: 15
                    onClicked: {
                        quantity += 1
                    }
                }

                TextEdit {
                                id: textquantity
                                x: 1325
                                y: 29
                                text: quantity.toString()
                                readOnly: false
                                font.pointSize: 25
                                onTextChanged: {
                                    // Update the quantity based on the user's input
                                    quantity = parseInt(textquantity.text);
                                }
                            }

                Button{
                    id: lessquan
                    x: 1400
                    y: 29
                    text: "-"
                    font.pointSize: 15
                    onClicked: {
                        if(quantity>0)
                        quantity -= 1
                    }
                }


                Switch {
                    id: switch1
                    x: 33
                    y: 29
                    text: qsTr("Filtro")
                    checkable: true
                    font.pointSize: 20
                    font.family: "Tahoma"
                    onCheckedChanged: {
                        if(rangeSlider.value<8){
                                        button3.visible = !switch1.checked
                                        button4.visible = !switch1.checked
                        }
                        else if(rangeSlider.value>=8){
                            button.visible = !switch1.checked
                            button2.visible =! switch1.checked
                            button1.visible = !switch1.checked
                        }
                                    }


                }

                Slider {
                    id: rangeSlider
                    x: 232
                    y: 31
                    width: 717
                    height: 40
                    visible: true
                    stepSize: 0.5
                    clip: false
                    to: 25

                }



                ToolSeparator {
                    id: toolSeparator
                    x: 189
                    y: 34
                }
                Text {
                    id: text1
                    x: 983
                    y: 17
                    width: 105
                    height: 69
                    text: {
                        if(mmopul==0){
                            rangeSlider.value + "mm"
                        }
                        else if(mmopul==1){
                            rangeSlider.value + "\"\""
                        }
                    }
                    font.pixelSize: 45
                }

                Button {
                    id: button7
                    x: 1172
                    y: 5
                    width: 70
                    height: 50
                    text: qsTr("MM")
                    font.pointSize: 7
                    onClicked: mmopul=0
                }
                Button {
                    id: button70
                    x: 1172
                    y: 51
                    width: 70
                    height: 50
                    text: "\"\""
                    font.pointSize: 15
                    onClicked: mmopul=1
                }
            }

            Button{
                id: buttonget
                x: 1500
                y:770
                height: 200
                width: 250
                text: "Solicitar"
                font.pointSize: 20
                onClicked:{
                    if(rectangulovis1.visible||rectangulovis2.visible||rectangulovis3.visible||rectangulovis4.visible||rectangulovis5.visible){
                        stackView.push(givingmaterialesp)
                    }

                }
            }

            Button {
                id: button50
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/izquierda.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }
            Grid {
                id: grid
                x: 244
                y: 284
                width: 1635
                height: 350
                rows: 4
                columns: 4
                spacing: 90

                Button {
                    id: button
                    x: 71
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Broca 1")
                    leftPadding: 16
                    icon.height: 150
                    icon.width: 150
                    icon.source: "fonts/broca.png"
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis1.visible=true
                        textocantidad1.visible=true
                        textocantidad1.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis1.visible=false
                            textocantidad1.visible=false
                            textocantidad1.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis1
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible:false
                        Text{
                            id:textocantidad1
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button1
                    x: 474
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Broca 2")
                    icon.width: 150
                    icon.source: "fonts/broca.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis2.visible=true
                        textocantidad2.visible=true
                        textocantidad2.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis2.visible=false
                            textocantidad2.visible=false
                            textocantidad2.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis2
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad2
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button2
                    x: 875
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Broca 3")
                    icon.width: 150
                    icon.source: "fonts/broca.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis3.visible=true
                        textocantidad3.visible=true
                        textocantidad3.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis3.visible=false
                            textocantidad3.visible=false
                            textocantidad3.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis3
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad3
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button3
                    x: 71
                    y: 418
                    width: 300
                    height: 300
                    text: qsTr("Broca 5")
                    icon.width: 150
                    icon.source: "fonts/broca.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis4.visible=true
                        textocantidad4.visible=true
                        textocantidad4.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis4.visible=false
                            textocantidad4.visible=false
                            textocantidad4.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis4
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad4
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button4
                    x: 1275
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Broca 4")
                    icon.width: 150
                    icon.source: "fonts/broca.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis5.visible=true
                        textocantidad5.visible=true
                        textocantidad5.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis5.visible=false
                            textocantidad5.visible=false
                            textocantidad5.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis5
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad5
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }
            }
            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "Esta app fué creada por PETACA Industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "Para más información, preguntas o sugerencias"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Porfavor, dirigase a nuestra página:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }
    }

    Component{
        id: steeldrillesp

        Rectangle {
            id: rectangle
            width: Constants.width
            height: Constants.height
            color: Constants.backgroundColor
            property int mmopul: 0
            property int quantity: 0

            Rectangle {
                id: toolBar
                x: 98
                y: 112
                width: 1470
                height: 102
                color: "lightgray"

                Button{
                    id: morequan
                    x: 1250
                    y: 29
                    text: "+"
                    font.pointSize: 15
                    onClicked: {
                        quantity += 1
                    }
                }

                TextEdit {
                                id: textquantity
                                x: 1325
                                y: 29
                                text: quantity.toString()
                                readOnly: false
                                font.pointSize: 25
                                onTextChanged: {
                                    // Update the quantity based on the user's input
                                    quantity = parseInt(textquantity.text);
                                }
                            }

                Button{
                    id: lessquan
                    x: 1400
                    y: 29
                    text: "-"
                    font.pointSize: 15
                    onClicked: {
                        if(quantity>0)
                        quantity -= 1
                    }
                }

                Switch {
                    id: switch1
                    x: 33
                    y: 29
                    text: qsTr("Filtro")
                    checkable: true
                    font.pointSize: 20
                    font.family: "Tahoma"
                    onCheckedChanged: {
                        if(rangeSlider.value<8){
                                        button3.visible = !switch1.checked
                                        button4.visible = !switch1.checked
                        }
                        else if(rangeSlider.value>=8){
                            button.visible = !switch1.checked
                            button2.visible =! switch1.checked
                            button1.visible = !switch1.checked
                        }
                                    }


                }

                Slider {
                    id: rangeSlider
                    x: 232
                    y: 31
                    width: 717
                    height: 40
                    visible: true
                    stepSize: 0.5
                    clip: false
                    to: 25

                }



                ToolSeparator {
                    id: toolSeparator
                    x: 189
                    y: 34
                }
                Text {
                    id: text1
                    x: 983
                    y: 17
                    width: 105
                    height: 69
                    text: {
                        if(mmopul==0){
                            rangeSlider.value + "mm"
                        }
                        else if(mmopul==1){
                            rangeSlider.value + "\"\""
                        }
                    }
                    font.pixelSize: 45
                }

                Button {
                    id: button7
                    x: 1172
                    y: 5
                    width: 70
                    height: 50
                    text: qsTr("MM")
                    font.pointSize: 7
                    onClicked: mmopul=0
                }
                Button {
                    id: button70
                    x: 1172
                    y: 51
                    width: 70
                    height: 50
                    text: "\"\""
                    font.pointSize: 15
                    onClicked: mmopul=1
                }
            }

            Button{
                id: buttonget
                x: 1500
                y:770
                height: 200
                width: 250
                text: "Solicitar"
                font.pointSize: 20
                onClicked:{
                    if(rectangulovis1.visible||rectangulovis2.visible||rectangulovis3.visible||rectangulovis4.visible||rectangulovis5.visible){
                        stackView.push(givingmaterialesp)
                    }

                }
            }


            Button {
                id: button50
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/izquierda.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }
            Grid {
                id: grid
                x: 244
                y: 284
                width: 1635
                height: 350
                rows: 4
                columns: 4
                spacing: 90

                Button {
                    id: button
                    x: 71
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Broca 1")
                    leftPadding: 16
                    icon.height: 150
                    icon.width: 150
                    icon.source: "fonts/brocasteel.png"
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis1.visible=true
                        textocantidad1.visible=true
                        textocantidad1.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis1.visible=false
                            textocantidad1.visible=false
                            textocantidad1.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis1
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad1
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }


                Button {
                    id: button1
                    x: 474
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Broca 2")
                    icon.width: 150
                    icon.source: "fonts/brocasteel.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis2.visible=true
                        textocantidad2.visible=true
                        textocantidad2.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis2.visible=false
                            textocantidad2.visible=false
                            textocantidad2.text=quantity
                        }
                    }
                    Rectangle{
                        id:rectangulovis2
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible:false
                        Text{
                            id:textocantidad2
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button2
                    x: 875
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Broca 3")
                    icon.width: 150
                    icon.source: "fonts/brocasteel.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis3.visible=true
                        textocantidad3.visible=true
                        textocantidad3.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis3.visible=false
                            textocantidad3.visible=false
                            textocantidad3.text=quantity
                        }
                    }
                    Rectangle{
                        id:rectangulovis3
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible:false
                        Text{
                            id:textocantidad3
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button3
                    x: 71
                    y: 418
                    width: 300
                    height: 300
                    text: qsTr("Broca 5")
                    icon.width: 150
                    icon.source: "fonts/brocasteel.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis4.visible=true
                        textocantidad4.visible=true
                        textocantidad4.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis4.visible=false
                            textocantidad4.visible=false
                            textocantidad4.text=quantity
                        }
                    }
                    Rectangle{
                        id:rectangulovis4
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible:false
                        Text{
                            id:textocantidad4
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button4
                    x: 1275
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Broca 4")
                    icon.width: 150
                    icon.source: "fonts/brocasteel.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis5.visible=true
                        textocantidad5.visible=true
                        textocantidad5.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis5.visible=false
                            textocantidad5.visible=false
                            textocantidad5.text=quantity
                        }
                    }
                    Rectangle{
                        id:rectangulovis5
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible:false
                        Text{
                            id:textocantidad5
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }
            }
            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "Esta app fué creada por PETACA Industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "Para más información, preguntas o sugerencias"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Porfavor, dirigase a nuestra página:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }

            }
        }
    }

    Component{
        id: concretedrillesp

        Rectangle {
            id: rectangle
            width: Constants.width
            height: Constants.height
            color: Constants.backgroundColor
            property int mmopul: 0
            property int quantity: 0
            Rectangle {
                id: toolBar
                x: 98
                y: 112
                width: 1470
                height: 102
                color: "lightgray"

                Button{
                    id: morequan
                    x: 1250
                    y: 29
                    text: "+"
                    font.pointSize: 15
                    onClicked: {
                        quantity += 1
                    }
                }

                TextEdit {
                                id: textquantity
                                x: 1325
                                y: 29
                                text: quantity.toString()
                                readOnly: false
                                font.pointSize: 25
                                onTextChanged: {
                                    // Update the quantity based on the user's input
                                    quantity = parseInt(textquantity.text);
                                }
                            }

                Button{
                    id: lessquan
                    x: 1400
                    y: 29
                    text: "-"
                    font.pointSize: 15
                    onClicked: {
                        if(quantity>0)
                        quantity -= 1
                    }
                }

                Switch {
                    id: switch1
                    x: 33
                    y: 29
                    text: qsTr("Filtro")
                    checkable: true
                    font.pointSize: 20
                    font.family: "Tahoma"
                    onCheckedChanged: {
                        if(rangeSlider.value<8){
                                        button3.visible = !switch1.checked
                                        button4.visible = !switch1.checked
                        }
                        else if(rangeSlider.value>=8){
                            button.visible = !switch1.checked
                            button2.visible =! switch1.checked
                            button1.visible = !switch1.checked
                        }
                                    }


                }

                Slider {
                    id: rangeSlider
                    x: 232
                    y: 31
                    width: 717
                    height: 40
                    visible: true
                    stepSize: 0.5
                    clip: false
                    to: 25

                }



                ToolSeparator {
                    id: toolSeparator
                    x: 189
                    y: 34
                }
                Text {
                    id: text1
                    x: 983
                    y: 17
                    width: 105
                    height: 69
                    text: {
                        if(mmopul==0){
                            rangeSlider.value + "mm"
                        }
                        else if(mmopul==1){
                            rangeSlider.value + "\"\""
                        }
                    }
                    font.pixelSize: 45
                }

                Button {
                    id: button7
                    x: 1172
                    y: 5
                    width: 70
                    height: 50
                    text: qsTr("MM")
                    font.pointSize: 7
                    onClicked: mmopul=0
                }
                Button {
                    id: button70
                    x: 1172
                    y: 51
                    width: 70
                    height: 50
                    text: "\"\""
                    font.pointSize: 15
                    onClicked: mmopul=1
                }
            }

            Button{
                id: buttonget
                x: 1500
                y:770
                height: 200
                width: 250
                text: "Solicitar"
                font.pointSize: 20
                onClicked:{
                    if(rectangulovis1.visible||rectangulovis2.visible||rectangulovis3.visible||rectangulovis4.visible||rectangulovis5.visible){
                        stackView.push(givingmaterialesp)
                    }

                }
            }

            Button {
                id: button50
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/izquierda.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }
            Grid {
                id: grid
                x: 244
                y: 284
                width: 1635
                height: 350
                rows: 4
                columns: 4
                spacing: 90

                Button {
                    id: button
                    x: 71
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Broca 1")
                    leftPadding: 16
                    icon.height: 150
                    icon.width: 150
                    icon.source: "fonts/brocaconcrete.png"
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis1.visible=true
                        textocantidad1.visible=true
                        textocantidad1.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis1.visible=false
                            textocantidad1.visible=false
                            textocantidad1.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis1
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad1
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button1
                    x: 474
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Broca 2")
                    icon.width: 150
                    icon.source: "fonts/brocaconcrete.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis2.visible=true
                        textocantidad2.visible=true
                        textocantidad2.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis2.visible=false
                            textocantidad2.visible=false
                            textocantidad2.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis2
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad2
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button2
                    x: 875
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Broca 3")
                    icon.width: 150
                    icon.source: "fonts/brocaconcrete.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis3.visible=true
                        textocantidad3.visible=true
                        textocantidad3.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis3.visible=false
                            textocantidad3.visible=false
                            textocantidad3.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis3
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad3
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button3
                    x: 71
                    y: 418
                    width: 300
                    height: 300
                    text: qsTr("Broca 5")
                    icon.width: 150
                    icon.source: "fonts/brocaconcrete.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis4.visible=true
                        textocantidad4.visible=true
                        textocantidad4.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis4.visible=false
                            textocantidad4.visible=false
                            textocantidad4.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis4
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad4
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button4
                    x: 1275
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Broca 4")
                    icon.width: 150
                    icon.source: "fonts/brocaconcrete.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis5.visible=true
                        textocantidad5.visible=true
                        textocantidad5.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis5.visible=false
                            textocantidad5.visible=false
                            textocantidad5.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis5
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad5
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }
            }
            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "Esta app fué creada por PETACA Industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "Para más información, preguntas o sugerencias"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Porfavor, dirigase a nuestra página:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }
    }

    Component{
        id: aluminiumdrillesp

        Rectangle {
            id: rectangle
            width: Constants.width
            height: Constants.height
            color: Constants.backgroundColor
            property int mmopul: 0
            property int quantity: 0

            Rectangle {
                id: toolBar
                x: 98
                y: 112
                width: 1470
                height: 102
                color: "lightgray"

                Button{
                    id: morequan
                    x: 1250
                    y: 29
                    text: "+"
                    font.pointSize: 15
                    onClicked: {
                        quantity += 1
                    }
                }

                TextEdit {
                                id: textquantity
                                x: 1325
                                y: 29
                                text: quantity.toString()
                                readOnly: false
                                font.pointSize: 25
                                onTextChanged: {
                                    // Update the quantity based on the user's input
                                    quantity = parseInt(textquantity.text);
                                }
                            }

                Button{
                    id: lessquan
                    x: 1400
                    y: 29
                    text: "-"
                    font.pointSize: 15
                    onClicked: {
                        if(quantity>0)
                        quantity -= 1
                    }
                }

                Switch {
                    id: switch1
                    x: 33
                    y: 29
                    text: qsTr("Filtro")
                    checkable: true
                    font.pointSize: 20
                    font.family: "Tahoma"
                    onCheckedChanged: {
                        if(rangeSlider.value<8){
                                        button3.visible = !switch1.checked
                                        button4.visible = !switch1.checked
                        }
                        else if(rangeSlider.value>=8){
                            button.visible = !switch1.checked
                            button2.visible =! switch1.checked
                            button1.visible = !switch1.checked
                        }
                                    }


                }

                Slider {
                    id: rangeSlider
                    x: 232
                    y: 31
                    width: 717
                    height: 40
                    visible: true
                    stepSize: 0.5
                    clip: false
                    to: 25

                }



                ToolSeparator {
                    id: toolSeparator
                    x: 189
                    y: 34
                }
                Text {
                    id: text1
                    x: 983
                    y: 17
                    width: 105
                    height: 69
                    text: {
                        if(mmopul==0){
                            rangeSlider.value + "mm"
                        }
                        else if(mmopul==1){
                            rangeSlider.value + "\"\""
                        }
                    }
                    font.pixelSize: 45
                }

                Button {
                    id: button7
                    x: 1172
                    y: 5
                    width: 70
                    height: 50
                    text: qsTr("MM")
                    font.pointSize: 7
                    onClicked: mmopul=0
                }
                Button {
                    id: button70
                    x: 1172
                    y: 51
                    width: 70
                    height: 50
                    text: "\"\""
                    font.pointSize: 15
                    onClicked: mmopul=1
                }
            }

            Button{
                id: buttonget
                x: 1500
                y:770
                height: 200
                width: 250
                text: "Solicitar"
                font.pointSize: 20
                onClicked:{
                    if(rectangulovis1.visible||rectangulovis2.visible||rectangulovis3.visible||rectangulovis4.visible||rectangulovis5.visible){
                        stackView.push(givingmaterialesp)
                    }

                }
            }


            Button {
                id: button50
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/izquierda.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }
            Grid {
                id: grid
                x: 244
                y: 284
                width: 1635
                height: 350
                rows: 4
                columns: 4
                spacing: 90

                Button {
                    id: button
                    x: 71
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Broca 1")
                    leftPadding: 16
                    icon.height: 150
                    icon.width: 150
                    icon.source: "fonts/brocaaluminium.png"
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis1.visible=true
                        textocantidad1.visible=true
                        textocantidad1.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis1.visible=false
                            textocantidad1.visible=false
                            textocantidad1.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis1
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad1
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button1
                    x: 474
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Broca 2")
                    icon.width: 150
                    icon.source: "fonts/brocaaluminium.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis2.visible=true
                        textocantidad2.visible=true
                        textocantidad2.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis2.visible=false
                            textocantidad2.visible=false
                            textocantidad2.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis2
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad2
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button2
                    x: 875
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Broca 3")
                    icon.width: 150
                    icon.source: "fonts/brocaaluminium.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis3.visible=true
                        textocantidad3.visible=true
                        textocantidad3.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis3.visible=false
                            textocantidad3.visible=false
                            textocantidad3.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis3
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad3
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button3
                    x: 71
                    y: 418
                    width: 300
                    height: 300
                    text: qsTr("Broca 5")
                    icon.width: 150
                    icon.source: "fonts/brocaaluminium.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis4.visible=true
                        textocantidad4.visible=true
                        textocantidad4.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis4.visible=false
                            textocantidad4.visible=false
                            textocantidad4.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis4
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad4
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button4
                    x: 1275
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Broca 4")
                    icon.width: 150
                    icon.source: "fonts/brocaaluminium.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis5.visible=true
                        textocantidad5.visible=true
                        textocantidad5.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis5.visible=false
                            textocantidad5.visible=false
                            textocantidad5.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis5
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad5
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }
            }
            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "Esta app fué creada por PETACA Industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "Para más información, preguntas o sugerencias"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Porfavor, dirigase a nuestra página:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }
    }

    Component{
        id: screwsesp
        Rectangle {
            id: rectangle
            width: Constants.width
            height: Constants.height
            color: Constants.backgroundColor
            property int mmopul: 0
            property int quantity: 0

            Rectangle {
                id: toolBar
                x: 98
                y: 40
                width: 1470
                height: 185
                color: "lightgray"

                Button{
                    id: morequan
                    x: 1250
                    y: 29
                    text: "+"
                    font.pointSize: 15
                    onClicked: {
                        quantity += 1
                    }
                }

                TextEdit {
                                id: textquantity
                                x: 1325
                                y: 29
                                text: quantity.toString()
                                readOnly: false
                                font.pointSize: 25
                                onTextChanged: {
                                    // Update the quantity based on the user's input
                                    quantity = parseInt(textquantity.text);
                                }
                            }

                Button{
                    id: lessquan
                    x: 1400
                    y: 29
                    text: "-"
                    font.pointSize: 15
                    onClicked: {
                        if(quantity>0)
                        quantity -= 1
                    }
                }

                Switch {
                    id: switch1
                    x: 33
                    y: 29
                    text: qsTr("Filtro")
                    checkable: true
                    font.pointSize: 20
                    font.family: "Tahoma"
                    onCheckedChanged: {
                        if(rangeSlider.value<8){
                                        button3.visible = !switch1.checked
                        }
                        else if(rangeSlider.value>=8){
                            button2.visible = !switch1.checked
                            button4.visible = !switch1.checked
                            button6.visible = !switch1.checked
                        }
                                    }


                }

                Slider {
                    id: rangeSlider
                    x: 232
                    y: 31
                    width: 717
                    height: 40
                    visible: true
                    stepSize: 0.5
                    clip: false
                    to: 25

                }

                Text{
                    id: textrangesliderone
                    x: 232
                    y: 70
                    visible: true
                    text: "DIAMETRO"
                    font.pointSize: 13
                }

                Slider {
                    id: rangeSlider2
                    x: 232
                    y: 100
                    width: 717
                    height: 40
                    visible: true
                    stepSize: 0.5
                    clip: false
                    to: 25

                }



                Text{
                    id: textrangeslidertwo
                    x: 232
                    y: 130
                    visible: true
                    text: "TAMAÑO"
                    font.pointSize: 13
                }



                ToolSeparator {
                    id: toolSeparator
                    x: 189
                    y: 34
                }
                Text {
                    id: text1
                    x: 983
                    y: 17
                    width: 105
                    height: 69
                    text: {
                        if(mmopul==0){
                            rangeSlider.value + "mm"
                        }
                        else if(mmopul==1){
                            rangeSlider.value + "\"\""
                        }
                    }
                    font.pixelSize: 45
                }

                Button {
                    id: button7
                    x: 1172
                    y: 5
                    width: 70
                    height: 50
                    text: qsTr("MM")
                    font.pointSize: 7
                    onClicked: mmopul=0
                }
                Button {
                    id: button70
                    x: 1172
                    y: 51
                    width: 70
                    height: 50
                    text: "\"\""
                    font.pointSize: 15
                    onClicked: mmopul=1
                }
                Text {
                    id: text10
                    x: 983
                    y: 86
                    width: 105
                    height: 69
                    text: {
                        if(mmopul==0){
                            rangeSlider2.value + "mm"
                        }
                        else if(mmopul==1){
                            rangeSlider2.value + "\"\""
                        }
                    }
                    font.pixelSize: 45
                }


            }

            Button{
                id: buttonget
                x: 1500
                y:770
                height: 200
                width: 250
                text: "Solicitar"
                font.pointSize: 20
                onClicked:{
                    if(rectangulovis1.visible||rectangulovis2.visible||rectangulovis3.visible||rectangulovis4.visible||rectangulovis5.visible||rectangulovis6.visible){
                        stackView.push(givingmaterialesp)
                    }

                }
            }

            Button {
                id: button50
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/izquierda.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }
            Grid {
                id: grid
                x: 244
                y: 284
                width: 1635
                height: 350
                rows: 4
                columns: 4
                spacing: 90

                Button {
                    id: button
                    x: 71
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Tornillo 1")
                    leftPadding: 16
                    icon.height: 150
                    icon.width: 150
                    icon.source: "fonts/tornilloselec.png"
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis1.visible=true
                        textocantidad1.visible=true
                        textocantidad1.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis1.visible=false
                            textocantidad1.visible=false
                            textocantidad1.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis1
                        x: 225
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad1
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button1
                    x: 474
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Tornillo 2")
                    icon.width: 150
                    icon.source: "fonts/tornilloselec.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis2.visible=true
                        textocantidad2.visible=true
                        textocantidad2.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis2.visible=false
                            textocantidad2.visible=false
                            textocantidad2.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis2
                        x: 225
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad2
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button2
                    x: 875
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Tornillo 3")
                    icon.width: 150
                    icon.source: "fonts/tornilloselec.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis3.visible=true
                        textocantidad3.visible=true
                        textocantidad3.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis3.visible=false
                            textocantidad3.visible=false
                            textocantidad3.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis3
                        x: 225
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad3
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button3
                    x: 71
                    y: 418
                    width: 300
                    height: 300
                    text: qsTr("Tornillo 4")
                    icon.width: 150
                    icon.source: "fonts/tornilloselec.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis4.visible=true
                        textocantidad4.visible=true
                        textocantidad4.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis4.visible=false
                            textocantidad4.visible=false
                            textocantidad4.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis4
                        x: 225
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad4
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button4
                    x: 1275
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Tornillo 5")
                    icon.width: 150
                    icon.source: "fonts/tornilloselec.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis5.visible=true
                        textocantidad5.visible=true
                        textocantidad5.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis5.visible=false
                            textocantidad5.visible=false
                            textocantidad5.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis5
                        x: 225
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad5
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button6
                    x: 1275
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Tornillo 6")
                    icon.width: 150
                    icon.source: "fonts/tornilloselec.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis6.visible=true
                        textocantidad6.visible=true
                        textocantidad6.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis6.visible=false
                            textocantidad6.visible=false
                            textocantidad6.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis6
                        x: 225
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad6
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }
            }
            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "Esta app fué creada por PETACA Industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "Para más información, preguntas o sugerencias"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Porfavor, dirigase a nuestra página:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
            }
        }
    }

    Component{
        id: nutesp
        Rectangle {
            id: rectangle
            width: Constants.width
            height: Constants.height
            color: Constants.backgroundColor
            property int mmopul: 0
            property int quantity: 0

            Rectangle {
                id: toolBar
                x: 98
                y: 40
                width: 1470
                height: 185
                color: "lightgray"

                Button{
                    id: morequan
                    x: 1250
                    y: 29
                    text: "+"
                    font.pointSize: 15
                    onClicked: {
                        quantity += 1
                    }
                }

                TextEdit {
                                id: textquantity
                                x: 1325
                                y: 29
                                text: quantity.toString()
                                readOnly: false
                                font.pointSize: 25
                                onTextChanged: {
                                    // Update the quantity based on the user's input
                                    quantity = parseInt(textquantity.text);
                                }
                            }

                Button{
                    id: lessquan
                    x: 1400
                    y: 29
                    text: "-"
                    font.pointSize: 15
                    onClicked: {
                        if(quantity>0)
                        quantity -= 1
                    }
                }

                Switch {
                    id: switch1
                    x: 33
                    y: 29
                    text: qsTr("Filtro")
                    checkable: true
                    font.pointSize: 20
                    font.family: "Tahoma"
                    onCheckedChanged: {
                        if(rangeSlider.value<8){
                                        button3.visible = !switch1.checked
                        }
                        else if(rangeSlider.value>=8){
                            button2.visible = !switch1.checked
                            button4.visible = !switch1.checked
                            button6.visible = !switch1.checked
                        }
                                    }


                }

                Slider {
                    id: rangeSlider
                    x: 232
                    y: 31
                    width: 717
                    height: 40
                    visible: true
                    stepSize: 0.5
                    clip: false
                    to: 25

                }

                Text{
                    id: textrangesliderone
                    x: 232
                    y: 70
                    visible: true
                    text: "DIAMETRO INTERNO"
                    font.pointSize: 13
                }

                Slider {
                    id: rangeSlider2
                    x: 232
                    y: 100
                    width: 717
                    height: 40
                    visible: true
                    stepSize: 0.5
                    clip: false
                    to: 25

                }

                Text{
                    id: textrangeslidertwo
                    x: 232
                    y: 130
                    visible: true
                    text: "DIAMETRO EXTERNO"
                    font.pointSize: 13
                }



                ToolSeparator {
                    id: toolSeparator
                    x: 189
                    y: 34
                }
                Text {
                    id: text1
                    x: 983
                    y: 17
                    width: 105
                    height: 69
                    text: {
                        if(mmopul==0){
                            rangeSlider.value + "mm"
                        }
                        else if(mmopul==1){
                            rangeSlider.value + "\"\""
                        }
                    }
                    font.pixelSize: 45
                }

                Button {
                    id: button7
                    x: 1172
                    y: 5
                    width: 70
                    height: 50
                    text: qsTr("MM")
                    font.pointSize: 7
                    onClicked: mmopul=0
                }
                Button {
                    id: button70
                    x: 1172
                    y: 51
                    width: 70
                    height: 50
                    text: "\"\""
                    font.pointSize: 15
                    onClicked: mmopul=1
                }
                Text {
                    id: text10
                    x: 983
                    y: 86
                    width: 105
                    height: 69
                    text: {
                        if(mmopul==0){
                            rangeSlider2.value + "mm"
                        }
                        else if(mmopul==1){
                            rangeSlider2.value + "\"\""
                        }
                    }
                    font.pixelSize: 45
                }


            }

            Button{
                id: buttonget
                x: 1500
                y:770
                height: 200
                width: 250
                text: "Solicitar"
                font.pointSize: 20
                onClicked:{
                    if(rectangulovis1.visible||rectangulovis2.visible||rectangulovis3.visible||rectangulovis4.visible||rectangulovis5.visible||rectangulovis6.visible){
                        stackView.push(givingmaterialesp)
                    }

                }
            }

            Button {
                id: button50
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/izquierda.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }
            Grid {
                id: grid
                x: 244
                y: 284
                width: 1635
                height: 350
                rows: 4
                columns: 4
                spacing: 90

                Button {
                    id: button
                    x: 71
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Tuerca 1")
                    leftPadding: 16
                    icon.height: 150
                    icon.width: 150
                    icon.source: "fonts/perno-de-tuerca.png"
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis1.visible=true
                        textocantidad1.visible=true
                        textocantidad1.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis1.visible=false
                            textocantidad1.visible=false
                            textocantidad1.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis1
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad1
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button1
                    x: 474
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Tuerca 2")
                    icon.width: 150
                    icon.source: "fonts/perno-de-tuerca.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis2.visible=true
                        textocantidad2.visible=true
                        textocantidad2.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis2.visible=false
                            textocantidad2.visible=false
                            textocantidad2.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis2
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad2
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button2
                    x: 875
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Tuerca 3")
                    icon.width: 150
                    icon.source: "fonts/perno-de-tuerca.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis3.visible=true
                        textocantidad3.visible=true
                        textocantidad3.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis3.visible=false
                            textocantidad3.visible=false
                            textocantidad3.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis3
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad3
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button3
                    x: 71
                    y: 418
                    width: 300
                    height: 300
                    text: qsTr("Tuerca 4")
                    icon.width: 150
                    icon.source: "fonts/perno-de-tuerca.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis4.visible=true
                        textocantidad4.visible=true
                        textocantidad4.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis4.visible=false
                            textocantidad4.visible=false
                            textocantidad4.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis4
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad4
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button4
                    x: 1275
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Tuerca 5")
                    icon.width: 150
                    icon.source: "fonts/perno-de-tuerca.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis5.visible=true
                        textocantidad5.visible=true
                        textocantidad5.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis5.visible=false
                            textocantidad5.visible=false
                            textocantidad5.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis5
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad5
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }

                Button {
                    id: button6
                    x: 1275
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Tuerca 6")
                    icon.width: 150
                    icon.source: "fonts/perno-de-tuerca.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    onClicked:{
                        if(quantity>0){
                        rectangulovis6.visible=true
                        textocantidad6.visible=true
                        textocantidad6.text=quantity
                        quantity = 0
                    }
                        else if(quantity==0){
                            rectangulovis6.visible=false
                            textocantidad6.visible=false
                            textocantidad6.text=quantity
                        }
                    }

                    Rectangle{
                        id:rectangulovis6
                        x: 220
                        y: 135
                        width: 50
                        height: 50
                        border.width: 2
                        color: "lightgray"
                        visible: false
                        Text{
                            id:textocantidad6
                            x: 10
                            y: 5
                            font.pixelSize: 30
                            visible: false
                        }
                    }
                }
            }
            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "Esta app fué creada por PETACA Industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "Para más información, preguntas o sugerencias"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Porfavor, dirigase a nuestra página:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }

            }
        }
    }

    Component{
        id: typetoolreturnesp
        Rectangle {
            width: Constants.width
            height: Constants.height

            color: Constants.backgroundColor
            layer.enabled: false

            Text {
                id: text1
                x: 512
                y: 111
                width: 897
                height: 132
                text: qsTr("Qué deseas devolver?")
                font.pixelSize: 70

            }

            Button {
                id: button
                x: 192
                y: 265
                width: 435
                height: 551
                text: "Manual y herramientas"
                icon.height: 200
                icon.width: 200
                icon.source: "fonts/herramientas-manuales.png"
                display: AbstractButton.TextUnderIcon
                bottomPadding: 0
                topPadding: 0
                font.family: "Tahoma"
                font.pointSize: 20
                onClicked: stackView.push(returntoolsesp)
            }

            Button {
                id: button1
                x: 743
                y: 265
                width: 435
                height: 551
                text: qsTr("Brocas, tornillos y tuercas")
                font.hintingPreference: Font.PreferDefaultHinting
                icon.height: 200
                icon.width: 200
                icon.source: "fonts/tornillodos.png"
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 18
                font.family: "Tahoma"
                bottomPadding: 0
                onClicked: stackView.push(returnchipesp)
            }

            Button {
                id: button2
                x: 1302
                y: 265
                width: 435
                height: 551
                text: qsTr("Equipo de seguridad")
                icon.height: 250
                icon.width: 250
                icon.source: "fonts/casco.png"
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 20
                font.family: "Tahoma"
                bottomPadding: 0
                onClicked: stackView.push(returnequipmentesp)
            }

            Button {
                id: button4
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/casa.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }
            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "Esta app fué creada por PETACA Industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "Para más información, preguntas o sugerencias"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Porfavor, dirigase a nuestra página:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }
    }

    Component{
        id: returntoolsesp
        Rectangle {
            width: Constants.width
            height: Constants.height

            color: Constants.backgroundColor
            layer.enabled: false

            Button {
                id: button1
                x: 720
                y: 850
                width: 435
                height: 100
                text: qsTr("Listo")
                icon.height: 200
                icon.width: 200
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 50
                font.family: "Tahoma"
                bottomPadding: 0
                onClicked: {stackView.pop()
                stackView.pop()}
            }

            Button {
                id: button4
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/izquierda.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }

            Text {
                id: text1
                x: 37
                y: 150
                width: 1836
                height: 204
                text: qsTr("Coloca las herramientas")
                font.pixelSize: 100
                horizontalAlignment: Text.AlignHCenter
                font.family: "Tahoma"
            }

            AnimatedImage {
                id: animatedImage
                x: 871
                y: 340
                width: 140
                height: 140
                source: "fonts/animatedarrow.gif"
                rotation: 90
            }
            AnimatedImage {
                id: animatedImage2
                x: 840
                y: 530
                width: 200
                height: 200
                source: "fonts/caja.gif"


            }

            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "Esta app fué creada por PETACA Industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "Para más información, preguntas o sugerencias"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Porfavor, dirigase a nuestra página:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }

            }
        }
    }

    Component{
        id: returnequipmentesp
        Rectangle {
            width: Constants.width
            height: Constants.height

            color: Constants.backgroundColor
            layer.enabled: false

            Button {
                id: button1
                x: 720
                y: 850
                width: 435
                height: 100
                text: qsTr("Listo")
                icon.height: 200
                icon.width: 200
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 50
                font.family: "Tahoma"
                bottomPadding: 0
                onClicked: {stackView.pop()
                stackView.pop()}
            }

            Button {
                id: button4
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/izquierda.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }

            Text {
                id: text1
                x: 37
                y: 150
                width: 1836
                height: 204
                text: qsTr("Coloca el equipo")
                font.pixelSize: 100
                horizontalAlignment: Text.AlignHCenter
                font.family: "Tahoma"
            }

            AnimatedImage {
                id: animatedImage
                x: 871
                y: 340
                width: 140
                height: 140
                source: "fonts/animatedarrow.gif"
                rotation: 90
            }
            AnimatedImage {
                id: animatedImage2
                x: 840
                y: 530
                width: 200
                height: 200
                source: "fonts/caja.gif"


            }

            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "Esta app fué creada por PETACA Industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "Para más información, preguntas o sugerencias"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Porfavor, dirigase a nuestra página:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }
    }

    Component{
        id: returnchipesp
        Rectangle {
            property string estadowait: "fonts/animatedarrow"
            property string estadocount: "fonts/loader.gif"
            width: Constants.width
            height: Constants.height

            color: Constants.backgroundColor
            layer.enabled: false

            Button {
                id: button1
                x: 720
                y: 850
                width: 435
                height: 100
                text: qsTr("Contar")
                icon.height: 200
                icon.width: 200
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 50
                font.family: "Tahoma"
                bottomPadding: 0
                onClicked: {
                text1.text="Contando..."
                    animatedImage.source=estadocount
                    delayTimer.start()

                }
            }

            Timer {
                        id: delayTimer
                        interval: 9000
                        repeat: false
                        onTriggered: {
                            text1.text="Listo"
                             delayPopTimer.start()
                        }
                    }

            Timer {
                        id: delayPopTimer
                        interval: 1000 // 1 segundo
                        repeat: false
                        onTriggered: {
                            stackView.pop()
                            stackView.pop()
                        }
                    }

            Button {
                id: button4
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/izquierda.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }

            Text {
                id: text1
                x: 37
                y: 150
                width: 1836
                height: 204
                text: qsTr("Coloca tus elementos en el contador")
                font.pixelSize: 100
                horizontalAlignment: Text.AlignHCenter
                font.family: "Tahoma"
            }

            AnimatedImage {
                id: animatedImage
                x: 871
                y: 340
                width: 140
                height: 140
                source: estadowait
                rotation: 90
            }

            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "Esta app fué creada por PETACA Industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "Para más información, preguntas o sugerencias"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Porfavor, dirigase a nuestra página:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }
    }

    Component{
        id: givingmaterialesp
        Rectangle {
            property string estadowait: "fonts/animatedarrow"
            property string estadocount: "fonts/loader.gif"
            width: Constants.width
            height: Constants.height


            color: Constants.backgroundColor
            layer.enabled: false


            Button {
                id: button1
                x: 660
                y: 600
                width: 600
                height: 150
                text: qsTr("Recibir material")
                icon.height: 200
                icon.width: 200
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 35
                font.family: "Tahoma"
                bottomPadding: 0
                onClicked: {
                    text1.text="Contando el material..."
                    animatedImage.source=estadocount
                    button1.visible=false
                    delayTimer.start()

                }
            }

            Button {
                id: button19
                x: 720
                y: 850
                width: 435
                height: 100
                text: qsTr("Finalizar")
                icon.height: 200
                icon.width: 200
                display: AbstractButton.TextUnderIcon
                topPadding: 0
                font.pointSize: 50
                font.family: "Tahoma"
                visible: false
                bottomPadding: 0
                onClicked: {
                    stackView.pop()
                    stackView.pop()
                    stackView.pop()
                    stackView.pop()

                }
            }


            Timer {
                        id: delayTimer
                        interval: 9000
                        repeat: false
                        onTriggered: {
                            text1.text="Puedes tomar ahora el material"
                            animatedImage.source=estadowait
                            button1.visible=false
                            button19.visible=true


                        }
                    }


            Button {
                id: button4
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/izquierda.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }

            Text {
                id: text1
                x: 37
                y: 150
                width: 1836
                height: 204
                font.pixelSize: 100
                horizontalAlignment: Text.AlignHCenter
                font.family: "Tahoma"
            }

            AnimatedImage {
                id: animatedImage
                x: 871
                y: 340
                width: 140
                height: 140
                rotation: 90
            }

            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "Esta app fué creada por PETACA Industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "Para más información, preguntas o sugerencias"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Porfavor, dirigase a nuestra página:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }
    }

    Component{
        id: orderesp

        Rectangle {
            id: rectangle
            width: Constants.width
            height: Constants.height
            color: Constants.backgroundColor
            property int mmopul: 0
            property int quantity: 0

            Button{
                id: buttonget
                x: 1500
                y:770
                height: 200
                width: 250
                text: "Solicitar"
                font.pointSize: 20
                onClicked:{
                    rectangleuno.visible=true
                    delayTimer.start()
                }


            }

            Timer {
                        id: delayTimer
                        interval: 1000
                        repeat: false
                        onTriggered: {
                            textcuatro.text="2"
                             delayPopTimer.start()
                        }
                    }

            Timer {
                        id: delayPopTimer
                        interval: 1000
                        repeat: false
                        onTriggered: {
                            textcuatro.text="1"
                            delayPopTimer2.start()
                        }
                    }

            Timer {
                        id: delayPopTimer2
                        interval: 1000 // 1 segundo
                        repeat: false
                        onTriggered: {
                            stackView.pop()

                        }
                    }


            Button {
                id: button50
                x: 62
                y: 904
                visible: true
                text: qsTr("Button")
                flat: true
                icon.width: 100
                icon.source: "fonts/izquierda.png"
                icon.height: 100
                icon.color: "#26282a"
                display: AbstractButton.IconOnly
                onClicked: stackView.pop()
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
                onPressed: rectangle100.visible = true
                onReleased: rectangle100.visible = false
            }
            Grid {
                id: grid
                x: 200
                y: 150
                width: 1635
                height: 350
                rows: 4
                columns: 4
                spacing: 90

                Button {
                    id: button
                    x: 71
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Broca 1")
                    leftPadding: 16
                    icon.height: 150
                    icon.width: 150
                    icon.source: "fonts/broca.png"
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon

                    Text{
                        id: numero1
                        x:55
                        y:50
                        text:"6"
                        font.pointSize: 20
                        color: "red"
                    }

                }

                Button {
                    id: button1
                    x: 474
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Tornillo 1")
                    icon.width: 150
                    icon.source: "fonts/tornilloselec.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    Text{
                        id: numero2
                        x:55
                        y:50
                        text:"25"
                        font.pointSize: 20
                        color: "red"
                    }

                }

                Button {
                    id: button2
                    x: 875
                    y: 61
                    width: 300
                    height: 300
                    text: qsTr("Broca 3")
                    icon.width: 150
                    icon.source: "fonts/brocasteel.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    Text{
                        id: numero3
                        x:55
                        y:50
                        text:"3"
                        font.pointSize: 20
                        color: "red"
                    }
                }

                Button {
                    id: button3
                    x: 71
                    y: 418
                    width: 300
                    height: 300
                    text: qsTr("Broca 5")
                    icon.width: 150
                    icon.source: "fonts/broca.png"
                    icon.height: 150
                    font.pointSize: 15
                    font.family: "Tahoma"
                    display: AbstractButton.TextUnderIcon
                    Text{
                        id: numero4
                        x:55
                        y:50
                        text:"2"
                        font.pointSize: 20
                        color: "red"
                    }

                }

            }
            Rectangle {
                id: rectangle100
                x: 968
                y: 156
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10
                Text {
                    id: text100
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "Esta app fué creada por PETACA Industries"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text200
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "Para más información, preguntas o sugerencias"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text500
                    x: 21
                    y: 213
                    width: 749
                    height: 481
                    text: "Porfavor, dirigase a nuestra página:"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: text400
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "WWW.PETACAINDUESTRIES.COM.MX"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
            Rectangle {
                id: rectangleuno
                x: 550
                y: 250
                width: 791
                height: 524
                opacity: 0.959
                color: Constants.backgroundColor
                visible: false
                border.width: 10

                Text {
                    id: textuno
                    x: 21
                    y: 22
                    width: 749
                    height: 481
                    text: "Un correo ha sido mandado a tu proveedor"
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }
                Text {
                    id: textdos
                    x: 21
                    y: 151
                    width: 749
                    height: 481
                    text: "Redirigiendo a la página principal..."
                    font.pixelSize: 60
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }

                Text {
                    id: textcuatro
                    x: 70
                    y: 368
                    width: 651
                    height: 253
                    text: "3"
                    font.pixelSize: 35
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    fontSizeMode: Text.HorizontalFit
                }


            }
        }
    }




    Component.onCompleted: stackView.push(inicioeng)

}

