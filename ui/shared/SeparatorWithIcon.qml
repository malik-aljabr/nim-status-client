import QtQuick 2.13
import QtGraphicalEffects 1.13
import "../imports"

Item {
    property int iconMargin: Style.current.padding
    property alias icon: icon
    readonly property int separatorWidth: (parent.width / 2) - (icon.height / 2) - iconMargin
    width: parent.width
    height: icon.height
    

    Rectangle {
        id: separatorLeft
        width: separatorWidth
        anchors.verticalCenter: parent.verticalCenter
        height: 1
        anchors.left: parent.left
        color: Style.current.border
    }

    SVGImage {
        id: icon
        height: 14
        width: 18
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        fillMode: Image.PreserveAspectFit
        source: "../app/img/arrow-right.svg"
        rotation: 90

        ColorOverlay {
            anchors.fill: parent
            source: parent
            color: Style.current.textColor
            antialiasing: true
        }
    }

    Rectangle {
        id: separatorRight
        width: separatorWidth
        height: 1
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        color: Style.current.border
    }
}
