import QtQuick 2.3
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import Qt.labs.platform 1.1
import "../../../../imports"
import "../../../../shared"
import "../../../../shared/status"

Column {
    spacing: 12
    width: parent.width
    height: childrenRect.height

    Rectangle {
        width: 40
        height: 1
        color: Style.current.border
        anchors.horizontalCenter: parent.horizontalCenter
    }

    StatusIconTabButton {
        id: walletBtn
        enabled: isExperimental === "1" || appSettings.walletEnabled
        icon.name: "wallet"
        section: Constants.wallet
    }

    StatusIconTabButton {
        id: browserBtn
        enabled: isExperimental === "1" || appSettings.browserEnabled
        icon.name: "compass"
        section: Constants.browser
    }

    StatusIconTabButton {
        id: timelineBtn
        enabled: isExperimental === "1" || appSettings.timelineEnabled
        icon.name: "timeline"
        section: Constants.timeline
    }

    StatusIconTabButton {
        id: profileBtn
        icon.name: "profile"
        section: Constants.profile

        Rectangle {
            id: profileBadge
            visible: !profileModel.mnemonic.isBackedUp && sLayout.children[sLayout.currentIndex] !== profileLayoutContainer
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.rightMargin: 4
            anchors.topMargin: 5
            radius: height / 2
            color: Style.current.blue
            border.color: profileBtn.hovered ? Style.current.secondaryBackground : Style.current.background
            border.width: 2
            width: 14
            height: 14
        }
    }

    StatusIconTabButton {
        id: nodeBtn
        enabled: isExperimental === "1" && appSettings.nodeManagementEnabled
        icon.name: "node"
        section: Constants.node
    }

    StatusIconTabButton {
        id: uiComponentBtn
        enabled: isExperimental === "1"
        icon.name: "node"
        section: Constants.ui
    }
}
